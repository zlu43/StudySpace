select *
from {{ ref('fct_reviews')}} r 
join {{ ref('dim_listings_cleansed') }} l using(listing_id)
where r.review_date <= l.created_at
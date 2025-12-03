@interface _MKMapItemReviewsAttribution
- (_MKMapItemReviewsAttribution)initWithGEOMapItemAttribution:(id)attribution;
- (id)urlsForReview:(id)review;
- (id)urlsForSelectedItemWithItems:(id)items;
@end

@implementation _MKMapItemReviewsAttribution

- (id)urlsForSelectedItemWithItems:(id)items
{
  v19 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        _geoMapItem = [*(*(&v14 + 1) + 8 * i) _geoMapItem];
        [v5 addObject:_geoMapItem];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(GEOMapItemReviewsAttribution *)self->_geoReviewsAttribution urlsForSelectedItemWithItems:v5];

  return v12;
}

- (id)urlsForReview:(id)review
{
  geoReviewsAttribution = self->_geoReviewsAttribution;
  _geoReview = [review _geoReview];
  v5 = [(GEOMapItemReviewsAttribution *)geoReviewsAttribution urlsForReview:_geoReview];

  return v5;
}

- (_MKMapItemReviewsAttribution)initWithGEOMapItemAttribution:(id)attribution
{
  attributionCopy = attribution;
  v10.receiver = self;
  v10.super_class = _MKMapItemReviewsAttribution;
  v6 = [(_MKMapItemAttribution *)&v10 initWithGEOMapItemAttribution:attributionCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geoReviewsAttribution, attribution);
    v8 = v7;
  }

  return v7;
}

@end
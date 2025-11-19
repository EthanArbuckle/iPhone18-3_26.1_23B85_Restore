@interface _MKMapItemReviewsAttribution
- (_MKMapItemReviewsAttribution)initWithGEOMapItemAttribution:(id)a3;
- (id)urlsForReview:(id)a3;
- (id)urlsForSelectedItemWithItems:(id)a3;
@end

@implementation _MKMapItemReviewsAttribution

- (id)urlsForSelectedItemWithItems:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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

        v11 = [*(*(&v14 + 1) + 8 * i) _geoMapItem];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(GEOMapItemReviewsAttribution *)self->_geoReviewsAttribution urlsForSelectedItemWithItems:v5];

  return v12;
}

- (id)urlsForReview:(id)a3
{
  geoReviewsAttribution = self->_geoReviewsAttribution;
  v4 = [a3 _geoReview];
  v5 = [(GEOMapItemReviewsAttribution *)geoReviewsAttribution urlsForReview:v4];

  return v5;
}

- (_MKMapItemReviewsAttribution)initWithGEOMapItemAttribution:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _MKMapItemReviewsAttribution;
  v6 = [(_MKMapItemAttribution *)&v10 initWithGEOMapItemAttribution:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_geoReviewsAttribution, a3);
    v8 = v7;
  }

  return v7;
}

@end
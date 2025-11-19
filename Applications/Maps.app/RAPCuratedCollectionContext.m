@interface RAPCuratedCollectionContext
- (GEORPCuratedCollectionContext)geoContext;
- (RAPCuratedCollectionContext)initWithCuratedCollection:(id)a3 placeCollectionMapItems:(id)a4;
@end

@implementation RAPCuratedCollectionContext

- (GEORPCuratedCollectionContext)geoContext
{
  v3 = objc_alloc_init(GEORPCuratedCollectionContext);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v4 = self;
  v5 = [(GEOPlaceCollection *)self->_curatedCollection itemIds];
  v6 = [v5 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        if ([v10 muid])
        {
          [v3 addPlaceEntityMuid:{objc_msgSend(v10, "muid")}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v7);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(GEOPlaceCollection *)v4->_curatedCollection photos];
  v11 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v38;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v37 + 1) + 8 * j);
        v16 = objc_alloc_init(GEORPFeedbackClientImageInfo);
        v17 = [v15 largestPhoto];
        v18 = [v17 url];
        v19 = [v18 absoluteString];
        [v16 setImageUrl:v19];

        v20 = [(GEOPlaceCollection *)v4->_curatedCollection publisherAttributionIdentifierString];
        [v16 setProviderImageId:v20];

        [v3 addImageInfo:v16];
      }

      v12 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v12);
  }

  v21 = [(GEOPlaceCollection *)v4->_curatedCollection collectionTitle];
  [v3 setOriginalName:v21];

  v22 = [(GEOPlaceCollection *)v4->_curatedCollection collectionDescription];
  [v3 setOriginalDescription:v22];

  v23 = [(GEOPlaceCollection *)v4->_curatedCollection collectionURL];
  v24 = [v23 absoluteString];
  [v3 setOriginalUrl:v24];

  v25 = [(GEOPlaceCollection *)v4->_curatedCollection collectionIdentifier];
  [v3 setCuratedCollectionMuid:{objc_msgSend(v25, "muid")}];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = [(GEOPlaceCollection *)v4->_curatedCollection itemIds];
  v27 = [v26 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      for (k = 0; k != v28; k = k + 1)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [v3 addPlaceEntityMuid:{objc_msgSend(*(*(&v33 + 1) + 8 * k), "muid")}];
      }

      v28 = [v26 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v28);
  }

  return v3;
}

- (RAPCuratedCollectionContext)initWithCuratedCollection:(id)a3 placeCollectionMapItems:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = RAPCuratedCollectionContext;
  v9 = [(RAPCuratedCollectionContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_curatedCollection, a3);
    v11 = [v8 copy];
    placeCollectionMapItems = v10->_placeCollectionMapItems;
    v10->_placeCollectionMapItems = v11;
  }

  return v10;
}

@end
@interface RAPCuratedCollectionContext
- (GEORPCuratedCollectionContext)geoContext;
- (RAPCuratedCollectionContext)initWithCuratedCollection:(id)collection placeCollectionMapItems:(id)items;
@end

@implementation RAPCuratedCollectionContext

- (GEORPCuratedCollectionContext)geoContext
{
  v3 = objc_alloc_init(GEORPCuratedCollectionContext);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  selfCopy = self;
  itemIds = [(GEOPlaceCollection *)self->_curatedCollection itemIds];
  v6 = [itemIds countByEnumeratingWithState:&v41 objects:v47 count:16];
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
          objc_enumerationMutation(itemIds);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        if ([v10 muid])
        {
          [v3 addPlaceEntityMuid:{objc_msgSend(v10, "muid")}];
        }
      }

      v7 = [itemIds countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v7);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(GEOPlaceCollection *)selfCopy->_curatedCollection photos];
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
        largestPhoto = [v15 largestPhoto];
        v18 = [largestPhoto url];
        absoluteString = [v18 absoluteString];
        [v16 setImageUrl:absoluteString];

        publisherAttributionIdentifierString = [(GEOPlaceCollection *)selfCopy->_curatedCollection publisherAttributionIdentifierString];
        [v16 setProviderImageId:publisherAttributionIdentifierString];

        [v3 addImageInfo:v16];
      }

      v12 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v12);
  }

  collectionTitle = [(GEOPlaceCollection *)selfCopy->_curatedCollection collectionTitle];
  [v3 setOriginalName:collectionTitle];

  collectionDescription = [(GEOPlaceCollection *)selfCopy->_curatedCollection collectionDescription];
  [v3 setOriginalDescription:collectionDescription];

  collectionURL = [(GEOPlaceCollection *)selfCopy->_curatedCollection collectionURL];
  absoluteString2 = [collectionURL absoluteString];
  [v3 setOriginalUrl:absoluteString2];

  collectionIdentifier = [(GEOPlaceCollection *)selfCopy->_curatedCollection collectionIdentifier];
  [v3 setCuratedCollectionMuid:{objc_msgSend(collectionIdentifier, "muid")}];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  itemIds2 = [(GEOPlaceCollection *)selfCopy->_curatedCollection itemIds];
  v27 = [itemIds2 countByEnumeratingWithState:&v33 objects:v45 count:16];
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
          objc_enumerationMutation(itemIds2);
        }

        [v3 addPlaceEntityMuid:{objc_msgSend(*(*(&v33 + 1) + 8 * k), "muid")}];
      }

      v28 = [itemIds2 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v28);
  }

  return v3;
}

- (RAPCuratedCollectionContext)initWithCuratedCollection:(id)collection placeCollectionMapItems:(id)items
{
  collectionCopy = collection;
  itemsCopy = items;
  v14.receiver = self;
  v14.super_class = RAPCuratedCollectionContext;
  v9 = [(RAPCuratedCollectionContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_curatedCollection, collection);
    v11 = [itemsCopy copy];
    placeCollectionMapItems = v10->_placeCollectionMapItems;
    v10->_placeCollectionMapItems = v11;
  }

  return v10;
}

@end
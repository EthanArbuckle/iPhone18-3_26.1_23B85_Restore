@interface HomeCollectionContentInjector
- (ActionCoordination)actionCoordinator;
- (HomeCollectionContentInjector)initWithCollection:(id)a3 selectedMapItem:(id)a4;
- (id)_searchResults;
- (void)addContentToMapView;
- (void)collectionHandlerContentUpdated:(id)a3;
- (void)removeContentFromMapView;
@end

@implementation HomeCollectionContentInjector

- (ActionCoordination)actionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);

  return WeakRetained;
}

- (void)collectionHandlerContentUpdated:(id)a3
{
  updateContentInjection = self->_updateContentInjection;
  if (updateContentInjection)
  {
    updateContentInjection[2](updateContentInjection, self);
  }
}

- (void)removeContentFromMapView
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);
  v2 = [WeakRetained searchPinsManager];
  [v2 clearCollectionPins];
}

- (void)addContentToMapView
{
  v7 = [(HomeCollectionContentInjector *)self _searchResults];
  if ([v7 count])
  {
    v3 = [SearchInfo searchInfoWithResults:v7];
    WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);
    v5 = [WeakRetained searchPinsManager];
    v6 = [(HomeCollectionContentInjector *)self selectedSearchResult];
    [v5 setCollectionsPinsFromSearchInfo:v3 scrollToResults:1 displayPlaceCardForResult:v6 animated:1];
  }
}

- (id)_searchResults
{
  v3 = +[NSMutableArray array];
  if ([(CollectionHandler *)self->_collection contentType]== 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [(CollectionHandler *)self->_collection content];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [MKMapItem _itemWithGeoMapItem:v9];

            v9 = v10;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v9;
            v12 = [[SearchResult alloc] initWithMapItem:v11];

            [v3 addObject:v12];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  v13 = [v3 copy];

  return v13;
}

- (HomeCollectionContentInjector)initWithCollection:(id)a3 selectedMapItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HomeCollectionContentInjector;
  v9 = [(HomeCollectionContentInjector *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collection, a3);
    [(CollectionHandler *)v10->_collection addObserver:v10];
    objc_storeStrong(&v10->_selectedMapItem, a4);
    if (v8)
    {
      v11 = [[SearchResult alloc] initWithMapItem:v8];
      selectedSearchResult = v10->_selectedSearchResult;
      v10->_selectedSearchResult = v11;
    }
  }

  return v10;
}

@end
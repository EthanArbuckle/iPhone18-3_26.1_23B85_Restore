@interface URLCollectionHandler
- (URLCollectionHandler)initWithStorage:(id)a3 collectionOperation:(id)a4;
- (void)_resolvePlaces;
- (void)createCollection:(id)a3;
- (void)rebuildContent:(id)a3;
@end

@implementation URLCollectionHandler

- (void)createCollection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  unsavedContent = self->_unsavedContent;
  v7 = [(CollectionHandler *)self collection];
  v8 = [(NSArray *)unsavedContent arrayByAddingObject:v7];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10062730C;
  v10[3] = &unk_101660FD8;
  objc_copyWeak(&v12, &location);
  v9 = v4;
  v10[4] = self;
  v11 = v9;
  [v5 saveWithObjects:v8 completionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)rebuildContent:(id)a3
{
  v4 = (*(a3 + 2))(a3, a2);
  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  v24 = self;
  v25 = [(CollectionHandler *)self collection];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        if (v12)
        {
          v13 = objc_alloc_init(MSCollectionPlaceItem);
          v14 = [v12 name];
          [v13 setCustomName:v14];

          v15 = [v12 _geoMapItem];
          v16 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v15];
          [v13 setMapItemStorage:v16];

          [v25 addPlace:v13];
          [v6 addObject:v13];
        }

        [v5 addObject:v12];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v17 = [(CollectionHandler *)v24 collection];
  v18 = [(URLCollectionHandler *)v24 title];
  [v17 setTitle:v18];

  v19 = [v5 copy];
  [(CollectionHandler *)v24 setContent:v19];

  v20 = [(CollectionHandler *)v24 content];
  v21 = [v20 copy];
  [(CollectionHandler *)v24 setOriginalContent:v21];

  v22 = [v6 copy];
  unsavedContent = v24->_unsavedContent;
  v24->_unsavedContent = v22;

  [(CollectionHandler *)v24 updateSorting];
  [(CollectionHandler *)v24 loadImage];
}

- (void)_resolvePlaces
{
  if (!self->_isRefining)
  {
    self->_isRefining = 1;
    v3 = [[MKCollectionStorageRefiner alloc] initWithCollectionStorage:self->_collectionStorage];
    storageRefiner = self->_storageRefiner;
    self->_storageRefiner = v3;

    objc_initWeak(&location, self);
    v5 = self->_storageRefiner;
    objc_copyWeak(&v9, &location);
    v6 = [(CollectionHandler *)self collectionOperation:_NSConcreteStackBlock];
    v7 = [v6 newTraits];
    [(MKCollectionStorageRefiner *)v5 fetchMapItems:&v8 traits:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (URLCollectionHandler)initWithStorage:(id)a3 collectionOperation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = URLCollectionHandler;
  v9 = [(CollectionHandler *)&v17 init];
  v10 = v9;
  if (v9)
  {
    [(CollectionHandler *)v9 setCollectionOperation:v8];
    objc_storeStrong(&v10->_collectionStorage, a3);
    v11 = +[NSUUID UUID];
    v12 = [v11 UUIDString];
    identifier = v10->_identifier;
    v10->_identifier = v12;

    v10->_isRefining = 0;
    v14 = +[MKLocationManager sharedLocationManager];
    if ([v14 isAuthorizedForPreciseLocation])
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    [(CollectionHandler *)v10 setSortType:v15];

    [(URLCollectionHandler *)v10 _resolvePlaces];
  }

  return v10;
}

@end
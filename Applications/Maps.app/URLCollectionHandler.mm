@interface URLCollectionHandler
- (URLCollectionHandler)initWithStorage:(id)storage collectionOperation:(id)operation;
- (void)_resolvePlaces;
- (void)createCollection:(id)collection;
- (void)rebuildContent:(id)content;
@end

@implementation URLCollectionHandler

- (void)createCollection:(id)collection
{
  collectionCopy = collection;
  objc_initWeak(&location, self);
  v5 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  unsavedContent = self->_unsavedContent;
  collection = [(CollectionHandler *)self collection];
  v8 = [(NSArray *)unsavedContent arrayByAddingObject:collection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10062730C;
  v10[3] = &unk_101660FD8;
  objc_copyWeak(&v12, &location);
  v9 = collectionCopy;
  v10[4] = self;
  v11 = v9;
  [v5 saveWithObjects:v8 completionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)rebuildContent:(id)content
{
  v4 = (*(content + 2))(content, a2);
  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  selfCopy = self;
  collection = [(CollectionHandler *)self collection];
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
          name = [v12 name];
          [v13 setCustomName:name];

          _geoMapItem = [v12 _geoMapItem];
          v16 = [GEOMapItemStorage mapItemStorageForGEOMapItem:_geoMapItem];
          [v13 setMapItemStorage:v16];

          [collection addPlace:v13];
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

  collection2 = [(CollectionHandler *)selfCopy collection];
  title = [(URLCollectionHandler *)selfCopy title];
  [collection2 setTitle:title];

  v19 = [v5 copy];
  [(CollectionHandler *)selfCopy setContent:v19];

  content = [(CollectionHandler *)selfCopy content];
  v21 = [content copy];
  [(CollectionHandler *)selfCopy setOriginalContent:v21];

  v22 = [v6 copy];
  unsavedContent = selfCopy->_unsavedContent;
  selfCopy->_unsavedContent = v22;

  [(CollectionHandler *)selfCopy updateSorting];
  [(CollectionHandler *)selfCopy loadImage];
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
    newTraits = [v6 newTraits];
    [(MKCollectionStorageRefiner *)v5 fetchMapItems:&v8 traits:newTraits];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (URLCollectionHandler)initWithStorage:(id)storage collectionOperation:(id)operation
{
  storageCopy = storage;
  operationCopy = operation;
  v17.receiver = self;
  v17.super_class = URLCollectionHandler;
  v9 = [(CollectionHandler *)&v17 init];
  v10 = v9;
  if (v9)
  {
    [(CollectionHandler *)v9 setCollectionOperation:operationCopy];
    objc_storeStrong(&v10->_collectionStorage, storage);
    v11 = +[NSUUID UUID];
    uUIDString = [v11 UUIDString];
    identifier = v10->_identifier;
    v10->_identifier = uUIDString;

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
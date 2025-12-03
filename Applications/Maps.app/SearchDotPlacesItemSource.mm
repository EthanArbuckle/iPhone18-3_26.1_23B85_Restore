@interface SearchDotPlacesItemSource
- (SearchDotPlacesItemSource)init;
- (id)allItems;
- (void)setSearchDotPlaces:(id)places;
- (void)setShouldHideSearchDotPlaces:(BOOL)places;
@end

@implementation SearchDotPlacesItemSource

- (SearchDotPlacesItemSource)init
{
  v7.receiver = self;
  v7.super_class = SearchDotPlacesItemSource;
  v2 = [(SearchDotPlacesItemSource *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("SearchDotPlacesItemSource.lock", v3);
    lockQueue = v2->_lockQueue;
    v2->_lockQueue = v4;
  }

  return v2;
}

- (id)allItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100D4D948;
  v10 = sub_100D4D958;
  v11 = 0;
  lockQueue = self->_lockQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004077C;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lockQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setShouldHideSearchDotPlaces:(BOOL)places
{
  if (self->_shouldHideSearchDotPlaces != places)
  {
    placesCopy = places;
    self->_shouldHideSearchDotPlaces = places;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allItems = [(SearchDotPlacesItemSource *)self allItems];
    v6 = [allItems countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(allItems);
          }

          [*(*(&v10 + 1) + 8 * i) setShouldBeHiddenFromMap:placesCopy];
        }

        v7 = [allItems countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(PersonalizedItemSource *)self _notifyObserversItemsDidChange];
  }
}

- (void)setSearchDotPlaces:(id)places
{
  placesCopy = places;
  v5 = [placesCopy copy];
  searchDotPlaces = self->_searchDotPlaces;
  self->_searchDotPlaces = v5;

  lockQueue = self->_lockQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D4D84C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(lockQueue, block);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100D4D864;
  v13[3] = &unk_1016529F8;
  v13[4] = self;
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(placesCopy, "count")}];
  v14 = v8;
  [placesCopy enumerateObjectsUsingBlock:v13];

  v9 = self->_lockQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100D4D8FC;
  v11[3] = &unk_101661A90;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_sync(v9, v11);
  [(PersonalizedItemSource *)self _notifyObserversItemsDidChange];
}

@end
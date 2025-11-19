@interface RouteStartEndItemSource
- (NSArray)allKeysetsForEndLocations;
- (NSSet)keysForStartLocation;
- (RouteStartEndItemSource)init;
- (id)allItems;
- (id)itemMatchingLocation:(id)a3;
- (void)_updateItemVisibility;
- (void)clearStartAndEndLocations;
- (void)setStartLocation:(id)a3 endLocation:(id)a4;
- (void)setStartLocation:(id)a3 endLocations:(id)a4;
- (void)setVisibilityMask:(unint64_t)a3;
@end

@implementation RouteStartEndItemSource

- (RouteStartEndItemSource)init
{
  v7.receiver = self;
  v7.super_class = RouteStartEndItemSource;
  v2 = [(RouteStartEndItemSource *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("RouteStartEndItemSource.lock", v3);
    lockQueue = v2->_lockQueue;
    v2->_lockQueue = v4;
  }

  return v2;
}

- (id)allItems
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10066B09C;
  v11 = sub_10066B0AC;
  v12 = [NSMutableArray arrayWithCapacity:2];
  lockQueue = self->_lockQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000471B8;
  v6[3] = &unk_101661600;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(lockQueue, v6);
  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)itemMatchingLocation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 isEqualToSearchResult:self->_startLocation forPurpose:5])
    {
      v6 = self->_startItem;
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = sub_10066B09C;
      v17 = sub_10066B0AC;
      v18 = 0;
      endLocations = self->_endLocations;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10066B564;
      v9[3] = &unk_1016253C0;
      v11 = self;
      v12 = &v13;
      v10 = v5;
      [(NSArray *)endLocations enumerateObjectsUsingBlock:v9];
      v6 = v14[5];

      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)allKeysetsForEndLocations
{
  v3 = objc_alloc_init(NSMutableArray);
  lockQueue = self->_lockQueue;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10066B6A8;
  v11 = &unk_101661A90;
  v12 = self;
  v13 = v3;
  v5 = v3;
  dispatch_sync(lockQueue, &v8);
  v6 = [v5 copy];

  return v6;
}

- (NSSet)keysForStartLocation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10066B09C;
  v10 = sub_10066B0AC;
  v11 = 0;
  lockQueue = self->_lockQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10066B8D4;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lockQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setStartLocation:(id)a3 endLocations:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (self->_startLocation != v7 || (endLocations = self->_endLocations, v13 = v8, v14 = endLocations, v13 | v14) && (v15 = v14, v16 = [v13 isEqual:v14], v15, v13, (v16 & 1) == 0))
  {
    objc_storeStrong(&self->_startLocation, a3);
    objc_storeStrong(&self->_endLocations, a4);
    startLocation = self->_startLocation;
    if (startLocation && ![(SearchResult *)startLocation isDynamicCurrentLocation])
    {
      v11 = [[RouteStartEndItem alloc] initWithSearchResult:self->_startLocation routeFeatureType:1];
    }

    else
    {
      v11 = 0;
    }

    v17 = sub_100021DB0(self->_endLocations, &stru_101625398);
    lockQueue = self->_lockQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10066BAFC;
    block[3] = &unk_101661A40;
    block[4] = self;
    v22 = v11;
    v23 = v17;
    v19 = v17;
    v20 = v11;
    dispatch_sync(lockQueue, block);
    [(PersonalizedItemSource *)self _notifyObserversItemsDidChange];
  }
}

- (void)setStartLocation:(id)a3 endLocation:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v10 = v6;
    v8 = a3;
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [(RouteStartEndItemSource *)self setStartLocation:v8 endLocations:v9, v10];
  }

  else
  {
    v9 = a3;
    [(RouteStartEndItemSource *)self setStartLocation:v9 endLocations:0];
  }
}

- (void)setVisibilityMask:(unint64_t)a3
{
  if (self->_visibilityMask != a3)
  {
    self->_visibilityMask = a3;
    [(RouteStartEndItemSource *)self _updateItemVisibility];

    [(PersonalizedItemSource *)self _notifyObserversItemsDidChange];
  }
}

- (void)_updateItemVisibility
{
  [(RouteStartEndItem *)self->_startItem setShouldBeHiddenFromMap:([(RouteStartEndItemSource *)self visibilityMask]& 1) == 0];
  endItems = self->_endItems;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10066BD84;
  v4[3] = &unk_101625358;
  v4[4] = self;
  [(NSArray *)endItems enumerateObjectsUsingBlock:v4];
}

- (void)clearStartAndEndLocations
{
  v3 = self->_startLocation;
  v4 = self->_endLocations;
  startLocation = self->_startLocation;
  self->_startLocation = 0;

  endLocations = self->_endLocations;
  self->_endLocations = 0;

  lockQueue = self->_lockQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10066BF10;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(lockQueue, block);
  if (v3 || [(NSArray *)v4 count])
  {
    [(PersonalizedItemSource *)self _notifyObserversItemsDidChange];
  }
}

@end
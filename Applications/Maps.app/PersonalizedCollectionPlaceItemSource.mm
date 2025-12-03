@interface PersonalizedCollectionPlaceItemSource
+ (id)personalizedItemFromPlaceItem:(id)item mapItem:(id)mapItem title:(id)title;
+ (unint64_t)_libraryBadgeTypeFromPlaceItem:(id)item;
- (PersonalizedCollectionPlaceItemSource)initWithMapView:(id)view;
- (id)allItems;
- (void)_reloadCollectionPlaceItemsWithContents:(id)contents dataChanged:(BOOL)changed;
- (void)handleMapViewRegionChange:(id)change;
- (void)refreshItems:(BOOL)items;
- (void)userDefaultsDidChange:(id)change;
@end

@implementation PersonalizedCollectionPlaceItemSource

- (id)allItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1005BAB58;
  v10 = sub_1005BAB68;
  v11 = 0;
  lockQueue = self->_lockQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100047228;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lockQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)handleMapViewRegionChange:(id)change
{
  changeCopy = change;
  [changeCopy region];
  v6 = v5 * self->_viewPortBuffer;
  [changeCopy region];
  v8 = v7 * self->_viewPortBuffer;
  [changeCopy region];
  v10 = v9;
  [changeCopy region];
  v12 = v10 + v6 + v11 * 0.5;
  [changeCopy region];
  v14 = v13;
  [changeCopy region];
  self->_northeast = CLLocationCoordinate2DMake(v12, v14 + v8 + v15 * 0.5);
  [changeCopy region];
  v17 = v16;
  [changeCopy region];
  v19 = v17 - v6 + v18 * -0.5;
  [changeCopy region];
  v21 = v20;
  [changeCopy region];
  v23 = v22;

  self->_southwest = CLLocationCoordinate2DMake(v19, v21 - v8 + v23 * -0.5);

  [(PersonalizedCollectionPlaceItemSource *)self refreshItems:0];
}

- (void)refreshItems:(BOOL)items
{
  objc_initWeak(&location, self);
  placesQueryQueue = self->_placesQueryQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005BA280;
  block[3] = &unk_101661368;
  objc_copyWeak(&v7, &location);
  itemsCopy = items;
  dispatch_async(placesQueryQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_reloadCollectionPlaceItemsWithContents:(id)contents dataChanged:(BOOL)changed
{
  contentsCopy = contents;
  v29 = contentsCopy;
  if (byte_10195CB50)
  {
    v7 = contentsCopy;
    v31 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(contentsCopy, "count")}];
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = sub_1005BAB58;
    v45 = sub_1005BAB68;
    v46 = 0;
    v28 = 48;
    lockQueue = self->_lockQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005BAB70;
    block[3] = &unk_101661600;
    block[4] = self;
    block[5] = &v41;
    selfCopy = self;
    dispatch_sync(lockQueue, block);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v36 objects:v49 count:16];
    if (v9)
    {
      v10 = *v37;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v36 + 1) + 8 * i);
          updatedMapItemStorage = [v12 updatedMapItemStorage];
          v14 = [[MKMapItem alloc] initWithGeoMapItem:updatedMapItemStorage isPlaceHolderPlace:0];
          v15 = v14;
          if (v14)
          {
            _styleAttributes = [v14 _styleAttributes];
            isLabelPOI = [_styleAttributes isLabelPOI];

            if ((isLabelPOI & 1) == 0)
            {
              customName = [v12 customName];
              v19 = customName == 0;

              if (v19)
              {
                name = [v15 name];
              }

              else
              {
                name = [v12 customName];
                [v15 setName:name];
              }

              v21 = v42[5];
              identifier = [v12 identifier];
              v23 = [v21 objectForKeyedSubscript:identifier];
              LOBYTE(v21) = v23 == 0;

              v24 = -[PersonalizedCollectionPlaceItem initWithMapItem:title:libraryBadgeType:]([PersonalizedCollectionPlaceItem alloc], "initWithMapItem:title:libraryBadgeType:", v15, name, [objc_opt_class() _libraryBadgeTypeFromPlaceItem:v12]);
              identifier2 = [v12 identifier];
              [v31 setObject:v24 forKeyedSubscript:identifier2];

              changed |= v21;
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v36 objects:v49 count:16];
      }

      while (v9);
    }

    if (changed)
    {
      v26 = *(&selfCopy->super.super.isa + v28);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1005BABC4;
      v34[3] = &unk_101661A90;
      v34[4] = selfCopy;
      v35 = v31;
      dispatch_sync(v26, v34);
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1005BAC10;
      v33[3] = &unk_101661B18;
      v33[4] = selfCopy;
      dispatch_async(&_dispatch_main_q, v33);
    }

    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v27 = self->_lockQueue;
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1005BAB00;
    v48[3] = &unk_101661B18;
    v48[4] = self;
    dispatch_sync(v27, v48);
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1005BAB50;
    v47[3] = &unk_101661B18;
    v47[4] = self;
    dispatch_async(&_dispatch_main_q, v47);
  }
}

- (void)userDefaultsDidChange:(id)change
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"__personalizedMapsShowFavorites"];

  if (byte_10195CB50 != v5)
  {
    byte_10195CB50 = v5;
    updateQueue = self->_updateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005BACE0;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(updateQueue, block);
  }
}

- (PersonalizedCollectionPlaceItemSource)initWithMapView:(id)view
{
  viewCopy = view;
  v24.receiver = self;
  v24.super_class = PersonalizedCollectionPlaceItemSource;
  v5 = [(PersonalizedCollectionPlaceItemSource *)&v24 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("PersonalizedCollectionPlaceItemSource", v6);
    updateQueue = v5->_updateQueue;
    v5->_updateQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("PersonalizedCollectionPlaceItem.lock", v9);
    lockQueue = v5->_lockQueue;
    v5->_lockQueue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("PersonalizedCollectionPlaceItemSource.placesQuery", v12);
    placesQueryQueue = v5->_placesQueryQueue;
    v5->_placesQueryQueue = v13;

    objc_initWeak(&location, v5);
    v15 = v5->_placesQueryQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005BAF38;
    block[3] = &unk_101661340;
    objc_copyWeak(&v22, &location);
    v21 = viewCopy;
    dispatch_async(v15, block);
    v16 = +[NSUserDefaults standardUserDefaults];
    [v16 registerDefaults:&off_1016EE290];

    v17 = +[NSUserDefaults standardUserDefaults];
    byte_10195CB50 = [v17 BOOLForKey:@"__personalizedMapsShowFavorites"];

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v5 selector:"userDefaultsDidChange:" name:NSUserDefaultsDidChangeNotification object:0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v5;
}

+ (id)personalizedItemFromPlaceItem:(id)item mapItem:(id)mapItem title:(id)title
{
  titleCopy = title;
  mapItemCopy = mapItem;
  itemCopy = item;
  v10 = [PersonalizedCollectionPlaceItem alloc];
  v11 = [objc_opt_class() _libraryBadgeTypeFromPlaceItem:itemCopy];

  v12 = [(PersonalizedCollectionPlaceItem *)v10 initWithMapItem:mapItemCopy title:titleCopy libraryBadgeType:v11];

  return v12;
}

+ (unint64_t)_libraryBadgeTypeFromPlaceItem:(id)item
{
  itemCopy = item;
  if ([itemCopy type])
  {
    v6 = 4;
  }

  else
  {
    fetchCollections = [itemCopy fetchCollections];
    v5 = [fetchCollections count];

    if (v5)
    {
      v6 = 5;
    }

    else
    {
      v6 = 6;
    }
  }

  return v6;
}

@end
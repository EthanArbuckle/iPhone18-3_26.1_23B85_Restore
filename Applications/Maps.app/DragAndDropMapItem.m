@interface DragAndDropMapItem
+ (id)dragAndDropItemWithObject:(id)a3;
+ (id)writableTypeIdentifiersForItemProvider;
- (CLLocationCoordinate2D)sourceCoordinate;
- (DragAndDropMapItem)init;
- (DragAndDropMapItem)initWithAddress:(id)a3;
- (DragAndDropMapItem)initWithLabelMarker:(id)a3;
- (DragAndDropMapItem)initWithMapItem:(id)a3;
- (DragAndDropMapItem)initWithPersonalizedItem:(id)a3;
- (DragAndDropMapItem)initWithRecentContact:(id)a3;
- (DragAndDropMapItemObserver)observer;
- (NSItemProvider)itemProvider;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (id)traitsForMapItemResolver:(id)a3;
- (void)_didResolveMapItem:(id)a3;
- (void)_resolveMapItem;
- (void)setObserver:(id)a3;
@end

@implementation DragAndDropMapItem

- (CLLocationCoordinate2D)sourceCoordinate
{
  latitude = self->_sourceCoordinate.latitude;
  longitude = self->_sourceCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (DragAndDropMapItemObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (id)traitsForMapItemResolver:(id)a3
{
  v3 = +[MKMapService sharedService];
  v4 = [v3 defaultTraits];

  return v4;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_resolveProgress)
  {
    v8 = [NSProgress progressWithTotalUnitCount:100];
    if ([(NSProgress *)self->_resolveProgress isCancellable])
    {
      [v8 setCancellable:1];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100572DCC;
      v25[3] = &unk_101661B18;
      v25[4] = self;
      [v8 setCancellationHandler:v25];
    }
  }

  else
  {
    v8 = 0;
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100572E54;
  v20[3] = &unk_101622088;
  v9 = v7;
  v24 = v9;
  v10 = v8;
  v21 = v10;
  v11 = v6;
  v22 = v11;
  v23 = self;
  v12 = objc_retainBlock(v20);
  v13 = +[UIDevice currentDevice];
  v14 = [v13 userInterfaceIdiom];

  if (v14 == 5)
  {
    (v12[2])(v12, self->_originalMapItem);
  }

  else
  {
    resolveGroup = self->_resolveGroup;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100573084;
    block[3] = &unk_101661090;
    block[4] = self;
    v19 = v12;
    dispatch_group_notify(resolveGroup, &_dispatch_main_q, block);
  }

  v16 = v10;

  return v10;
}

- (NSItemProvider)itemProvider
{
  v3 = [NSItemProvider alloc];
  v4 = [(DragAndDropMapItem *)self itemProviderWriting];
  v5 = [v3 initWithObject:v4];

  [v5 setSuggestedName:self->_name];

  return v5;
}

- (void)_resolveMapItem
{
  if (!self->_resolveGroup)
  {
    v23 = v5;
    v24 = v4;
    v25 = v2;
    v26 = v3;
    v7 = dispatch_group_create();
    if (self->_address)
    {
      v8 = [NSProgress progressWithTotalUnitCount:100];
      [(NSProgress *)v8 setCancellable:0];
      v9 = [[MapItemResolver alloc] initWithAddress:self->_address];
      goto LABEL_4;
    }

    if (self->_recentContact)
    {
      v8 = [NSProgress progressWithTotalUnitCount:100];
      [(NSProgress *)v8 setCancellable:1];
      v11 = [MapItemResolver alloc];
      v12 = [(CRRecentContact *)self->_recentContact address];
      v10 = [(MapItemResolver *)v11 initWithAddressString:v12];

      if (v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (self->_mapItem)
      {
        v8 = [NSProgress progressWithTotalUnitCount:100];
        [(NSProgress *)v8 setCancellable:1];
        v9 = [[MapItemResolver alloc] initWithMapItem:self->_mapItem];
LABEL_4:
        v10 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }

LABEL_8:
        dispatch_group_enter(v7);
        [(MapItemResolver *)v10 setDelegate:self];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100573460;
        v20[3] = &unk_101622038;
        v20[4] = self;
        v8 = v8;
        v21 = v8;
        v22 = v7;
        [(MapItemResolver *)v10 startWithCompletion:v20];
        [(NSProgress *)v8 setPausable:0];
        if ([(NSProgress *)v8 isCancellable])
        {
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_1005734D4;
          v18[3] = &unk_101661B18;
          v19 = v10;
          [(NSProgress *)v8 setCancellationHandler:v18];
        }

        goto LABEL_11;
      }

      v8 = 0;
      v10 = 0;
    }

LABEL_11:
    resolver = self->_resolver;
    self->_resolver = v10;
    v14 = v10;

    resolveProgress = self->_resolveProgress;
    self->_resolveProgress = v8;
    v16 = v8;

    resolveGroup = self->_resolveGroup;
    self->_resolveGroup = v7;
  }
}

- (void)_didResolveMapItem:(id)a3
{
  objc_storeStrong(&self->_resolvedMapItem, a3);
  v5 = a3;
  v6 = [(DragAndDropMapItem *)self observer];
  [v6 dragAndDropItem:self didResolveMapItem:self->_resolvedMapItem];
}

- (void)setObserver:(id)a3
{
  objc_storeWeak(&self->_observer, a3);

  [(DragAndDropMapItem *)self _resolveMapItem];
}

- (DragAndDropMapItem)initWithPersonalizedItem:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = DragAndDropMapItem;
  v5 = [(DragAndDropMapItem *)&v25 init];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = [v4 searchResult];
  searchResult = v5->_searchResult;
  v5->_searchResult = v6;

  v8 = [v4 address];
  address = v5->_address;
  v5->_address = v8;

  v10 = [v4 mapItem];
  mapItem = v5->_mapItem;
  v5->_mapItem = v10;

  objc_storeStrong(&v5->_originalMapItem, v5->_mapItem);
  v12 = [v4 title];
  v13 = [v12 value];
  name = v5->_name;
  v5->_name = v13;

  v15 = [v4 parkedCar];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
LABEL_6:
    presentationObject = v5->_presentationObject;
    v5->_presentationObject = v17;
LABEL_7:

    goto LABEL_8;
  }

  v18 = v5->_address;
  if (v18)
  {
    v17 = v18;
    goto LABEL_6;
  }

  v23 = v5->_searchResult;
  if (v23 || v5->_mapItem)
  {
    presentationObject = [(SearchResult *)v23 mapItem];
    v24 = presentationObject;
    if (!presentationObject)
    {
      v24 = v5->_mapItem;
    }

    objc_storeStrong(&v5->_presentationObject, v24);
    goto LABEL_7;
  }

LABEL_8:
  if (v5->_originalMapItem)
  {
    v20 = [[MapsAnalyticsHelper alloc] initWithMapItem:v5->_originalMapItem];
  }

  else
  {
    v20 = objc_alloc_init(MapsAnalyticsHelper);
  }

  analyticsHelper = v5->_analyticsHelper;
  v5->_analyticsHelper = v20;

LABEL_12:
  return v5;
}

- (DragAndDropMapItem)initWithRecentContact:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = DragAndDropMapItem;
  v6 = [(DragAndDropMapItem *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recentContact, a3);
    objc_storeStrong(&v7->_presentationObject, a3);
    v8 = [v5 displayName];
    name = v7->_name;
    v7->_name = v8;

    v10 = objc_alloc_init(MapsAnalyticsHelper);
    analyticsHelper = v7->_analyticsHelper;
    v7->_analyticsHelper = v10;
  }

  return v7;
}

- (DragAndDropMapItem)initWithAddress:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = DragAndDropMapItem;
  v6 = [(DragAndDropMapItem *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_address, a3);
    v8 = [(AddressBookAddress *)v7->_address geocodedMapItem];
    originalMapItem = v7->_originalMapItem;
    v7->_originalMapItem = v8;

    objc_storeStrong(&v7->_presentationObject, a3);
    v10 = [v5 compositeName];
    name = v7->_name;
    v7->_name = v10;

    if (v7->_originalMapItem)
    {
      v12 = [[MapsAnalyticsHelper alloc] initWithMapItem:v7->_originalMapItem];
    }

    else
    {
      v12 = objc_alloc_init(MapsAnalyticsHelper);
    }

    analyticsHelper = v7->_analyticsHelper;
    v7->_analyticsHelper = v12;
  }

  return v7;
}

- (DragAndDropMapItem)initWithMapItem:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = DragAndDropMapItem;
  v6 = [(DragAndDropMapItem *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
    objc_storeStrong(&v7->_originalMapItem, a3);
    objc_storeStrong(&v7->_presentationObject, a3);
    v8 = [v5 name];
    name = v7->_name;
    v7->_name = v8;

    v10 = [[MapsAnalyticsHelper alloc] initWithMapItem:v5];
    analyticsHelper = v7->_analyticsHelper;
    v7->_analyticsHelper = v10;
  }

  return v7;
}

- (DragAndDropMapItem)initWithLabelMarker:(id)a3
{
  v4 = a3;
  v5 = [v4 featureAnnotation];
  if ([v4 isCluster])
  {
    v6 = [v4 clusterFeatureAnnotations];
    v7 = [v6 firstObject];

    v5 = v7;
  }

  if (!v5 || ![v5 conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
  {
    goto LABEL_9;
  }

  v8 = v5;
  v9 = [v8 personalizedItem];
  v10 = [v8 mapItem];

  if (v9)
  {
    v11 = [(DragAndDropMapItem *)self initWithPersonalizedItem:v9];

    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!v10)
  {
LABEL_9:
    v10 = [[MKMapItem alloc] _initWithLabelMarker:v4];
  }

  v11 = [(DragAndDropMapItem *)self initWithMapItem:v10];
  if (v11)
  {
LABEL_11:
    v12 = [[MapsAnalyticsHelper alloc] initWithLabelMarker:v4];
    analyticsHelper = v11->_analyticsHelper;
    v11->_analyticsHelper = v12;
  }

LABEL_12:

  return v11;
}

- (DragAndDropMapItem)init
{
  [(DragAndDropMapItem *)self doesNotRecognizeSelector:a2];

  return 0;
}

+ (id)writableTypeIdentifiersForItemProvider
{
  v2 = +[NSMutableArray array];
  v3 = +[MKMapItem writableTypeIdentifiersForItemProvider];
  [v2 addObjectsFromArray:v3];

  v4 = [UTTypeVCard identifier];
  [v2 addObject:v4];

  v5 = [UTTypeURL identifier];
  [v2 addObject:v5];

  v6 = [UTTypeUTF8PlainText identifier];
  [v2 addObject:v6];

  v7 = [v2 copy];

  return v7;
}

+ (id)dragAndDropItemWithObject:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 autocompleteObject];

    v4 = v5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v4;
    v8 = [a1 alloc];
    v9 = [v4 mapItem];

    v6 = [v8 initWithMapItem:v9];
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v4;
      v14 = [[a1 alloc] initWithAddress:v4];
LABEL_17:
      v6 = v14;
      goto LABEL_33;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = sub_100573FEC;
      v26 = sub_100573FFC;
      v27 = 0;
      v4 = v4;
      v15 = [v4 historyEntry];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100574004;
      v21[3] = &unk_101621FF0;
      v21[4] = &v22;
      v21[5] = a1;
      [v15 ifSearch:&stru_101621FA8 ifRoute:&stru_101621FC8 ifPlaceDisplay:v21 ifTransitLineItem:&stru_101622010];

      v6 = v23[5];
      _Block_object_dispose(&v22, 8);

      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[a1 alloc] initWithRecentContact:v4];
LABEL_22:
      v6 = v16;
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v4;
      v17 = [v4 geoMapItem];

      if (!v17)
      {
        goto LABEL_32;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = v4;
        v14 = [[a1 alloc] initWithLabelMarker:v4];
        goto LABEL_17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [[a1 alloc] initWithMapItem:v4];
        goto LABEL_22;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_5:
        v6 = 0;
        goto LABEL_6;
      }

      v4 = v4;
      v20 = [v4 geoMapItem];

      if (!v20)
      {
        goto LABEL_32;
      }
    }

    v18 = [MKMapItem alloc];
    v19 = [v4 geoMapItem];
    v12 = [v18 initWithGeoMapItem:v19 isPlaceHolderPlace:1];

    v13 = [a1 alloc];
    goto LABEL_14;
  }

  v4 = v4;
  v10 = [v4 mapItem];

  if (!v10)
  {
LABEL_32:
    v6 = 0;
    goto LABEL_33;
  }

  v11 = [a1 alloc];
  v12 = [v4 mapItem];
  v13 = v11;
LABEL_14:
  v6 = [v13 initWithMapItem:v12];

LABEL_33:
LABEL_6:

  return v6;
}

@end
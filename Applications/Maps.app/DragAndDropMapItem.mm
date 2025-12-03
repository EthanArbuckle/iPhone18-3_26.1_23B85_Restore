@interface DragAndDropMapItem
+ (id)dragAndDropItemWithObject:(id)object;
+ (id)writableTypeIdentifiersForItemProvider;
- (CLLocationCoordinate2D)sourceCoordinate;
- (DragAndDropMapItem)init;
- (DragAndDropMapItem)initWithAddress:(id)address;
- (DragAndDropMapItem)initWithLabelMarker:(id)marker;
- (DragAndDropMapItem)initWithMapItem:(id)item;
- (DragAndDropMapItem)initWithPersonalizedItem:(id)item;
- (DragAndDropMapItem)initWithRecentContact:(id)contact;
- (DragAndDropMapItemObserver)observer;
- (NSItemProvider)itemProvider;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (id)traitsForMapItemResolver:(id)resolver;
- (void)_didResolveMapItem:(id)item;
- (void)_resolveMapItem;
- (void)setObserver:(id)observer;
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

- (id)traitsForMapItemResolver:(id)resolver
{
  v3 = +[MKMapService sharedService];
  defaultTraits = [v3 defaultTraits];

  return defaultTraits;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
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
  v9 = handlerCopy;
  v24 = v9;
  v10 = v8;
  v21 = v10;
  v11 = identifierCopy;
  v22 = v11;
  selfCopy = self;
  v12 = objc_retainBlock(v20);
  v13 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v13 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
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
  itemProviderWriting = [(DragAndDropMapItem *)self itemProviderWriting];
  v5 = [v3 initWithObject:itemProviderWriting];

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
      address = [(CRRecentContact *)self->_recentContact address];
      v10 = [(MapItemResolver *)v11 initWithAddressString:address];

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

- (void)_didResolveMapItem:(id)item
{
  objc_storeStrong(&self->_resolvedMapItem, item);
  itemCopy = item;
  observer = [(DragAndDropMapItem *)self observer];
  [observer dragAndDropItem:self didResolveMapItem:self->_resolvedMapItem];
}

- (void)setObserver:(id)observer
{
  objc_storeWeak(&self->_observer, observer);

  [(DragAndDropMapItem *)self _resolveMapItem];
}

- (DragAndDropMapItem)initWithPersonalizedItem:(id)item
{
  itemCopy = item;
  v25.receiver = self;
  v25.super_class = DragAndDropMapItem;
  v5 = [(DragAndDropMapItem *)&v25 init];
  if (!v5)
  {
    goto LABEL_12;
  }

  searchResult = [itemCopy searchResult];
  searchResult = v5->_searchResult;
  v5->_searchResult = searchResult;

  address = [itemCopy address];
  address = v5->_address;
  v5->_address = address;

  mapItem = [itemCopy mapItem];
  mapItem = v5->_mapItem;
  v5->_mapItem = mapItem;

  objc_storeStrong(&v5->_originalMapItem, v5->_mapItem);
  title = [itemCopy title];
  value = [title value];
  name = v5->_name;
  v5->_name = value;

  parkedCar = [itemCopy parkedCar];
  v16 = parkedCar;
  if (parkedCar)
  {
    v17 = parkedCar;
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

- (DragAndDropMapItem)initWithRecentContact:(id)contact
{
  contactCopy = contact;
  v13.receiver = self;
  v13.super_class = DragAndDropMapItem;
  v6 = [(DragAndDropMapItem *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recentContact, contact);
    objc_storeStrong(&v7->_presentationObject, contact);
    displayName = [contactCopy displayName];
    name = v7->_name;
    v7->_name = displayName;

    v10 = objc_alloc_init(MapsAnalyticsHelper);
    analyticsHelper = v7->_analyticsHelper;
    v7->_analyticsHelper = v10;
  }

  return v7;
}

- (DragAndDropMapItem)initWithAddress:(id)address
{
  addressCopy = address;
  v15.receiver = self;
  v15.super_class = DragAndDropMapItem;
  v6 = [(DragAndDropMapItem *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_address, address);
    geocodedMapItem = [(AddressBookAddress *)v7->_address geocodedMapItem];
    originalMapItem = v7->_originalMapItem;
    v7->_originalMapItem = geocodedMapItem;

    objc_storeStrong(&v7->_presentationObject, address);
    compositeName = [addressCopy compositeName];
    name = v7->_name;
    v7->_name = compositeName;

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

- (DragAndDropMapItem)initWithMapItem:(id)item
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = DragAndDropMapItem;
  v6 = [(DragAndDropMapItem *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
    objc_storeStrong(&v7->_originalMapItem, item);
    objc_storeStrong(&v7->_presentationObject, item);
    name = [itemCopy name];
    name = v7->_name;
    v7->_name = name;

    v10 = [[MapsAnalyticsHelper alloc] initWithMapItem:itemCopy];
    analyticsHelper = v7->_analyticsHelper;
    v7->_analyticsHelper = v10;
  }

  return v7;
}

- (DragAndDropMapItem)initWithLabelMarker:(id)marker
{
  markerCopy = marker;
  featureAnnotation = [markerCopy featureAnnotation];
  if ([markerCopy isCluster])
  {
    clusterFeatureAnnotations = [markerCopy clusterFeatureAnnotations];
    firstObject = [clusterFeatureAnnotations firstObject];

    featureAnnotation = firstObject;
  }

  if (!featureAnnotation || ![featureAnnotation conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
  {
    goto LABEL_9;
  }

  v8 = featureAnnotation;
  personalizedItem = [v8 personalizedItem];
  mapItem = [v8 mapItem];

  if (personalizedItem)
  {
    v11 = [(DragAndDropMapItem *)self initWithPersonalizedItem:personalizedItem];

    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!mapItem)
  {
LABEL_9:
    mapItem = [[MKMapItem alloc] _initWithLabelMarker:markerCopy];
  }

  v11 = [(DragAndDropMapItem *)self initWithMapItem:mapItem];
  if (v11)
  {
LABEL_11:
    v12 = [[MapsAnalyticsHelper alloc] initWithLabelMarker:markerCopy];
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

  identifier = [UTTypeVCard identifier];
  [v2 addObject:identifier];

  identifier2 = [UTTypeURL identifier];
  [v2 addObject:identifier2];

  identifier3 = [UTTypeUTF8PlainText identifier];
  [v2 addObject:identifier3];

  v7 = [v2 copy];

  return v7;
}

+ (id)dragAndDropItemWithObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    autocompleteObject = [objectCopy autocompleteObject];

    objectCopy = autocompleteObject;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objectCopy = objectCopy;
    v8 = [self alloc];
    mapItem = [objectCopy mapItem];

    v6 = [v8 initWithMapItem:mapItem];
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectCopy = objectCopy;
      v14 = [[self alloc] initWithAddress:objectCopy];
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
      objectCopy = objectCopy;
      historyEntry = [objectCopy historyEntry];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100574004;
      v21[3] = &unk_101621FF0;
      v21[4] = &v22;
      v21[5] = self;
      [historyEntry ifSearch:&stru_101621FA8 ifRoute:&stru_101621FC8 ifPlaceDisplay:v21 ifTransitLineItem:&stru_101622010];

      v6 = v23[5];
      _Block_object_dispose(&v22, 8);

      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[self alloc] initWithRecentContact:objectCopy];
LABEL_22:
      v6 = v16;
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectCopy = objectCopy;
      geoMapItem = [objectCopy geoMapItem];

      if (!geoMapItem)
      {
        goto LABEL_32;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objectCopy = objectCopy;
        v14 = [[self alloc] initWithLabelMarker:objectCopy];
        goto LABEL_17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [[self alloc] initWithMapItem:objectCopy];
        goto LABEL_22;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_5:
        v6 = 0;
        goto LABEL_6;
      }

      objectCopy = objectCopy;
      geoMapItem2 = [objectCopy geoMapItem];

      if (!geoMapItem2)
      {
        goto LABEL_32;
      }
    }

    v18 = [MKMapItem alloc];
    geoMapItem3 = [objectCopy geoMapItem];
    mapItem3 = [v18 initWithGeoMapItem:geoMapItem3 isPlaceHolderPlace:1];

    v13 = [self alloc];
    goto LABEL_14;
  }

  objectCopy = objectCopy;
  mapItem2 = [objectCopy mapItem];

  if (!mapItem2)
  {
LABEL_32:
    v6 = 0;
    goto LABEL_33;
  }

  v11 = [self alloc];
  mapItem3 = [objectCopy mapItem];
  v13 = v11;
LABEL_14:
  v6 = [v13 initWithMapItem:mapItem3];

LABEL_33:
LABEL_6:

  return v6;
}

@end
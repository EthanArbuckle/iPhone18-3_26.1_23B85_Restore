@interface MapItemResolver
- (MapItemResolver)init;
- (MapItemResolver)initWithAddress:(id)address;
- (MapItemResolver)initWithAddressString:(id)string;
- (MapItemResolver)initWithLabelMarker:(id)marker;
- (MapItemResolver)initWithMapItem:(id)item;
- (MapItemResolverDelegate)delegate;
- (id)traits;
- (void)_addCancelationHandler:(id)handler;
- (void)cancel;
- (void)resolveAddress:(id)address;
- (void)resolveAddressString:(id)string;
- (void)resolveLabelMarker:(id)marker;
- (void)resolveMapItem:(id)item;
- (void)resolveNearestTransitStationForLabelMarker:(id)marker;
- (void)startWithCompletion:(id)completion;
@end

@implementation MapItemResolver

- (MapItemResolverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resolveAddressString:(id)string
{
  stringCopy = string;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10093BED0;
  v29 = sub_10093BEE0;
  v30 = 0;
  v5 = +[MKMapService sharedService];
  traits = [(MapItemResolver *)self traits];
  v7 = [v5 ticketForForwardGeocodeString:stringCopy traits:traits];
  v8 = v26[5];
  v26[5] = v7;

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_10093BED0;
  v21[4] = sub_10093BEE0;
  v22 = 0;
  v9 = self->_resolveGroup;
  dispatch_group_enter(v9);
  v10 = v26[5];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10093BEE8;
  v18[3] = &unk_10162F260;
  v18[4] = self;
  v20 = v23;
  v11 = v9;
  v19 = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10093BF9C;
  v17[3] = &unk_10165F5C8;
  v17[4] = v21;
  [v10 submitWithRefinedHandler:v18 networkActivity:v17];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10093C038;
  v13[3] = &unk_10165DEF0;
  v15 = &v25;
  v16 = v23;
  v12 = v11;
  v14 = v12;
  [(MapItemResolver *)self _addCancelationHandler:v13];

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v25, 8);
}

- (void)resolveAddress:(id)address
{
  resolveGroup = self->_resolveGroup;
  addressCopy = address;
  dispatch_group_enter(resolveGroup);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10093C144;
  v6[3] = &unk_101630438;
  v6[4] = self;
  [addressCopy forwardGeocodeAddress:v6];
}

- (void)resolveNearestTransitStationForLabelMarker:(id)marker
{
  markerCopy = marker;
  if ([markerCopy _maps_numLines] == 1)
  {
    _maps_lineIdentifiers = [markerCopy _maps_lineIdentifiers];
    firstObject = [_maps_lineIdentifiers firstObject];

    v7 = self->_resolveGroup;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v27 = 0;
    dispatch_group_enter(v7);
    v8 = +[MKLocationManager sharedLocationManager];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10093C3D0;
    v21[3] = &unk_10162F238;
    v21[4] = self;
    v9 = v7;
    v22 = v9;
    v10 = firstObject;
    v23 = v10;
    v24 = v28;
    v25 = v26;
    v11 = [v8 singleLocationUpdateWithHandler:v21];

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10093C670;
    v17 = &unk_101660778;
    v12 = v11;
    v18 = v12;
    v20 = v26;
    v13 = v9;
    v19 = v13;
    [(MapItemResolver *)self _addCancelationHandler:&v14];
    [v12 start];

    _Block_object_dispose(v26, 8);
    _Block_object_dispose(v28, 8);
  }
}

- (void)resolveMapItem:(id)item
{
  itemCopy = item;
  _identifier = [itemCopy _identifier];

  v6 = _identifier == 0;
  v7 = +[MKMapService sharedService];
  if (v6)
  {
    traits = [(MapItemResolver *)self traits];
    v11 = [v7 ticketForMapItemToRefine:itemCopy traits:traits];

    name = [itemCopy name];
    v13 = [itemCopy url];
    phoneNumber = [itemCopy phoneNumber];
  }

  else
  {
    _identifier2 = [itemCopy _identifier];
    v37 = _identifier2;
    v9 = [NSArray arrayWithObjects:&v37 count:1];
    traits2 = [(MapItemResolver *)self traits];
    v11 = [v7 ticketForIdentifiers:v9 traits:traits2];

    phoneNumber = 0;
    v13 = 0;
    name = 0;
  }

  v16 = self->_resolveGroup;
  v17 = v16;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_10093BED0;
  v33[4] = sub_10093BEE0;
  v34 = 0;
  if (v11)
  {
    dispatch_group_enter(v16);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10093CC98;
    v26[3] = &unk_10162F210;
    v26[4] = self;
    v27 = itemCopy;
    v28 = name;
    v29 = v13;
    v30 = phoneNumber;
    v32 = v35;
    v31 = v17;
    v18 = &_dispatch_main_q;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10093CDB8;
    v25[3] = &unk_10165F5C8;
    v25[4] = v33;
    [v11 submitWithHandler:v26 queue:&_dispatch_main_q networkActivity:v25];
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10093CE54;
  v21[3] = &unk_101660778;
  v19 = v11;
  v22 = v19;
  v24 = v35;
  v20 = v17;
  v23 = v20;
  [(MapItemResolver *)self _addCancelationHandler:v21];

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
}

- (void)resolveLabelMarker:(id)marker
{
  markerCopy = marker;
  [markerCopy coordinate];
  v6 = v5;
  [markerCopy coordinate];
  v8 = CLLocationCoordinate2DMake(v6, v7);
  v9 = [[CLLocation alloc] initWithLatitude:v8.latitude longitude:v8.longitude];
  v10 = [[MKMapItem alloc] initWithCLLocation:v9];
  v11 = markerCopy;
  featureType = [v11 featureType];
  if (featureType <= 9 && ((1 << featureType) & 0x2C0) != 0)
  {
    title = [v11 title];
  }

  else
  {
    title = [v11 name];
  }

  v14 = title;

  [v10 setName:v14];
  if ([v11 isTransitLine])
  {
    if ([v11 _maps_numLines] == 1)
    {
      [(MapItemResolver *)self resolveNearestTransitStationForLabelMarker:v11];
    }

    else
    {
      [(MapItemResolver *)self setResolvedMapItem:v10];
    }
  }

  else
  {
    featureAnnotation = [v11 featureAnnotation];
    v16 = featureAnnotation;
    if (featureAnnotation && [featureAnnotation conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
    {
      personalizedItem = [v16 personalizedItem];
      if ([personalizedItem mustRefineMapItem] && (objc_msgSend(personalizedItem, "mapItem"), v18 = objc_claimAutoreleasedReturnValue(), v18, v18))
      {
        mapItem = [personalizedItem mapItem];
        [(MapItemResolver *)self resolveMapItem:mapItem];
      }

      else
      {
        [(MapItemResolver *)self setResolvedPlace:personalizedItem];
        mapItem = [personalizedItem mapItem];
        [(MapItemResolver *)self setResolvedMapItem:mapItem];
      }
    }

    else if ([v11 businessID])
    {
      v20 = self->_resolveGroup;
      dispatch_group_enter(v20);
      v21 = +[UIApplication sharedMapsDelegate];
      poiSearchManager = [v21 poiSearchManager];
      identifier = [v11 identifier];
      traits = [(MapItemResolver *)self traits];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10093D1A0;
      v26[3] = &unk_10162F1E8;
      v26[4] = self;
      v27 = v20;
      v25 = v20;
      [poiSearchManager searchForIdentifier:identifier allowExpired:1 traits:traits completionHandler:v26];
    }
  }
}

- (void)_addCancelationHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = handlerCopy;
  cancelHandlers = selfCopy->_cancelHandlers;
  if (!cancelHandlers)
  {
    v7 = +[NSMutableArray array];
    v8 = selfCopy->_cancelHandlers;
    selfCopy->_cancelHandlers = v7;

    cancelHandlers = selfCopy->_cancelHandlers;
    v5 = handlerCopy;
  }

  v9 = [v5 copy];
  [(NSMutableArray *)cancelHandlers addObject:v9];

  objc_sync_exit(selfCopy);
}

- (void)cancel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_cancelHandlers;
  cancelHandlers = selfCopy->_cancelHandlers;
  selfCopy->_cancelHandlers = 0;

  [(MapItemResolver *)selfCopy setCanceled:1];
  objc_sync_exit(selfCopy);

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = v3;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)startWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = 0;
  atomic_compare_exchange_strong_explicit(&self->_hasStarted, &v5, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v5)
  {
    resolveBlock = self->_resolveBlock;
    if (resolveBlock)
    {
      resolveBlock[2](resolveBlock, self);
    }

    if (completionCopy)
    {
      resolveGroup = self->_resolveGroup;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10093D50C;
      v8[3] = &unk_101661090;
      v8[4] = self;
      v9 = completionCopy;
      dispatch_group_notify(resolveGroup, &_dispatch_main_q, v8);
    }
  }
}

- (id)traits
{
  delegate = [(MapItemResolver *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MapItemResolver *)self delegate];
    v6 = [delegate2 traitsForMapItemResolver:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MapItemResolver)initWithMapItem:(id)item
{
  itemCopy = item;
  v5 = [(MapItemResolver *)self init];
  if (v5)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10093D65C;
    v9[3] = &unk_10162F1C0;
    v10 = itemCopy;
    v6 = objc_retainBlock(v9);
    resolveBlock = v5->_resolveBlock;
    v5->_resolveBlock = v6;
  }

  return v5;
}

- (MapItemResolver)initWithAddressString:(id)string
{
  stringCopy = string;
  v5 = [(MapItemResolver *)self init];
  if (v5)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10093D718;
    v9[3] = &unk_10162F1C0;
    v10 = stringCopy;
    v6 = objc_retainBlock(v9);
    resolveBlock = v5->_resolveBlock;
    v5->_resolveBlock = v6;
  }

  return v5;
}

- (MapItemResolver)initWithAddress:(id)address
{
  addressCopy = address;
  v5 = [(MapItemResolver *)self init];
  if (v5)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10093D7D4;
    v9[3] = &unk_10162F1C0;
    v10 = addressCopy;
    v6 = objc_retainBlock(v9);
    resolveBlock = v5->_resolveBlock;
    v5->_resolveBlock = v6;
  }

  return v5;
}

- (MapItemResolver)initWithLabelMarker:(id)marker
{
  markerCopy = marker;
  v5 = [(MapItemResolver *)self init];
  if (v5)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10093D890;
    v9[3] = &unk_10162F1C0;
    v10 = markerCopy;
    v6 = objc_retainBlock(v9);
    resolveBlock = v5->_resolveBlock;
    v5->_resolveBlock = v6;
  }

  return v5;
}

- (MapItemResolver)init
{
  v6.receiver = self;
  v6.super_class = MapItemResolver;
  v2 = [(MapItemResolver *)&v6 init];
  if (v2)
  {
    v3 = dispatch_group_create();
    resolveGroup = v2->_resolveGroup;
    v2->_resolveGroup = v3;
  }

  return v2;
}

@end
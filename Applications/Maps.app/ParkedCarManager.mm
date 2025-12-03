@interface ParkedCarManager
+ (id)sharedManager;
- (ParkedCarManager)init;
- (void)_authDidChange:(id)change;
- (void)_debug_showParkedCarNotification;
- (void)_debug_showParkedCarReplacementNotification;
- (void)_updateParkedCar;
- (void)_updateParkedCarMapItem;
- (void)addParkedCarAtLocation:(id)location;
- (void)addParkedCarObserver:(id)observer;
- (void)dealloc;
- (void)fetchParkedCar:(id)car;
- (void)informCoreRoutineOfEngagementWithParkedCar:(id)car;
- (void)removeImageForParkedCar:(id)car;
- (void)removeParkedCar;
- (void)resolveMapItemFromVehicleEvent:(id)event overrideCoordinate:(CLLocationCoordinate2D)coordinate referenceFrame:(int)frame callback:(id)callback;
- (void)setCoordinate:(CLLocationCoordinate2D)coordinate referenceFrame:(int)frame forParkedCar:(id)car;
- (void)setImage:(id)image forParkedCar:(id)car;
- (void)setNotes:(id)notes forParkedCar:(id)car;
- (void)setParkedCarWithMapItem:(id)item overrideCoordinate:(CLLocationCoordinate2D)coordinate referenceFrame:(int)frame vehicleEvent:(id)event;
- (void)updateParkedCarWithVehicleEvent:(id)event coordinate:(CLLocationCoordinate2D)coordinate referenceFrame:(int)frame;
@end

@implementation ParkedCarManager

+ (id)sharedManager
{
  if (qword_10195F770 != -1)
  {
    dispatch_once(&qword_10195F770, &stru_10165DBD8);
  }

  v3 = qword_10195F768;

  return v3;
}

- (ParkedCarManager)init
{
  v10.receiver = self;
  v10.super_class = ParkedCarManager;
  v2 = [(ParkedCarManager *)&v10 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_authDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_willResume:" name:MKApplicationStateWillEnterForegroundNotification object:0];

    v5 = MapsSuggestionsResourceDepotForMapsProcess();
    oneRoutine = [v5 oneRoutine];
    routine = v2->_routine;
    v2->_routine = oneRoutine;

    [(MapsSuggestionsRoutine *)v2->_routine addParkedCarObserver:v2];
    [(ParkedCarManager *)v2 _updateParkedCar];
    v8 = v2;
  }

  return v2;
}

- (void)_updateParkedCar
{
  v3 = +[MKLocationManager sharedLocationManager];
  if ([v3 isLocationServicesApproved] && !self->_isUpdating)
  {
    self->_isUpdating = 1;
    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100026A24;
    v11[3] = &unk_101661B98;
    objc_copyWeak(&v12, &location);
    v4 = objc_retainBlock(v11);
    v5 = +[RTRoutineManager defaultManager];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100017BF4;
    v7[3] = &unk_10165DCA0;
    objc_copyWeak(&v10, &location);
    v6 = v4;
    v9 = v6;
    v8 = v3;
    [v5 fetchLastVehicleEventsWithHandler:v7];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_debug_showParkedCarReplacementNotification
{
  v5 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  vehicleEvent = [(ParkedCar *)self->_parkedCar vehicleEvent];
  vehicleEvent2 = [(ParkedCar *)self->_parkedCar vehicleEvent];
  [v5 showParkedCarReplacementBulletinForEvent:vehicleEvent replacingEvent:vehicleEvent2];
}

- (void)_debug_showParkedCarNotification
{
  v4 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  vehicleEvent = [(ParkedCar *)self->_parkedCar vehicleEvent];
  [v4 showParkedCarBulletinForEvent:vehicleEvent];
}

- (void)addParkedCarAtLocation:(id)location
{
  locationCopy = location;
  v5 = +[RTRoutineManager defaultManager];
  [v5 vehicleEventAtLocation:locationCopy notes:0];

  [(ParkedCarManager *)self _updateParkedCar];
}

- (void)informCoreRoutineOfEngagementWithParkedCar:(id)car
{
  vehicleEvent = [car vehicleEvent];
  if (vehicleEvent)
  {
    v6 = vehicleEvent;
    v4 = +[RTRoutineManager defaultManager];
    identifier = [v6 identifier];
    [v4 engageInVehicleEventWithIdentifier:identifier];

    vehicleEvent = v6;
  }
}

- (void)setCoordinate:(CLLocationCoordinate2D)coordinate referenceFrame:(int)frame forParkedCar:(id)car
{
  v5 = *&frame;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  carCopy = car;
  [carCopy setCoordinate:{latitude, longitude}];
  [carCopy setReferenceFrame:v5];
  [carCopy setMapItem:0];
  vehicleEvent = [carCopy vehicleEvent];
  if (vehicleEvent)
  {
    v11 = [CLLocation alloc];
    v12 = +[NSDate date];
    v13 = [v11 initWithCoordinate:v12 altitude:v5 horizontalAccuracy:latitude verticalAccuracy:longitude timestamp:0.0 referenceFrame:{0.0, -1.0}];

    v14 = +[RTRoutineManager defaultManager];
    identifier = [vehicleEvent identifier];
    [v14 updateVehicleEventWithIdentifier:identifier geoMapItem:0];

    v16 = +[RTRoutineManager defaultManager];
    identifier2 = [vehicleEvent identifier];
    [v16 updateVehicleEventWithIdentifier:identifier2 location:v13];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v19 = [allObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(allObjects);
        }

        v23 = *(*(&v24 + 1) + 8 * v22);
        if (objc_opt_respondsToSelector())
        {
          [v23 parkedCarManager:self didUpdateParkedCar:carCopy];
        }

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [allObjects countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v20);
  }

  [(ParkedCarManager *)self _updateParkedCarMapItem];
}

- (void)setNotes:(id)notes forParkedCar:(id)car
{
  notesCopy = notes;
  carCopy = car;
  vehicleEvent = [carCopy vehicleEvent];
  if (vehicleEvent)
  {
    v9 = +[RTRoutineManager defaultManager];
    identifier = [vehicleEvent identifier];
    [v9 updateVehicleEventWithIdentifier:identifier notes:notesCopy];
  }

  v17 = notesCopy;
  [carCopy setNotes:notesCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v12 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(allObjects);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 parkedCarManager:self didUpdateParkedCar:carCopy];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  [(ParkedCarManager *)self _updateParkedCar];
}

- (void)setImage:(id)image forParkedCar:(id)car
{
  imageCopy = image;
  carCopy = car;
  vehicleEvent = [carCopy vehicleEvent];
  if (vehicleEvent)
  {
    v9 = +[UIScreen mainScreen];
    [v9 bounds];
    v11 = v10;
    v12 = +[UIScreen mainScreen];
    [v12 bounds];
    v14 = v13;
    v15 = +[UIScreen mainScreen];
    [v15 bounds];
    v17 = v16;
    v19 = v18;

    if (v11 <= v14)
    {
      v17 = v19;
    }

    [imageCopy size];
    v21 = v20;
    [imageCopy size];
    v23 = v22;
    [imageCopy size];
    if (v21 <= v23)
    {
      v24 = v25;
    }

    v26 = fmax(v24 * 0.5 / v17, 1.0);
    [imageCopy size];
    v28 = v27 / v26;
    [imageCopy size];
    v51.size.height = v29 / v26;
    v51.origin.x = 0.0;
    v51.origin.y = 0.0;
    v51.size.width = v28;
    v52 = CGRectIntegral(v51);
    width = v52.size.width;
    height = v52.size.height;
    v32 = objc_autoreleasePoolPush();
    [imageCopy scale];
    v34 = v33;
    v50.width = width;
    v50.height = height;
    UIGraphicsBeginImageContextWithOptions(v50, 1, v34);
    [imageCopy drawInRect:{0.0, 0.0, width, height}];
    v35 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if (imageCopy)
    {
      v36 = UIImageJPEGRepresentation(v35, 0.699999988);
    }

    else
    {
      v36 = 0;
    }

    v37 = +[RTRoutineManager defaultManager];
    identifier = [vehicleEvent identifier];
    [v37 updateVehicleEventWithIdentifier:identifier photo:v36];

    objc_autoreleasePoolPop(v32);
  }

  [carCopy setImage:imageCopy];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v40 = [allObjects countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v46;
    do
    {
      for (i = 0; i != v41; i = i + 1)
      {
        if (*v46 != v42)
        {
          objc_enumerationMutation(allObjects);
        }

        v44 = *(*(&v45 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v44 parkedCarManager:self didUpdateParkedCar:carCopy];
        }
      }

      v41 = [allObjects countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v41);
  }

  [(ParkedCarManager *)self _updateParkedCar];
}

- (void)removeImageForParkedCar:(id)car
{
  carCopy = car;
  vehicleEvent = [carCopy vehicleEvent];
  if (vehicleEvent)
  {
    v6 = +[RTRoutineManager defaultManager];
    identifier = [vehicleEvent identifier];
    [v6 updateVehicleEventWithIdentifier:identifier photo:0];
  }

  [carCopy setImage:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 parkedCarManager:self didUpdateParkedCar:carCopy];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(ParkedCarManager *)self _updateParkedCar];
}

- (void)removeParkedCar
{
  v3 = +[RTRoutineManager defaultManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100F3F38C;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [v3 clearAllVehicleEventsWithHandler:v4];
}

- (void)_updateParkedCarMapItem
{
  [(GEOMapServiceTicket *)self->_ticket cancel];
  ticket = self->_ticket;
  self->_ticket = 0;

  objc_initWeak(&location, self);
  v4 = self->_parkedCar;
  v5 = +[GEOMapService sharedService];
  [(ParkedCar *)v4 coordinate];
  GEOLocationCoordinate2DFromCLLocationCoordinate2D();
  v8 = [v5 ticketForReverseGeocodeCoordinate:1 includeEntryPoints:-[ParkedCar referenceFrame](v4 shiftLocationsIfNeeded:"referenceFrame") != 2 preserveOriginalLocation:1 traits:{0, v6, v7}];
  v9 = self->_ticket;
  self->_ticket = v8;

  v10 = self->_ticket;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100F3F518;
  v12[3] = &unk_10165DCC8;
  objc_copyWeak(&v14, &location);
  v11 = v4;
  v13 = v11;
  [(GEOMapServiceTicket *)v10 submitWithHandler:v12 networkActivity:0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)resolveMapItemFromVehicleEvent:(id)event overrideCoordinate:(CLLocationCoordinate2D)coordinate referenceFrame:(int)frame callback:(id)callback
{
  v7 = *&frame;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  eventCopy = event;
  callbackCopy = callback;
  if (eventCopy)
  {
    parkedCar = self->_parkedCar;
    if (parkedCar)
    {
      vehicleEvent = [(ParkedCar *)parkedCar vehicleEvent];
      identifier = [vehicleEvent identifier];
      identifier2 = [eventCopy identifier];
      v17 = [identifier isEqual:identifier2];

      if (v17)
      {
        [(ParkedCarManager *)self updateParkedCarWithVehicleEvent:eventCopy coordinate:v7 referenceFrame:latitude, longitude];
        if (!callbackCopy)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }
  }

  mapItem = [eventCopy mapItem];
  geoMapItemHandle = [mapItem geoMapItemHandle];

  if (geoMapItemHandle)
  {
    objc_initWeak(&location, self);
    v20 = +[GEOMapService sharedService];
    mapItem2 = [eventCopy mapItem];
    geoMapItemHandle2 = [mapItem2 geoMapItemHandle];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100F3FABC;
    v23[3] = &unk_10165DC28;
    objc_copyWeak(v26, &location);
    v26[1] = *&latitude;
    v26[2] = *&longitude;
    v27 = v7;
    v24 = eventCopy;
    v25 = callbackCopy;
    [v20 resolveMapItemFromHandle:geoMapItemHandle2 completionHandler:v23];

    objc_destroyWeak(v26);
    objc_destroyWeak(&location);
  }

  else
  {
    [(ParkedCarManager *)self setParkedCarWithMapItem:0 overrideCoordinate:v7 referenceFrame:eventCopy vehicleEvent:latitude, longitude];
    if (callbackCopy)
    {
LABEL_9:
      callbackCopy[2](callbackCopy);
    }
  }

LABEL_10:
}

- (void)setParkedCarWithMapItem:(id)item overrideCoordinate:(CLLocationCoordinate2D)coordinate referenceFrame:(int)frame vehicleEvent:(id)event
{
  v7 = *&frame;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  itemCopy = item;
  eventCopy = event;
  if (eventCopy)
  {
    v13 = [[ParkedCar alloc] initWithVehicleEvent:eventCopy geoMapItem:itemCopy];
  }

  else
  {
    v13 = 0;
  }

  v55.latitude = latitude;
  v55.longitude = longitude;
  if (CLLocationCoordinate2DIsValid(v55))
  {
    [(ParkedCar *)v13 setCoordinate:latitude, longitude];
    [(ParkedCar *)v13 setReferenceFrame:v7];
  }

  v39 = eventCopy;
  p_parkedCar = &self->_parkedCar;
  parkedCar = self->_parkedCar;
  if (parkedCar)
  {
    v38 = itemCopy;
    v16 = parkedCar;
    v17 = self->_parkedCar;
    self->_parkedCar = 0;

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v19 = [allObjects countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v49;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v49 != v21)
          {
            objc_enumerationMutation(allObjects);
          }

          v23 = *(*(&v48 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v23 parkedCarManager:self didRemoveParkedCar:v16];
          }
        }

        v20 = [allObjects countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v20);
    }

    p_parkedCar = &self->_parkedCar;
    itemCopy = v38;
  }

  [(GEOMapServiceTicket *)self->_ticket cancel];
  ticket = self->_ticket;
  self->_ticket = 0;

  objc_storeStrong(p_parkedCar, v13);
  if (self->_parkedCar)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    allObjects2 = [(NSHashTable *)self->_observers allObjects];
    v26 = [allObjects2 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v45;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(allObjects2);
          }

          v30 = *(*(&v44 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v30 parkedCarManager:self didAddParkedCar:self->_parkedCar];
          }
        }

        v27 = [allObjects2 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v27);
    }

    if (!itemCopy)
    {
      [(ParkedCarManager *)self _updateParkedCarMapItem];
    }
  }

  v31 = [(NSMutableArray *)self->_fetchHandlers copy];
  fetchHandlers = self->_fetchHandlers;
  self->_fetchHandlers = 0;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v33 = v31;
  v34 = [v33 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v41;
    do
    {
      for (k = 0; k != v35; k = k + 1)
      {
        if (*v41 != v36)
        {
          objc_enumerationMutation(v33);
        }

        (*(*(*(&v40 + 1) + 8 * k) + 16))();
      }

      v35 = [v33 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v35);
  }
}

- (void)updateParkedCarWithVehicleEvent:(id)event coordinate:(CLLocationCoordinate2D)coordinate referenceFrame:(int)frame
{
  v5 = *&frame;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  eventCopy = event;
  parkedCar = self->_parkedCar;
  mapItem = [(ParkedCar *)parkedCar mapItem];
  _geoMapItem = [mapItem _geoMapItem];
  [(ParkedCar *)parkedCar updateFromVehicleEvent:eventCopy geoMapItem:_geoMapItem];

  v36.latitude = latitude;
  v36.longitude = longitude;
  if (CLLocationCoordinate2DIsValid(v36))
  {
    [(ParkedCar *)self->_parkedCar setCoordinate:latitude, longitude];
    [(ParkedCar *)self->_parkedCar setReferenceFrame:v5];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v14 = [allObjects countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(allObjects);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v18 parkedCarManager:self didUpdateParkedCar:self->_parkedCar];
        }
      }

      v15 = [allObjects countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v15);
  }

  v19 = [(NSMutableArray *)self->_fetchHandlers copy];
  fetchHandlers = self->_fetchHandlers;
  self->_fetchHandlers = 0;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = v19;
  v22 = [v21 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v27;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v21);
        }

        (*(*(*(&v26 + 1) + 8 * j) + 16))(*(*(&v26 + 1) + 8 * j));
      }

      v23 = [v21 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v23);
  }
}

- (void)fetchParkedCar:(id)car
{
  carCopy = car;
  if (carCopy)
  {
    fetchHandlers = self->_fetchHandlers;
    v10 = carCopy;
    if (!fetchHandlers)
    {
      v6 = +[NSMutableArray array];
      v7 = self->_fetchHandlers;
      self->_fetchHandlers = v6;

      fetchHandlers = self->_fetchHandlers;
    }

    v8 = [v10 copy];
    v9 = objc_retainBlock(v8);
    [(NSMutableArray *)fetchHandlers addObject:v9];

    carCopy = v10;
    if (!self->_isUpdating)
    {
      [(ParkedCarManager *)self _updateParkedCar];
      carCopy = v10;
    }
  }
}

- (void)addParkedCarObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)_authDidChange:(id)change
{
  v4 = +[MKLocationManager sharedLocationManager];
  if ([v4 isAuthorizedForPreciseLocation])
  {
    [(ParkedCarManager *)self _updateParkedCar];
  }

  else
  {
    [(ParkedCarManager *)self removeParkedCar];
  }
}

- (void)dealloc
{
  [(MapsSuggestionsRoutine *)self->_routine removeParkedCarObserver:self];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ParkedCarManager;
  [(ParkedCarManager *)&v4 dealloc];
}

@end
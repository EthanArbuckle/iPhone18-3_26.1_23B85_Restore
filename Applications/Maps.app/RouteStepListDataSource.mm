@interface RouteStepListDataSource
- (NSArray)items;
- (NSMutableIndexSet)excludedStepIndices;
- (RouteStepListDataSource)initWithTraitCollection:(id)collection options:(unint64_t)options metrics:(id)metrics context:(int64_t)context;
- (RouteStepListDataSourceDelegate)delegate;
- (id)firstStepManeuverItem;
- (id)lastStepManeuverItem;
- (unint64_t)_firstDisplayedStepIndex;
- (unint64_t)_highlightedStepIndex;
- (unint64_t)itemIndexForStepIndex:(unint64_t)index;
- (void)_appendItem:(id)item toArray:(id)array;
- (void)_calculateItems;
- (void)_localeDidChange;
- (void)setActiveStepIndex:(unint64_t)index;
- (void)setAllowedStepIndices:(id)indices;
- (void)setCurrentLocale:(id)locale;
- (void)setMissedStepIndex:(unint64_t)index;
- (void)setRoute:(id)route;
- (void)setTraitCollection:(id)collection;
- (void)setVehicle:(id)vehicle;
@end

@implementation RouteStepListDataSource

- (NSArray)items
{
  items = self->_items;
  if (!items)
  {
    [(RouteStepListDataSource *)self _calculateItems];
    items = self->_items;
  }

  return items;
}

- (NSMutableIndexSet)excludedStepIndices
{
  excludedStepIndices = self->_excludedStepIndices;
  if (!excludedStepIndices)
  {
    v4 = objc_opt_new();
    v5 = self->_excludedStepIndices;
    self->_excludedStepIndices = v4;

    excludedStepIndices = self->_excludedStepIndices;
  }

  return excludedStepIndices;
}

- (RouteStepListDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_localeDidChange
{
  v3 = +[NSLocale currentLocale];
  [(RouteStepListDataSource *)self setCurrentLocale:v3];
}

- (void)_appendItem:(id)item toArray:(id)array
{
  itemCopy = item;
  arrayCopy = array;
  traitCollection = [(RouteStepListDataSource *)self traitCollection];
  [itemCopy setTraitCollection:traitCollection];

  delegate = [(RouteStepListDataSource *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(RouteStepListDataSource *)self delegate];
    [delegate2 customizeItem:itemCopy forDataSource:self];
  }

  [arrayCopy addObject:itemCopy];
}

- (void)_calculateItems
{
  v3 = objc_opt_new();
  metrics = [(RouteStepListDataSource *)self metrics];
  activeStepIndex = [(RouteStepListDataSource *)self activeStepIndex];
  traitCollection = [(RouteStepListDataSource *)self traitCollection];
  [traitCollection displayScale];
  v7 = v6;

  v73 = self->_route;
  if ([(GEOComposedRoute *)v73 isEVRoute])
  {
    vehicle = [(RouteStepListDataSource *)self vehicle];
  }

  else
  {
    vehicle = 0;
  }

  route = [(RouteStepListDataSource *)self route];
  _maps_directionsWaypoints = [route _maps_directionsWaypoints];

  v10 = sub_100035E6C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    name = [(GEOComposedRoute *)v73 name];
    uniqueRouteID = [(GEOComposedRoute *)v73 uniqueRouteID];
    *buf = 138412802;
    v75 = name;
    v76 = 2112;
    v77 = uniqueRouteID;
    v78 = 2048;
    stepsCount = [(GEOComposedRoute *)v73 stepsCount];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Calculating items for route %@ (%@) with steps %lu", buf, 0x20u);
  }

  if (([(RouteStepListDataSource *)self options]& 1) != 0)
  {
    route2 = [(RouteStepListDataSource *)self route];
    origin = [route2 origin];

    if (origin)
    {
      v15 = [RouteStepWaypointItem alloc];
      firstObject = [_maps_directionsWaypoints firstObject];
      delegate = [(RouteStepListDataSource *)self delegate];
      v18 = -[RouteStepWaypointItem initWithWaypoint:waypointType:arrivalStep:vehicle:route:cellClass:state:metrics:context:scale:](v15, "initWithWaypoint:waypointType:arrivalStep:vehicle:route:cellClass:state:metrics:context:scale:", firstObject, 0, 0, vehicle, v73, [delegate cellClassForItemType:0], v7, activeStepIndex == 0, metrics, self->_context);

      [(RouteStepListDataSource *)self _appendItem:v18 toArray:v3];
    }
  }

  v66 = _maps_directionsWaypoints;
  _highlightedStepIndex = [(RouteStepListDataSource *)self _highlightedStepIndex];
  steps = [(GEOComposedRoute *)v73 steps];
  v20 = [steps count];

  v69 = metrics;
  if (v20)
  {
    v21 = 0;
    v67 = v3;
    do
    {
      steps2 = [(GEOComposedRoute *)v73 steps];
      v23 = [steps2 objectAtIndexedSubscript:v21];

      if (v21 || (-[RouteStepListDataSource options](self, "options") & 8) != 0 || [v23 maneuverType] != 17 || (objc_msgSend(v23, "geoStep"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "instructionSet"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "hasDrivingWalkingListInstruction"), v25, v24, (v26 & 1) != 0))
      {
        if (v21 - 1 >= v20)
        {
          excludedStepIndices2 = 0;
        }

        else
        {
          steps3 = [(GEOComposedRoute *)v73 steps];
          excludedStepIndices2 = [steps3 objectAtIndexedSubscript:v21 - 1];
        }

        if ((([excludedStepIndices2 isEVChargerStep] & 1) != 0 || (-[RouteStepListDataSource options](self, "options") & 0x40) != 0) && objc_msgSend(v23, "maneuverType") == 85 || (objc_msgSend(v23, "geoStep"), v29 = objc_claimAutoreleasedReturnValue(), v29, !v29) || (-[RouteStepListDataSource allowedStepIndices](self, "allowedStepIndices"), (v30 = objc_claimAutoreleasedReturnValue()) != 0) && (v31 = v30, -[RouteStepListDataSource allowedStepIndices](self, "allowedStepIndices"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "containsIndex:", v21), v32, v31, (v33 & 1) == 0))
        {
          excludedStepIndices = [(RouteStepListDataSource *)self excludedStepIndices];
          [(RouteStepManeuverItem *)excludedStepIndices addIndex:v21];
        }

        else
        {
          if (([(RouteStepListDataSource *)self options]& 2) != 0)
          {
            v72 = sub_100F5C4B8(v23, v73);
            legs = [(GEOComposedRoute *)v73 legs];
            v35 = [legs objectAtIndexedSubscript:{-[GEOComposedRoute legIndexForStepIndex:](v73, "legIndexForStepIndex:", objc_msgSend(v23, "stepIndex"))}];

            destination = [v35 destination];
            chargingInfo = [destination chargingInfo];

            destinationListSecondaryInstructions = [v35 destinationListSecondaryInstructions];
            v39 = [destinationListSecondaryInstructions count];

            if (v72 && (v39 || !chargingInfo))
            {
              v45 = [RouteStepWaypointItem alloc];
              delegate2 = [(RouteStepListDataSource *)self delegate];
              v46 = -[RouteStepWaypointItem initWithWaypoint:waypointType:arrivalStep:vehicle:route:cellClass:state:metrics:context:scale:](v45, "initWithWaypoint:waypointType:arrivalStep:vehicle:route:cellClass:state:metrics:context:scale:", v72, 1, v23, vehicle, v73, [delegate2 cellClassForItemType:0], v7, 1, v69, self->_context);

              metrics = v69;
              v3 = v67;
              [(RouteStepListDataSource *)self _appendItem:v46 toArray:v67];

              goto LABEL_35;
            }

            v3 = v67;
            metrics = v69;
          }

          if (_highlightedStepIndex == v21)
          {
            v40 = 2;
          }

          else
          {
            v40 = v21 >= activeStepIndex;
          }

          v41 = [RouteStepManeuverItem alloc];
          delegate3 = [(RouteStepListDataSource *)self delegate];
          v43 = [delegate3 cellClassForItemType:1];
          LOBYTE(v64) = v21 == self->_missedStepIndex;
          excludedStepIndices = [(RouteStepManeuverItem *)v41 initWithRouteStep:v23 cellClass:v43 state:v40 metrics:metrics context:self->_context route:v73 scale:v7 isMissedStep:v64];

          [(RouteStepListDataSource *)self _appendItem:excludedStepIndices toArray:v3];
        }
      }

      else
      {
        excludedStepIndices2 = [(RouteStepListDataSource *)self excludedStepIndices];
        [excludedStepIndices2 addIndex:0];
      }

LABEL_35:

      ++v21;
    }

    while (v20 != v21);
  }

  if (([(RouteStepListDataSource *)self options]& 4) != 0)
  {
    route3 = [(RouteStepListDataSource *)self route];
    destination2 = [route3 destination];

    if (destination2)
    {
      v49 = [RouteStepWaypointItem alloc];
      lastObject = [v66 lastObject];
      route4 = [(RouteStepListDataSource *)self route];
      steps4 = [route4 steps];
      lastObject2 = [steps4 lastObject];
      delegate4 = [(RouteStepListDataSource *)self delegate];
      v55 = -[RouteStepWaypointItem initWithWaypoint:waypointType:arrivalStep:vehicle:route:cellClass:state:metrics:context:scale:](v49, "initWithWaypoint:waypointType:arrivalStep:vehicle:route:cellClass:state:metrics:context:scale:", lastObject, 2, lastObject2, vehicle, v73, [delegate4 cellClassForItemType:0], v7, 1, v69, self->_context);

      metrics = v69;
      [(RouteStepListDataSource *)self _appendItem:v55 toArray:v3];
    }
  }

  if (([(RouteStepListDataSource *)self options]& 0x20) != 0)
  {
    route5 = [(RouteStepListDataSource *)self route];
    isMultipointRoute = [route5 isMultipointRoute];

    if (isMultipointRoute)
    {
      v58 = 0;
    }

    else
    {
      v58 = 2;
    }

    if ([(GEOComposedRoute *)v73 transportType]!= 1 && ![(GEOComposedRoute *)v73 isWalkingOnlyTransitRoute])
    {
      v58 |= 8uLL;
    }

    v59 = [RouteStepFooterItem alloc];
    delegate5 = [(RouteStepListDataSource *)self delegate];
    v61 = -[RouteStepFooterItem initWithCommandSet:cellClass:state:metrics:context:route:scale:](v59, "initWithCommandSet:cellClass:state:metrics:context:route:scale:", v58, [delegate5 cellClassForItemType:2], 1, metrics, self->_context, v73, v7);

    [(RouteStepListDataSource *)self _appendItem:v61 toArray:v3];
  }

  v62 = sub_100035E6C();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
  {
    v63 = [v3 count];
    *buf = 134218242;
    v75 = v63;
    v76 = 2112;
    v77 = v3;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "Built %lu items: %@", buf, 0x16u);
  }

  [(RouteStepListDataSource *)self setItems:v3];
}

- (id)lastStepManeuverItem
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  items = [(RouteStepListDataSource *)self items];
  reverseObjectEnumerator = [items reverseObjectEnumerator];

  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)firstStepManeuverItem
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  items = [(RouteStepListDataSource *)self items];
  v3 = [items countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(items);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [items countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (RouteStepListDataSource)initWithTraitCollection:(id)collection options:(unint64_t)options metrics:(id)metrics context:(int64_t)context
{
  collectionCopy = collection;
  metricsCopy = metrics;
  v19.receiver = self;
  v19.super_class = RouteStepListDataSource;
  v13 = [(RouteStepListDataSource *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_traitCollection, collection);
    v14->_options = options;
    objc_storeStrong(&v14->_metrics, metrics);
    v14->_context = context;
    v14->_missedStepIndex = 0x7FFFFFFFFFFFFFFFLL;
    v15 = +[NSLocale currentLocale];
    currentLocale = v14->_currentLocale;
    v14->_currentLocale = v15;

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v14 selector:"_localeDidChange" name:NSCurrentLocaleDidChangeNotification object:0];
  }

  return v14;
}

- (unint64_t)itemIndexForStepIndex:(unint64_t)index
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    excludedStepIndices = [(RouteStepListDataSource *)self excludedStepIndices];
    v7 = [excludedStepIndices containsIndex:0];

    if (index || (v7 & 1) == 0)
    {
      v8 = v7;
      excludedStepIndices2 = [(RouteStepListDataSource *)self excludedStepIndices];
      v10 = [excludedStepIndices2 countOfIndexesInRange:{v7, index - v7}];

      v3 = index - v10;
      items = [(RouteStepListDataSource *)self items];
      v12 = [items count];

      if (v3 >= v12)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100744D54;
        block[3] = &unk_10164E3F8;
        block[6] = v12;
        block[7] = index;
        block[8] = v8;
        block[4] = self;
        block[5] = v3;
        if (qword_10195D0D8 != -1)
        {
          dispatch_once(&qword_10195D0D8, block);
        }

        if (v12)
        {
          return v12 - 1;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v3;
}

- (void)setCurrentLocale:(id)locale
{
  localeCopy = locale;
  v5 = [localeCopy objectForKey:NSLocaleMeasurementSystem];
  p_currentLocale = &self->_currentLocale;
  v7 = [(NSLocale *)self->_currentLocale objectForKey:NSLocaleMeasurementSystem];
  v8 = v5;
  v9 = v7;
  if (v8 | v9)
  {
    v12 = v9;
    v13 = [v8 isEqual:v9];

    objc_storeStrong(&self->_currentLocale, locale);
    if (v13)
    {
      goto LABEL_6;
    }

    items = self->_items;
    self->_items = 0;

    delegate = [(RouteStepListDataSource *)self delegate];
    [delegate reloadDataSource:self];
  }

  else
  {
    v10 = localeCopy;
    delegate = *p_currentLocale;
    *p_currentLocale = v10;
  }

LABEL_6:
}

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  delegate = self->_traitCollection;
  v7 = collectionCopy;
  v19 = v7;
  if (delegate == v7)
  {

    goto LABEL_11;
  }

  userInterfaceStyle = [(UITraitCollection *)delegate userInterfaceStyle];
  if (userInterfaceStyle != [(UITraitCollection *)v19 userInterfaceStyle]|| ([(UITraitCollection *)delegate displayScale], v10 = v9, [(UITraitCollection *)v19 displayScale], v10 != v11) || ([(UITraitCollection *)delegate preferredContentSizeCategory], v12 = objc_claimAutoreleasedReturnValue(), [(UITraitCollection *)v19 preferredContentSizeCategory], v13 = objc_claimAutoreleasedReturnValue(), v14 = sub_10008FB5C(v12, v13), v13, v12, v14) || (v15 = [(UITraitCollection *)delegate horizontalSizeClass], v15 != [(UITraitCollection *)v19 horizontalSizeClass]))
  {

    goto LABEL_9;
  }

  verticalSizeClass = [(UITraitCollection *)delegate verticalSizeClass];
  verticalSizeClass2 = [(UITraitCollection *)v19 verticalSizeClass];

  if (verticalSizeClass != verticalSizeClass2)
  {
LABEL_9:
    objc_storeStrong(&self->_traitCollection, collection);
    items = self->_items;
    self->_items = 0;

    delegate = [(RouteStepListDataSource *)self delegate];
    [(UITraitCollection *)delegate reloadUIForDataSource:self];
LABEL_11:
  }
}

- (void)setAllowedStepIndices:(id)indices
{
  indicesCopy = indices;
  v6 = self->_allowedStepIndices;
  v7 = indicesCopy;
  if (v7 | v6)
  {
    v11 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v11;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_allowedStepIndices, indices);
      items = self->_items;
      self->_items = 0;

      delegate = [(RouteStepListDataSource *)self delegate];
      [delegate reloadDataSource:self];

      v7 = v11;
    }
  }
}

- (void)setVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  p_vehicle = &self->_vehicle;
  v7 = self->_vehicle;
  v8 = vehicleCopy;
  if (v8 | v7)
  {
    v17 = v8;
    v9 = [v7 isEqual:v8];

    v8 = v17;
    if ((v9 & 1) == 0)
    {
      displayName = [(VGVehicle *)*p_vehicle displayName];
      displayName2 = [v17 displayName];
      if ([displayName isEqualToString:displayName2])
      {
        currentVehicleState = [(VGVehicle *)*p_vehicle currentVehicleState];
        currentVehicleState2 = [v17 currentVehicleState];
        v14 = [currentVehicleState isSignificantlyDifferentFromVehicleState:currentVehicleState2];

        v8 = v17;
        if (!v14)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

      objc_storeStrong(&self->_vehicle, vehicle);
      items = self->_items;
      self->_items = 0;

      delegate = [(RouteStepListDataSource *)self delegate];
      [delegate reloadDataSource:self];

      v8 = v17;
    }
  }

LABEL_8:
}

- (void)setMissedStepIndex:(unint64_t)index
{
  if (self->_missedStepIndex != index)
  {
    self->_missedStepIndex = index;
    items = self->_items;
    self->_items = 0;

    delegate = [(RouteStepListDataSource *)self delegate];
    [delegate reloadDataSource:self];
  }
}

- (void)setActiveStepIndex:(unint64_t)index
{
  activeStepIndex = self->_activeStepIndex;
  if (activeStepIndex == index)
  {
    return;
  }

  self->_activeStepIndex = index;
  items = [(RouteStepListDataSource *)self items];
  v7 = [items count];

  if (!v7)
  {
    return;
  }

  v18 = objc_opt_new();
  if (index != 0x7FFFFFFFFFFFFFFFLL && activeStepIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    items2 = [(RouteStepListDataSource *)self items];
    if ([items2 count] <= index)
    {
    }

    else
    {
      items3 = [(RouteStepListDataSource *)self items];
      v10 = [items3 count];

      if (activeStepIndex < v10)
      {
        if (activeStepIndex >= index)
        {
          indexCopy = index;
        }

        else
        {
          indexCopy = activeStepIndex;
        }

        if (activeStepIndex <= index)
        {
          indexCopy2 = index;
        }

        else
        {
          indexCopy2 = activeStepIndex;
        }

        goto LABEL_16;
      }
    }
  }

  indexCopy = 0;
  indexCopy2 = [(NSArray *)self->_items count]- 1;
  do
  {
LABEL_16:
    if (index == indexCopy)
    {
      v13 = 2;
    }

    else
    {
      v13 = indexCopy >= index;
    }

    items4 = [(RouteStepListDataSource *)self items];
    v15 = [items4 objectAtIndexedSubscript:indexCopy];

    [v15 setState:v13];
    [v18 addIndex:indexCopy];

    ++indexCopy;
  }

  while (indexCopy <= indexCopy2);
  delegate = [(RouteStepListDataSource *)self delegate];
  v17 = [v18 copy];
  [delegate reloadStepIndices:v17 forDataSource:self];
}

- (unint64_t)_highlightedStepIndex
{
  _firstDisplayedStepIndex = [(RouteStepListDataSource *)self _firstDisplayedStepIndex];
  route = [(RouteStepListDataSource *)self route];
  steps = [route steps];
  v6 = [steps count];

  if (_firstDisplayedStepIndex >= v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = 0;
  while (_firstDisplayedStepIndex + v7 != [(RouteStepListDataSource *)self activeStepIndex])
  {
    if ([(RouteStepListDataSource *)self activeStepIndex]< _firstDisplayedStepIndex + v7 && !v7)
    {
      return _firstDisplayedStepIndex;
    }

    route2 = [(RouteStepListDataSource *)self route];
    steps2 = [route2 steps];
    v10 = [steps2 count];

    ++v7;
    if (_firstDisplayedStepIndex + v7 >= v10)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  _firstDisplayedStepIndex += v7;
  return _firstDisplayedStepIndex;
}

- (unint64_t)_firstDisplayedStepIndex
{
  if (([(RouteStepListDataSource *)self options]& 8) != 0)
  {
    return 0;
  }

  route = [(RouteStepListDataSource *)self route];
  steps = [route steps];
  firstObject = [steps firstObject];

  if ([firstObject maneuverType] == 17)
  {
    geoStep = [firstObject geoStep];
    instructionSet = [geoStep instructionSet];
    v8 = [instructionSet hasDrivingWalkingListInstruction] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  if (self->_route != routeCopy)
  {
    v6 = sub_100035E6C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      uniqueRouteID = [(GEOComposedRoute *)self->_route uniqueRouteID];
      uniqueRouteID2 = [(GEOComposedRoute *)routeCopy uniqueRouteID];
      v13 = 138412546;
      v14 = uniqueRouteID;
      v15 = 2112;
      v16 = uniqueRouteID2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Changing data source's route from %@ to %@", &v13, 0x16u);
    }

    objc_storeStrong(&self->_route, route);
    self->_activeStepIndex = 0;
    excludedStepIndices = self->_excludedStepIndices;
    self->_excludedStepIndices = 0;

    allowedStepIndices = self->_allowedStepIndices;
    self->_allowedStepIndices = 0;

    self->_missedStepIndex = 0x7FFFFFFFFFFFFFFFLL;
    items = self->_items;
    self->_items = 0;

    delegate = [(RouteStepListDataSource *)self delegate];
    [delegate reloadDataSource:self];
  }
}

@end
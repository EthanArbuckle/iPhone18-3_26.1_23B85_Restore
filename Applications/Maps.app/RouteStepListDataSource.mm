@interface RouteStepListDataSource
- (NSArray)items;
- (NSMutableIndexSet)excludedStepIndices;
- (RouteStepListDataSource)initWithTraitCollection:(id)a3 options:(unint64_t)a4 metrics:(id)a5 context:(int64_t)a6;
- (RouteStepListDataSourceDelegate)delegate;
- (id)firstStepManeuverItem;
- (id)lastStepManeuverItem;
- (unint64_t)_firstDisplayedStepIndex;
- (unint64_t)_highlightedStepIndex;
- (unint64_t)itemIndexForStepIndex:(unint64_t)a3;
- (void)_appendItem:(id)a3 toArray:(id)a4;
- (void)_calculateItems;
- (void)_localeDidChange;
- (void)setActiveStepIndex:(unint64_t)a3;
- (void)setAllowedStepIndices:(id)a3;
- (void)setCurrentLocale:(id)a3;
- (void)setMissedStepIndex:(unint64_t)a3;
- (void)setRoute:(id)a3;
- (void)setTraitCollection:(id)a3;
- (void)setVehicle:(id)a3;
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

- (void)_appendItem:(id)a3 toArray:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(RouteStepListDataSource *)self traitCollection];
  [v11 setTraitCollection:v7];

  v8 = [(RouteStepListDataSource *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(RouteStepListDataSource *)self delegate];
    [v10 customizeItem:v11 forDataSource:self];
  }

  [v6 addObject:v11];
}

- (void)_calculateItems
{
  v3 = objc_opt_new();
  v4 = [(RouteStepListDataSource *)self metrics];
  v71 = [(RouteStepListDataSource *)self activeStepIndex];
  v5 = [(RouteStepListDataSource *)self traitCollection];
  [v5 displayScale];
  v7 = v6;

  v73 = self->_route;
  if ([(GEOComposedRoute *)v73 isEVRoute])
  {
    v68 = [(RouteStepListDataSource *)self vehicle];
  }

  else
  {
    v68 = 0;
  }

  v8 = [(RouteStepListDataSource *)self route];
  v9 = [v8 _maps_directionsWaypoints];

  v10 = sub_100035E6C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [(GEOComposedRoute *)v73 name];
    v12 = [(GEOComposedRoute *)v73 uniqueRouteID];
    *buf = 138412802;
    v75 = v11;
    v76 = 2112;
    v77 = v12;
    v78 = 2048;
    v79 = [(GEOComposedRoute *)v73 stepsCount];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Calculating items for route %@ (%@) with steps %lu", buf, 0x20u);
  }

  if (([(RouteStepListDataSource *)self options]& 1) != 0)
  {
    v13 = [(RouteStepListDataSource *)self route];
    v14 = [v13 origin];

    if (v14)
    {
      v15 = [RouteStepWaypointItem alloc];
      v16 = [v9 firstObject];
      v17 = [(RouteStepListDataSource *)self delegate];
      v18 = -[RouteStepWaypointItem initWithWaypoint:waypointType:arrivalStep:vehicle:route:cellClass:state:metrics:context:scale:](v15, "initWithWaypoint:waypointType:arrivalStep:vehicle:route:cellClass:state:metrics:context:scale:", v16, 0, 0, v68, v73, [v17 cellClassForItemType:0], v7, v71 == 0, v4, self->_context);

      [(RouteStepListDataSource *)self _appendItem:v18 toArray:v3];
    }
  }

  v66 = v9;
  v70 = [(RouteStepListDataSource *)self _highlightedStepIndex];
  v19 = [(GEOComposedRoute *)v73 steps];
  v20 = [v19 count];

  v69 = v4;
  if (v20)
  {
    v21 = 0;
    v67 = v3;
    do
    {
      v22 = [(GEOComposedRoute *)v73 steps];
      v23 = [v22 objectAtIndexedSubscript:v21];

      if (v21 || (-[RouteStepListDataSource options](self, "options") & 8) != 0 || [v23 maneuverType] != 17 || (objc_msgSend(v23, "geoStep"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "instructionSet"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "hasDrivingWalkingListInstruction"), v25, v24, (v26 & 1) != 0))
      {
        if (v21 - 1 >= v20)
        {
          v28 = 0;
        }

        else
        {
          v27 = [(GEOComposedRoute *)v73 steps];
          v28 = [v27 objectAtIndexedSubscript:v21 - 1];
        }

        if ((([v28 isEVChargerStep] & 1) != 0 || (-[RouteStepListDataSource options](self, "options") & 0x40) != 0) && objc_msgSend(v23, "maneuverType") == 85 || (objc_msgSend(v23, "geoStep"), v29 = objc_claimAutoreleasedReturnValue(), v29, !v29) || (-[RouteStepListDataSource allowedStepIndices](self, "allowedStepIndices"), (v30 = objc_claimAutoreleasedReturnValue()) != 0) && (v31 = v30, -[RouteStepListDataSource allowedStepIndices](self, "allowedStepIndices"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "containsIndex:", v21), v32, v31, (v33 & 1) == 0))
        {
          v44 = [(RouteStepListDataSource *)self excludedStepIndices];
          [(RouteStepManeuverItem *)v44 addIndex:v21];
        }

        else
        {
          if (([(RouteStepListDataSource *)self options]& 2) != 0)
          {
            v72 = sub_100F5C4B8(v23, v73);
            v34 = [(GEOComposedRoute *)v73 legs];
            v35 = [v34 objectAtIndexedSubscript:{-[GEOComposedRoute legIndexForStepIndex:](v73, "legIndexForStepIndex:", objc_msgSend(v23, "stepIndex"))}];

            v36 = [v35 destination];
            v37 = [v36 chargingInfo];

            v38 = [v35 destinationListSecondaryInstructions];
            v39 = [v38 count];

            if (v72 && (v39 || !v37))
            {
              v45 = [RouteStepWaypointItem alloc];
              v65 = [(RouteStepListDataSource *)self delegate];
              v46 = -[RouteStepWaypointItem initWithWaypoint:waypointType:arrivalStep:vehicle:route:cellClass:state:metrics:context:scale:](v45, "initWithWaypoint:waypointType:arrivalStep:vehicle:route:cellClass:state:metrics:context:scale:", v72, 1, v23, v68, v73, [v65 cellClassForItemType:0], v7, 1, v69, self->_context);

              v4 = v69;
              v3 = v67;
              [(RouteStepListDataSource *)self _appendItem:v46 toArray:v67];

              goto LABEL_35;
            }

            v3 = v67;
            v4 = v69;
          }

          if (v70 == v21)
          {
            v40 = 2;
          }

          else
          {
            v40 = v21 >= v71;
          }

          v41 = [RouteStepManeuverItem alloc];
          v42 = [(RouteStepListDataSource *)self delegate];
          v43 = [v42 cellClassForItemType:1];
          LOBYTE(v64) = v21 == self->_missedStepIndex;
          v44 = [(RouteStepManeuverItem *)v41 initWithRouteStep:v23 cellClass:v43 state:v40 metrics:v4 context:self->_context route:v73 scale:v7 isMissedStep:v64];

          [(RouteStepListDataSource *)self _appendItem:v44 toArray:v3];
        }
      }

      else
      {
        v28 = [(RouteStepListDataSource *)self excludedStepIndices];
        [v28 addIndex:0];
      }

LABEL_35:

      ++v21;
    }

    while (v20 != v21);
  }

  if (([(RouteStepListDataSource *)self options]& 4) != 0)
  {
    v47 = [(RouteStepListDataSource *)self route];
    v48 = [v47 destination];

    if (v48)
    {
      v49 = [RouteStepWaypointItem alloc];
      v50 = [v66 lastObject];
      v51 = [(RouteStepListDataSource *)self route];
      v52 = [v51 steps];
      v53 = [v52 lastObject];
      v54 = [(RouteStepListDataSource *)self delegate];
      v55 = -[RouteStepWaypointItem initWithWaypoint:waypointType:arrivalStep:vehicle:route:cellClass:state:metrics:context:scale:](v49, "initWithWaypoint:waypointType:arrivalStep:vehicle:route:cellClass:state:metrics:context:scale:", v50, 2, v53, v68, v73, [v54 cellClassForItemType:0], v7, 1, v69, self->_context);

      v4 = v69;
      [(RouteStepListDataSource *)self _appendItem:v55 toArray:v3];
    }
  }

  if (([(RouteStepListDataSource *)self options]& 0x20) != 0)
  {
    v56 = [(RouteStepListDataSource *)self route];
    v57 = [v56 isMultipointRoute];

    if (v57)
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
    v60 = [(RouteStepListDataSource *)self delegate];
    v61 = -[RouteStepFooterItem initWithCommandSet:cellClass:state:metrics:context:route:scale:](v59, "initWithCommandSet:cellClass:state:metrics:context:route:scale:", v58, [v60 cellClassForItemType:2], 1, v4, self->_context, v73, v7);

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
  v2 = [(RouteStepListDataSource *)self items];
  v3 = [v2 reverseObjectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(RouteStepListDataSource *)self items];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (RouteStepListDataSource)initWithTraitCollection:(id)a3 options:(unint64_t)a4 metrics:(id)a5 context:(int64_t)a6
{
  v11 = a3;
  v12 = a5;
  v19.receiver = self;
  v19.super_class = RouteStepListDataSource;
  v13 = [(RouteStepListDataSource *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_traitCollection, a3);
    v14->_options = a4;
    objc_storeStrong(&v14->_metrics, a5);
    v14->_context = a6;
    v14->_missedStepIndex = 0x7FFFFFFFFFFFFFFFLL;
    v15 = +[NSLocale currentLocale];
    currentLocale = v14->_currentLocale;
    v14->_currentLocale = v15;

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v14 selector:"_localeDidChange" name:NSCurrentLocaleDidChangeNotification object:0];
  }

  return v14;
}

- (unint64_t)itemIndexForStepIndex:(unint64_t)a3
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(RouteStepListDataSource *)self excludedStepIndices];
    v7 = [v6 containsIndex:0];

    if (a3 || (v7 & 1) == 0)
    {
      v8 = v7;
      v9 = [(RouteStepListDataSource *)self excludedStepIndices];
      v10 = [v9 countOfIndexesInRange:{v7, a3 - v7}];

      v3 = a3 - v10;
      v11 = [(RouteStepListDataSource *)self items];
      v12 = [v11 count];

      if (v3 >= v12)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100744D54;
        block[3] = &unk_10164E3F8;
        block[6] = v12;
        block[7] = a3;
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

- (void)setCurrentLocale:(id)a3
{
  v15 = a3;
  v5 = [v15 objectForKey:NSLocaleMeasurementSystem];
  p_currentLocale = &self->_currentLocale;
  v7 = [(NSLocale *)self->_currentLocale objectForKey:NSLocaleMeasurementSystem];
  v8 = v5;
  v9 = v7;
  if (v8 | v9)
  {
    v12 = v9;
    v13 = [v8 isEqual:v9];

    objc_storeStrong(&self->_currentLocale, a3);
    if (v13)
    {
      goto LABEL_6;
    }

    items = self->_items;
    self->_items = 0;

    v11 = [(RouteStepListDataSource *)self delegate];
    [v11 reloadDataSource:self];
  }

  else
  {
    v10 = v15;
    v11 = *p_currentLocale;
    *p_currentLocale = v10;
  }

LABEL_6:
}

- (void)setTraitCollection:(id)a3
{
  v5 = a3;
  v6 = self->_traitCollection;
  v7 = v5;
  v19 = v7;
  if (v6 == v7)
  {

    goto LABEL_11;
  }

  v8 = [(UITraitCollection *)v6 userInterfaceStyle];
  if (v8 != [(UITraitCollection *)v19 userInterfaceStyle]|| ([(UITraitCollection *)v6 displayScale], v10 = v9, [(UITraitCollection *)v19 displayScale], v10 != v11) || ([(UITraitCollection *)v6 preferredContentSizeCategory], v12 = objc_claimAutoreleasedReturnValue(), [(UITraitCollection *)v19 preferredContentSizeCategory], v13 = objc_claimAutoreleasedReturnValue(), v14 = sub_10008FB5C(v12, v13), v13, v12, v14) || (v15 = [(UITraitCollection *)v6 horizontalSizeClass], v15 != [(UITraitCollection *)v19 horizontalSizeClass]))
  {

    goto LABEL_9;
  }

  v16 = [(UITraitCollection *)v6 verticalSizeClass];
  v17 = [(UITraitCollection *)v19 verticalSizeClass];

  if (v16 != v17)
  {
LABEL_9:
    objc_storeStrong(&self->_traitCollection, a3);
    items = self->_items;
    self->_items = 0;

    v6 = [(RouteStepListDataSource *)self delegate];
    [(UITraitCollection *)v6 reloadUIForDataSource:self];
LABEL_11:
  }
}

- (void)setAllowedStepIndices:(id)a3
{
  v5 = a3;
  v6 = self->_allowedStepIndices;
  v7 = v5;
  if (v7 | v6)
  {
    v11 = v7;
    v8 = [v6 isEqual:v7];

    v7 = v11;
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_allowedStepIndices, a3);
      items = self->_items;
      self->_items = 0;

      v10 = [(RouteStepListDataSource *)self delegate];
      [v10 reloadDataSource:self];

      v7 = v11;
    }
  }
}

- (void)setVehicle:(id)a3
{
  v5 = a3;
  p_vehicle = &self->_vehicle;
  v7 = self->_vehicle;
  v8 = v5;
  if (v8 | v7)
  {
    v17 = v8;
    v9 = [v7 isEqual:v8];

    v8 = v17;
    if ((v9 & 1) == 0)
    {
      v10 = [(VGVehicle *)*p_vehicle displayName];
      v11 = [v17 displayName];
      if ([v10 isEqualToString:v11])
      {
        v12 = [(VGVehicle *)*p_vehicle currentVehicleState];
        v13 = [v17 currentVehicleState];
        v14 = [v12 isSignificantlyDifferentFromVehicleState:v13];

        v8 = v17;
        if (!v14)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

      objc_storeStrong(&self->_vehicle, a3);
      items = self->_items;
      self->_items = 0;

      v16 = [(RouteStepListDataSource *)self delegate];
      [v16 reloadDataSource:self];

      v8 = v17;
    }
  }

LABEL_8:
}

- (void)setMissedStepIndex:(unint64_t)a3
{
  if (self->_missedStepIndex != a3)
  {
    self->_missedStepIndex = a3;
    items = self->_items;
    self->_items = 0;

    v6 = [(RouteStepListDataSource *)self delegate];
    [v6 reloadDataSource:self];
  }
}

- (void)setActiveStepIndex:(unint64_t)a3
{
  activeStepIndex = self->_activeStepIndex;
  if (activeStepIndex == a3)
  {
    return;
  }

  self->_activeStepIndex = a3;
  v6 = [(RouteStepListDataSource *)self items];
  v7 = [v6 count];

  if (!v7)
  {
    return;
  }

  v18 = objc_opt_new();
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && activeStepIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(RouteStepListDataSource *)self items];
    if ([v8 count] <= a3)
    {
    }

    else
    {
      v9 = [(RouteStepListDataSource *)self items];
      v10 = [v9 count];

      if (activeStepIndex < v10)
      {
        if (activeStepIndex >= a3)
        {
          v11 = a3;
        }

        else
        {
          v11 = activeStepIndex;
        }

        if (activeStepIndex <= a3)
        {
          v12 = a3;
        }

        else
        {
          v12 = activeStepIndex;
        }

        goto LABEL_16;
      }
    }
  }

  v11 = 0;
  v12 = [(NSArray *)self->_items count]- 1;
  do
  {
LABEL_16:
    if (a3 == v11)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 >= a3;
    }

    v14 = [(RouteStepListDataSource *)self items];
    v15 = [v14 objectAtIndexedSubscript:v11];

    [v15 setState:v13];
    [v18 addIndex:v11];

    ++v11;
  }

  while (v11 <= v12);
  v16 = [(RouteStepListDataSource *)self delegate];
  v17 = [v18 copy];
  [v16 reloadStepIndices:v17 forDataSource:self];
}

- (unint64_t)_highlightedStepIndex
{
  v3 = [(RouteStepListDataSource *)self _firstDisplayedStepIndex];
  v4 = [(RouteStepListDataSource *)self route];
  v5 = [v4 steps];
  v6 = [v5 count];

  if (v3 >= v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = 0;
  while (v3 + v7 != [(RouteStepListDataSource *)self activeStepIndex])
  {
    if ([(RouteStepListDataSource *)self activeStepIndex]< v3 + v7 && !v7)
    {
      return v3;
    }

    v8 = [(RouteStepListDataSource *)self route];
    v9 = [v8 steps];
    v10 = [v9 count];

    ++v7;
    if (v3 + v7 >= v10)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v3 += v7;
  return v3;
}

- (unint64_t)_firstDisplayedStepIndex
{
  if (([(RouteStepListDataSource *)self options]& 8) != 0)
  {
    return 0;
  }

  v3 = [(RouteStepListDataSource *)self route];
  v4 = [v3 steps];
  v5 = [v4 firstObject];

  if ([v5 maneuverType] == 17)
  {
    v6 = [v5 geoStep];
    v7 = [v6 instructionSet];
    v8 = [v7 hasDrivingWalkingListInstruction] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setRoute:(id)a3
{
  v5 = a3;
  if (self->_route != v5)
  {
    v6 = sub_100035E6C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(GEOComposedRoute *)self->_route uniqueRouteID];
      v8 = [(GEOComposedRoute *)v5 uniqueRouteID];
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Changing data source's route from %@ to %@", &v13, 0x16u);
    }

    objc_storeStrong(&self->_route, a3);
    self->_activeStepIndex = 0;
    excludedStepIndices = self->_excludedStepIndices;
    self->_excludedStepIndices = 0;

    allowedStepIndices = self->_allowedStepIndices;
    self->_allowedStepIndices = 0;

    self->_missedStepIndex = 0x7FFFFFFFFFFFFFFFLL;
    items = self->_items;
    self->_items = 0;

    v12 = [(RouteStepListDataSource *)self delegate];
    [v12 reloadDataSource:self];
  }
}

@end
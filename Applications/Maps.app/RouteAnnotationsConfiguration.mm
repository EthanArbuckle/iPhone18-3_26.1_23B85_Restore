@interface RouteAnnotationsConfiguration
- (GEOComposedRoute)focusedRoute;
- (GEOComposedRoute)selectedRoute;
- (NSString)debugDescription;
- (NSString)description;
- (RouteAnnotationsConfiguration)initWithRoute:(id)route;
- (RouteAnnotationsConfiguration)initWithRoutes:(id)routes selectedRouteIndex:(unint64_t)index;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_copyPropertiesTo:(id)to;
- (void)_maps_buildDescriptionWithBlock:(id)block;
- (void)_setRoutes:(id)routes selectedRouteIndex:(unint64_t)index;
- (void)setRoutes:(id)routes;
@end

@implementation RouteAnnotationsConfiguration

- (GEOComposedRoute)selectedRoute
{
  selectedRouteIndex = self->_selectedRouteIndex;
  if (selectedRouteIndex >= [(NSArray *)self->_routes count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_routes objectAtIndexedSubscript:self->_selectedRouteIndex];
  }

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100A03F50;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(RouteAnnotationsConfiguration *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(RouteAnnotationsConfiguration *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9, v14, v15, v16, v17];

        goto LABEL_7;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

    goto LABEL_9;
  }

  v10 = @"<nil>";
LABEL_9:

  v11 = [v3 componentsJoinedByString:{@", "}];
  v12 = [NSString stringWithFormat:@"%@ (%@)", v10, v11];

  return v12;
}

- (GEOComposedRoute)focusedRoute
{
  focusedRouteIndex = self->_focusedRouteIndex;
  if (focusedRouteIndex >= [(NSArray *)self->_routes count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_routes objectAtIndexedSubscript:self->_focusedRouteIndex];
  }

  return v4;
}

- (void)_maps_buildDescriptionWithBlock:(id)block
{
  blockCopy = block;
  v5 = sub_100021DB0(self->_routes, &stru_101631CB0);
  v6 = v5;
  if (v5)
  {
    if ([v5 count])
    {
      selfCopy = self;
      v34 = blockCopy;
      v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v32 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (!v9)
      {
        goto LABEL_20;
      }

      v10 = v9;
      v11 = *v36;
      while (1)
      {
        v12 = 0;
        do
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v35 + 1) + 8 * v12);
          if (v13)
          {
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_13;
            }

            v16 = [v13 performSelector:"accessibilityIdentifier"];
            v17 = v16;
            if (v16 && ![v16 isEqualToString:v15])
            {
              v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];
            }

            else
            {

LABEL_13:
              v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
            }

            goto LABEL_16;
          }

          v18 = @"<nil>";
LABEL_16:

          [v7 addObject:v18];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v19 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
        v10 = v19;
        if (!v19)
        {
LABEL_20:

          v20 = [v8 componentsJoinedByString:{@", "}];
          v21 = [NSString stringWithFormat:@"<%p> [%@]", v8, v20];

          self = selfCopy;
          blockCopy = v34;
          v6 = v32;
          goto LABEL_23;
        }
      }
    }

    v21 = [NSString stringWithFormat:@"<%p> (empty)", v6];
  }

  else
  {
    v21 = @"<nil>";
  }

LABEL_23:

  v22 = (blockCopy + 16);
  (*(blockCopy + 2))(blockCopy, @"routes", v21);

  v23 = [NSNumber numberWithUnsignedInteger:self->_selectedRouteIndex];
  (*(blockCopy + 2))(blockCopy, @"selectedRouteIndex", v23);

  v24 = [NSNumber numberWithUnsignedInteger:self->_focusedRouteIndex];
  (*(blockCopy + 2))(blockCopy, @"focusedRouteIndex", v24);

  v25 = [NSNumber numberWithUnsignedInteger:self->_style];
  (*(blockCopy + 2))(blockCopy, @"style", v25);

  (*(blockCopy + 2))(blockCopy, @"selectedRouteCustomText", self->_selectedRouteCustomText);
  v26 = [NSNumber numberWithUnsignedInteger:self->_routeMarkerOptions];
  (*(blockCopy + 2))(blockCopy, @"routeMarkerOptions", v26);

  if (self->_selectPolyline)
  {
    v27 = @"YES";
  }

  else
  {
    v27 = @"NO";
  }

  (*v22)(blockCopy, @"selectPolyline", v27);
  if (self->_alternateRoutesEnabled)
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  (*v22)(blockCopy, @"alternateRoutesEnabled", v28);
  if (self->_routeTrafficFeaturesActive)
  {
    v29 = @"YES";
  }

  else
  {
    v29 = @"NO";
  }

  (*v22)(blockCopy, @"routeTrafficFeaturesActive", v29);
  v30 = [NSNumber numberWithUnsignedInteger:[(GEOComposedRouteAnchorPointList *)self->_anchorPoints count]];
  (*v22)(blockCopy, @"anchorPoints", v30);

  (*v22)(blockCopy, @"currentNavigationWaypoint", self->_currentNavigationWaypoint);
  v31 = [NSNumber numberWithUnsignedChar:self->_proximityToCurrentNavigationWaypoint];
  (*v22)(blockCopy, @"proximityToCurrentNavigationWaypoint", v31);
}

- (NSString)debugDescription
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100A03EE0;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(RouteAnnotationsConfiguration *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(RouteAnnotationsConfiguration *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9, v14, v15, v16, v17];

        goto LABEL_7;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

    goto LABEL_9;
  }

  v10 = @"<nil>";
LABEL_9:

  v11 = [v3 componentsJoinedByString:@"\n"];
  v12 = [NSString stringWithFormat:@"%@ {\n%@\n}", v10, v11];

  return v12;
}

- (void)_copyPropertiesTo:(id)to
{
  toCopy = to;
  routes = [(RouteAnnotationsConfiguration *)self routes];
  [toCopy setRoutes:routes];

  [toCopy setSelectedRouteIndex:{-[RouteAnnotationsConfiguration selectedRouteIndex](self, "selectedRouteIndex")}];
  originalRouteID = [(RouteAnnotationsConfiguration *)self originalRouteID];
  [toCopy setOriginalRouteID:originalRouteID];

  [toCopy setOriginalRouteDivergenceCoordinate:{-[RouteAnnotationsConfiguration originalRouteDivergenceCoordinate](self, "originalRouteDivergenceCoordinate")}];
  transitVehiclePositions = [(RouteAnnotationsConfiguration *)self transitVehiclePositions];
  [toCopy setTransitVehiclePositions:transitVehiclePositions];

  [toCopy setStyle:{-[RouteAnnotationsConfiguration style](self, "style")}];
  selectedRouteCustomText = [(RouteAnnotationsConfiguration *)self selectedRouteCustomText];
  [toCopy setSelectedRouteCustomText:selectedRouteCustomText];

  [toCopy setRouteMarkerOptions:{-[RouteAnnotationsConfiguration routeMarkerOptions](self, "routeMarkerOptions")}];
  [toCopy setAlternateRoutesEnabled:{-[RouteAnnotationsConfiguration alternateRoutesEnabled](self, "alternateRoutesEnabled")}];
  [toCopy setSelectPolyline:{-[RouteAnnotationsConfiguration selectsPolyline](self, "selectsPolyline")}];
  [toCopy setFocusedRouteIndex:{-[RouteAnnotationsConfiguration focusedRouteIndex](self, "focusedRouteIndex")}];
  [toCopy setRouteTrafficFeaturesActive:{-[RouteAnnotationsConfiguration routeTrafficFeaturesActive](self, "routeTrafficFeaturesActive")}];
  anchorPoints = [(RouteAnnotationsConfiguration *)self anchorPoints];
  v9 = [anchorPoints copy];
  [toCopy setAnchorPoints:v9];

  currentNavigationWaypoint = [(RouteAnnotationsConfiguration *)self currentNavigationWaypoint];
  [toCopy setCurrentNavigationWaypoint:currentNavigationWaypoint];

  [toCopy setProximityToCurrentNavigationWaypoint:{-[RouteAnnotationsConfiguration proximityToCurrentNavigationWaypoint](self, "proximityToCurrentNavigationWaypoint")}];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(RouteAnnotationsConfiguration *)[RouteAnnotationsMutableConfiguration allocWithZone:?], "initWithRoute:", 0];
  [(RouteAnnotationsConfiguration *)self _copyPropertiesTo:v4];
  return v4;
}

- (void)_setRoutes:(id)routes selectedRouteIndex:(unint64_t)index
{
  routesCopy = routes;
  v7 = routesCopy;
  if (self->_routes == routesCopy)
  {
    p_selectedRouteIndex = &self->_selectedRouteIndex;
    if (self->_selectedRouteIndex == index)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = routesCopy;
    v8 = [(NSArray *)routesCopy isEqualToArray:?];
    v7 = v14;
    p_selectedRouteIndex = &self->_selectedRouteIndex;
    selectedRouteIndex = self->_selectedRouteIndex;
    if (v8)
    {
      v11 = selectedRouteIndex == index;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      goto LABEL_13;
    }

    if ((v8 & 1) == 0)
    {
      v12 = [(NSArray *)v14 copy];
      routes = self->_routes;
      self->_routes = v12;

      v7 = v14;
    }

    if (selectedRouteIndex == index)
    {
      goto LABEL_12;
    }
  }

  *p_selectedRouteIndex = index;
LABEL_12:
  self->_focusedRouteIndex = 0x7FFFFFFFFFFFFFFFLL;
LABEL_13:
}

- (void)setRoutes:(id)routes
{
  routesCopy = routes;
  if ([routesCopy count])
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(RouteAnnotationsConfiguration *)self _setRoutes:routesCopy selectedRouteIndex:v4];
}

- (RouteAnnotationsConfiguration)initWithRoutes:(id)routes selectedRouteIndex:(unint64_t)index
{
  routesCopy = routes;
  v7 = [routesCopy count];
  v12.receiver = self;
  v12.super_class = RouteAnnotationsConfiguration;
  v8 = [(RouteAnnotationsConfiguration *)&v12 init];
  if (v8)
  {
    if (v7 <= index)
    {
      index = 0x7FFFFFFFFFFFFFFFLL;
    }

    v9 = [routesCopy copy];
    routes = v8->_routes;
    v8->_routes = v9;

    v8->_selectedRouteIndex = index;
    v8->_focusedRouteIndex = 0x7FFFFFFFFFFFFFFFLL;
    v8->_routeMarkerOptions = 3;
    *&v8->_selectPolyline = 257;
  }

  return v8;
}

- (RouteAnnotationsConfiguration)initWithRoute:(id)route
{
  if (route)
  {
    routeCopy = route;
    routeCopy2 = route;
    v5 = [NSArray arrayWithObjects:&routeCopy count:1];

    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  routeCopy = [(RouteAnnotationsConfiguration *)self initWithRoutes:v5 selectedRouteIndex:v6, routeCopy];

  return routeCopy;
}

@end
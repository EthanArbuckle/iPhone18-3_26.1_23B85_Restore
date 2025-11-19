@interface RouteAnnotationsConfiguration
- (GEOComposedRoute)focusedRoute;
- (GEOComposedRoute)selectedRoute;
- (NSString)debugDescription;
- (NSString)description;
- (RouteAnnotationsConfiguration)initWithRoute:(id)a3;
- (RouteAnnotationsConfiguration)initWithRoutes:(id)a3 selectedRouteIndex:(unint64_t)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_copyPropertiesTo:(id)a3;
- (void)_maps_buildDescriptionWithBlock:(id)a3;
- (void)_setRoutes:(id)a3 selectedRouteIndex:(unint64_t)a4;
- (void)setRoutes:(id)a3;
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
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100A03F50;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(RouteAnnotationsConfiguration *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
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

- (void)_maps_buildDescriptionWithBlock:(id)a3
{
  v4 = a3;
  v5 = sub_100021DB0(self->_routes, &stru_101631CB0);
  v6 = v5;
  if (v5)
  {
    if ([v5 count])
    {
      v33 = self;
      v34 = v4;
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

          self = v33;
          v4 = v34;
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

  v22 = (v4 + 16);
  (*(v4 + 2))(v4, @"routes", v21);

  v23 = [NSNumber numberWithUnsignedInteger:self->_selectedRouteIndex];
  (*(v4 + 2))(v4, @"selectedRouteIndex", v23);

  v24 = [NSNumber numberWithUnsignedInteger:self->_focusedRouteIndex];
  (*(v4 + 2))(v4, @"focusedRouteIndex", v24);

  v25 = [NSNumber numberWithUnsignedInteger:self->_style];
  (*(v4 + 2))(v4, @"style", v25);

  (*(v4 + 2))(v4, @"selectedRouteCustomText", self->_selectedRouteCustomText);
  v26 = [NSNumber numberWithUnsignedInteger:self->_routeMarkerOptions];
  (*(v4 + 2))(v4, @"routeMarkerOptions", v26);

  if (self->_selectPolyline)
  {
    v27 = @"YES";
  }

  else
  {
    v27 = @"NO";
  }

  (*v22)(v4, @"selectPolyline", v27);
  if (self->_alternateRoutesEnabled)
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  (*v22)(v4, @"alternateRoutesEnabled", v28);
  if (self->_routeTrafficFeaturesActive)
  {
    v29 = @"YES";
  }

  else
  {
    v29 = @"NO";
  }

  (*v22)(v4, @"routeTrafficFeaturesActive", v29);
  v30 = [NSNumber numberWithUnsignedInteger:[(GEOComposedRouteAnchorPointList *)self->_anchorPoints count]];
  (*v22)(v4, @"anchorPoints", v30);

  (*v22)(v4, @"currentNavigationWaypoint", self->_currentNavigationWaypoint);
  v31 = [NSNumber numberWithUnsignedChar:self->_proximityToCurrentNavigationWaypoint];
  (*v22)(v4, @"proximityToCurrentNavigationWaypoint", v31);
}

- (NSString)debugDescription
{
  v2 = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100A03EE0;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(RouteAnnotationsConfiguration *)v2 _maps_buildDescriptionWithBlock:v4];
  v5 = v2;
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

- (void)_copyPropertiesTo:(id)a3
{
  v11 = a3;
  v4 = [(RouteAnnotationsConfiguration *)self routes];
  [v11 setRoutes:v4];

  [v11 setSelectedRouteIndex:{-[RouteAnnotationsConfiguration selectedRouteIndex](self, "selectedRouteIndex")}];
  v5 = [(RouteAnnotationsConfiguration *)self originalRouteID];
  [v11 setOriginalRouteID:v5];

  [v11 setOriginalRouteDivergenceCoordinate:{-[RouteAnnotationsConfiguration originalRouteDivergenceCoordinate](self, "originalRouteDivergenceCoordinate")}];
  v6 = [(RouteAnnotationsConfiguration *)self transitVehiclePositions];
  [v11 setTransitVehiclePositions:v6];

  [v11 setStyle:{-[RouteAnnotationsConfiguration style](self, "style")}];
  v7 = [(RouteAnnotationsConfiguration *)self selectedRouteCustomText];
  [v11 setSelectedRouteCustomText:v7];

  [v11 setRouteMarkerOptions:{-[RouteAnnotationsConfiguration routeMarkerOptions](self, "routeMarkerOptions")}];
  [v11 setAlternateRoutesEnabled:{-[RouteAnnotationsConfiguration alternateRoutesEnabled](self, "alternateRoutesEnabled")}];
  [v11 setSelectPolyline:{-[RouteAnnotationsConfiguration selectsPolyline](self, "selectsPolyline")}];
  [v11 setFocusedRouteIndex:{-[RouteAnnotationsConfiguration focusedRouteIndex](self, "focusedRouteIndex")}];
  [v11 setRouteTrafficFeaturesActive:{-[RouteAnnotationsConfiguration routeTrafficFeaturesActive](self, "routeTrafficFeaturesActive")}];
  v8 = [(RouteAnnotationsConfiguration *)self anchorPoints];
  v9 = [v8 copy];
  [v11 setAnchorPoints:v9];

  v10 = [(RouteAnnotationsConfiguration *)self currentNavigationWaypoint];
  [v11 setCurrentNavigationWaypoint:v10];

  [v11 setProximityToCurrentNavigationWaypoint:{-[RouteAnnotationsConfiguration proximityToCurrentNavigationWaypoint](self, "proximityToCurrentNavigationWaypoint")}];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(RouteAnnotationsConfiguration *)[RouteAnnotationsMutableConfiguration allocWithZone:?], "initWithRoute:", 0];
  [(RouteAnnotationsConfiguration *)self _copyPropertiesTo:v4];
  return v4;
}

- (void)_setRoutes:(id)a3 selectedRouteIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_routes == v6)
  {
    p_selectedRouteIndex = &self->_selectedRouteIndex;
    if (self->_selectedRouteIndex == a4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = v6;
    v8 = [(NSArray *)v6 isEqualToArray:?];
    v7 = v14;
    p_selectedRouteIndex = &self->_selectedRouteIndex;
    selectedRouteIndex = self->_selectedRouteIndex;
    if (v8)
    {
      v11 = selectedRouteIndex == a4;
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

    if (selectedRouteIndex == a4)
    {
      goto LABEL_12;
    }
  }

  *p_selectedRouteIndex = a4;
LABEL_12:
  self->_focusedRouteIndex = 0x7FFFFFFFFFFFFFFFLL;
LABEL_13:
}

- (void)setRoutes:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(RouteAnnotationsConfiguration *)self _setRoutes:v5 selectedRouteIndex:v4];
}

- (RouteAnnotationsConfiguration)initWithRoutes:(id)a3 selectedRouteIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 count];
  v12.receiver = self;
  v12.super_class = RouteAnnotationsConfiguration;
  v8 = [(RouteAnnotationsConfiguration *)&v12 init];
  if (v8)
  {
    if (v7 <= a4)
    {
      a4 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v9 = [v6 copy];
    routes = v8->_routes;
    v8->_routes = v9;

    v8->_selectedRouteIndex = a4;
    v8->_focusedRouteIndex = 0x7FFFFFFFFFFFFFFFLL;
    v8->_routeMarkerOptions = 3;
    *&v8->_selectPolyline = 257;
  }

  return v8;
}

- (RouteAnnotationsConfiguration)initWithRoute:(id)a3
{
  if (a3)
  {
    v9 = a3;
    v4 = a3;
    v5 = [NSArray arrayWithObjects:&v9 count:1];

    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = [(RouteAnnotationsConfiguration *)self initWithRoutes:v5 selectedRouteIndex:v6, v9];

  return v7;
}

@end
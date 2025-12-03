@interface CarRouteGeniusAnnotationsManager
- (BOOL)_shouldIgnoreRoute;
- (BOOL)updateRouteAnnotationsConfiguration:(id)configuration;
- (CarRouteGeniusAnnotationsManager)initWithChromeViewController:(id)controller;
- (id)mapView;
- (void)_updateRouteAnnotation;
- (void)clearAnnotations;
- (void)recenterCameraOnRouteAnimated:(BOOL)animated force:(BOOL)force;
- (void)setComposedRoute:(id)route;
- (void)updateTrafficForRoute:(id)route;
@end

@implementation CarRouteGeniusAnnotationsManager

- (id)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  mapView = [WeakRetained mapView];

  return mapView;
}

- (void)updateTrafficForRoute:(id)route
{
  routeCopy = route;
  if ([(GEOComposedRoute *)self->_route _MapsCarPlay_isEqual:routeCopy])
  {
    v5 = sub_10008B0B8();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      [(GEOComposedRoute *)self->_route _maps_refreshTrafficIncidentsOnRoute];
      goto LABEL_10;
    }

    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarRouteGeniusAnnotationsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

    uniqueRouteID = [routeCopy uniqueRouteID];
    uUIDString = [uniqueRouteID UUIDString];
    *buf = 138543618;
    v15 = selfCopy;
    v16 = 2112;
    v17 = uUIDString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] CarRouteGeniusAnnotationsManager: Will update traffic for route: %@", buf, 0x16u);

    goto LABEL_9;
  }

LABEL_10:
}

- (void)setComposedRoute:(id)route
{
  routeCopy = route;
  p_route = &self->_route;
  v7 = [(GEOComposedRoute *)self->_route _MapsCarPlay_isEqual:routeCopy];
  v8 = sub_10008B0B8();
  v9 = v8;
  if (!v7)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
LABEL_17:

      objc_storeStrong(&self->_route, route);
      [(CarRouteGeniusAnnotationsManager *)self _updateRouteAnnotation];
      [(CarRouteGeniusAnnotationsManager *)self updateTrafficForRoute:self->_route];
      goto LABEL_18;
    }

    selfCopy = self;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    if (objc_opt_respondsToSelector())
    {
      v26 = [(CarRouteGeniusAnnotationsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v27 = v26;
      if (v26 && ![v26 isEqualToString:v25])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v25, selfCopy, v27];

        goto LABEL_16;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v25, selfCopy];
LABEL_16:

    v29 = selfCopy;
    name = [routeCopy name];
    uniqueRouteID = [routeCopy uniqueRouteID];
    uUIDString = [uniqueRouteID UUIDString];
    pointCount = [routeCopy pointCount];
    [(GEOComposedRoute *)*p_route name];
    v30 = v39 = routeCopy;
    uniqueRouteID2 = [(GEOComposedRoute *)*p_route uniqueRouteID];
    uUIDString2 = [uniqueRouteID2 UUIDString];
    v33 = selfCopy;
    pointCount2 = [(GEOComposedRoute *)*p_route pointCount];

    *buf = 138544898;
    v43 = v33;
    v44 = 2112;
    v45 = name;
    v46 = 2112;
    v47 = uUIDString;
    v48 = 2048;
    v49 = pointCount;
    v50 = 2112;
    v51 = v30;
    v52 = 2112;
    v53 = uUIDString2;
    v54 = 2048;
    v55 = pointCount2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] CarRouteGeniusAnnotationsManager: setRoute: route (name: %@, id: %@, points: %lu), current: (name: %@, id: %@, points: %lu). Redrawing route.", buf, 0x48u);

    routeCopy = v39;
    goto LABEL_17;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    selfCopy2 = self;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [(CarRouteGeniusAnnotationsManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v12, selfCopy2, v14];

        goto LABEL_8;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v12, selfCopy2];
LABEL_8:

    v16 = selfCopy2;
    name2 = [routeCopy name];
    uniqueRouteID3 = [routeCopy uniqueRouteID];
    uUIDString3 = [uniqueRouteID3 UUIDString];
    pointCount3 = [routeCopy pointCount];
    name3 = [(GEOComposedRoute *)*p_route name];
    uniqueRouteID4 = [(GEOComposedRoute *)*p_route uniqueRouteID];
    uUIDString4 = [uniqueRouteID4 UUIDString];
    pointCount4 = [(GEOComposedRoute *)*p_route pointCount];

    *buf = 138544898;
    v43 = selfCopy2;
    v44 = 2112;
    v45 = name2;
    v46 = 2112;
    v47 = uUIDString3;
    v48 = 2048;
    v49 = pointCount3;
    v50 = 2112;
    v51 = name3;
    v52 = 2112;
    v53 = uUIDString4;
    v54 = 2048;
    v55 = pointCount4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%{public}@] CarRouteGeniusAnnotationsManager: setRoute, new route (name: %@, id: %@, points: %lu) was considered equal to current route (name: %@, id: %@, points: %lu), we're not redrawing", buf, 0x48u);
  }

LABEL_18:
}

- (void)clearAnnotations
{
  v3 = sub_10008B0B8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarRouteGeniusAnnotationsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v12 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] CarRouteGeniusAnnotationsManager: clearAnnotations", buf, 0xCu);
  }

  route = self->_route;
  self->_route = 0;

  [(CarRouteGeniusAnnotationsManager *)self _updateRouteAnnotation];
  [(CarRouteGeniusAnnotationsManager *)self setDestination:0];
}

- (BOOL)_shouldIgnoreRoute
{
  legs = [(GEOComposedRoute *)self->_route legs];
  v3 = [legs count] > 1;

  return v3;
}

- (BOOL)updateRouteAnnotationsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = @"the route is nil";
  if (!self->_route)
  {
    goto LABEL_5;
  }

  if (![(CarRouteGeniusAnnotationsManager *)self _shouldIgnoreRoute])
  {
    v14 = sub_10008B0B8();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
LABEL_20:

      route = self->_route;
      v27 = [NSArray arrayWithObjects:&route count:1];
      [configurationCopy setRoutes:v27];

      goto LABEL_21;
    }

    selfCopy = self;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [(CarRouteGeniusAnnotationsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v17, selfCopy, v19];

        goto LABEL_19;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v17, selfCopy];
LABEL_19:

    v21 = self->_route;
    v22 = selfCopy;
    name = [(GEOComposedRoute *)v21 name];
    uniqueRouteID = [(GEOComposedRoute *)self->_route uniqueRouteID];
    uUIDString = [uniqueRouteID UUIDString];
    pointCount = [(GEOComposedRoute *)self->_route pointCount];

    *buf = 138544130;
    v34 = selfCopy;
    v35 = 2112;
    v36 = name;
    v37 = 2112;
    v38 = uUIDString;
    v39 = 2048;
    v40 = pointCount;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}@] CarRouteGeniusAnnotationsManager: Drawing route: (name: %@, id: %@, points: %lu)", buf, 0x2Au);

    goto LABEL_20;
  }

  if (self->_route)
  {
    v5 = @"the route has multiple legs";
  }

LABEL_5:
  v6 = v5;
  v7 = sub_10008B0B8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    selfCopy2 = self;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(CarRouteGeniusAnnotationsManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy2, v12];

        goto LABEL_11;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy2];
LABEL_11:

    *buf = 138543618;
    v34 = selfCopy2;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] CarRouteGeniusAnnotationsManager: Won't draw route because %@", buf, 0x16u);
  }

  [configurationCopy setRoutes:0];
LABEL_21:
  [configurationCopy setSelectPolyline:1];
  [configurationCopy setRouteTrafficFeaturesActive:1];
  v28 = self->_route;
  if (!v28 || ([(GEOComposedRoute *)v28 isFamiliarRoute]& 1) == 0)
  {
    MapsFeature_IsEnabled_LocationIntelligenceMaps();
LABEL_27:
    v30 = 0;
    goto LABEL_28;
  }

  BOOL = GEOConfigGetBOOL();
  if (!MapsFeature_IsEnabled_LocationIntelligenceMaps() || BOOL)
  {
    goto LABEL_27;
  }

  v30 = 1;
LABEL_28:
  [configurationCopy setStyle:v30];

  return 1;
}

- (void)_updateRouteAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  [WeakRetained setNeedsUpdateComponent:@"routeAnnotations" animated:1];
}

- (void)recenterCameraOnRouteAnimated:(BOOL)animated force:(BOOL)force
{
  forceCopy = force;
  animatedCopy = animated;
  if (![(CarRouteGeniusAnnotationsManager *)self _shouldIgnoreRoute])
  {
    mapView = [(CarRouteGeniusAnnotationsManager *)self mapView];
    userLocation = [mapView userLocation];
    location = [userLocation location];

    v10 = sub_10008B0B8();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_11;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(CarRouteGeniusAnnotationsManager *)selfCopy performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v13, selfCopy, v15];

        goto LABEL_9;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v13, selfCopy];
LABEL_9:

LABEL_11:
    if (animatedCopy)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v18 = v17;
    if (forceCopy)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    *&v20 = COERCE_DOUBLE(v19);
    route = selfCopy->_route;
    *buf = 138544386;
    v90 = selfCopy;
    v91 = 2112;
    v92 = v18;
    v93 = 2112;
    v94 = *&v20;
    v95 = 2048;
    v96 = *&route;
    v97 = 2112;
    v98 = *&location;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] recenterCameraOnRouteAnimated:animated %@, force: %@, route %p, userLocation: %@", buf, 0x34u);

LABEL_18:
    if (!self->_route || !location)
    {
      goto LABEL_48;
    }

    WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
    mapCameraController = [WeakRetained mapCameraController];
    v24 = [[MNLocation alloc] initWithCLLocation:location];
    [mapCameraController mapRectForTripFromLocation:v24 alongRoute:self->_route];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    if (forceCopy)
    {
      v33 = sub_10008B0B8();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        selfCopy2 = self;
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        if (objc_opt_respondsToSelector())
        {
          v37 = [(CarRouteGeniusAnnotationsManager *)selfCopy2 performSelector:"accessibilityIdentifier"];
          v38 = v37;
          if (v37 && ![v37 isEqualToString:v36])
          {
            selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v36, selfCopy2, v38];

            goto LABEL_27;
          }
        }

        selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v36, selfCopy2];
LABEL_27:

        *buf = 138543362;
        v90 = selfCopy2;
        v40 = "[%{public}@] - updating framing (forced)";
LABEL_44:
        v77 = v33;
        v78 = 12;
LABEL_45:
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, v40, buf, v78);
      }

LABEL_46:

      v33 = objc_loadWeakRetained(&self->_chromeViewController);
      mapCameraController2 = [v33 mapCameraController];
      [mapCameraController2 frameMapRect:animatedCopy animated:0 completion:{v26, v28, v30, v32}];

      goto LABEL_47;
    }

    [mapView visibleMapRect];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    [location coordinate];
    v102 = MKMapPointForCoordinate(v101);
    v103.origin.x = v42;
    v103.origin.y = v44;
    v103.size.width = v46;
    v103.size.height = v48;
    if (MKMapRectContainsPoint(v103, v102))
    {
      v87 = v26;
      v49 = v26;
      v50 = v28;
      v51 = v28;
      v52 = v30;
      v53 = v30;
      v54 = v32;
      [mapView _zoomLevelForMapRect:0 includeAccessoryPadding:{v49, v51, v53, v32}];
      v56 = v55;
      GEOConfigGetDouble();
      v88 = v56;
      v86 = v57;
      v58 = fmin(v56, v57);
      [mapView _zoomLevelForMapRect:0 includeAccessoryPadding:{v42, v44, v46, v48}];
      v60 = v59;
      v61 = vabdd_f64(v59, v58);
      GEOConfigGetDouble();
      v63 = v62;
      v33 = sub_10008B0B8();
      v64 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
      if (v61 <= v63)
      {
        if (!v64)
        {
LABEL_47:

LABEL_48:
          return;
        }

        v65 = mapView;
        selfCopy3 = self;
        v67 = objc_opt_class();
        v68 = NSStringFromClass(v67);
        if (objc_opt_respondsToSelector())
        {
          v69 = [(CarRouteGeniusAnnotationsManager *)selfCopy3 performSelector:"accessibilityIdentifier"];
          v70 = v69;
          if (v69 && ![v69 isEqualToString:v68])
          {
            selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v68, selfCopy3, v70];

            goto LABEL_36;
          }
        }

        selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v68, selfCopy3];
LABEL_36:

        *buf = 138544642;
        v90 = selfCopy3;
        v91 = 2048;
        v92 = *&v60;
        v93 = 2048;
        v94 = v58;
        v95 = 2048;
        v96 = v88;
        v97 = 2048;
        v98 = v86;
        v99 = 2048;
        v100 = v61;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "[%{public}@] - not updating framing (zoom current: %lf, target: %lf, desired: %lf, max: %lf, difference: %lf)", buf, 0x3Eu);

        mapView = v65;
        goto LABEL_47;
      }

      v80 = v58;
      v32 = v54;
      v30 = v52;
      v28 = v50;
      v26 = v87;
      if (!v64)
      {
        goto LABEL_46;
      }

      selfCopy4 = self;
      v82 = objc_opt_class();
      v83 = NSStringFromClass(v82);
      if (objc_opt_respondsToSelector())
      {
        v84 = [(CarRouteGeniusAnnotationsManager *)selfCopy4 performSelector:"accessibilityIdentifier"];
        v85 = v84;
        if (v84 && ![v84 isEqualToString:v83])
        {
          selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v83, selfCopy4, v85];

          goto LABEL_56;
        }
      }

      selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v83, selfCopy4];
LABEL_56:

      *buf = 138544642;
      v90 = selfCopy2;
      v91 = 2048;
      v92 = *&v60;
      v93 = 2048;
      v94 = v80;
      v95 = 2048;
      v96 = v88;
      v97 = 2048;
      v98 = v86;
      v99 = 2048;
      v100 = v61;
      v40 = "[%{public}@] - updating framing (zoom current: %lf, target: %lf, desired: %lf, max: %lf, difference: %lf)";
      v77 = v33;
      v78 = 62;
      goto LABEL_45;
    }

    v33 = sub_10008B0B8();
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      goto LABEL_46;
    }

    selfCopy5 = self;
    v73 = objc_opt_class();
    v74 = NSStringFromClass(v73);
    if (objc_opt_respondsToSelector())
    {
      v75 = [(CarRouteGeniusAnnotationsManager *)selfCopy5 performSelector:"accessibilityIdentifier"];
      v76 = v75;
      if (v75 && ![v75 isEqualToString:v74])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v74, selfCopy5, v76];

        goto LABEL_43;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v74, selfCopy5];
LABEL_43:

    *buf = 138543362;
    v90 = selfCopy2;
    v40 = "[%{public}@] - updating framing (user location outside visible rect)";
    goto LABEL_44;
  }
}

- (CarRouteGeniusAnnotationsManager)initWithChromeViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = CarRouteGeniusAnnotationsManager;
  v5 = [(CarRouteGeniusAnnotationsManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_chromeViewController, controllerCopy);
  }

  return v6;
}

@end
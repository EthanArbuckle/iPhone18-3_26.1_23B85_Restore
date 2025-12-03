@interface CarRouteSelectionController
- (BOOL)handleKnobPress:(id)press;
- (BOOL)mapView:(id)view shouldSelectLabelMarker:(id)marker;
- (CGRect)_frameForRoute:(id)route offset:(unint64_t)offset;
- (CarRouteSelectableSession)currentSession;
- (CarRouteSelectionController)initWithPlatformController:(id)controller chromeViewController:(id)viewController;
- (GEOComposedRoute)currentRoute;
- (MKMapView)mapView;
- (NSArray)focusableRouteItems;
- (NSArray)routes;
- (id)routeAnnotationsController;
- (void)_rebuildAlternateRouteFocusItems;
- (void)_selectRouteAtIndex:(unint64_t)index;
- (void)_updateAlternateRouteItemContainingView;
- (void)_updateFocusItemsIfNeeded;
- (void)_updateRouteFrames;
- (void)dealloc;
- (void)didTapMapView:(id)view atPoint:(CGPoint)point;
- (void)mapView:(id)view didSelectLabelMarker:(id)marker;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)routeItemDidUpdateFocus:(id)focus;
- (void)setActive:(BOOL)active;
- (void)setAlternateRouteFocusItems:(id)items;
- (void)setCurrentSession:(id)session;
- (void)setFocusedRouteIndex:(unint64_t)index;
- (void)setMapView:(id)view;
@end

@implementation CarRouteSelectionController

- (void)_updateRouteFrames
{
  alternateRouteFocusItems = [(CarRouteSelectionController *)self alternateRouteFocusItems];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009BCF4;
  v4[3] = &unk_101625698;
  v4[4] = self;
  [alternateRouteFocusItems enumerateObjectsUsingBlock:v4];
}

- (void)_updateAlternateRouteItemContainingView
{
  if (self->_active)
  {
    mapView = [(CarRouteSelectionController *)self mapView];

    if (mapView)
    {
      superview = [(CarAlternateRouteItemsContainingView *)self->_routeItemContainingView superview];
      mapView2 = [(CarRouteSelectionController *)self mapView];

      if (superview != mapView2)
      {
        mapView3 = [(CarRouteSelectionController *)self mapView];
        [mapView3 addSubview:self->_routeItemContainingView];

        routeItemContainingView = self->_routeItemContainingView;
        mapView4 = [(CarRouteSelectionController *)self mapView];
        v8 = [(CarAlternateRouteItemsContainingView *)routeItemContainingView _maps_constraintsForCenteringInView:?];
        [NSLayoutConstraint activateConstraints:v8];
      }
    }

    else
    {
      v10 = sub_10009FB80();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}p] Tried to insert _routeItemContainingView, but self.mapView is nil.", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = self->_routeItemContainingView;

    [(CarAlternateRouteItemsContainingView *)v9 removeFromSuperview];
  }
}

- (void)_updateFocusItemsIfNeeded
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009FF4C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (CarRouteSelectableSession)currentSession
{
  WeakRetained = objc_loadWeakRetained(&self->_currentSession);

  return WeakRetained;
}

- (void)routeItemDidUpdateFocus:(id)focus
{
  focusCopy = focus;
  if ([focusCopy isFocused])
  {
    routeAnnotationsController = [(CarRouteSelectionController *)self routeAnnotationsController];
    configuration = [routeAnnotationsController configuration];
    routes = [configuration routes];
    route = [focusCopy route];
    -[CarRouteSelectionController setFocusedRouteIndex:](self, "setFocusedRouteIndex:", [routes indexOfObject:route]);
  }

  else
  {
    [(CarRouteSelectionController *)self setFocusedRouteIndex:0x7FFFFFFFFFFFFFFFLL];
  }
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  if ([toSessionCopy conformsToProtocol:&OBJC_PROTOCOL___CarRouteSelectableSession])
  {
    v6 = toSessionCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(CarRouteSelectionController *)self setCurrentSession:v7];
}

- (void)mapView:(id)view didSelectLabelMarker:(id)marker
{
  markerCopy = marker;
  if ([markerCopy isRouteEta])
  {
    routeAnnotationsController = [(CarRouteSelectionController *)self routeAnnotationsController];
    configuration = [routeAnnotationsController configuration];

    routes = [configuration routes];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1006753EC;
    v15[3] = &unk_10163B1E8;
    v16 = markerCopy;
    v9 = [routes indexOfObjectPassingTest:v15];

    v10 = sub_10009FB80();
    v11 = v10;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349314;
        selfCopy2 = self;
        v19 = 2112;
        v20 = configuration;
        v12 = "[%{public}p] Failed to find selected label marker route index for config: %@";
        v13 = v11;
        v14 = OS_LOG_TYPE_ERROR;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v13, v14, v12, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 134349312;
      selfCopy2 = self;
      v19 = 2048;
      v20 = v9;
      v12 = "[%{public}p] Found selected label marker route at index: %lu";
      v13 = v11;
      v14 = OS_LOG_TYPE_INFO;
      goto LABEL_7;
    }

    [(CarRouteSelectionController *)self _selectRouteAtIndex:v9];
  }
}

- (BOOL)mapView:(id)view shouldSelectLabelMarker:(id)marker
{
  markerCopy = marker;
  isRouteEta = [markerCopy isRouteEta];
  if ((isRouteEta & 1) == 0)
  {
    v7 = sub_10009FB80();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 134349314;
      selfCopy = self;
      v11 = 2112;
      v12 = markerCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Denying label marker selection because it is not of type route ETA: %@", &v9, 0x16u);
    }
  }

  return isRouteEta;
}

- (void)didTapMapView:(id)view atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  v8 = sub_10009FB80();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v26.x = x;
    v26.y = y;
    v9 = NSStringFromCGPoint(v26);
    v20 = 134349314;
    selfCopy3 = self;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Tapped map view at point: %@", &v20, 0x16u);
  }

  routeAnnotationsController = [(CarRouteSelectionController *)self routeAnnotationsController];
  configuration = [routeAnnotationsController configuration];

  if ([configuration alternateRoutesEnabled])
  {
    routes = [configuration routes];
    selectedRoute = [configuration selectedRoute];
    v14 = &stru_10162A738;
    v15 = [RouteAnnotationsResponder routeAtPoint:viewCopy inMapView:routes withRoutes:selectedRoute selectedRoute:&stru_10162A738 overlappingRouteSelectorBlock:x, y];

    v16 = sub_10009FB80();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v27.x = x;
      v27.y = y;
      v17 = NSStringFromCGPoint(v27);
      _maps_routeIndex = [v15 _maps_routeIndex];
      v20 = 134349570;
      selfCopy3 = self;
      v22 = 2112;
      v23 = v17;
      v24 = 2048;
      v25 = _maps_routeIndex;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] didTapMapView:atPoint: %@. selectedRoute.routeIndex: %lu", &v20, 0x20u);
    }

    routes2 = [configuration routes];
    -[CarRouteSelectionController _selectRouteAtIndex:](self, "_selectRouteAtIndex:", [routes2 indexOfObject:v15]);
  }

  else
  {
    v15 = sub_10009FB80();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = 134349314;
      selfCopy3 = self;
      v22 = 2112;
      v23 = configuration;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] didTapMapView:atPoint: alternate routes on config were not enabled; ignoring call: %@", &v20, 0x16u);
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (off_1019295C8 == context)
  {
    changeCopy = change;
    v13 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeOldKey];
    v14 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];

    if (v13 == v14 || ![pathCopy isEqualToString:@"edgeInsets"])
    {
    }

    else
    {
      isActive = [(CarRouteSelectionController *)self isActive];

      if (isActive)
      {
        [(CarRouteSelectionController *)self _updateRouteFrames];
      }
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = CarRouteSelectionController;
    changeCopy2 = change;
    [(CarRouteSelectionController *)&v16 observeValueForKeyPath:pathCopy ofObject:object change:changeCopy2 context:context];
  }
}

- (void)_selectRouteAtIndex:(unint64_t)index
{
  v5 = sub_10009FB80();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v33 = 134349312;
    selfCopy5 = self;
    v35 = 2048;
    indexCopy2 = index;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Trying to select route at index: %lu", &v33, 0x16u);
  }

  routeAnnotationsController = [(CarRouteSelectionController *)self routeAnnotationsController];
  configuration = [routeAnnotationsController configuration];

  if (index == 0x7FFFFFFFFFFFFFFFLL || ([configuration routes], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9 <= index))
  {
    v11 = sub_10009FB80();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v33 = 134349570;
      selfCopy5 = self;
      v35 = 2048;
      indexCopy2 = index;
      v37 = 2112;
      v38 = configuration;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}p] Could not find route with index %lu in configuration: %@", &v33, 0x20u);
    }
  }

  else
  {
    routes = [configuration routes];
    v11 = [routes objectAtIndex:index];

    if ([configuration selectedRouteIndex] != index)
    {
      currentRoute = [(CarRouteSelectionController *)self currentRoute];
      v13 = [currentRoute isEqual:v11];

      if (!v13)
      {
        currentSession = [(CarRouteSelectionController *)self currentSession];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
          navigationDisplay = [WeakRetained navigationDisplay];
          trafficAlert = [navigationDisplay trafficAlert];

          if ([trafficAlert alertType]== 1)
          {
            originalRoute = [trafficAlert originalRoute];
            v23 = [originalRoute isEqual:v11];

            if (v23)
            {
              v24 = sub_10009FB80();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                v33 = 134349056;
                selfCopy5 = self;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[%{public}p] Attempted to select LAR with MNTrafficIncidentAlertType_Blockage, ignoring", &v33, 0xCu);
              }

              goto LABEL_33;
            }
          }
        }

        currentSession2 = [(CarRouteSelectionController *)self currentSession];
        [currentSession2 selectRoute:v11];

        [(CarRouteSelectionController *)self setFocusedRouteIndex:0x7FFFFFFFFFFFFFFFLL];
        currentSession3 = [(CarRouteSelectionController *)self currentSession];
        currentRouteCollection = [currentSession3 currentRouteCollection];
        v28 = [currentRouteCollection indexOfRoute:v11];

        if (v28 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = sub_10009FB80();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v33 = 134349056;
            selfCopy5 = self;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[%{public}p] Selected route from routeAnnotationsConfiguration was not found in currentRouteCollection", &v33, 0xCu);
          }

          v30 = sub_10006D178();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v33 = 136315650;
            selfCopy5 = "[CarRouteSelectionController _selectRouteAtIndex:]";
            v35 = 2080;
            indexCopy2 = "CarRouteSelectionController.m";
            v37 = 1024;
            LODWORD(v38) = 443;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v33, 0x1Cu);
          }

          if (sub_100E03634())
          {
            v31 = sub_10006D178();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v32 = +[NSThread callStackSymbols];
              v33 = 138412290;
              selfCopy5 = v32;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%@", &v33, 0xCu);
            }
          }
        }

        trafficAlert = objc_loadWeakRetained(&self->_chromeViewController);
        [trafficAlert captureUserAction:3015 selectedRouteIndex:v28];
        goto LABEL_33;
      }
    }

    v14 = sub_10009FB80();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v33 = 134349056;
      selfCopy5 = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{public}p] Attempted to select alternate route which is already selected", &v33, 0xCu);
    }

    v15 = sub_10006D178();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v33 = 136315650;
      selfCopy5 = "[CarRouteSelectionController _selectRouteAtIndex:]";
      v35 = 2080;
      indexCopy2 = "CarRouteSelectionController.m";
      v37 = 1024;
      LODWORD(v38) = 425;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v33, 0x1Cu);
    }

    if (sub_100E03634())
    {
      trafficAlert = sub_10006D178();
      if (os_log_type_enabled(trafficAlert, OS_LOG_TYPE_ERROR))
      {
        v17 = +[NSThread callStackSymbols];
        v33 = 138412290;
        selfCopy5 = v17;
        _os_log_impl(&_mh_execute_header, trafficAlert, OS_LOG_TYPE_ERROR, "%@", &v33, 0xCu);
      }

LABEL_33:
    }
  }
}

- (void)_rebuildAlternateRouteFocusItems
{
  if (-[CarRouteSelectionController isActive](self, "isActive") && (-[CarRouteSelectionController routes](self, "routes"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4 > 1))
  {
    routes = [(CarRouteSelectionController *)self routes];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100676234;
    v25[3] = &unk_1016255E0;
    v25[4] = self;
    v11 = [NSPredicate predicateWithBlock:v25];
    v12 = [routes filteredArrayUsingPredicate:v11];

    v13 = sub_10009FB80();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v12 count];
      *buf = 134349312;
      selfCopy3 = self;
      v28 = 2048;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Rebuilding alternate route items. Alternate routes count: %lu", buf, 0x16u);
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100676290;
    v24[3] = &unk_101625608;
    v24[4] = self;
    sub_100021DB0(v12, v24);
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1006762CC;
    v22 = v21 = &unk_101625630;
    selfCopy2 = self;
    v15 = v22;
    v16 = sub_100021DB0(v12, &v18);
    v17 = [v16 sortedArrayUsingComparator:{&stru_101625670, v18, v19, v20, v21}];
    [(CarRouteSelectionController *)self setAlternateRouteFocusItems:v17];
  }

  else
  {
    v5 = sub_10009FB80();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      isActive = [(CarRouteSelectionController *)self isActive];
      v7 = @"NO";
      if (isActive)
      {
        v7 = @"YES";
      }

      v8 = v7;
      routes2 = [(CarRouteSelectionController *)self routes];
      *buf = 134349570;
      selfCopy3 = self;
      v28 = 2112;
      v29 = v8;
      v30 = 2048;
      v31 = [routes2 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Not rebuilding alternate route items. Reson: active: %@, routesCount: %lu", buf, 0x20u);
    }

    [(CarRouteSelectionController *)self setAlternateRouteFocusItems:0];
  }
}

- (CGRect)_frameForRoute:(id)route offset:(unint64_t)offset
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_mapView);
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = objc_loadWeakRetained(&self->_mapView);
    [v16 _edgeInsets];
    v18 = v17 + v9;
    v20 = v19 + v11;
    v22 = v13 - (v17 + v21);
    v24 = v15 - (v19 + v23);

    v31.origin.x = v18;
    v31.origin.y = v20;
    v31.size.width = v22;
    v31.size.height = v24;
    x = CGRectGetMidX(v31) + offset;
    v32.origin.x = v18;
    v32.origin.y = v20;
    v32.size.width = v22;
    v32.size.height = v24;
    MinY = CGRectGetMinY(v32);
    v33.origin.x = v18;
    v33.origin.y = v20;
    v33.size.width = v22;
    v33.size.height = v24;
    Height = CGRectGetHeight(v33);
    width = 10.0;
  }

  else
  {
    x = CGRectZero.origin.x;
    MinY = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    Height = CGRectZero.size.height;
  }

  v29 = x;
  v30 = MinY;
  result.size.height = Height;
  result.size.width = width;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (BOOL)handleKnobPress:(id)press
{
  pressCopy = press;
  type = [pressCopy type];
  v6 = sub_10009FB80();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (type != 4)
  {
    if (!v7)
    {
LABEL_23:
      v25 = 0;
      goto LABEL_24;
    }

    *buf = 134349312;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = [pressCopy type];
    v13 = "[%{public}p] Knob press has wrong type: %ld; ignoring";
    v14 = v6;
    v15 = OS_LOG_TYPE_INFO;
    v16 = 22;
LABEL_22:
    _os_log_impl(&_mh_execute_header, v14, v15, v13, buf, v16);
    goto LABEL_23;
  }

  if (v7)
  {
    *buf = 134349056;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Handling knob selection", buf, 0xCu);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  focusableRouteItems = [(CarRouteSelectionController *)self focusableRouteItems];
  v9 = [focusableRouteItems countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (!v9)
  {
LABEL_12:

LABEL_20:
    v6 = sub_10009FB80();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 134349056;
    *&buf[4] = self;
    v13 = "[%{public}p] Didn't find a focused alternate route item for knob press.";
    v14 = v6;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 12;
    goto LABEL_22;
  }

  v10 = *v35;
LABEL_6:
  v11 = 0;
  while (1)
  {
    if (*v35 != v10)
    {
      objc_enumerationMutation(focusableRouteItems);
    }

    v12 = *(*(&v34 + 1) + 8 * v11);
    if ([v12 isFocused])
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [focusableRouteItems countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v9)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  route = [v12 route];

  if (!route)
  {
    goto LABEL_20;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v43 = 0x7FFFFFFFFFFFFFFFLL;
  routeAnnotationsController = [(CarRouteSelectionController *)self routeAnnotationsController];
  configuration = [routeAnnotationsController configuration];
  routes = [configuration routes];
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_100676910;
  v31 = &unk_101625F08;
  v6 = route;
  v32 = v6;
  v33 = buf;
  [routes enumerateObjectsUsingBlock:&v28];

  v21 = *(*&buf[8] + 24);
  v22 = sub_10009FB80();
  v23 = v22;
  v24 = v21 == 0x7FFFFFFFFFFFFFFFLL;
  v25 = v21 != 0x7FFFFFFFFFFFFFFFLL;
  if (v24)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v38 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%{public}p] Failed to find a route associated with focused route item in routeAnnotationsController", v38, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v26 = *(*&buf[8] + 24);
      *v38 = 134349312;
      selfCopy2 = self;
      v40 = 2048;
      v41 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[%{public}p] handleKnobPress: will attempt an alternate route with index: %lu", v38, 0x16u);
    }

    [(CarRouteSelectionController *)self _selectRouteAtIndex:*(*&buf[8] + 24), v28, v29, v30, v31];
  }

  _Block_object_dispose(buf, 8);
LABEL_24:

  return v25;
}

- (GEOComposedRoute)currentRoute
{
  currentSession = [(CarRouteSelectionController *)self currentSession];
  currentRouteCollection = [currentSession currentRouteCollection];
  currentRoute = [currentRouteCollection currentRoute];

  return currentRoute;
}

- (NSArray)routes
{
  currentSession = [(CarRouteSelectionController *)self currentSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = currentSession;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5 && [v5 currentTransportType] != 1)
  {
    routes = 0;
  }

  else
  {
    currentSession2 = [(CarRouteSelectionController *)self currentSession];
    currentRouteCollection = [currentSession2 currentRouteCollection];
    routes = [currentRouteCollection routes];
  }

  return routes;
}

- (NSArray)focusableRouteItems
{
  routeAnnotationsController = [(CarRouteSelectionController *)self routeAnnotationsController];
  configuration = [routeAnnotationsController configuration];
  if ([configuration alternateRoutesEnabled])
  {
    routes = [(CarRouteSelectionController *)self routes];
    v6 = [routes count] < 2;
  }

  else
  {
    v6 = 1;
  }

  alternateRouteFocusItems = [(CarRouteSelectionController *)self alternateRouteFocusItems];
  alternateRouteFocusItems2 = &__NSArray0__struct;
  if (alternateRouteFocusItems && !v6)
  {
    alternateRouteFocusItems2 = [(CarRouteSelectionController *)self alternateRouteFocusItems];
  }

  return alternateRouteFocusItems2;
}

- (void)setAlternateRouteFocusItems:(id)items
{
  itemsCopy = items;
  v6 = self->_alternateRouteFocusItems;
  v7 = itemsCopy;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = sub_10009FB80();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = 134349314;
        selfCopy = self;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Updating alternate route focus items: %@", &v11, 0x16u);
      }

      objc_storeStrong(&self->_alternateRouteFocusItems, items);
      WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
      [WeakRetained setNeedsFocusUpdate];
    }
  }
}

- (void)setFocusedRouteIndex:(unint64_t)index
{
  if (self->_focusedRouteIndex != index)
  {
    v5 = sub_10009FB80();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      focusedRouteIndex = self->_focusedRouteIndex;
      *buf = 134349568;
      selfCopy = self;
      v11 = 2048;
      v12 = focusedRouteIndex;
      v13 = 2048;
      indexCopy = index;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating focused route index %lu -> %lu", buf, 0x20u);
    }

    self->_focusedRouteIndex = index;
    routeAnnotationsController = [(CarRouteSelectionController *)self routeAnnotationsController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100676DBC;
    v8[3] = &unk_1016255B8;
    v8[4] = index;
    [routeAnnotationsController updateConfigurationWithBlock:v8];
  }
}

- (void)setCurrentSession:(id)session
{
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_currentSession);

  if (WeakRetained != sessionCopy)
  {
    v6 = sub_10009FB80();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_loadWeakRetained(&self->_currentSession);
      v10 = 134349570;
      selfCopy = self;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Updating session %@ -> %@", &v10, 0x20u);
    }

    v8 = objc_loadWeakRetained(&self->_currentSession);
    [v8 unregisterObserver:self];

    v9 = objc_storeWeak(&self->_currentSession, sessionCopy);
    [sessionCopy registerObserver:self];

    [(CarRouteSelectionController *)self _updateFocusItemsIfNeeded];
  }
}

- (id)routeAnnotationsController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  routeAnnotationsController = [WeakRetained routeAnnotationsController];

  return routeAnnotationsController;
}

- (void)setMapView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_mapView);
    [v6 removeObserver:self forKeyPath:@"edgeInsets"];

    v7 = objc_storeWeak(&self->_mapView, obj);
    [obj addObserver:self forKeyPath:@"edgeInsets" options:3 context:off_1019295C8];

    v8 = objc_loadWeakRetained(&self->_mapView);
    if (v8)
    {
      [(CarRouteSelectionController *)self _updateAlternateRouteItemContainingView];
    }

    else
    {
      [(CarRouteSelectionController *)self setActive:0];
    }

    [(CarRouteSelectionController *)self _updateFocusItemsIfNeeded];
    v5 = obj;
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    v4 = sub_10009FB80();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (self->_active)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = v5;
      v7 = 134349314;
      selfCopy = self;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Setting active: %@", &v7, 0x16u);
    }

    [(CarRouteSelectionController *)self _updateAlternateRouteItemContainingView];
    [(CarRouteSelectionController *)self _updateFocusItemsIfNeeded];
  }
}

- (void)dealloc
{
  v3 = sub_10009FB80();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  [WeakRetained removeObserver:self forKeyPath:@"edgeInsets"];

  v5 = objc_loadWeakRetained(&self->_platformController);
  [v5 unregisterObserver:self];

  currentSession = [(CarRouteSelectionController *)self currentSession];
  [currentSession unregisterObserver:self];

  v7.receiver = self;
  v7.super_class = CarRouteSelectionController;
  [(CarRouteSelectionController *)&v7 dealloc];
}

- (CarRouteSelectionController)initWithPlatformController:(id)controller chromeViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v20.receiver = self;
  v20.super_class = CarRouteSelectionController;
  v8 = [(CarRouteSelectionController *)&v20 init];
  if (v8)
  {
    v9 = sub_10009FB80();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      sceneType = [viewControllerCopy sceneType];
      if (sceneType > 6)
      {
        v11 = @".Unknown";
      }

      else
      {
        v11 = *(&off_1016256D8 + sceneType);
      }

      *buf = 134349314;
      v22 = v8;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Initializing for scene: %@", buf, 0x16u);
    }

    objc_storeWeak(&v8->_chromeViewController, viewControllerCopy);
    v12 = objc_storeWeak(&v8->_platformController, controllerCopy);
    [controllerCopy registerObserver:v8];

    v8->_focusedRouteIndex = 0x7FFFFFFFFFFFFFFFLL;
    WeakRetained = objc_loadWeakRetained(&v8->_platformController);
    currentSession = [WeakRetained currentSession];

    if ([currentSession conformsToProtocol:&OBJC_PROTOCOL___CarRouteSelectableSession])
    {
      v15 = currentSession;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    [(CarRouteSelectionController *)v8 setCurrentSession:v16];
    v17 = [[CarAlternateRouteItemsContainingView alloc] initWithDataSource:v8];
    routeItemContainingView = v8->_routeItemContainingView;
    v8->_routeItemContainingView = v17;

    [(CarAlternateRouteItemsContainingView *)v8->_routeItemContainingView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v8;
}

@end
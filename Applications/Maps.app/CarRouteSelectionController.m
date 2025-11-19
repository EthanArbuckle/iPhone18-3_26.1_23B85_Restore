@interface CarRouteSelectionController
- (BOOL)handleKnobPress:(id)a3;
- (BOOL)mapView:(id)a3 shouldSelectLabelMarker:(id)a4;
- (CGRect)_frameForRoute:(id)a3 offset:(unint64_t)a4;
- (CarRouteSelectableSession)currentSession;
- (CarRouteSelectionController)initWithPlatformController:(id)a3 chromeViewController:(id)a4;
- (GEOComposedRoute)currentRoute;
- (MKMapView)mapView;
- (NSArray)focusableRouteItems;
- (NSArray)routes;
- (id)routeAnnotationsController;
- (void)_rebuildAlternateRouteFocusItems;
- (void)_selectRouteAtIndex:(unint64_t)a3;
- (void)_updateAlternateRouteItemContainingView;
- (void)_updateFocusItemsIfNeeded;
- (void)_updateRouteFrames;
- (void)dealloc;
- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4;
- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)routeItemDidUpdateFocus:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)setAlternateRouteFocusItems:(id)a3;
- (void)setCurrentSession:(id)a3;
- (void)setFocusedRouteIndex:(unint64_t)a3;
- (void)setMapView:(id)a3;
@end

@implementation CarRouteSelectionController

- (void)_updateRouteFrames
{
  v3 = [(CarRouteSelectionController *)self alternateRouteFocusItems];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009BCF4;
  v4[3] = &unk_101625698;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

- (void)_updateAlternateRouteItemContainingView
{
  if (self->_active)
  {
    v3 = [(CarRouteSelectionController *)self mapView];

    if (v3)
    {
      v4 = [(CarAlternateRouteItemsContainingView *)self->_routeItemContainingView superview];
      v5 = [(CarRouteSelectionController *)self mapView];

      if (v4 != v5)
      {
        v6 = [(CarRouteSelectionController *)self mapView];
        [v6 addSubview:self->_routeItemContainingView];

        routeItemContainingView = self->_routeItemContainingView;
        v11 = [(CarRouteSelectionController *)self mapView];
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
        v13 = self;
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

- (void)routeItemDidUpdateFocus:(id)a3
{
  v8 = a3;
  if ([v8 isFocused])
  {
    v4 = [(CarRouteSelectionController *)self routeAnnotationsController];
    v5 = [v4 configuration];
    v6 = [v5 routes];
    v7 = [v8 route];
    -[CarRouteSelectionController setFocusedRouteIndex:](self, "setFocusedRouteIndex:", [v6 indexOfObject:v7]);
  }

  else
  {
    [(CarRouteSelectionController *)self setFocusedRouteIndex:0x7FFFFFFFFFFFFFFFLL];
  }
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v8 = a5;
  if ([v8 conformsToProtocol:&OBJC_PROTOCOL___CarRouteSelectableSession])
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(CarRouteSelectionController *)self setCurrentSession:v7];
}

- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4
{
  v5 = a4;
  if ([v5 isRouteEta])
  {
    v6 = [(CarRouteSelectionController *)self routeAnnotationsController];
    v7 = [v6 configuration];

    v8 = [v7 routes];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1006753EC;
    v15[3] = &unk_10163B1E8;
    v16 = v5;
    v9 = [v8 indexOfObjectPassingTest:v15];

    v10 = sub_10009FB80();
    v11 = v10;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349314;
        v18 = self;
        v19 = 2112;
        v20 = v7;
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
      v18 = self;
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

- (BOOL)mapView:(id)a3 shouldSelectLabelMarker:(id)a4
{
  v5 = a4;
  v6 = [v5 isRouteEta];
  if ((v6 & 1) == 0)
  {
    v7 = sub_10009FB80();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 134349314;
      v10 = self;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Denying label marker selection because it is not of type route ETA: %@", &v9, 0x16u);
    }
  }

  return v6;
}

- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = sub_10009FB80();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v26.x = x;
    v26.y = y;
    v9 = NSStringFromCGPoint(v26);
    v20 = 134349314;
    v21 = self;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Tapped map view at point: %@", &v20, 0x16u);
  }

  v10 = [(CarRouteSelectionController *)self routeAnnotationsController];
  v11 = [v10 configuration];

  if ([v11 alternateRoutesEnabled])
  {
    v12 = [v11 routes];
    v13 = [v11 selectedRoute];
    v14 = &stru_10162A738;
    v15 = [RouteAnnotationsResponder routeAtPoint:v7 inMapView:v12 withRoutes:v13 selectedRoute:&stru_10162A738 overlappingRouteSelectorBlock:x, y];

    v16 = sub_10009FB80();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v27.x = x;
      v27.y = y;
      v17 = NSStringFromCGPoint(v27);
      v18 = [v15 _maps_routeIndex];
      v20 = 134349570;
      v21 = self;
      v22 = 2112;
      v23 = v17;
      v24 = 2048;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] didTapMapView:atPoint: %@. selectedRoute.routeIndex: %lu", &v20, 0x20u);
    }

    v19 = [v11 routes];
    -[CarRouteSelectionController _selectRouteAtIndex:](self, "_selectRouteAtIndex:", [v19 indexOfObject:v15]);
  }

  else
  {
    v15 = sub_10009FB80();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = 134349314;
      v21 = self;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] didTapMapView:atPoint: alternate routes on config were not enabled; ignoring call: %@", &v20, 0x16u);
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  if (off_1019295C8 == a6)
  {
    v12 = a5;
    v13 = [v12 objectForKeyedSubscript:NSKeyValueChangeOldKey];
    v14 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];

    if (v13 == v14 || ![v10 isEqualToString:@"edgeInsets"])
    {
    }

    else
    {
      v15 = [(CarRouteSelectionController *)self isActive];

      if (v15)
      {
        [(CarRouteSelectionController *)self _updateRouteFrames];
      }
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = CarRouteSelectionController;
    v11 = a5;
    [(CarRouteSelectionController *)&v16 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
  }
}

- (void)_selectRouteAtIndex:(unint64_t)a3
{
  v5 = sub_10009FB80();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v33 = 134349312;
    v34 = self;
    v35 = 2048;
    v36 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Trying to select route at index: %lu", &v33, 0x16u);
  }

  v6 = [(CarRouteSelectionController *)self routeAnnotationsController];
  v7 = [v6 configuration];

  if (a3 == 0x7FFFFFFFFFFFFFFFLL || ([v7 routes], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9 <= a3))
  {
    v11 = sub_10009FB80();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v33 = 134349570;
      v34 = self;
      v35 = 2048;
      v36 = a3;
      v37 = 2112;
      v38 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}p] Could not find route with index %lu in configuration: %@", &v33, 0x20u);
    }
  }

  else
  {
    v10 = [v7 routes];
    v11 = [v10 objectAtIndex:a3];

    if ([v7 selectedRouteIndex] != a3)
    {
      v12 = [(CarRouteSelectionController *)self currentRoute];
      v13 = [v12 isEqual:v11];

      if (!v13)
      {
        v18 = [(CarRouteSelectionController *)self currentSession];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
          v21 = [WeakRetained navigationDisplay];
          v16 = [v21 trafficAlert];

          if ([v16 alertType]== 1)
          {
            v22 = [v16 originalRoute];
            v23 = [v22 isEqual:v11];

            if (v23)
            {
              v24 = sub_10009FB80();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                v33 = 134349056;
                v34 = self;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[%{public}p] Attempted to select LAR with MNTrafficIncidentAlertType_Blockage, ignoring", &v33, 0xCu);
              }

              goto LABEL_33;
            }
          }
        }

        v25 = [(CarRouteSelectionController *)self currentSession];
        [v25 selectRoute:v11];

        [(CarRouteSelectionController *)self setFocusedRouteIndex:0x7FFFFFFFFFFFFFFFLL];
        v26 = [(CarRouteSelectionController *)self currentSession];
        v27 = [v26 currentRouteCollection];
        v28 = [v27 indexOfRoute:v11];

        if (v28 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = sub_10009FB80();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v33 = 134349056;
            v34 = self;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[%{public}p] Selected route from routeAnnotationsConfiguration was not found in currentRouteCollection", &v33, 0xCu);
          }

          v30 = sub_10006D178();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v33 = 136315650;
            v34 = "[CarRouteSelectionController _selectRouteAtIndex:]";
            v35 = 2080;
            v36 = "CarRouteSelectionController.m";
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
              v34 = v32;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%@", &v33, 0xCu);
            }
          }
        }

        v16 = objc_loadWeakRetained(&self->_chromeViewController);
        [v16 captureUserAction:3015 selectedRouteIndex:v28];
        goto LABEL_33;
      }
    }

    v14 = sub_10009FB80();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v33 = 134349056;
      v34 = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{public}p] Attempted to select alternate route which is already selected", &v33, 0xCu);
    }

    v15 = sub_10006D178();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v33 = 136315650;
      v34 = "[CarRouteSelectionController _selectRouteAtIndex:]";
      v35 = 2080;
      v36 = "CarRouteSelectionController.m";
      v37 = 1024;
      LODWORD(v38) = 425;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v33, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = +[NSThread callStackSymbols];
        v33 = 138412290;
        v34 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", &v33, 0xCu);
      }

LABEL_33:
    }
  }
}

- (void)_rebuildAlternateRouteFocusItems
{
  if (-[CarRouteSelectionController isActive](self, "isActive") && (-[CarRouteSelectionController routes](self, "routes"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4 > 1))
  {
    v10 = [(CarRouteSelectionController *)self routes];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100676234;
    v25[3] = &unk_1016255E0;
    v25[4] = self;
    v11 = [NSPredicate predicateWithBlock:v25];
    v12 = [v10 filteredArrayUsingPredicate:v11];

    v13 = sub_10009FB80();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v12 count];
      *buf = 134349312;
      v27 = self;
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
    v23 = self;
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
      v6 = [(CarRouteSelectionController *)self isActive];
      v7 = @"NO";
      if (v6)
      {
        v7 = @"YES";
      }

      v8 = v7;
      v9 = [(CarRouteSelectionController *)self routes];
      *buf = 134349570;
      v27 = self;
      v28 = 2112;
      v29 = v8;
      v30 = 2048;
      v31 = [v9 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Not rebuilding alternate route items. Reson: active: %@, routesCount: %lu", buf, 0x20u);
    }

    [(CarRouteSelectionController *)self setAlternateRouteFocusItems:0];
  }
}

- (CGRect)_frameForRoute:(id)a3 offset:(unint64_t)a4
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
    x = CGRectGetMidX(v31) + a4;
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

- (BOOL)handleKnobPress:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = sub_10009FB80();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5 != 4)
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
    *&buf[14] = [v4 type];
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
  v8 = [(CarRouteSelectionController *)self focusableRouteItems];
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v44 count:16];
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
      objc_enumerationMutation(v8);
    }

    v12 = *(*(&v34 + 1) + 8 * v11);
    if ([v12 isFocused])
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [v8 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v9)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  v17 = [v12 route];

  if (!v17)
  {
    goto LABEL_20;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v43 = 0x7FFFFFFFFFFFFFFFLL;
  v18 = [(CarRouteSelectionController *)self routeAnnotationsController];
  v19 = [v18 configuration];
  v20 = [v19 routes];
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_100676910;
  v31 = &unk_101625F08;
  v6 = v17;
  v32 = v6;
  v33 = buf;
  [v20 enumerateObjectsUsingBlock:&v28];

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
      v39 = self;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%{public}p] Failed to find a route associated with focused route item in routeAnnotationsController", v38, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v26 = *(*&buf[8] + 24);
      *v38 = 134349312;
      v39 = self;
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
  v2 = [(CarRouteSelectionController *)self currentSession];
  v3 = [v2 currentRouteCollection];
  v4 = [v3 currentRoute];

  return v4;
}

- (NSArray)routes
{
  v3 = [(CarRouteSelectionController *)self currentSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5 && [v5 currentTransportType] != 1)
  {
    v8 = 0;
  }

  else
  {
    v6 = [(CarRouteSelectionController *)self currentSession];
    v7 = [v6 currentRouteCollection];
    v8 = [v7 routes];
  }

  return v8;
}

- (NSArray)focusableRouteItems
{
  v3 = [(CarRouteSelectionController *)self routeAnnotationsController];
  v4 = [v3 configuration];
  if ([v4 alternateRoutesEnabled])
  {
    v5 = [(CarRouteSelectionController *)self routes];
    v6 = [v5 count] < 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = [(CarRouteSelectionController *)self alternateRouteFocusItems];
  v8 = &__NSArray0__struct;
  if (v7 && !v6)
  {
    v8 = [(CarRouteSelectionController *)self alternateRouteFocusItems];
  }

  return v8;
}

- (void)setAlternateRouteFocusItems:(id)a3
{
  v5 = a3;
  v6 = self->_alternateRouteFocusItems;
  v7 = v5;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = sub_10009FB80();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = 134349314;
        v12 = self;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Updating alternate route focus items: %@", &v11, 0x16u);
      }

      objc_storeStrong(&self->_alternateRouteFocusItems, a3);
      WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
      [WeakRetained setNeedsFocusUpdate];
    }
  }
}

- (void)setFocusedRouteIndex:(unint64_t)a3
{
  if (self->_focusedRouteIndex != a3)
  {
    v5 = sub_10009FB80();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      focusedRouteIndex = self->_focusedRouteIndex;
      *buf = 134349568;
      v10 = self;
      v11 = 2048;
      v12 = focusedRouteIndex;
      v13 = 2048;
      v14 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating focused route index %lu -> %lu", buf, 0x20u);
    }

    self->_focusedRouteIndex = a3;
    v7 = [(CarRouteSelectionController *)self routeAnnotationsController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100676DBC;
    v8[3] = &unk_1016255B8;
    v8[4] = a3;
    [v7 updateConfigurationWithBlock:v8];
  }
}

- (void)setCurrentSession:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_currentSession);

  if (WeakRetained != v4)
  {
    v6 = sub_10009FB80();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_loadWeakRetained(&self->_currentSession);
      v10 = 134349570;
      v11 = self;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Updating session %@ -> %@", &v10, 0x20u);
    }

    v8 = objc_loadWeakRetained(&self->_currentSession);
    [v8 unregisterObserver:self];

    v9 = objc_storeWeak(&self->_currentSession, v4);
    [v4 registerObserver:self];

    [(CarRouteSelectionController *)self _updateFocusItemsIfNeeded];
  }
}

- (id)routeAnnotationsController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v3 = [WeakRetained routeAnnotationsController];

  return v3;
}

- (void)setMapView:(id)a3
{
  obj = a3;
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

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
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
      v8 = self;
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
    v9 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  [WeakRetained removeObserver:self forKeyPath:@"edgeInsets"];

  v5 = objc_loadWeakRetained(&self->_platformController);
  [v5 unregisterObserver:self];

  v6 = [(CarRouteSelectionController *)self currentSession];
  [v6 unregisterObserver:self];

  v7.receiver = self;
  v7.super_class = CarRouteSelectionController;
  [(CarRouteSelectionController *)&v7 dealloc];
}

- (CarRouteSelectionController)initWithPlatformController:(id)a3 chromeViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = CarRouteSelectionController;
  v8 = [(CarRouteSelectionController *)&v20 init];
  if (v8)
  {
    v9 = sub_10009FB80();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v7 sceneType];
      if (v10 > 6)
      {
        v11 = @".Unknown";
      }

      else
      {
        v11 = *(&off_1016256D8 + v10);
      }

      *buf = 134349314;
      v22 = v8;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Initializing for scene: %@", buf, 0x16u);
    }

    objc_storeWeak(&v8->_chromeViewController, v7);
    v12 = objc_storeWeak(&v8->_platformController, v6);
    [v6 registerObserver:v8];

    v8->_focusedRouteIndex = 0x7FFFFFFFFFFFFFFFLL;
    WeakRetained = objc_loadWeakRetained(&v8->_platformController);
    v14 = [WeakRetained currentSession];

    if ([v14 conformsToProtocol:&OBJC_PROTOCOL___CarRouteSelectableSession])
    {
      v15 = v14;
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
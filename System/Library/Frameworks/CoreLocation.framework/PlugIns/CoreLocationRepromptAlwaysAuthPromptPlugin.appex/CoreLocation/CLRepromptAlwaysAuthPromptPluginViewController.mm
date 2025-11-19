@interface CLRepromptAlwaysAuthPromptPluginViewController
- (id)allowedClassesForUnarchiving;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (void)_addLocationsToMap;
- (void)_centerAndZoomToFitRegion;
- (void)_defineMapExtremities;
- (void)configureMapView;
@end

@implementation CLRepromptAlwaysAuthPromptPluginViewController

- (void)configureMapView
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "#reprompt configureMapView<Start>", buf, 2u);
  }

  v3 = [(CLAuthBaseViewController *)self locationDictionary];
  v4 = [v3 valueForKey:@"Locations"];
  v5 = v4 == 0;

  if (!v5)
  {
    v6 = [(CLAuthBaseViewController *)self locationDictionary];
    v7 = [v6 objectForKeyedSubscript:@"Locations"];
    [(CLRepromptAlwaysAuthPromptPluginViewController *)self setLocations:v7];
  }

  v8 = [(CLAuthBaseViewController *)self locationDictionary];
  v9 = [v8 valueForKey:@"Launches"];
  v10 = v9 == 0;

  if (!v10)
  {
    v11 = [(CLAuthBaseViewController *)self locationDictionary];
    v12 = [v11 objectForKeyedSubscript:@"Launches"];
    [(CLRepromptAlwaysAuthPromptPluginViewController *)self setLaunchLocations:v12];
  }

  v13 = [(CLAuthBaseViewController *)self appName];
  if (v13)
  {
    if ([(NSArray *)self->_locations count])
    {
    }

    else
    {
      v14 = [(NSArray *)self->_launchLocations count]== 0;

      if (v14)
      {
        goto LABEL_12;
      }
    }

    v21.receiver = self;
    v21.super_class = CLRepromptAlwaysAuthPromptPluginViewController;
    [(CLAuthBaseViewController *)&v21 configureMapView];
    v15 = [[MKPointOfInterestFilter alloc] initIncludingCategories:&__NSArray0__struct];
    v16 = [(CLAuthBaseViewController *)self mapView];
    [v16 setPointOfInterestFilter:v15];

    v17 = [(CLAuthBaseViewController *)self mapView];
    [v17 setMapType:0];

    [(CLRepromptAlwaysAuthPromptPluginViewController *)self _defineMapExtremities];
    [(CLRepromptAlwaysAuthPromptPluginViewController *)self _addLocationsToMap];
  }

LABEL_12:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v18 = [(CLAuthBaseViewController *)self appName];
    v19 = [(CLAuthBaseViewController *)self bundleId];
    v20 = [(CLAuthBaseViewController *)self authMask];
    *buf = 138412802;
    v23 = v18;
    v24 = 2112;
    v25 = v19;
    v26 = 2048;
    v27 = v20;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "#reprompt configureMapView<End> Client: %@ BID: %@ AuthMask %lu", buf, 0x20u);
  }
}

- (id)allowedClassesForUnarchiving
{
  v6.receiver = self;
  v6.super_class = CLRepromptAlwaysAuthPromptPluginViewController;
  v2 = [(CLAuthBaseViewController *)&v6 allowedClassesForUnarchiving];
  v7 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v7 count:1];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

- (void)_defineMapExtremities
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "#reprompt _defineMapExtremities<Start>", buf, 2u);
  }

  [(CLRepromptAlwaysAuthPromptPluginViewController *)self _centerAndZoomToFitRegion];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "#reprompt _defineMapExtremities<End>", v3, 2u);
  }
}

- (void)_centerAndZoomToFitRegion
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "#reprompt _centerAndZoomToFitRegion<Start>", buf, 2u);
  }

  __src = 0;
  v84 = 0;
  v85 = 0;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v3 = self->_locations;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v79 objects:v95 count:16];
  if (v4)
  {
    v5 = *v80;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v80 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v79 + 1) + 8 * i);
        [v7 latitude];
        v9 = v8;
        [v7 longitude];
        v11 = v84;
        if (v84 >= v85)
        {
          v13 = __src;
          v14 = v84 - __src;
          v15 = (v84 - __src) >> 4;
          v16 = v15 + 1;
          if ((v15 + 1) >> 60)
          {
            sub_100003850();
          }

          v17 = v85 - __src;
          if ((v85 - __src) >> 3 > v16)
          {
            v16 = v17 >> 3;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFF0)
          {
            v18 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            sub_100004A90(&__src, v18);
          }

          v19 = (16 * v15);
          *v19 = v9;
          v19[1] = v10;
          v12 = (16 * v15 + 16);
          memcpy(0, v13, v14);
          v20 = __src;
          __src = 0;
          v84 = v12;
          v85 = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v84 = v9;
          v11[1] = v10;
          v12 = v11 + 2;
        }

        v84 = v12;
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v79 objects:v95 count:16];
    }

    while (v4);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v21 = self->_launchLocations;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v75 objects:v94 count:16];
  if (v22)
  {
    v23 = *v76;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v76 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v75 + 1) + 8 * j);
        [v25 latitude];
        v27 = v26;
        [v25 longitude];
        v29 = v84;
        if (v84 >= v85)
        {
          v31 = __src;
          v32 = v84 - __src;
          v33 = (v84 - __src) >> 4;
          v34 = v33 + 1;
          if ((v33 + 1) >> 60)
          {
            sub_100003850();
          }

          v35 = v85 - __src;
          if ((v85 - __src) >> 3 > v34)
          {
            v34 = v35 >> 3;
          }

          if (v35 >= 0x7FFFFFFFFFFFFFF0)
          {
            v36 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v34;
          }

          if (v36)
          {
            sub_100004A90(&__src, v36);
          }

          v37 = (v84 - __src) >> 4;
          v38 = (16 * v33);
          *v38 = v27;
          v38[1] = v28;
          v30 = (16 * v33 + 16);
          v39 = (16 * v33 - 16 * v37);
          memcpy(&v38[-2 * v37], v31, v32);
          v40 = __src;
          __src = v39;
          v84 = v30;
          v85 = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *v84 = v27;
          v29[1] = v28;
          v30 = v29 + 2;
        }

        v84 = v30;
      }

      v22 = [(NSArray *)v21 countByEnumeratingWithState:&v75 objects:v94 count:16];
    }

    while (v22);
  }

  __p = 0;
  v73 = 0;
  v74 = 0;
  sub_100004B30(&__p, __src, v84, (v84 - __src) >> 4);
  v41 = sub_100002E90(&__p);
  v43 = v42;
  if (__p)
  {
    v73 = __p;
    operator delete(__p);
  }

  v44 = [(CLAuthBaseViewController *)self mapView];
  [v44 setCenterCoordinate:1 animated:{v41, v43}];

  x = MKMapRectNull.origin.x;
  y = MKMapRectNull.origin.y;
  width = MKMapRectNull.size.width;
  height = MKMapRectNull.size.height;
  v49 = __src;
  v50 = v84;
  if (__src != v84)
  {
    do
    {
      v51 = MKMapPointForCoordinate(*v49);
      v52 = [[MapRect alloc] initWithRectA:x rectB:y, width, height, v51.x, v51.y, 4.5, 4.5];
      [(MapRect *)v52 rect];
      x = v53;
      y = v54;
      width = v55;
      height = v56;

      ++v49;
    }

    while (v49 != v50);
  }

  v96.origin.x = x;
  v96.origin.y = y;
  v96.size.width = width;
  v96.size.height = height;
  v97 = MKCoordinateRegionForMapRect(v96);
  longitudeDelta = v97.span.longitudeDelta;
  *&v97.center.latitude = v97.span.latitudeDelta;
  [(CLRepromptAlwaysAuthPromptPluginViewController *)self setLatDelta:v97.center.latitude, v97.center.longitude];
  *&v58 = longitudeDelta;
  [(CLRepromptAlwaysAuthPromptPluginViewController *)self setLonDelta:v58];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    [(CLRepromptAlwaysAuthPromptPluginViewController *)self latDelta];
    v60 = v59;
    [(CLRepromptAlwaysAuthPromptPluginViewController *)self lonDelta];
    *buf = 134218240;
    v87 = v60;
    v88 = 2048;
    v89 = v61;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "#reprompt Location Span: [%f, %f]", buf, 0x16u);
  }

  [(CLRepromptAlwaysAuthPromptPluginViewController *)self lonDelta];
  v63 = v62;
  [(CLRepromptAlwaysAuthPromptPluginViewController *)self latDelta];
  v65 = v64;
  v66 = [(CLAuthBaseViewController *)self mapView];
  v67 = [(CLAuthBaseViewController *)self mapView];
  v68 = fmax(v63, 0.072);
  v69 = fmax(v65, 0.072);
  v70 = v69 * 1.15;
  v71 = v68 * 1.15;
  [v67 regionThatFits:{v41, v43, v70, v71}];
  [v66 setRegion:1 animated:?];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 134546433;
    v87 = v41;
    v88 = 2053;
    v89 = v43;
    v90 = 2048;
    v91 = v70;
    v92 = 2048;
    v93 = v71;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "#reprompt Region Center: [%{sensitive}f, %{sensitive}f], Region Span: [%f, %f]", buf, 0x2Au);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "#reprompt _centerAndZoomToFitRegion<End>", buf, 2u);
  }

  if (__src)
  {
    v84 = __src;
    operator delete(__src);
  }
}

- (void)_addLocationsToMap
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "#reprompt _addLocationsToMap<Start>", buf, 2u);
  }

  [(CLRepromptAlwaysAuthPromptPluginViewController *)self latDelta];
  v4 = v3;
  [(CLRepromptAlwaysAuthPromptPluginViewController *)self lonDelta];
  v5 = fmax(v4, 0.072);
  v7 = fmax(v6, 0.072);
  v8 = (fmaxf(v5, (v7 / 270.0) * 180.0) * 111320.0) / 180.0;
  v9 = fmaxf(v8 * 3.0, fminf(v8 * 4.5, 400.0));
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = [(NSArray *)self->_locations count];
    *buf = 134218240;
    v44 = v9;
    v45 = 2048;
    v46 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "#reprompt _addLocationsToMap: Radius: %f Count: %lu", buf, 0x16u);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = self->_locations;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v12)
  {
    v13 = *v38;
    do
    {
      v14 = 0;
      do
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v37 + 1) + 8 * v14);
        v16 = [(CLAuthBaseViewController *)self mapView];
        [v15 latitude];
        v18 = v17;
        [v15 longitude];
        v20 = CLLocationCoordinate2DMake(v18, v19);
        v21 = [MKCircle circleWithCenterCoordinate:v20.latitude radius:v20.longitude, v9];
        [v16 addOverlay:v21];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v12);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = self->_launchLocations;
  v23 = [(NSArray *)v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v23)
  {
    v24 = *v34;
    do
    {
      v25 = 0;
      do
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v33 + 1) + 8 * v25);
        v27 = [(CLAuthBaseViewController *)self mapView];
        [v26 latitude];
        v29 = v28;
        [v26 longitude];
        v31 = CLLocationCoordinate2DMake(v29, v30);
        v32 = [MKCircle circleWithCenterCoordinate:v31.latitude radius:v31.longitude, v9];
        [v27 addOverlay:v32];

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [(NSArray *)v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v23);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "#reprompt _addLocationsToMap<End>", buf, 2u);
  }
}

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[MKCircleRenderer alloc] initWithCircle:v5];
    v7 = [(CLRepromptAlwaysAuthPromptPluginViewController *)self view];
    v8 = [v7 tintColor];
    [v6 setStrokeColor:v8];

    v9 = [(CLRepromptAlwaysAuthPromptPluginViewController *)self view];
    v10 = [v9 tintColor];
    [v6 setFillColor:v10];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
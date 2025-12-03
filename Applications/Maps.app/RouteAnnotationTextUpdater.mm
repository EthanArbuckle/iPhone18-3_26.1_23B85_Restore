@interface RouteAnnotationTextUpdater
- (RouteAnnotationTextUpdater)initWithRouteWaypoint:(id)waypoint mapView:(id)view;
- (void)_updateAnnotationText;
- (void)dealloc;
@end

@implementation RouteAnnotationTextUpdater

- (void)_updateAnnotationText
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v27 = sub_10006D178();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        selfCopy5 = "[RouteAnnotationTextUpdater _updateAnnotationText]";
        v35 = 2080;
        v36 = "RouteAnnotationsController.m";
        v37 = 1024;
        *v38 = 95;
        *&v38[4] = 2080;
        *&v38[6] = "dispatch_get_main_queue()";
        v39 = 2080;
        v40 = dispatch_queue_get_label(&_dispatch_main_q);
        v41 = 2080;
        v42 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v28 = sub_10006D178();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = +[NSThread callStackSymbols];
          *buf = 138412290;
          selfCopy5 = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_waypoint);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v32 = 0.0;
    waypoint = [WeakRetained waypoint];
    location = [waypoint location];
    [location timestamp];
    v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v11 = +[NSDate date];
    v12 = [NSDateComponentsFormatter _mapkit_descriptionForTimeSinceDate:v10 referenceDate:v11 smallestUnit:64 timeUntilNextUpdate:&v32];

    annotationText = [v7 annotationText];
    v14 = v12;
    if (v14 | annotationText && (v15 = [annotationText isEqual:v14], v14, annotationText, annotationText, !v15))
    {
      v19 = sub_100B6F424();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 134349570;
        selfCopy5 = self;
        v35 = 2112;
        v36 = v14;
        v37 = 2048;
        *v38 = v32;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}p] Setting annotation text to: %@ with next update in: %f seconds", buf, 0x20u);
      }

      [v7 setAnnotationText:v14];
      v16 = objc_loadWeakRetained(&self->_mapView);
      [v16 setNeedsLayout];
    }

    else
    {
      v16 = sub_100B6F424();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        selfCopy5 = self;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] Annotation text has not changed, will not update", buf, 0xCu);
      }
    }

    v20 = v32;
    v21 = sub_100B6F424();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
    if (v20 <= 0.0)
    {
      if (v22)
      {
        *buf = 134349056;
        selfCopy5 = self;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] No next update provided; stopping timer", buf, 0xCu);
      }

      timer = self->_timer;
      self->_timer = 0;
    }

    else
    {
      if (v22)
      {
        *buf = 134349056;
        selfCopy5 = self;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] Starting annotation text updating timer", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v23 = v32;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100B6F478;
      v30[3] = &unk_1016616E8;
      objc_copyWeak(&v31, buf);
      v24 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v30 block:v23];
      v25 = self->_timer;
      self->_timer = v24;

      objc_destroyWeak(&v31);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v17 = sub_100B6F424();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy5 = self;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}p] Lost waypoint; stopping timer", buf, 0xCu);
    }

    v18 = self->_timer;
    self->_timer = 0;
  }
}

- (void)dealloc
{
  v3 = sub_100B6F424();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained(&self->_waypoint);
    *buf = 134349314;
    selfCopy = self;
    v8 = 2112;
    v9 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating for waypoint: %@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = RouteAnnotationTextUpdater;
  [(RouteAnnotationTextUpdater *)&v5 dealloc];
}

- (RouteAnnotationTextUpdater)initWithRouteWaypoint:(id)waypoint mapView:(id)view
{
  waypointCopy = waypoint;
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = RouteAnnotationTextUpdater;
  v8 = [(RouteAnnotationTextUpdater *)&v13 init];
  if (v8)
  {
    v9 = sub_100B6F424();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v15 = v8;
      v16 = 2112;
      v17 = waypointCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Initializing for waypoint: %@", buf, 0x16u);
    }

    objc_storeWeak(&v8->_waypoint, waypointCopy);
    objc_storeWeak(&v8->_mapView, viewCopy);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100B6F7D4;
    block[3] = &unk_101661B18;
    v12 = v8;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v8;
}

@end
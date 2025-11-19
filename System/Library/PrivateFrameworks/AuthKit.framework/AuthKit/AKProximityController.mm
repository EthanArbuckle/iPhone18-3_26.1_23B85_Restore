@interface AKProximityController
- (AKProximityController)initWithEngine:(id)a3;
- (BOOL)_isEngineActivated;
- (void)_activateEngine;
- (void)_invalidateEngine;
- (void)_prepareEngine;
- (void)_unsafe_InvalidateEngine;
- (void)_unsafe_cancelEngineTimeoutSource;
- (void)_unsafe_resumeEngineTimeoutSource;
- (void)dealloc;
- (void)proximityEngine:(id)a3 managerDidUpdateState:(id)a4;
- (void)proximityEngineDidActivate:(id)a3;
- (void)proximityEngineDidInvalidate:(id)a3;
@end

@implementation AKProximityController

- (AKProximityController)initWithEngine:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v14;
  v14 = 0;
  v12.receiver = v3;
  v12.super_class = AKProximityController;
  v14 = [(AKProximityController *)&v12 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    objc_storeStrong(&v14->_engine, location[0]);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.proximity-controller", v10);
    queue = v14->_queue;
    v14->_queue = v4;
    _objc_release(queue);
    _objc_release(v10);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.proximity-controller-engine", v11);
    engineQueue = v14->_engineQueue;
    v14->_engineQueue = v6;
    _objc_release(engineQueue);
    _objc_release(v11);
    *&v14->_timeout = qword_100370B10;
  }

  v9 = _objc_retain(v14);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v9;
}

- (void)dealloc
{
  v5 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v3 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v6, "[AKProximityController dealloc]", 43);
    _os_log_debug_impl(&_mh_execute_header, location[0], v3, "%s (%d) called", v6, 0x12u);
  }

  objc_storeStrong(location, 0);
  [(AKProximityController *)v5 _unsafe_InvalidateEngine];
  v2.receiver = v5;
  v2.super_class = AKProximityController;
  [(AKProximityController *)&v2 dealloc];
}

- (void)_prepareEngine
{
  v9 = self;
  v8[1] = a2;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = v9->_queue;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10007486C;
  v7 = &unk_10031F8B0;
  v8[0] = _objc_retain(v9);
  dispatch_sync(queue, &v3);
  objc_storeStrong(v8, 0);
}

- (void)_activateEngine
{
  v9 = self;
  v8[1] = a2;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = v9->_queue;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100074A9C;
  v7 = &unk_10031F8B0;
  v8[0] = _objc_retain(v9);
  dispatch_sync(queue, &v3);
  objc_storeStrong(v8, 0);
}

- (void)_invalidateEngine
{
  v9 = self;
  v8[1] = a2;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = v9->_queue;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100074CAC;
  v7 = &unk_10031F8B0;
  v8[0] = _objc_retain(v9);
  dispatch_sync(queue, &v3);
  objc_storeStrong(v8, 0);
}

- (BOOL)_isEngineActivated
{
  v17 = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = v17->_queue;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_100074E1C;
  v9 = &unk_100321010;
  v10[1] = &v11;
  v10[0] = _objc_retain(v17);
  dispatch_sync(queue, &v5);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

- (void)_unsafe_InvalidateEngine
{
  v5 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    v3 = [(AKProximityController *)v5 engine];
    sub_10001B098(v6, v5, v3);
    _os_log_debug_impl(&_mh_execute_header, location[0], OS_LOG_TYPE_DEBUG, "%@: Invalidating proximity engine (%@)", v6, 0x16u);
    _objc_release(v3);
  }

  objc_storeStrong(location, 0);
  [(AKProximityController *)v5 _unsafe_cancelEngineTimeoutSource];
  v2 = [(AKProximityController *)v5 engine];
  [(AKProximityEngine *)v2 invalidate];
  _objc_release(v2);
}

- (void)_unsafe_resumeEngineTimeoutSource
{
  v36 = self;
  location[1] = a2;
  if (self->_engineTimeoutSource)
  {
    location[0] = _AKLogSystem();
    v34 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_FAULT))
    {
      sub_1000194D4(v39, v36);
      _os_log_fault_impl(&_mh_execute_header, location[0], v34, "%@: Encountered unexpected non-NULL engineTimeoutSource when attempting to schedule new timer", v39, 0xCu);
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    v33 = _AKLogSystem();
    v32 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [(AKProximityController *)v36 timeout];
      sub_100074370(v38, v36, v2);
      _os_log_debug_impl(&_mh_execute_header, v33, v32, "%@: Creating engine timeout source (%f s)", v38, 0x16u);
    }

    objc_storeStrong(&v33, 0);
    v31 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v36->_queue);
    if (v31)
    {
      [(AKProximityController *)v36 timeout];
      v27 = (1000000000.0 * v3);
      v4 = dispatch_time(0xFFFFFFFFFFFFFFFELL, v27);
      dispatch_source_set_timer(v31, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
      objc_initWeak(&v26, v36);
      v5 = v31;
      v20 = _NSConcreteStackBlock;
      v21 = -1073741824;
      v22 = 0;
      v23 = sub_10007541C;
      v24 = &unk_100321038;
      objc_copyWeak(&v25, &v26);
      dispatch_source_set_registration_handler(v5, &v20);
      v6 = v31;
      v14 = _NSConcreteStackBlock;
      v15 = -1073741824;
      v16 = 0;
      v17 = sub_10007550C;
      v18 = &unk_100321038;
      objc_copyWeak(&v19, &v26);
      dispatch_source_set_cancel_handler(v6, &v14);
      v7 = v31;
      v8 = _NSConcreteStackBlock;
      v9 = -1073741824;
      v10 = 0;
      v11 = sub_1000755FC;
      v12 = &unk_100321038;
      objc_copyWeak(&v13, &v26);
      dispatch_source_set_event_handler(v7, &v8);
      dispatch_resume(v31);
      objc_storeStrong(&v36->_engineTimeoutSource, v31);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v25);
      objc_destroyWeak(&v26);
      v28 = 0;
    }

    else
    {
      v30 = _AKLogSystem();
      v29 = OS_LOG_TYPE_FAULT;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_1000194D4(v37, v36);
        _os_log_fault_impl(&_mh_execute_header, v30, v29, "%@: Failed to create engine timeout source", v37, 0xCu);
      }

      objc_storeStrong(&v30, 0);
      v28 = 1;
    }

    objc_storeStrong(&v31, 0);
  }
}

- (void)_unsafe_cancelEngineTimeoutSource
{
  v3 = self;
  oslog[1] = a2;
  if (self->_engineTimeoutSource)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v4, v3);
      _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "%@: Cancelling engine timeout source", v4, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    dispatch_source_cancel(v3->_engineTimeoutSource);
    objc_storeStrong(&v3->_engineTimeoutSource, 0);
  }
}

- (void)proximityEngine:(id)a3 managerDidUpdateState:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v5 = [v13 state];
  if (v5 <= 1)
  {
LABEL_7:
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_100075B68(v19, v15, v13, [v13 state]);
      _os_log_debug_impl(&_mh_execute_header, oslog, type, "%@: Manager (%@) did update to state (%lu)", v19, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    goto LABEL_19;
  }

  if (v5 == 2)
  {
    v10 = _AKLogSystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001B098(v18, v15, v13);
      _os_log_error_impl(&_mh_execute_header, v10, v9, "%@: Manager (%@) reported that BLE is unsupported on this device", v18, 0x16u);
    }

    objc_storeStrong(&v10, 0);
    [(AKProximityController *)v15 invalidate];
  }

  else
  {
    if (v5 != 3)
    {
      if (v5 != 4)
      {
        if (v5 == 5)
        {
          v6 = _AKLogSystem();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            sub_10001B098(v16, v15, v13);
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Manager (%@) reported powered-on state", v16, 0x16u);
          }

          objc_storeStrong(&v6, 0);
          [(AKProximityController *)v15 _activateEngine];
        }

        goto LABEL_19;
      }

      goto LABEL_7;
    }

    v8 = _AKLogSystem();
    v7 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_10001B098(v17, v15, v13);
      _os_log_fault_impl(&_mh_execute_header, v8, v7, "%@: Manager (%@) reported that we are unauthorized to use BLE", v17, 0x16u);
    }

    objc_storeStrong(&v8, 0);
    [(AKProximityController *)v15 invalidate];
  }

LABEL_19:
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)proximityEngineDidActivate:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B098(v6, v5, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%@: Proximity engine (%@) was activated", v6, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(location, 0);
}

- (void)proximityEngineDidInvalidate:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v14->_queue;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100075EC4;
  v11 = &unk_10031F8B0;
  v12 = _objc_retain(v14);
  dispatch_async(queue, &v7);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B098(v15, v14, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%@: Proximity engine (%@) was invalidated", v15, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v4 = [(AKProximityController *)v14 invalidationHandler];
  _objc_release(v4);
  if (v4)
  {
    v3 = [(AKProximityController *)v14 invalidationHandler];
    v3[2]();
    _objc_release(v3);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end
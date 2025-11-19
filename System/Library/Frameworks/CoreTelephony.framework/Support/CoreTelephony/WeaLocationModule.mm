@interface WeaLocationModule
+ (id)sharedManagerWithDelegate:(shared_ptr<LocationDelegateInterface>)a3 withQueue:(queue)a4;
+ (void)createModuleAndAddToDelegate:(shared_ptr<LocationDelegateInterface>)a3 withQueue:(queue)a4;
- (BOOL)isCircularGeofenceSupported;
- (BOOL)isPolygonalGeofenceSupported;
- (WeaLocationModule)init;
- (WeaLocationModule)initWithDelegate:(shared_ptr<LocationDelegateInterface>)a3 withQueue:(queue)a4;
- (id).cxx_construct;
- (id)setupCircularGeoFence:()pair<WacGeoCoordinateType withName:(double>)a3;
- (id)setupPolygonalGeoFence:()vector<WacGeoCoordinateType withName:(std:(id)a4 :allocator<WacGeoCoordinateType>> *)a3;
- (queue)fQueue;
- (shared_ptr<LocationDelegateInterface>)fDelegate;
- (shared_ptr<WacGeoCoordinateType>)getCurrentLocation;
- (void)dealloc;
- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5;
- (void)locationManager:(id)a3 didEnterRegion:(id)a4;
- (void)locationManager:(id)a3 didExitRegion:(id)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didStartMonitoringForRegion:(id)a4;
- (void)locationManager:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5;
- (void)resetMonitoredRegions;
- (void)setFDelegate:(shared_ptr<LocationDelegateInterface>)a3;
- (void)setFQueue:(queue)a3;
- (void)stopGeofence:(id)a3;
@end

@implementation WeaLocationModule

+ (void)createModuleAndAddToDelegate:(shared_ptr<LocationDelegateInterface>)a3 withQueue:(queue)a4
{
  v4 = *(a3.__ptr_ + 1);
  v11 = *a3.__ptr_;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *a3.__cntrl_;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = [WeaLocationModule sharedManagerWithDelegate:&v11 withQueue:&object, a4.fObj.fObj];
  if (object)
  {
    dispatch_release(object);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v6)
  {
    [v6 fDelegate];
    v7 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  (*(*v7 + 136))(v7, v6);
  if (v9)
  {
    sub_100004A34(v9);
  }
}

+ (id)sharedManagerWithDelegate:(shared_ptr<LocationDelegateInterface>)a3 withQueue:(queue)a4
{
  cntrl = a3.__cntrl_;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1015A0360;
  v17 = sub_1015A0370;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3321888768;
  v10[2] = sub_1015A0378;
  v10[3] = &unk_101F50C30;
  v6 = *a3.__ptr_;
  v5 = *(a3.__ptr_ + 1);
  v10[4] = &v13;
  v10[5] = v6;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *a3.__cntrl_;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
    v7 = *cntrl;
  }

  dispatch_sync(v7, v10);
  v8 = v14[5];
  if (object)
  {
    dispatch_release(object);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (WeaLocationModule)initWithDelegate:(shared_ptr<LocationDelegateInterface>)a3 withQueue:(queue)a4
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v15.receiver = self;
  v15.super_class = WeaLocationModule;
  v6 = [(WeaLocationModule *)&v15 init:a3.__ptr_];
  if (v6)
  {
    v7 = *cntrl;
    if (v7)
    {
      dispatch_retain(v7);
    }

    fObj = v6->_fQueue.fObj.fObj;
    v6->_fQueue.fObj.fObj = v7;
    if (fObj)
    {
      dispatch_release(fObj);
    }

    v10 = *ptr;
    v9 = *(ptr + 1);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = v6->_fDelegate.__cntrl_;
    v6->_fDelegate.__ptr_ = v10;
    v6->_fDelegate.__cntrl_ = v9;
    if (v11)
    {
      sub_100004A34(v11);
    }

    if (!qword_101FCADB0)
    {
      operator new();
    }

    v12 = [[CLLocationManager alloc] initWithEffectiveBundlePath:@"/System/Library/LocationBundles/Wea.bundle" delegate:v6 onQueue:v6->_fQueue.fObj.fObj];
    fLocationManager = v6->_fLocationManager;
    v6->_fLocationManager = v12;

    [(CLLocationManager *)v6->_fLocationManager setDelegate:v6];
    [(CLLocationManager *)v6->_fLocationManager setDistanceFilter:kCLDistanceFilterNone];
    [(CLLocationManager *)v6->_fLocationManager setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
  }

  return v6;
}

- (WeaLocationModule)init
{
  v3.receiver = self;
  v3.super_class = WeaLocationModule;
  return [(WeaLocationModule *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WeaLocationModule;
  [(WeaLocationModule *)&v2 dealloc];
}

- (BOOL)isCircularGeofenceSupported
{
  v2 = [CLLocationManager isMonitoringAvailableForClass:objc_opt_class()];
  if (!v2)
  {
    v3 = *qword_101FCADB0;
    if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Monitoring for CLCircularRegion not supported", v5, 2u);
    }
  }

  return v2;
}

- (BOOL)isPolygonalGeofenceSupported
{
  v2 = [CLLocationManager isMonitoringAvailableForClass:objc_opt_class()];
  if (!v2)
  {
    v3 = *qword_101FCADB0;
    if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Monitoring for _CLPolygonalRegion not supported", v5, 2u);
    }
  }

  return v2;
}

- (id)setupCircularGeoFence:()pair<WacGeoCoordinateType withName:(double>)a3
{
  var1 = a3.var1;
  v5 = a3.var0.var1;
  var0 = a3.var0.var0;
  v8 = a4;
  v9 = [CLCircularRegion alloc];
  v10 = CLLocationCoordinate2DMake(var0, v5);
  v11 = [v9 initWithCenter:v8 radius:v10.latitude identifier:{v10.longitude, var1 * 1000.0}];
  v12 = v11;
  if (v11)
  {
    [v11 setEmergency:1];
    [(CLLocationManager *)self->_fLocationManager startMonitoringForRegion:v12];
    v13 = v12;
  }

  else
  {
    v14 = *qword_101FCADB0;
    if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to setup Circular geofence", buf, 2u);
    }

    ptr = self->_fDelegate.__ptr_;
    sub_10000501C(__p, [v8 UTF8String]);
    (*(*ptr + 64))(ptr, __p);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v12;
}

- (id)setupPolygonalGeoFence:()vector<WacGeoCoordinateType withName:(std:(id)a4 :allocator<WacGeoCoordinateType>> *)a3
{
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  var1 = a3->var1;
  var0 = a3->var0;
  if (var1 == a3->var0)
  {
    v18 = *qword_101FCADB0;
    if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid input array of 0 size...", buf, 2u);
    }

    v16 = 0;
  }

  else
  {
    do
    {
      v10 = var0->var0;
      v11 = var0->var1;
      v12 = [_CLVertex alloc];
      v13 = CLLocationCoordinate2DMake(v10, v11);
      v14 = [v12 initWithCoordinate:{v13.latitude, v13.longitude}];
      [v7 addObject:v14];

      ++var0;
    }

    while (var0 != var1);
    v15 = [[_CLPolygonalRegion alloc] initWithVertices:v7 identifier:v6];
    v16 = v15;
    if (v15)
    {
      [v15 setEmergency:1];
      [(CLLocationManager *)self->_fLocationManager startMonitoringForRegion:v16];
      v17 = v16;
    }

    else
    {
      v19 = *qword_101FCADB0;
      if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to setup Polygonal geofence", buf, 2u);
      }

      ptr = self->_fDelegate.__ptr_;
      sub_10000501C(__p, [v6 UTF8String]);
      (*(*ptr + 64))(ptr, __p);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return v16;
}

- (void)locationManager:(id)a3 didStartMonitoringForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *qword_101FCADB0;
  if (v7)
  {
    if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Monitoring did start for: %@", buf, 0xCu);
    }

    memset(buf, 0, sizeof(buf));
    v15 = 0;
    v9 = [v7 identifier];
    v10 = v9;
    sub_10000501C(buf, [v9 UTF8String]);

    ptr = self->_fDelegate.__ptr_;
    if (SHIBYTE(v15) < 0)
    {
      sub_100005F2C(__p, *buf, *&buf[8]);
    }

    else
    {
      *__p = *buf;
      v13 = v15;
    }

    (*(*ptr + 72))(ptr, __p);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(*buf);
    }
  }

  else if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid region pointer...", buf, 2u);
  }
}

- (void)locationManager:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    memset(buf, 0, sizeof(buf));
    v18 = 0;
    v11 = [v9 identifier];
    sub_10000501C(buf, [v11 UTF8String]);

    v12 = *qword_101FCADB0;
    if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_ERROR))
    {
      *v19 = 138412290;
      v20 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Monitoring failure reason: %@", v19, 0xCu);
    }

    ptr = self->_fDelegate.__ptr_;
    if (SHIBYTE(v18) < 0)
    {
      sub_100005F2C(__p, *buf, *&buf[8]);
    }

    else
    {
      *__p = *buf;
      v16 = v18;
    }

    (*(*ptr + 80))(ptr, __p);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v14 = *qword_101FCADB0;
    if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Invalid region pointer...", buf, 2u);
    }
  }
}

- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v11 = [v9 identifier];
    sub_10000501C(v19, [v11 UTF8String]);

    v12 = *qword_101FCADB0;
    if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = v10;
      v23 = 2048;
      v24 = a4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Monitoring state determined for %@ : %ld", buf, 0x16u);
    }

    ptr = self->_fDelegate.__ptr_;
    if (SHIBYTE(v20) < 0)
    {
      sub_100005F2C(__p, *v19, *&v19[8]);
    }

    else
    {
      *__p = *v19;
      v18 = v20;
    }

    if (a4 == 1)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    if (a4 == 2)
    {
      v16 = 3;
    }

    else
    {
      v16 = v15;
    }

    (*(*ptr + 104))(ptr, __p, v16);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(*v19);
    }
  }

  else
  {
    v14 = *qword_101FCADB0;
    if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Invalid region pointer...", v19, 2u);
    }
  }
}

- (void)locationManager:(id)a3 didEnterRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    memset(buf, 0, sizeof(buf));
    v16 = 0;
    v9 = [v7 identifier];
    sub_10000501C(buf, [v9 UTF8String]);

    v10 = *qword_101FCADB0;
    if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_ERROR))
    {
      *v17 = 138412290;
      v18 = v8;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Region entered: %@", v17, 0xCu);
    }

    ptr = self->_fDelegate.__ptr_;
    if (SHIBYTE(v16) < 0)
    {
      sub_100005F2C(__p, *buf, *&buf[8]);
    }

    else
    {
      *__p = *buf;
      v14 = v16;
    }

    (*(*ptr + 88))(ptr, __p);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v12 = *qword_101FCADB0;
    if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid region pointer...", buf, 2u);
    }
  }
}

- (void)locationManager:(id)a3 didExitRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    memset(buf, 0, sizeof(buf));
    v16 = 0;
    v9 = [v7 identifier];
    sub_10000501C(buf, [v9 UTF8String]);

    v10 = *qword_101FCADB0;
    if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_ERROR))
    {
      *v17 = 138412290;
      v18 = v8;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Region entered: %@", v17, 0xCu);
    }

    ptr = self->_fDelegate.__ptr_;
    if (SHIBYTE(v16) < 0)
    {
      sub_100005F2C(__p, *buf, *&buf[8]);
    }

    else
    {
      *__p = *buf;
      v14 = v16;
    }

    (*(*ptr + 96))(ptr, __p);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v12 = *qword_101FCADB0;
    if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid region pointer...", buf, 2u);
    }
  }
}

- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  v6 = a3;
  if (a4 <= 2)
  {
    v7 = *qword_101FCADB0;
    if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Location services disabled", v8, 2u);
    }

    (*(*self->_fDelegate.__ptr_ + 112))(self->_fDelegate.__ptr_);
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v5 = *qword_101FCADB0;
  if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = a4;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Monitoring failure reason: %@", &v6, 0xCu);
  }
}

- (void)stopGeofence:(id)a3
{
  v4 = a3;
  fLocationManager = self->_fLocationManager;
  if (fLocationManager)
  {
    if (v4)
    {
      [(CLLocationManager *)fLocationManager stopMonitoringForRegion:v4];
    }
  }

  else
  {
    v6 = *qword_101FCADB0;
    if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to get location manager...", v7, 2u);
    }
  }
}

- (void)resetMonitoredRegions
{
  memset(v18, 0, sizeof(v18));
  v3 = [(CLLocationManager *)self->_fLocationManager monitoredRegions];
  v4 = v3;
  if (v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v6)
    {
      v8 = *v15;
      *&v7 = 138412290;
      v13 = v7;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if (v10)
          {
            v11 = *qword_101FCADB0;
            if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v13;
              *&buf[4] = v10;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Stopping monitoring for: %@", buf, 0xCu);
            }

            [(CLLocationManager *)self->_fLocationManager stopMonitoringForRegion:v10, v13, v14];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v12 = *qword_101FCADB0;
    if (os_log_type_enabled(*qword_101FCADB0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I No actively monitored regions...", buf, 2u);
    }
  }

  *buf = v18;
  sub_1000087B4(buf);
}

- (shared_ptr<WacGeoCoordinateType>)getCurrentLocation
{
  v3 = v2;
  v4 = [(CLLocationManager *)self->_fLocationManager location];
  *v3 = 0;
  v3[1] = 0;
  if (v4)
  {
    operator new();
  }

  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (shared_ptr<LocationDelegateInterface>)fDelegate
{
  cntrl = self->_fDelegate.__cntrl_;
  *v2 = self->_fDelegate.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setFDelegate:(shared_ptr<LocationDelegateInterface>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_fDelegate.__cntrl_;
  self->_fDelegate.__ptr_ = v4;
  self->_fDelegate.__cntrl_ = v3;
  if (cntrl)
  {
    sub_100004A34(cntrl);
  }
}

- (queue)fQueue
{
  fObj = self->_fQueue.fObj.fObj;
  *v2 = fObj;
  if (fObj)
  {
    dispatch_retain(fObj);
  }

  return fObj;
}

- (void)setFQueue:(queue)a3
{
  v4 = *a3.fObj.fObj;
  if (*a3.fObj.fObj)
  {
    dispatch_retain(*a3.fObj.fObj);
  }

  fObj = self->_fQueue.fObj.fObj;
  self->_fQueue.fObj.fObj = v4;
  if (fObj)
  {

    dispatch_release(fObj);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end
@interface RTLocationShifter
- (RTLocationShifter)init;
- (id)shiftedLocation:(id)a3 allowNetwork:(BOOL)a4 error:(id *)a5;
- (void)shiftCoordinate:(CLLocationCoordinate2D)a3 accuracy:(double)a4 handler:(id)a5;
- (void)shiftLocation:(id)a3 handler:(id)a4;
@end

@implementation RTLocationShifter

- (RTLocationShifter)init
{
  v6.receiver = self;
  v6.super_class = RTLocationShifter;
  v2 = [(RTLocationShifter *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    geoLocationShifter = v2->_geoLocationShifter;
    v2->_geoLocationShifter = v3;
  }

  return v2;
}

- (void)shiftLocation:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([v6 referenceFrame] == 2)
    {
      v7[2](v7, v6, 0);
    }

    else
    {
      [v6 latitude];
      v10 = v9;
      [v6 longitude];
      v12 = CLLocationCoordinate2DMake(v10, v11);
      [v6 horizontalUncertainty];
      v14 = v13;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_11794;
      v15[3] = &unk_1DD28;
      v16 = v6;
      v17 = v7;
      [(RTLocationShifter *)self shiftCoordinate:v15 accuracy:v12.latitude handler:v12.longitude, v14];
    }
  }

  else
  {
    v8 = sub_10DB8(&qword_21AA0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTLocationShifter shiftLocation:handler:]";
      v20 = 1024;
      v21 = 38;
      _os_log_error_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (id)shiftedLocation:(id)a3 allowNetwork:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  if ([v8 referenceFrame] == 2)
  {
    v9 = v8;
  }

  else if (a4)
  {
    [v8 latitude];
    v11 = v10;
    [v8 longitude];
    v13 = CLLocationCoordinate2DMake(v11, v12);
    v57 = 0.0;
    *&v58 = COERCE_DOUBLE(&v57);
    v59 = 0x3010000000;
    v61 = 0;
    v62 = 0;
    v60 = &unk_1897F;
    v53 = 0.0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    *&v67 = 0;
    *(&v67 + 1) = &v67;
    v68 = 0x3032000000;
    v69 = sub_11DF0;
    v70 = sub_11E00;
    v71 = 0;
    v14 = dispatch_semaphore_create(0);
    [v8 horizontalUncertainty];
    v16 = v15;
    v45 = _NSConcreteStackBlock;
    v46 = 3221225472;
    v47 = sub_11E08;
    v48 = &unk_1DD50;
    v50 = &v57;
    v51 = &v53;
    v52 = &v67;
    v17 = v14;
    v49 = v17;
    [(RTLocationShifter *)self shiftCoordinate:&v45 accuracy:v13.latitude handler:v13.longitude, v16];
    v18 = dispatch_time(0, 300000000000);
    if (dispatch_semaphore_wait(v17, v18))
    {
      v65 = NSLocalizedDescriptionKey;
      v66 = @"Timed-out attempting to shift coordinate";
      v19 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1, v45, v46, v47, v48];
      v20 = [NSError errorWithDomain:RTErrorDomain code:0 userInfo:v19];

      v21 = sub_10DB8(&qword_21AA0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v44 = [v20 localizedDescription];
        *buf = 138412290;
        v64 = v44;
        _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      if (a5)
      {
        v22 = v20;
        *a5 = v20;
      }

      v9 = v8;
    }

    else
    {
      if (a5)
      {
        *a5 = *(*(&v67 + 1) + 40);
      }

      if (*(*(&v67 + 1) + 40))
      {
        v9 = v8;
      }

      else
      {
        v38 = [RTLocation alloc];
        v39 = v58[4];
        v40 = v58[5];
        v41 = v54[3];
        v42 = [v8 date];
        v9 = [v38 initWithLatitude:v42 longitude:2 horizontalUncertainty:v39 date:v40 referenceFrame:v41];
      }
    }

    _Block_object_dispose(&v67, 8);
    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(&v57, 8);
  }

  else
  {
    v57 = 0.0;
    *&v58 = 0.0;
    v53 = 0.0;
    [v8 latitude];
    v24 = v23;
    [v8 longitude];
    v26 = v25;
    geoLocationShifter = self->_geoLocationShifter;
    [v8 horizontalUncertainty];
    if (([(GEOLocationShifter *)geoLocationShifter shiftCoordinate:&v57 accuracy:&v53 shiftedCoordinate:v24 shiftedAccuracy:v26, v28]& 1) != 0)
    {
      v29 = [RTLocation alloc];
      v30 = v57;
      v31 = *&v58;
      v32 = v53;
      v33 = [v8 date];
      v34 = [v29 initWithLatitude:v33 longitude:2 horizontalUncertainty:v30 date:v31 referenceFrame:v32];
    }

    else
    {
      v72 = NSLocalizedDescriptionKey;
      v73 = @"Unable to shift without network allowed";
      v35 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      v33 = [NSError errorWithDomain:RTErrorDomain code:0 userInfo:v35];

      v36 = sub_10DB8(&qword_21AA0);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v67) = 138412290;
        *(&v67 + 4) = v33;
        _os_log_error_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%@", &v67, 0xCu);
      }

      if (a5)
      {
        v37 = v33;
        *a5 = v33;
      }

      v34 = v8;
    }

    v9 = v34;
  }

  return v9;
}

- (void)shiftCoordinate:(CLLocationCoordinate2D)a3 accuracy:(double)a4 handler:(id)a5
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v9 = a5;
  if (v9)
  {
    if (([GEOLocationShifter isLocationShiftRequiredForCoordinate:latitude, longitude]& 1) != 0)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_120D0;
      v21[3] = &unk_1DD78;
      v10 = v9;
      v22 = v10;
      v11 = objc_retainBlock(v21);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_12124;
      v16[3] = &unk_1DDA0;
      v17 = v10;
      v18 = latitude;
      v19 = longitude;
      v20 = a4;
      v12 = objc_retainBlock(v16);
      geoLocationShifter = self->_geoLocationShifter;
      v14 = dispatch_get_global_queue(0, 0);
      [(GEOLocationShifter *)geoLocationShifter shiftCoordinate:v11 accuracy:0 withCompletionHandler:v12 mustGoToNetworkCallback:v14 errorHandler:latitude callbackQueue:longitude, a4];
    }

    else
    {
      (*(v9 + 2))(v9, 0, latitude, longitude, a4);
    }
  }

  else
  {
    v15 = sub_10DB8(&qword_21AA0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[RTLocationShifter shiftCoordinate:accuracy:handler:]";
      v25 = 1024;
      v26 = 144;
      _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

@end
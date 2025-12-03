@interface RTLocationShifter
- (RTLocationShifter)init;
- (id)shiftedLocation:(id)location allowNetwork:(BOOL)network error:(id *)error;
- (void)shiftCoordinate:(CLLocationCoordinate2D)coordinate accuracy:(double)accuracy handler:(id)handler;
- (void)shiftLocation:(id)location handler:(id)handler;
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

- (void)shiftLocation:(id)location handler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([locationCopy referenceFrame] == 2)
    {
      handlerCopy[2](handlerCopy, locationCopy, 0);
    }

    else
    {
      [locationCopy latitude];
      v10 = v9;
      [locationCopy longitude];
      v12 = CLLocationCoordinate2DMake(v10, v11);
      [locationCopy horizontalUncertainty];
      v14 = v13;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_233543654;
      v16[3] = &unk_2789DF428;
      v17 = locationCopy;
      v18 = handlerCopy;
      [(RTLocationShifter *)self shiftCoordinate:v16 accuracy:v12.latitude handler:v12.longitude, v14];
    }
  }

  else
  {
    v8 = sub_23354337C(qword_27DE0EC18);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTLocationShifter shiftLocation:handler:]";
      v21 = 1024;
      v22 = 38;
      _os_log_error_impl(&dword_233541000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)shiftedLocation:(id)location allowNetwork:(BOOL)network error:(id *)error
{
  v76[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if ([locationCopy referenceFrame] == 2)
  {
    v9 = locationCopy;
  }

  else if (network)
  {
    [locationCopy latitude];
    v11 = v10;
    [locationCopy longitude];
    v13 = CLLocationCoordinate2DMake(v11, v12);
    v60 = 0.0;
    *&v61 = COERCE_DOUBLE(&v60);
    v62 = 0x3010000000;
    v64 = 0;
    v65 = 0;
    v63 = &unk_233544A0B;
    v56 = 0.0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    *&v70 = 0;
    *(&v70 + 1) = &v70;
    v71 = 0x3032000000;
    v72 = sub_233543CB0;
    v73 = sub_233543CC0;
    v74 = 0;
    v14 = dispatch_semaphore_create(0);
    [locationCopy horizontalUncertainty];
    v16 = v15;
    v48 = MEMORY[0x277D85DD0];
    v49 = 3221225472;
    v50 = sub_233543CC8;
    v51 = &unk_2789DF450;
    v53 = &v60;
    v54 = &v56;
    v55 = &v70;
    v17 = v14;
    v52 = v17;
    [(RTLocationShifter *)self shiftCoordinate:&v48 accuracy:v13.latitude handler:v13.longitude, v16];
    v18 = dispatch_time(0, 300000000000);
    if (dispatch_semaphore_wait(v17, v18))
    {
      v19 = MEMORY[0x277CCA9B8];
      v68 = *MEMORY[0x277CCA450];
      v69 = @"Timed-out attempting to shift coordinate";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:{1, v48, v49, v50, v51}];
      v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v20];

      v22 = sub_23354337C(qword_27DE0EC18);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v21 localizedDescription];
        *buf = 138412290;
        v67 = localizedDescription;
        _os_log_error_impl(&dword_233541000, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      if (error)
      {
        v23 = v21;
        *error = v21;
      }

      v9 = locationCopy;
    }

    else
    {
      if (error)
      {
        *error = *(*(&v70 + 1) + 40);
      }

      if (*(*(&v70 + 1) + 40))
      {
        v9 = locationCopy;
      }

      else
      {
        v40 = objc_alloc(MEMORY[0x277D01160]);
        v41 = v61[4];
        v42 = v61[5];
        v43 = v57[3];
        date = [locationCopy date];
        v9 = [v40 initWithLatitude:date longitude:2 horizontalUncertainty:v41 date:v42 referenceFrame:v43];
      }
    }

    _Block_object_dispose(&v70, 8);
    _Block_object_dispose(&v56, 8);
    _Block_object_dispose(&v60, 8);
  }

  else
  {
    v60 = 0.0;
    *&v61 = 0.0;
    v56 = 0.0;
    [locationCopy latitude];
    v25 = v24;
    [locationCopy longitude];
    v27 = v26;
    geoLocationShifter = self->_geoLocationShifter;
    [locationCopy horizontalUncertainty];
    if (([(GEOLocationShifter *)geoLocationShifter shiftCoordinate:&v60 accuracy:&v56 shiftedCoordinate:v25 shiftedAccuracy:v27, v29]& 1) != 0)
    {
      v30 = objc_alloc(MEMORY[0x277D01160]);
      v31 = v60;
      v32 = *&v61;
      v33 = v56;
      date2 = [locationCopy date];
      v35 = [v30 initWithLatitude:date2 longitude:2 horizontalUncertainty:v31 date:v32 referenceFrame:v33];
    }

    else
    {
      v36 = MEMORY[0x277CCA9B8];
      v75 = *MEMORY[0x277CCA450];
      v76[0] = @"Unable to shift without network allowed";
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:&v75 count:1];
      date2 = [v36 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v37];

      v38 = sub_23354337C(qword_27DE0EC18);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v70) = 138412290;
        *(&v70 + 4) = date2;
        _os_log_error_impl(&dword_233541000, v38, OS_LOG_TYPE_ERROR, "%@", &v70, 0xCu);
      }

      if (error)
      {
        v39 = date2;
        *error = date2;
      }

      v35 = locationCopy;
    }

    v9 = v35;
  }

  v45 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)shiftCoordinate:(CLLocationCoordinate2D)coordinate accuracy:(double)accuracy handler:(id)handler
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v28 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    if ([MEMORY[0x277D0EB88] isLocationShiftRequiredForCoordinate:{latitude, longitude}])
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_233543F90;
      v22[3] = &unk_2789DF478;
      v10 = handlerCopy;
      v23 = v10;
      v11 = MEMORY[0x2383A2300](v22);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_233543FE4;
      v17[3] = &unk_2789DF4A0;
      v18 = v10;
      v19 = latitude;
      v20 = longitude;
      accuracyCopy = accuracy;
      v12 = MEMORY[0x2383A2300](v17);
      geoLocationShifter = self->_geoLocationShifter;
      v14 = dispatch_get_global_queue(0, 0);
      [(GEOLocationShifter *)geoLocationShifter shiftCoordinate:v11 accuracy:0 withCompletionHandler:v12 mustGoToNetworkCallback:v14 errorHandler:latitude callbackQueue:longitude, accuracy];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, latitude, longitude, accuracy);
    }
  }

  else
  {
    v15 = sub_23354337C(qword_27DE0EC18);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTLocationShifter shiftCoordinate:accuracy:handler:]";
      v26 = 1024;
      v27 = 144;
      _os_log_error_impl(&dword_233541000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end
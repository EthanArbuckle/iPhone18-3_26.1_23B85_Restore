@interface VLFSessionAnalyticsCapturer
- (VLFSessionAnalyticsCapturer)init;
- (void)_submitAnalytics;
- (void)recordAttempt:(id)attempt;
- (void)recordGeoTrackingStatusIfNecessary:(id)necessary;
- (void)recordPocketState:(int64_t)state;
- (void)sessionEndedWithResult:(int64_t)result initializationFailureDetails:(id)details arFailureTypes:(id)types;
- (void)sessionStartedWithEntryPoint:(int64_t)point;
@end

@implementation VLFSessionAnalyticsCapturer

- (void)_submitAnalytics
{
  label = dispatch_queue_get_label(self->_queue);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v39 = sub_10006D178();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = dispatch_queue_get_label(self->_queue);
        *buf = 136316418;
        *&buf[4] = "[VLFSessionAnalyticsCapturer _submitAnalytics]";
        *&buf[12] = 2080;
        *&buf[14] = "VLFSessionAnalyticsCapturer.m";
        *&buf[22] = 1024;
        v44 = 274;
        v45 = 2080;
        v46 = "_queue";
        v47 = 2080;
        v48 = v40;
        v49 = 2080;
        v50 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v41 = sub_10006D178();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = +[NSThread callStackSymbols];
          *buf = 138412290;
          *&buf[4] = v42;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  startTime = self->_startTime;
  endTime = self->_endTime;
  v8 = objc_alloc_init(GEOVLFEntryPoint);
  v9 = v8;
  if ((self->_entryPoint - 1) < 4)
  {
    entryPoint_low = LODWORD(self->_entryPoint);
  }

  else
  {
    entryPoint_low = 0;
  }

  [v8 setAccessPoint:entryPoint_low];
  v11 = self->_originalLocation;
  positionContextState = [(CLLocation *)v11 positionContextState];
  if (positionContextState > 2)
  {
    v13 = 0;
    v14 = 3;
  }

  else
  {
    v13 = dword_101213448[positionContextState];
    v14 = 7;
  }

  [(CLLocation *)v11 probabilityPositionContextStateIndoor];
  v16 = v15;
  [(CLLocation *)v11 probabilityPositionContextStateOutdoor];
  v18 = v17;

  if (self->_result == 4)
  {
    v19 = objc_alloc_init(GEOVLFCorrection);
    [(CLLocation *)self->_finalLocation distanceFromLocation:self->_originalLocation];
    [v19 setLocationCorrectionMagnitude:v20];
  }

  else
  {
    v19 = 0;
  }

  if (self->_originalLocation)
  {
    v21 = objc_alloc_init(GEOVLFLocation);
    v22 = [GEOLatLng alloc];
    [(CLLocation *)self->_originalLocation coordinate];
    v24 = v23;
    [(CLLocation *)self->_originalLocation coordinate];
    v25 = [v22 initWithLatitude:v24 longitude:?];
    [v21 setLocation:v25];
  }

  else
  {
    v21 = 0;
  }

  if ((GEOVisualLocalizationCrowdsourcingIsSupported() & 1) == 0)
  {
    v27 = sub_1007699B8();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v30 = "Not capturing VL Crowdsourcing details because the feature is disabled";
LABEL_34:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
    goto LABEL_35;
  }

  if ((GEOVisualLocalizationCrowdsourcingIsAllowed() & 1) == 0)
  {
    v27 = sub_1007699B8();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v30 = "Not capturing VL Crowdsourcing details because the feature is not supported for the current device posture";
    goto LABEL_34;
  }

  if ((GEOVisualLocalizationCrowdsourcingIsEnabled() & 1) == 0)
  {
    v27 = sub_1007699B8();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v30 = "Not capturing VL Crowdsourcing details because the user has not given permission";
    goto LABEL_34;
  }

  lastCrowdsourcingDetails = self->_lastCrowdsourcingDetails;
  v27 = sub_1007699B8();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
  if (!lastCrowdsourcingDetails)
  {
    if (v28)
    {
      *buf = 0;
      v30 = "Not capturing VL Crowdsourcing details because we did not receive any";
      goto LABEL_34;
    }

LABEL_35:

    v29 = 0;
    goto LABEL_36;
  }

  if (v28)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Capturing VL Crowdsourcing details", buf, 2u);
  }

  v29 = [GEOVLFCrowdsourcingDetails _vl_createWithVLCrowdsourcingDetails:self->_lastCrowdsourcingDetails];
LABEL_36:
  v31 = [NSNumber numberWithUnsignedInt:((endTime - startTime) * 1000.0)];
  v32 = [NSNumber numberWithDouble:self->_startTimeRoundedToHour];
  localizationDetails = self->_localizationDetails;
  if ((self->_result - 1) < 4)
  {
    result_low = LODWORD(self->_result);
  }

  else
  {
    result_low = 0;
  }

  arStates = self->_arStates;
  deviceOrientations = self->_deviceOrientations;
  initializationFailureDetails = self->_initializationFailureDetails;
  arFailureTypes = self->_arFailureTypes;
  *buf = v16;
  *&buf[8] = v18;
  *&buf[16] = v13;
  buf[20] = v14;
  *&buf[21] = 0;
  buf[23] = 0;
  [GEOAPPortal captureVlfUsageWithEntryPoint:v9 sessionTimeMs:v31 timeRoundedToHour:v32 localizationDetails:localizationDetails finalState:result_low postFusionCorrection:v19 initialPositionContextClassification:buf initialLocation:v21 initializationFailureDetails:initializationFailureDetails arStates:arStates deviceOrientations:deviceOrientations crowdsourcingDetails:v29 arFailureTypes:arFailureTypes];
}

- (void)recordPocketState:(int64_t)state
{
  if (self->_lastPocketState != state)
  {
    block[9] = v3;
    block[10] = v4;
    self->_lastPocketState = state;
    GEOGetMonotonicTime();
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100769AF0;
    block[3] = &unk_1016575B0;
    block[4] = self;
    block[5] = v8;
    block[6] = state;
    dispatch_async(queue, block);
  }
}

- (void)recordGeoTrackingStatusIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v6 = necessaryCopy;
  p_lastGeoTrackingStatus = &self->_lastGeoTrackingStatus;
  if (self->_lastGeoTrackingStatus != necessaryCopy)
  {
    state = [(ARGeoTrackingStatus *)necessaryCopy state];
    if (state == [(ARGeoTrackingStatus *)*p_lastGeoTrackingStatus state]&& (v9 = [(ARGeoTrackingStatus *)v6 stateReason], v9 == [(ARGeoTrackingStatus *)*p_lastGeoTrackingStatus stateReason]))
    {
      objc_storeStrong(&self->_lastGeoTrackingStatus, necessary);
    }

    else
    {
      objc_storeStrong(&self->_lastGeoTrackingStatus, necessary);
      GEOGetMonotonicTime();
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100769CCC;
      block[3] = &unk_10165E668;
      block[4] = self;
      v14 = v11;
      v13 = v6;
      dispatch_async(queue, block);
    }
  }
}

- (void)recordAttempt:(id)attempt
{
  attemptCopy = attempt;
  v5 = +[MKLocationManager sharedLocationManager];
  lastLocation = [v5 lastLocation];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100769E88;
  block[3] = &unk_101661A40;
  v11 = attemptCopy;
  selfCopy = self;
  v13 = lastLocation;
  v8 = lastLocation;
  v9 = attemptCopy;
  dispatch_async(queue, block);
}

- (void)sessionEndedWithResult:(int64_t)result initializationFailureDetails:(id)details arFailureTypes:(id)types
{
  detailsCopy = details;
  typesCopy = types;
  GEOMachAbsoluteTimeGetCurrent();
  v11 = v10;
  v12 = +[MKLocationManager sharedLocationManager];
  lastLocation = [v12 lastLocation];

  queue = self->_queue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10076A100;
  v18[3] = &unk_101628630;
  v22 = v11;
  v18[4] = self;
  v19 = lastLocation;
  resultCopy = result;
  v20 = detailsCopy;
  v21 = typesCopy;
  v15 = typesCopy;
  v16 = detailsCopy;
  v17 = lastLocation;
  dispatch_async(queue, v18);
}

- (void)sessionStartedWithEntryPoint:(int64_t)point
{
  GEOMachAbsoluteTimeGetCurrent();
  v6 = v5;
  v7 = ((CFAbsoluteTimeGetCurrent() * 3600.0) / 0xE10);
  GEOGetMonotonicTime();
  v9 = v8;
  v10 = +[MKLocationManager sharedLocationManager];
  lastLocation = [v10 lastLocation];

  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10076A29C;
  v14[3] = &unk_101655C38;
  v16 = v6;
  v17 = v9;
  v18 = v7;
  v14[4] = self;
  v15 = lastLocation;
  pointCopy = point;
  v13 = lastLocation;
  dispatch_async(queue, v14);
}

- (VLFSessionAnalyticsCapturer)init
{
  v7.receiver = self;
  v7.super_class = VLFSessionAnalyticsCapturer;
  v2 = [(VLFSessionAnalyticsCapturer *)&v7 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create_with_qos();
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = v2;
  }

  return v2;
}

@end
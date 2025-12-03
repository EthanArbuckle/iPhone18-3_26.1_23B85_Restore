@interface NCManager
+ (BOOL)_showsElevationAccuracy;
+ (BOOL)showingIdealizedData;
+ (NCManager)sharedAppManager;
+ (NCManager)sharedComplicationManager;
- (BOOL)isTrueNorthError:(id)error;
- (NCAltitude)altitude;
- (id)_newAltimeter;
- (id)init:(BOOL)init;
- (id)startAltimeterUpdateWithHandler:(id)handler;
- (id)startMotionUpdatesWithUpdateRate:(int64_t)rate updateHandler:(id)handler calibrationHandler:(id)calibrationHandler;
- (void)_initLocationDelegate;
- (void)_queue_altimeterError:(id)error;
- (void)_queue_altimeterUpdate;
- (void)_queue_altimeterUpdate:(id)update;
- (void)_startAbsoluteAltimeterUpdate;
- (void)_updateAltimeterRunning;
- (void)_updateRunning;
- (void)dealloc;
- (void)end1HzMode:(id)mode;
- (void)fetchGroundAltitudeNearCurrentLocationWithCompletion:(id)completion;
- (void)fetchGroundAltitudeNearLocation:(id)location completion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setPaused:(BOOL)paused;
- (void)setPaused:(BOOL)paused forAltimeterToken:(id)token;
- (void)setWaypointComplicationIsActive:(BOOL)active;
- (void)start1HzMode:(id)mode;
- (void)startMotionActivityUpdatesWithHandler:(id)handler;
- (void)stopAltimeterUpdateForToken:(id)token;
- (void)stopMotionActivityUpdates;
@end

@implementation NCManager

- (id)startMotionUpdatesWithUpdateRate:(int64_t)rate updateHandler:(id)handler calibrationHandler:(id)calibrationHandler
{
  calibrationHandlerCopy = calibrationHandler;
  handlerCopy = handler;
  v11 = objc_msgSend_idealizedHeading(NCHeading, v8, v9, v10);
  v15 = objc_msgSend_idealizedIncline(NCIncline, v12, v13, v14);
  (*(handler + 2))(handlerCopy, v11, v15);

  if (calibrationHandlerCopy)
  {
    calibrationHandlerCopy[2](calibrationHandlerCopy, 1, 0);
  }

  return 0;
}

- (void)startMotionActivityUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  v10 = objc_msgSend_locationDelegate(self, v5, v6, v7);
  objc_msgSend_startMotionActivityUpdatesWithHandler_(v10, v8, handlerCopy, v9);
}

- (void)stopMotionActivityUpdates
{
  v7 = objc_msgSend_locationDelegate(self, a2, v2, v3);
  objc_msgSend_stopMotionActivityUpdates(v7, v4, v5, v6);
}

+ (NCManager)sharedAppManager
{
  if (qword_27E1C5020 != -1)
  {
    sub_23BD65C90();
  }

  v3 = qword_27E1C5018;

  return v3;
}

+ (NCManager)sharedComplicationManager
{
  if (qword_27E1C5030 != -1)
  {
    sub_23BD65CA4();
  }

  v3 = qword_27E1C5028;

  return v3;
}

+ (BOOL)showingIdealizedData
{
  if (qword_27E1C5040 != -1)
  {
    sub_23BD65CB8();
  }

  return byte_27E1C5038;
}

- (id)init:(BOOL)init
{
  v55.receiver = self;
  v55.super_class = NCManager;
  v4 = [(NCManager *)&v55 init];
  v5 = v4;
  if (v4)
  {
    v4->_complicationStyle = init;
    v4->_externallyPaused = 1;
    v6 = objc_alloc(MEMORY[0x277CBEBD0]);
    v9 = objc_msgSend_initWithSuiteName_(v6, v7, @"com.apple.compass", v8);
    v10 = *(v5 + 56);
    *(v5 + 56) = v9;

    objc_msgSend_addObserver_forKeyPath_options_context_(*(v5 + 56), v11, v5, @"Bearing", 5, &off_278B94378);
    objc_msgSend_addObserver_forKeyPath_options_context_(*(v5 + 56), v12, v5, @"TargetedWaypointUUID", 5, &off_278B94380);
    objc_msgSend_addObserver_forKeyPath_options_context_(*(v5 + 56), v13, v5, @"TargetedViewUsageTimestamp", 5, &off_278B94388);
    v17 = objc_msgSend_idealizedHeading(NCHeading, v14, v15, v16);
    v18 = *(v5 + 80);
    *(v5 + 80) = v17;

    v22 = objc_msgSend_idealizedIncline(NCIncline, v19, v20, v21);
    v23 = *(v5 + 88);
    *(v5 + 88) = v22;

    *(v5 + 72) = 1;
    if (supportAbsoluteAltimeterFeatures())
    {
      v27 = objc_msgSend__newAltimeter(v5, v24, v25, v26);
      v28 = *(v5 + 16);
      *(v5 + 16) = v27;

      if (objc_msgSend_showingIdealizedData(NCManager, v29, v30, v31))
      {
        v35 = objc_msgSend_idealizedAltitude(NCAltitude, v32, v33, v34);
        objc_msgSend_setAltitude_(v5, v36, v35, v37);
      }

      v38 = objc_opt_new();
      v39 = *(v5 + 32);
      *(v5 + 32) = v38;

      v40 = objc_opt_new();
      v41 = *(v5 + 40);
      *(v5 + 40) = v40;
    }

    objc_msgSend__initLocationDelegate(v5, v24, v25, v26);
    v42 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v43 = *(v5 + 64);
    *(v5 + 64) = v42;

    if ((*(v5 + 8) & 1) == 0 && objc_msgSend_isRunningInStoreDemoMode(MEMORY[0x277D75128], v44, v45, v46))
    {
      v50 = objc_msgSend_sharedAppManager(NCWaypointManager, v47, v48, v49);
      objc_msgSend_resetCompassWaypointsInDemoMode(v50, v51, v52, v53);
    }
  }

  return v5;
}

- (void)_initLocationDelegate
{
  v3 = objc_alloc_init(NCLocationUpdateDemoDelegate);
  locationDelegate = self->_locationDelegate;
  self->_locationDelegate = &v3->super;

  MEMORY[0x2821F96F8](v3, locationDelegate);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NCManager;
  [(NCManager *)&v2 dealloc];
}

- (id)startAltimeterUpdateWithHandler:(id)handler
{
  handlerCopy = handler;
  if ((objc_msgSend_isAbsoluteAltimeterAvailable(self, v5, v6, v7) & 1) == 0)
  {
    v18 = NCLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_23BD65CCC();
    }

    v20 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v19, @"altimeterNotAvailable", @"CMAltimeter is not initialized", 0);
    objc_exception_throw(v20);
  }

  v10 = objc_msgSend_tokenWithValue_(NCManagerAltimeterToken, v8, self->_altimeterToken, v9);
  ++self->_altimeterToken;
  v11 = MEMORY[0x23EEBBDF0](handlerCopy);
  objc_msgSend_setObject_forKeyedSubscript_(self->_altimeterUpdateHandlers, v12, v11, v10);

  objc_msgSend__updateAltimeterRunning(self, v13, v14, v15);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23BD3B3C0;
  v21[3] = &unk_278B94398;
  v21[4] = self;
  v22 = handlerCopy;
  v16 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v21);

  return v10;
}

- (void)stopAltimeterUpdateForToken:(id)token
{
  altimeterUpdateHandlers = self->_altimeterUpdateHandlers;
  tokenCopy = token;
  objc_msgSend_removeObjectForKey_(altimeterUpdateHandlers, v6, tokenCopy, v7);
  objc_msgSend_removeObject_(self->_altimeterPausedTokens, v8, tokenCopy, v9);

  objc_msgSend__updateAltimeterRunning(self, v10, v11, v12);
}

- (NCAltitude)altitude
{
  if (supportAbsoluteAltimeterFeatures())
  {
    v6 = self->_altitude;
  }

  else
  {
    v6 = objc_msgSend_altitude(self->_locationDelegate, v3, v4, v5);
  }

  return v6;
}

- (void)setPaused:(BOOL)paused
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_externallyPaused != paused)
  {
    pausedCopy = paused;
    v5 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = pausedCopy;
      _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "paused changed to: %d", v9, 8u);
    }

    self->_externallyPaused = pausedCopy;
    objc_msgSend__updateRunning(self, v6, v7, v8);
  }
}

- (void)setWaypointComplicationIsActive:(BOOL)active
{
  if (self->_complicationStyle)
  {
    activeCopy = active;
    if ((objc_msgSend_isRunningInStoreDemoMode(MEMORY[0x277D75128], a2, active, v3) & 1) == 0)
    {
      locationDelegate = self->_locationDelegate;

      MEMORY[0x2821F9670](locationDelegate, sel_setWaypointComplicationActive_, activeCopy, v6);
    }
  }
}

- (void)setPaused:(BOOL)paused forAltimeterToken:(id)token
{
  pausedCopy = paused;
  tokenCopy = token;
  altimeterPausedTokens = self->_altimeterPausedTokens;
  v19 = tokenCopy;
  if (pausedCopy)
  {
    objc_msgSend_addObject_(altimeterPausedTokens, tokenCopy, tokenCopy, v7);
  }

  else if (objc_msgSend_containsObject_(altimeterPausedTokens, tokenCopy, tokenCopy, v7))
  {
    objc_msgSend_removeObject_(self->_altimeterPausedTokens, v9, v19, v11);
    v14 = objc_msgSend_objectForKeyedSubscript_(self->_altimeterUpdateHandlers, v12, v19, v13);
    v18 = objc_msgSend_altitude(self, v15, v16, v17);
    (v14)[2](v14, v18);
  }

  objc_msgSend__updateAltimeterRunning(self, v9, v10, v11);
}

- (void)_updateRunning
{
  if (supportAbsoluteAltimeterFeatures())
  {

    objc_msgSend__updateAltimeterRunning(self, v3, v4, v5);
  }
}

- (id)_newAltimeter
{
  if (!objc_msgSend_isAbsoluteAltitudeAvailable(MEMORY[0x277CC1C18], a2, v2, v3) || objc_msgSend_authorizationStatus(MEMORY[0x277CC1C18], v4, v5, v6) != 3)
  {
    if (objc_msgSend_isAbsoluteAltitudeAvailable(MEMORY[0x277CC1C18], v4, v5, v6))
    {
      if (objc_msgSend_authorizationStatus(MEMORY[0x277CC1C18], v9, v10, v11) == 3)
      {
        return 0;
      }

      v12 = NCLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_23BD65D34(v12, v13, v14, v15);
      }
    }

    else
    {
      v12 = NCLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_23BD65D00();
      }
    }

    return 0;
  }

  v7 = NCLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD65DC4();
  }

  return objc_alloc_init(MEMORY[0x277CC1C18]);
}

- (void)_updateAltimeterRunning
{
  v34 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_showingIdealizedData(NCManager, a2, v2, v3))
  {

    objc_msgSend__queue_altimeterUpdate(self, v5, v6, v7);
  }

  else
  {
    v28 = 0;
    v29[0] = &v28;
    v29[1] = 0x2020000000;
    v29[2] = 0;
    v8 = objc_msgSend_allKeys(self->_altimeterUpdateHandlers, v5, v6, v7);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_23BD3BAC0;
    v27[3] = &unk_278B943C0;
    v27[4] = self;
    v27[5] = &v28;
    objc_msgSend_enumerateObjectsUsingBlock_(v8, v9, v27, v10);

    v11 = NCLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD65E04(v29, v11, v12, v13, v14, v15, v16, v17);
    }

    if (self->_runningAltimeter)
    {
      if (self->_externallyPaused || !*(v29[0] + 24))
      {
        v21 = NCLogForCategory(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          externallyPaused = self->_externallyPaused;
          v23 = *(v29[0] + 24);
          *buf = 134218240;
          v31 = externallyPaused;
          v32 = 2048;
          v33 = v23;
          _os_log_impl(&dword_23BD26000, v21, OS_LOG_TYPE_INFO, "stopping absolute altimeter updates. _externallyPaused: %lu, currentNumberOfClients: %lu", buf, 0x16u);
        }

        self->_runningAltimeter = 0;
        objc_msgSend_stopAbsoluteAltitudeUpdates(self->_altimeterManager, v24, v25, v26);
      }
    }

    else if (!self->_externallyPaused && *(v29[0] + 24))
    {
      self->_runningAltimeter = 1;
      objc_msgSend__startAbsoluteAltimeterUpdate(self, v18, v19, v20);
    }

    _Block_object_dispose(&v28, 8);
  }
}

- (void)_startAbsoluteAltimeterUpdate
{
  objc_initWeak(&location, self);
  v3 = NCLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "starting absolute altimeter updates", buf, 2u);
  }

  altimeterManager = self->_altimeterManager;
  v8 = objc_msgSend_mainQueue(MEMORY[0x277CCABD8], v5, v6, v7);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23BD3BC44;
  v10[3] = &unk_278B943E8;
  objc_copyWeak(&v11, &location);
  v10[4] = self;
  objc_msgSend_startAbsoluteAltitudeUpdatesToQueue_withHandler_(altimeterManager, v9, v8, v10);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_queue_altimeterUpdate:(id)update
{
  updateCopy = update;
  v8 = objc_msgSend_altitude(self, v5, v6, v7);
  objc_msgSend_accuracy(updateCopy, v9, v10, v11);
  if (v14 <= 490.0)
  {
    v16 = objc_msgSend_initAltitude_(NCAltitude, v12, updateCopy, v13);
    objc_msgSend_setAltitude_(self, v22, v16, v23);
  }

  else
  {
    v15 = NCLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v33 = 0;
      _os_log_impl(&dword_23BD26000, v15, OS_LOG_TYPE_INFO, "altitude data is not available. reset the altitude and display dash in UI.", v33, 2u);
    }

    v16 = 0;
    objc_msgSend_setAltitude_(self, v17, 0, v18);
  }

  if (v16 | v8)
  {
    v24 = !v8 && v16 != 0;
    v25 = v8 && v16 == 0;
    if (v25 || v24)
    {
      goto LABEL_18;
    }

    objc_msgSend_altitude(v8, v19, v20, v21);
    v27 = v26;
    objc_msgSend_altitude(v16, v28, v29, v30);
    v32 = v27 - v31;
    if (v32 < 0.0)
    {
      v32 = -v32;
    }

    if (v32 > 2.22044605e-16)
    {
LABEL_18:
      objc_msgSend__queue_altimeterUpdate(self, v19, v20, v21);
    }
  }
}

- (void)_queue_altimeterUpdate
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD3BE90;
  block[3] = &unk_278B93FB0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_queue_altimeterError:(id)error
{
  errorCopy = error;
  v4 = NCLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_23BD65E78();
  }

  v8 = objc_msgSend_domain(errorCopy, v5, v6, v7);
  v9 = *MEMORY[0x277CC1BC0];

  if (v8 == v9 && (objc_msgSend_code(errorCopy, v10, v11, v12) == 109 || objc_msgSend_code(errorCopy, v13, v14, v15) == 110 || objc_msgSend_code(errorCopy, v16, v17, v18) == 111 || objc_msgSend_code(errorCopy, v19, v20, v21) == 104 || objc_msgSend_code(errorCopy, v22, v23, v24) == 106 || objc_msgSend_code(errorCopy, v25, v26, v27) == 105))
  {
    v28 = NCLogForCategory(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_23BD65EEC();
    }
  }
}

- (BOOL)isTrueNorthError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    if (self->_usesTrueNorth)
    {
      isLocationServiceOff = objc_msgSend_isLocationServiceOff(self->_locationDelegate, v4, v5, v6);
    }

    else
    {
      isLocationServiceOff = 0;
    }

    v9 = (objc_msgSend_code(errorCopy, v4, v5, v6) == 102) & isLocationServiceOff;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  isEqualToString = change;
  v11 = isEqualToString;
  if (context == &off_278B94378)
  {
    v33 = isEqualToString;
    isEqualToString = objc_msgSend_isEqualToString_(path, isEqualToString, @"Bearing", v10);
    v11 = v33;
    if (isEqualToString)
    {
      v13 = objc_msgSend_objectForKeyedSubscript_(v33, v33, *MEMORY[0x277CCA2F0], v12);
      v17 = objc_msgSend_null(MEMORY[0x277CBEB68], v14, v15, v16);
      isEqual = objc_msgSend_isEqual_(v13, v18, v17, v19);

      if (isEqual)
      {
        v23 = 0;
        objc_msgSend_setBearing_(self, v21, 0, v22);
      }

      else
      {
        v24 = [NCBearing alloc];
        objc_msgSend_doubleValue(v13, v25, v26, v27);
        v23 = objc_msgSend_initWithBearing_(v24, v28, v29, v30);
        objc_msgSend_setBearing_(self, v31, v23, v32);
      }

      v11 = v33;
    }
  }

  MEMORY[0x2821F96F8](isEqualToString, v11);
}

+ (BOOL)_showsElevationAccuracy
{
  if (qword_27E1C5050 != -1)
  {
    sub_23BD65F20();
  }

  return byte_27E1C5048;
}

- (void)start1HzMode:(id)mode
{
  v29 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = objc_msgSend_containsObject_(self->_current1HzModes, v5, modeCopy, v6);
  v8 = NCLogForCategory(3uLL);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD65F34();
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_msgSend_allObjects(self->_current1HzModes, v10, v11, v12);
      v16 = objc_msgSend_componentsJoinedByString_(v13, v14, @", ", v15);
      v25 = 138543618;
      v26 = modeCopy;
      v27 = 2114;
      v28 = v16;
      _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "Requesting 1Hz location updates for %{public}@. 1Hz update modes before adding incoming mode: [%{public}@].", &v25, 0x16u);
    }

    objc_msgSend_addObject_(self->_current1HzModes, v17, modeCopy, v18);
    v22 = objc_msgSend_count(self->_current1HzModes, v19, v20, v21) != 0;
    objc_msgSend_setForce1Hz_(self->_locationDelegate, v23, v22, v24);
  }
}

- (void)end1HzMode:(id)mode
{
  v28 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (objc_msgSend_containsObject_(self->_current1HzModes, v5, modeCopy, v6))
  {
    objc_msgSend_removeObject_(self->_current1HzModes, v7, modeCopy, v8);
    v9 = NCLogForCategory(3uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_msgSend_allObjects(self->_current1HzModes, v10, v11, v12);
      v16 = objc_msgSend_componentsJoinedByString_(v13, v14, @", ", v15);
      v24 = 138543618;
      v25 = modeCopy;
      v26 = 2114;
      v27 = v16;
      _os_log_impl(&dword_23BD26000, v9, OS_LOG_TYPE_DEFAULT, "Dropping 1Hz location updates for %{public}@. 1Hz update modes after dropping incoming mode: [%{public}@].", &v24, 0x16u);
    }

    v20 = objc_msgSend_count(self->_current1HzModes, v17, v18, v19) != 0;
    objc_msgSend_setForce1Hz_(self->_locationDelegate, v21, v20, v22);
  }

  else
  {
    v23 = NCLogForCategory(3uLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_23BD65F9C();
    }
  }
}

- (void)fetchGroundAltitudeNearCurrentLocationWithCompletion:(id)completion
{
  v62 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v8 = objc_msgSend_altitude(self, v5, v6, v7);

  if (v8)
  {
    v12 = NCLogForCategory(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_msgSend_altitude(self, v13, v14, v15);
      objc_msgSend_altitudeInMeters(v16, v17, v18, v19);
      v60 = 134217984;
      v61 = v20;
      _os_log_impl(&dword_23BD26000, v12, OS_LOG_TYPE_DEFAULT, "Use altimeter altitude of %f meters for current location.", &v60, 0xCu);
    }

    v21 = MEMORY[0x277CCABB0];
    v25 = objc_msgSend_altitude(self, v22, v23, v24);
    objc_msgSend_altitudeInMeters(v25, v26, v27, v28);
    v32 = objc_msgSend_numberWithDouble_(v21, v29, v30, v31);
    completionCopy[2](completionCopy, v32);
  }

  else
  {
    v33 = objc_msgSend_location(self, v9, v10, v11);
    v37 = objc_msgSend_rawLocation(v33, v34, v35, v36);

    v38 = NCLogForCategory(7uLL);
    v39 = v38;
    if (v37)
    {
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v43 = objc_msgSend_location(self, v40, v41, v42);
        v47 = objc_msgSend_rawLocation(v43, v44, v45, v46);
        v60 = 134217984;
        v61 = objc_msgSend_hash(v47, v48, v49, v50);
        _os_log_impl(&dword_23BD26000, v39, OS_LOG_TYPE_INFO, "Fetching altitude for current location (%lu).", &v60, 0xCu);
      }

      v54 = objc_msgSend_location(self, v51, v52, v53);
      v58 = objc_msgSend_rawLocation(v54, v55, v56, v57);
      objc_msgSend_fetchGroundAltitudeNearLocation_completion_(self, v59, v58, completionCopy);
    }

    else
    {
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v60) = 0;
        _os_log_impl(&dword_23BD26000, v39, OS_LOG_TYPE_DEFAULT, "Asked to fetch altitude for current location, but we do not have a reading from the altimeter, nor do we have a location fix.", &v60, 2u);
      }

      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)fetchGroundAltitudeNearLocation:(id)location completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  completionCopy = completion;
  objc_msgSend_verticalAccuracy(locationCopy, v8, v9, v10);
  v12 = v11;
  v13 = NCLogForCategory(7uLL);
  v14 = v13;
  if (v12 <= 0.0)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v35 = 134217984;
      v36 = objc_msgSend_hash(locationCopy, v31, v32, v33);
      _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_INFO, "Fetching altitude for waypoint (%lu).", &v35, 0xCu);
    }

    objc_msgSend_fetchGroundAltitudeNearLocation_completion_(self->_locationDelegate, v34, locationCopy, completionCopy);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_msgSend_hash(locationCopy, v15, v16, v17);
      objc_msgSend_altitude(locationCopy, v19, v20, v21);
      v35 = 134218240;
      v36 = v18;
      v37 = 2048;
      v38 = v22;
      _os_log_impl(&dword_23BD26000, v14, OS_LOG_TYPE_DEFAULT, "CLLocation instance for waypoint (%lu) already contains altitude of %f meters.", &v35, 0x16u);
    }

    v23 = MEMORY[0x277CCABB0];
    objc_msgSend_altitude(locationCopy, v24, v25, v26);
    v30 = objc_msgSend_numberWithDouble_(v23, v27, v28, v29);
    completionCopy[2](completionCopy, v30);

    completionCopy = v30;
  }
}

@end
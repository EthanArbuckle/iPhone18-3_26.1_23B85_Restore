@interface NCLocationUpdateNonRhythmicGNSSDelegate
- (void)_cancelLocationAssertion;
- (void)_idleTimerFired:(id)a3;
- (void)_invalidateIdleTimer;
- (void)_invalidateLocationTimersAndAssertion;
- (void)_invalidateQueryDurationTimer;
- (void)_startIdleTimer;
- (void)_startLocationQueryDurationTimer;
- (void)_takeLocationAssertion;
- (void)stopLocationUpdates;
@end

@implementation NCLocationUpdateNonRhythmicGNSSDelegate

- (void)stopLocationUpdates
{
  v6.receiver = self;
  v6.super_class = NCLocationUpdateNonRhythmicGNSSDelegate;
  [(NCLocationUpdateBaseDelegate *)&v6 stopLocationUpdates];
  objc_msgSend__invalidateLocationTimersAndAssertion(self, v3, v4, v5);
}

- (void)_startLocationQueryDurationTimer
{
  if (self->_locationQueryDurationTimer)
  {
    objc_msgSend__invalidateQueryDurationTimer(self, a2, v2, v3);
  }

  objc_initWeak(&location, self);
  v5 = MEMORY[0x277CBEBB8];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = sub_23BD2B9A8;
  v20 = &unk_278B93FD8;
  objc_copyWeak(&v21, &location);
  v7 = objc_msgSend_timerWithTimeInterval_repeats_block_(v5, v6, 0, &v17, 18.0);
  locationQueryDurationTimer = self->_locationQueryDurationTimer;
  self->_locationQueryDurationTimer = v7;

  v12 = objc_msgSend_currentRunLoop(MEMORY[0x277CBEB88], v9, v10, v11, v17, v18, v19, v20);
  objc_msgSend_addTimer_forMode_(v12, v13, self->_locationQueryDurationTimer, *MEMORY[0x277CBE738]);

  objc_msgSend__takeLocationAssertion(self, v14, v15, v16);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)_startIdleTimer
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_locationUpdateIdleTimer)
  {
    objc_msgSend__invalidateIdleTimer(self, a2, v2, v3);
  }

  if (objc_msgSend_shouldStartLocationUpdate(self, a2, v2, v3))
  {
    v5 = objc_alloc(MEMORY[0x277D3A180]);
    v7 = objc_msgSend_initWithTimeInterval_serviceIdentifier_target_selector_userInfo_(v5, v6, @"com.apple.NanoCompass.location.nonRhythmicGNSSWake", self, sel__idleTimerFired_, 0, 180.0);
    locationUpdateIdleTimer = self->_locationUpdateIdleTimer;
    self->_locationUpdateIdleTimer = v7;

    objc_msgSend_setUserVisible_(self->_locationUpdateIdleTimer, v9, 1, v10);
    objc_msgSend_setMinimumEarlyFireProportion_(self->_locationUpdateIdleTimer, v11, v12, v13, 1.0);
    v16 = self->_locationUpdateIdleTimer;
    v17 = MEMORY[0x277D85CD0];

    objc_msgSend_scheduleInQueue_(v16, v14, v17, v15);
  }

  else
  {
    v18 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[NCLocationUpdateNonRhythmicGNSSDelegate _startIdleTimer]";
      _os_log_impl(&dword_23BD26000, v18, OS_LOG_TYPE_DEFAULT, "%s location update should not start as the app is in the background", &v19, 0xCu);
    }
  }
}

- (void)_idleTimerFired:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[NCLocationUpdateNonRhythmicGNSSDelegate _idleTimerFired:]";
    _os_log_impl(&dword_23BD26000, v4, OS_LOG_TYPE_DEFAULT, "%s idle timer fired and restart location update", &v14, 0xCu);
  }

  v8 = objc_msgSend_expectedInterest(self, v5, v6, v7);
  objc_msgSend__startLocationUpdatesWithInterest_(self, v9, v8, v10);
  objc_msgSend__startLocationQueryDurationTimer(self, v11, v12, v13);
}

- (void)_invalidateQueryDurationTimer
{
  locationQueryDurationTimer = self->_locationQueryDurationTimer;
  if (locationQueryDurationTimer)
  {
    objc_msgSend_invalidate(locationQueryDurationTimer, a2, v2, v3);
    v6 = self->_locationQueryDurationTimer;
    self->_locationQueryDurationTimer = 0;
  }
}

- (void)_invalidateIdleTimer
{
  locationUpdateIdleTimer = self->_locationUpdateIdleTimer;
  if (locationUpdateIdleTimer)
  {
    objc_msgSend_invalidate(locationUpdateIdleTimer, a2, v2, v3);
    v6 = self->_locationUpdateIdleTimer;
    self->_locationUpdateIdleTimer = 0;
  }
}

- (void)_invalidateLocationTimersAndAssertion
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[NCLocationUpdateNonRhythmicGNSSDelegate _invalidateLocationTimersAndAssertion]";
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "%s invalidate location timers and assertion", &v13, 0xCu);
  }

  objc_msgSend__invalidateIdleTimer(self, v4, v5, v6);
  objc_msgSend__invalidateQueryDurationTimer(self, v7, v8, v9);
  objc_msgSend__cancelLocationAssertion(self, v10, v11, v12);
}

- (void)_takeLocationAssertion
{
  v45[2] = *MEMORY[0x277D85DE8];
  objc_msgSend__cancelLocationAssertion(self, a2, v2, v3);
  v6 = objc_msgSend_attributeWithDuration_warningDuration_startPolicy_endPolicy_(MEMORY[0x277D46E48], v5, 1, 1, 20.0, 1.0);
  v45[0] = v6;
  v8 = objc_msgSend_attributeWithDomain_name_(MEMORY[0x277D46E38], v7, @"com.apple.compass", @"Location");
  v45[1] = v8;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v45, 2);

  v11 = objc_alloc(MEMORY[0x277D46DB8]);
  v15 = objc_msgSend_currentProcess(MEMORY[0x277D47008], v12, v13, v14);
  v17 = objc_msgSend_initWithExplanation_target_attributes_(v11, v16, @"Periodic runtime to keep location fresh", v15, v10);
  locationQueryAssertion = self->_locationQueryAssertion;
  self->_locationQueryAssertion = v17;

  objc_initWeak(&location, self);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_23BD2C1AC;
  v38[3] = &unk_278B94000;
  objc_copyWeak(&v39, &location);
  v19 = MEMORY[0x23EEBBDF0](v38);
  v20 = self->_locationQueryAssertion;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_23BD2C2C0;
  v36[3] = &unk_278B94028;
  v21 = v19;
  v37 = v21;
  objc_msgSend_setExpirationWarningHandler_(v20, v22, v36, v23);
  v24 = self->_locationQueryAssertion;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_23BD2C380;
  v34[3] = &unk_278B94050;
  v25 = v21;
  v35 = v25;
  objc_msgSend_setInvalidationHandler_(v24, v26, v34, v27);
  v28 = self->_locationQueryAssertion;
  v33 = 0;
  LODWORD(v24) = objc_msgSend_acquireWithError_(v28, v29, &v33, v30);
  v31 = v33;
  if (v24)
  {
    v32 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v42 = "[NCLocationUpdateNonRhythmicGNSSDelegate _takeLocationAssertion]";
      v43 = 2048;
      v44 = 0x4034000000000000;
      _os_log_impl(&dword_23BD26000, v32, OS_LOG_TYPE_DEFAULT, "%s taking runtime assertion for updating location for %.0fs", buf, 0x16u);
    }
  }

  else
  {
    v32 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_23BD655D4(v31, v32);
    }
  }

  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
}

- (void)_cancelLocationAssertion
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_locationQueryAssertion)
  {
    v3 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[NCLocationUpdateNonRhythmicGNSSDelegate _cancelLocationAssertion]";
      _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "%s cancelling runtime assertion", &v8, 0xCu);
    }

    objc_msgSend_invalidate(self->_locationQueryAssertion, v4, v5, v6);
    locationQueryAssertion = self->_locationQueryAssertion;
    self->_locationQueryAssertion = 0;
  }
}

@end
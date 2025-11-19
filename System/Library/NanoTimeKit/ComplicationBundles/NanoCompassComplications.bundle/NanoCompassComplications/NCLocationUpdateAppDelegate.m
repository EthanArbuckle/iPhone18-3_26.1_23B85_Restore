@interface NCLocationUpdateAppDelegate
- (NCLocationUpdateAppDelegate)init;
- (int64_t)expectedInterest;
- (void)_cancelLocationAuthRequestAssertion;
- (void)_takeLocationAuthRequestAssertion;
- (void)activateWaypointComplication;
- (void)updateLocationManagerWithCurrentAuthorizationStatus;
@end

@implementation NCLocationUpdateAppDelegate

- (NCLocationUpdateAppDelegate)init
{
  v6.receiver = self;
  v6.super_class = NCLocationUpdateAppDelegate;
  v2 = [(NCLocationUpdateBaseDelegate *)&v6 init];
  v3 = NCLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "init NCLocationUpdateAppDelegate", v5, 2u);
  }

  return v2;
}

- (int64_t)expectedInterest
{
  if (objc_msgSend_shouldForce1Hz(self, a2, v2, v3))
  {
    return 1;
  }

  v8 = objc_msgSend_location(self, v5, v6, v7);

  if (!v8)
  {
    return 1;
  }

  if (objc_msgSend_isStationary(self, v9, v10, v11))
  {
    return -1;
  }

  objc_msgSend_getNearestWaypointDistance(self, v12, v13, v14);
  v19 = v18;
  if (v18 < 15.0)
  {
    return -1;
  }

  objc_msgSend__getRangeToStart1HzLocationUpdate(self, v15, v16, v17);
  if (v19 <= v21)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (void)updateLocationManagerWithCurrentAuthorizationStatus
{
  if (objc_msgSend_locationAuthorizationStatus(self, a2, v2, v3))
  {
    objc_msgSend__cancelLocationAuthRequestAssertion(self, v5, v6, v7);
  }

  else
  {
    objc_msgSend__takeLocationAuthRequestAssertion(self, v5, v6, v7);
  }

  v8.receiver = self;
  v8.super_class = NCLocationUpdateAppDelegate;
  [(NCLocationUpdateBaseDelegate *)&v8 updateLocationManagerWithCurrentAuthorizationStatus];
}

- (void)activateWaypointComplication
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_now(MEMORY[0x277CBEAA8], a2, v2, v3);
  v5 = NCLogForCategory(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[NCLocationUpdateAppDelegate activateWaypointComplication]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_23BD26000, v5, OS_LOG_TYPE_DEFAULT, "%s %@ is the last timestamp user tapped targeted view in the app", &v11, 0x16u);
  }

  v6 = objc_alloc(MEMORY[0x277CBEBD0]);
  v9 = objc_msgSend_initWithSuiteName_(v6, v7, @"com.apple.compass", v8);
  objc_msgSend_setObject_forKey_(v9, v10, v4, @"TargetedViewUsageTimestamp");
}

- (void)_takeLocationAuthRequestAssertion
{
  v33[2] = *MEMORY[0x277D85DE8];
  if (self->_locationAuthQueryAssertion)
  {
    v2 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23BD26000, v2, OS_LOG_TYPE_DEFAULT, "Runtime assertion is acquired already. Don't create a new one.", buf, 2u);
    }
  }

  else
  {
    v2 = objc_msgSend_attributeWithDuration_warningDuration_startPolicy_endPolicy_(MEMORY[0x277D46E48], a2, 1, 1, 30.0, 1.0);
    v33[0] = v2;
    v5 = objc_msgSend_attributeWithDomain_name_(MEMORY[0x277D46E38], v4, @"com.apple.compass", @"Location");
    v33[1] = v5;
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, v33, 2);

    v8 = objc_alloc(MEMORY[0x277D46DB8]);
    v12 = objc_msgSend_currentProcess(MEMORY[0x277D47008], v9, v10, v11);
    v14 = objc_msgSend_initWithExplanation_target_attributes_(v8, v13, @"One time assertion for request location authorization", v12, v7);
    locationAuthQueryAssertion = self->_locationAuthQueryAssertion;
    self->_locationAuthQueryAssertion = v14;

    objc_initWeak(&location, self);
    v16 = self->_locationAuthQueryAssertion;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_23BD4561C;
    v26[3] = &unk_278B94698;
    objc_copyWeak(&v27, &location);
    objc_msgSend_setInvalidationHandler_(v16, v17, v26, v18);
    v19 = self->_locationAuthQueryAssertion;
    v25 = 0;
    LODWORD(v8) = objc_msgSend_acquireWithError_(v19, v20, &v25, v21);
    v22 = v25;
    if (v8)
    {
      v23 = NCLogForCategory(1uLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v30 = "[NCLocationUpdateAppDelegate _takeLocationAuthRequestAssertion]";
        v31 = 2048;
        v32 = 0x403E000000000000;
        _os_log_impl(&dword_23BD26000, v23, OS_LOG_TYPE_DEFAULT, "%s taking runtime assertion for requesting location authorization for %.0fs", buf, 0x16u);
      }
    }

    else
    {
      v24 = NCLogForCategory(1uLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_23BD66BF4(v22, v24);
      }

      v23 = self->_locationAuthQueryAssertion;
      self->_locationAuthQueryAssertion = 0;
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

- (void)_cancelLocationAuthRequestAssertion
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_locationAuthQueryAssertion)
  {
    v3 = NCLogForCategory(1uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[NCLocationUpdateAppDelegate _cancelLocationAuthRequestAssertion]";
      _os_log_impl(&dword_23BD26000, v3, OS_LOG_TYPE_DEFAULT, "%s cancelling runtime assertion for requesting location authorization.", &v8, 0xCu);
    }

    objc_msgSend_invalidate(self->_locationAuthQueryAssertion, v4, v5, v6);
    locationAuthQueryAssertion = self->_locationAuthQueryAssertion;
    self->_locationAuthQueryAssertion = 0;
  }
}

@end
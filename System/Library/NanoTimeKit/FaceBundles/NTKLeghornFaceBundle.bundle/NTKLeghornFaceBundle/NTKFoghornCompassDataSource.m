@interface NTKFoghornCompassDataSource
- (BOOL)headingIsAvailable;
- (NTKFoghornCompassDataSource)init;
- (double)heading;
- (unint64_t)_referenceFrameForDeviceMotion;
- (void)_queue_motionError:(id)a3;
- (void)_restartUpdates;
- (void)_setUsesTrueNorth:(BOOL)a3;
- (void)_startCompassUpdates;
- (void)_stopClockTimer;
- (void)_stopCompassUpdates;
- (void)dealloc;
- (void)setUpdateMode:(unint64_t)a3;
- (void)start;
- (void)stop;
@end

@implementation NTKFoghornCompassDataSource

- (NTKFoghornCompassDataSource)init
{
  v6.receiver = self;
  v6.super_class = NTKFoghornCompassDataSource;
  v2 = [(NTKFoghornCompassDataSource *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    motionManager = v2->_motionManager;
    v2->_motionManager = v3;
  }

  return v2;
}

- (void)dealloc
{
  v3 = self->_clockTimerToken;
  v4 = self->_motionManager;
  receivingCompassUpdates = self->_receivingCompassUpdates;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BEC44C4;
  block[3] = &unk_278BA11B0;
  v12 = receivingCompassUpdates;
  v10 = v3;
  v11 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v8.receiver = self;
  v8.super_class = NTKFoghornCompassDataSource;
  [(NTKFoghornCompassDataSource *)&v8 dealloc];
}

- (void)_setUsesTrueNorth:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_usesTrueNorth != a3)
  {
    v3 = a3;
    self->_usesTrueNorth = a3;
    v5 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v9 = 136315394;
      v10 = "[NTKFoghornCompassDataSource _setUsesTrueNorth:]";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_23BEB1000, v5, OS_LOG_TYPE_DEFAULT, "%s: updating true north = %@", &v9, 0x16u);
    }

    objc_msgSend__restartUpdates(self, v7, v8);
  }
}

- (unint64_t)_referenceFrameForDeviceMotion
{
  if (self->_usesTrueNorth)
  {
    return 8;
  }

  else
  {
    return 4;
  }
}

- (void)_stopCompassUpdates
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_receivingCompassUpdates)
  {
    if (objc_msgSend_isDeviceMotionAvailable(self->_motionManager, v3, v4))
    {
      v5 = NTKFoghornFaceBundleLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[NTKFoghornCompassDataSource _stopCompassUpdates]";
        _os_log_impl(&dword_23BEB1000, v5, OS_LOG_TYPE_DEFAULT, "%s: stop", &v8, 0xCu);
      }

      objc_msgSend_stopDeviceMotionUpdates(self->_motionManager, v6, v7);
    }

    self->_receivingCompassUpdates = 0;
  }
}

- (void)_startCompassUpdates
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (!self->_receivingCompassUpdates && objc_msgSend_isDeviceMotionAvailable(self->_motionManager, v3, v4))
  {
    v5 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[NTKFoghornCompassDataSource _startCompassUpdates]";
      _os_log_impl(&dword_23BEB1000, v5, OS_LOG_TYPE_DEFAULT, "%s: start", buf, 0xCu);
    }

    motionManager = self->_motionManager;
    v9 = objc_msgSend__referenceFrameForDeviceMotion(self, v7, v8);
    objc_msgSend_startDeviceMotionUpdatesUsingReferenceFrame_(motionManager, v10, v11, v9);
    objc_initWeak(buf, self);
    v12 = self->_motionManager;
    v15 = objc_msgSend_mainQueue(MEMORY[0x277CCABD8], v13, v14);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_23BEC4928;
    v18[3] = &unk_278BA11D8;
    objc_copyWeak(&v19, buf);
    objc_msgSend__startDeviceMotionErrorUpdatesToQueue_withHandler_(v12, v16, v17, v15, v18);

    self->_receivingCompassUpdates = 1;
    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

- (void)_queue_motionError:(id)a3
{
  v4 = a3;
  v5 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_23BEE6F20(v4, v5);
  }

  v8 = objc_msgSend_domain(v4, v6, v7);
  v9 = *MEMORY[0x277CC1BC0];

  if (v8 == v9)
  {
    v12 = objc_msgSend_code(v4, v10, v11);
    if (v12 == 101)
    {
      v25 = NTKFoghornFaceBundleLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_23BEE6F98(v25, v26, v27, v28, v29, v30, v31, v32);
      }
    }

    else if (v12 == 102)
    {
      usesTrueNorth = self->_usesTrueNorth;
      v14 = NTKFoghornFaceBundleLogObject();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      if (usesTrueNorth)
      {
        if (v15)
        {
          sub_23BEE7008(v14, v16, v17, v18, v19, v20, v21, v22);
        }

        objc_msgSend__setUsesTrueNorth_(self, v23, v24, 0);
      }

      else
      {
        if (v15)
        {
          sub_23BEE6FD0(v14, v16, v17, v18, v19, v20, v21, v22);
        }
      }
    }
  }
}

- (void)_restartUpdates
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_msgSend_stop(self, v3, v4);
  objc_msgSend__startCompassUpdates(self, v5, v6);
  updated = objc_msgSend_updateMode(self, v7, v8);
  if ((updated - 1) >= 2)
  {
    if (!updated)
    {
      return;
    }

    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  objc_initWeak(&location, self);
  v13 = objc_msgSend_sharedInstance(MEMORY[0x277CBB700], v11, v12);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_23BEC4C04;
  v18[3] = &unk_278BA0E40;
  objc_copyWeak(&v19, &location);
  v16 = objc_msgSend_startUpdatesWithUpdateFrequency_withHandler_identificationLog_(v13, v14, v15, v10, v18, &unk_284EA8A88);
  clockTimerToken = self->_clockTimerToken;
  self->_clockTimerToken = v16;

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)_stopClockTimer
{
  if (self->_clockTimerToken)
  {
    v4 = objc_msgSend_sharedInstance(MEMORY[0x277CBB700], a2, v2);
    objc_msgSend_stopUpdatesForToken_(v4, v5, v6, self->_clockTimerToken);

    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = 0;
  }
}

- (void)stop
{
  v7.receiver = self;
  v7.super_class = NTKFoghornCompassDataSource;
  [(NTKFoghornDataSource *)&v7 stop];
  objc_msgSend__stopClockTimer(self, v3, v4);
  objc_msgSend__stopCompassUpdates(self, v5, v6);
}

- (void)start
{
  v5.receiver = self;
  v5.super_class = NTKFoghornCompassDataSource;
  [(NTKFoghornDataSource *)&v5 start];
  objc_msgSend__restartUpdates(self, v3, v4);
}

- (void)setUpdateMode:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = NTKFoghornCompassDataSource;
  [(NTKFoghornDataSource *)&v6 setUpdateMode:a3];
  if (self->_receivingCompassUpdates)
  {
    objc_msgSend__restartUpdates(self, v4, v5);
  }
}

- (double)heading
{
  v3 = objc_msgSend_deviceMotion(self->_motionManager, a2, v2);
  v6 = v3;
  if (v3)
  {
    objc_msgSend_heading(v3, v4, v5);
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (BOOL)headingIsAvailable
{
  v3 = objc_msgSend_deviceMotion(self->_motionManager, a2, v2);
  v4 = v3 != 0;

  return v4;
}

@end
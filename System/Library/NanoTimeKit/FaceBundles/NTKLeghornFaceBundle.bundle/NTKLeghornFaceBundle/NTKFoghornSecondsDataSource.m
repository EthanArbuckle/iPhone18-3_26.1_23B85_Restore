@interface NTKFoghornSecondsDataSource
- (NTKFoghornSecondsDataSource)init;
- (double)seconds;
- (void)_restartUpdates;
- (void)_startClockTimer;
- (void)_stopClockTimer;
- (void)setUpdateMode:(unint64_t)a3;
- (void)start;
- (void)stop;
@end

@implementation NTKFoghornSecondsDataSource

- (NTKFoghornSecondsDataSource)init
{
  v10.receiver = self;
  v10.super_class = NTKFoghornSecondsDataSource;
  v2 = [(NTKFoghornSecondsDataSource *)&v10 init];
  v3 = v2;
  if (v2)
  {
    clockTimerToken = v2->_clockTimerToken;
    v2->_clockTimerToken = 0;

    v7 = objc_msgSend_autoupdatingCurrentCalendar(MEMORY[0x277CBEA80], v5, v6);
    calendar = v3->_calendar;
    v3->_calendar = v7;
  }

  return v3;
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

- (void)_startClockTimer
{
  updated = objc_msgSend_updateMode(self, a2, v2);
  objc_initWeak(&location, self);
  v7 = objc_msgSend_sharedInstance(MEMORY[0x277CBB700], v5, v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23BED7500;
  v12[3] = &unk_278BA0E40;
  objc_copyWeak(&v13, &location);
  v10 = objc_msgSend_startUpdatesWithUpdateFrequency_withHandler_identificationLog_(v7, v8, v9, 2 * ((updated - 1) < 2), v12, &unk_284EA8B48);
  clockTimerToken = self->_clockTimerToken;
  self->_clockTimerToken = v10;

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_restartUpdates
{
  objc_msgSend_stop(self, a2, v2);

  objc_msgSend__startClockTimer(self, v4, v5);
}

- (void)stop
{
  v5.receiver = self;
  v5.super_class = NTKFoghornSecondsDataSource;
  [(NTKFoghornDataSource *)&v5 stop];
  objc_msgSend__stopClockTimer(self, v3, v4);
}

- (void)start
{
  v5.receiver = self;
  v5.super_class = NTKFoghornSecondsDataSource;
  [(NTKFoghornDataSource *)&v5 start];
  objc_msgSend__restartUpdates(self, v3, v4);
}

- (void)setUpdateMode:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = NTKFoghornSecondsDataSource;
  [(NTKFoghornDataSource *)&v6 setUpdateMode:a3];
  if (self->_clockTimerToken)
  {
    objc_msgSend__restartUpdates(self, v4, v5);
  }
}

- (double)seconds
{
  if (!self->_clockTimerToken)
  {
    v2 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE7068(v2);
    }
  }

  CLKClockTimerDateForNow();

  return 0 + 0.0;
}

@end
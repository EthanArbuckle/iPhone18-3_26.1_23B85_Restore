@interface NTKFoghornDemoDataSource
- (BOOL)elevationIsApproximate;
- (NTKFoghornDemoDataSource)initWithDemoProfile:(const NTKFoghornDemoProfile *)profile;
- (double)healthKitHistoricalMaxDepth;
- (double)waterTemperature;
- (void)_restartUpdates;
- (void)_startClockTimer;
- (void)_stopClockTimer;
- (void)setUpdateMode:(unint64_t)mode;
- (void)start;
- (void)stop;
@end

@implementation NTKFoghornDemoDataSource

- (NTKFoghornDemoDataSource)initWithDemoProfile:(const NTKFoghornDemoProfile *)profile
{
  v9.receiver = self;
  v9.super_class = NTKFoghornDemoDataSource;
  v4 = [(NTKFoghornDemoDataSource *)&v9 init];
  v5 = v4;
  if (v4)
  {
    clockTimerToken = v4->_clockTimerToken;
    v4->_clockTimerToken = 0;

    v5->_demoData = profile;
    v5->_currentValue = 0.0;
    v5->_minValue = 0.0;
    v5->_maxValue = 0.0;
    startDate = v5->_startDate;
    v5->_startDate = 0;
  }

  return v5;
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
  v4 = (objc_msgSend_updateMode(self, a2, v2) - 1) < 2;
  v7 = objc_msgSend_now(MEMORY[0x277CBEAA8], v5, v6);
  objc_storeStrong(&self->_startDate, v7);
  demoData = self->_demoData;
  var2 = demoData->var2;
  if (var2)
  {
    var3 = demoData->var3;
    v11 = &var3[2 * var2];
    v12 = 0.0;
    do
    {
      v13 = *var3;
      var3 += 2;
      v12 = v12 + v13;
    }

    while (var3 < v11);
  }

  else
  {
    v12 = 0.0;
  }

  objc_initWeak(&location, self);
  v16 = objc_msgSend_sharedInstance(MEMORY[0x277CBB700], v14, v15);
  v17 = qword_23BEED780[v4];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_23BED8920;
  v23[3] = &unk_278BA1510;
  objc_copyWeak(v25, &location);
  v25[1] = v17;
  v18 = v7;
  v24 = v18;
  v25[2] = *&v12;
  v21 = objc_msgSend_startUpdatesWithUpdateFrequency_withHandler_identificationLog_(v16, v19, v20, 2 * v4, v23, &unk_284EA8BC8);
  clockTimerToken = self->_clockTimerToken;
  self->_clockTimerToken = v21;

  objc_destroyWeak(v25);
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
  v5.super_class = NTKFoghornDemoDataSource;
  [(NTKFoghornDataSource *)&v5 stop];
  objc_msgSend__stopClockTimer(self, v3, v4);
}

- (void)start
{
  v5.receiver = self;
  v5.super_class = NTKFoghornDemoDataSource;
  [(NTKFoghornDataSource *)&v5 start];
  objc_msgSend__restartUpdates(self, v3, v4);
}

- (void)setUpdateMode:(unint64_t)mode
{
  v6.receiver = self;
  v6.super_class = NTKFoghornDemoDataSource;
  [(NTKFoghornDataSource *)&v6 setUpdateMode:mode];
  if (self->_clockTimerToken)
  {
    objc_msgSend__restartUpdates(self, v4, v5);
  }
}

- (double)waterTemperature
{
  currentValue = self->_currentValue;
  if (currentValue >= 10.0)
  {
    return (currentValue + -10.0) * -0.2 + 20.0;
  }

  else
  {
    return 20.0;
  }
}

- (double)healthKitHistoricalMaxDepth
{
  demoData = self->_demoData;
  var2 = demoData->var2;
  if (!var2)
  {
    return 0.0;
  }

  var3 = demoData->var3;
  v5 = (var3 + 16 * var2);
  result = 0.0;
  do
  {
    if (*(var3 + 1) > result)
    {
      result = *(var3 + 1);
    }

    var3 = (var3 + 16);
  }

  while (var3 < v5);
  return result;
}

- (BOOL)elevationIsApproximate
{
  v2 = self->_startDate;
  v5 = v2;
  v7 = 1;
  if (v2)
  {
    objc_msgSend_timeIntervalSinceNow(v2, v3, v4);
    if (v6 < -30.0)
    {
      v7 = 0;
    }
  }

  return v7;
}

@end
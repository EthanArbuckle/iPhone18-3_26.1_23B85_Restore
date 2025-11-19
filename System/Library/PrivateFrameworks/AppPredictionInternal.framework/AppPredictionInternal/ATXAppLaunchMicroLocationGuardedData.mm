@interface ATXAppLaunchMicroLocationGuardedData
- (ATXAppLaunchMicroLocationGuardedData)initWithCurrentMicroLocation:(id)a3;
- (BOOL)microLocationExpired:(id)a3;
- (id)getCurrentMicroLocation;
- (void)setCurrentMicroLocation:(id)a3;
@end

@implementation ATXAppLaunchMicroLocationGuardedData

- (ATXAppLaunchMicroLocationGuardedData)initWithCurrentMicroLocation:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ATXAppLaunchMicroLocationGuardedData;
  v5 = [(ATXAppLaunchMicroLocationGuardedData *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ATXAppLaunchMicroLocationGuardedData *)v5 setCurrentMicroLocation:v4];
  }

  return v6;
}

- (void)setCurrentMicroLocation:(id)a3
{
  v17 = a3;
  v4 = MEMORY[0x277CBEAA8];
  v5 = [v17 startDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = [v17 endDate];
  [v8 timeIntervalSinceReferenceDate];
  v10 = [v4 dateWithTimeIntervalSinceReferenceDate:v9 * 0.5 + v7 * 0.5];

  if (v17 && ![(ATXAppLaunchMicroLocationGuardedData *)self microLocationExpired:v10])
  {
    v13 = [v17 event];
    v14 = [v13 copy];
    currentMicroLocation = self->_currentMicroLocation;
    self->_currentMicroLocation = v14;

    v12 = [v10 copy];
  }

  else
  {
    v11 = self->_currentMicroLocation;
    self->_currentMicroLocation = 0;

    v12 = 0;
  }

  currentMicroLocationDate = self->_currentMicroLocationDate;
  self->_currentMicroLocationDate = v12;
}

- (id)getCurrentMicroLocation
{
  if ([(ATXAppLaunchMicroLocationGuardedData *)self microLocationExpired:self->_currentMicroLocationDate])
  {
    currentMicroLocationDate = self->_currentMicroLocationDate;
    self->_currentMicroLocationDate = 0;

    currentMicroLocation = self->_currentMicroLocation;
    self->_currentMicroLocation = 0;
  }

  v5 = self->_currentMicroLocation;

  return v5;
}

- (BOOL)microLocationExpired:(id)a3
{
  [a3 timeIntervalSinceNow];
  v5 = v4 > 0.0;
  if (v4 <= -300.0)
  {
    v5 = 1;
  }

  return !a3 || v5;
}

@end
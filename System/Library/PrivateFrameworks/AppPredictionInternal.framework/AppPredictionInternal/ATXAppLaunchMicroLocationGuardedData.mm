@interface ATXAppLaunchMicroLocationGuardedData
- (ATXAppLaunchMicroLocationGuardedData)initWithCurrentMicroLocation:(id)location;
- (BOOL)microLocationExpired:(id)expired;
- (id)getCurrentMicroLocation;
- (void)setCurrentMicroLocation:(id)location;
@end

@implementation ATXAppLaunchMicroLocationGuardedData

- (ATXAppLaunchMicroLocationGuardedData)initWithCurrentMicroLocation:(id)location
{
  locationCopy = location;
  v8.receiver = self;
  v8.super_class = ATXAppLaunchMicroLocationGuardedData;
  v5 = [(ATXAppLaunchMicroLocationGuardedData *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ATXAppLaunchMicroLocationGuardedData *)v5 setCurrentMicroLocation:locationCopy];
  }

  return v6;
}

- (void)setCurrentMicroLocation:(id)location
{
  locationCopy = location;
  v4 = MEMORY[0x277CBEAA8];
  startDate = [locationCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v7 = v6;
  endDate = [locationCopy endDate];
  [endDate timeIntervalSinceReferenceDate];
  v10 = [v4 dateWithTimeIntervalSinceReferenceDate:v9 * 0.5 + v7 * 0.5];

  if (locationCopy && ![(ATXAppLaunchMicroLocationGuardedData *)self microLocationExpired:v10])
  {
    event = [locationCopy event];
    v14 = [event copy];
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

- (BOOL)microLocationExpired:(id)expired
{
  [expired timeIntervalSinceNow];
  v5 = v4 > 0.0;
  if (v4 <= -300.0)
  {
    v5 = 1;
  }

  return !expired || v5;
}

@end
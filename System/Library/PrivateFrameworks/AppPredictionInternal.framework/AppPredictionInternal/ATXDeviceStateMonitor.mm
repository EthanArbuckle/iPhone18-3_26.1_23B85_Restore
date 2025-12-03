@interface ATXDeviceStateMonitor
+ (BOOL)airplaneMode;
+ (BOOL)onWifi;
+ (id)SSID;
+ (void)setAirplaneMode:(BOOL)mode;
+ (void)setSSID:(id)d;
+ (void)startMockingSystem;
+ (void)stopMockingSystem;
@end

@implementation ATXDeviceStateMonitor

+ (BOOL)airplaneMode
{
  pthread_mutex_lock(&lock);
  if (mocking == 1)
  {
    v2 = mockAirplaneMode;
  }

  else
  {
    if (getAirplaneMode_onceToken != -1)
    {
      +[ATXDeviceStateMonitor airplaneMode];
    }

    v2 = atomic_load(getAirplaneMode_inAirplaneMode);
  }

  pthread_mutex_unlock(&lock);
  return v2 & 1;
}

+ (id)SSID
{
  pthread_mutex_lock(&lock);
  if (mocking == 1)
  {
    sSID = mockSSID;
  }

  else
  {
    v3 = +[ATXWifiStateMonitor sharedInstance];
    sSID = [v3 SSID];
  }

  pthread_mutex_unlock(&lock);
  if (![(__CFString *)sSID length])
  {

    sSID = @"- - - - - - - - none - - - - - - - -";
  }

  return sSID;
}

+ (BOOL)onWifi
{
  sSID = [self SSID];
  v3 = [sSID isEqualToString:@"- - - - - - - - none - - - - - - - -"];

  return v3 ^ 1;
}

+ (void)startMockingSystem
{
  pthread_mutex_lock(&lock);
  mocking = 1;
  mockAirplaneMode = 0;
  v2 = mockSSID;
  mockSSID = 0;

  pthread_mutex_unlock(&lock);
}

+ (void)stopMockingSystem
{
  pthread_mutex_lock(&lock);
  mocking = 0;
  mockAirplaneMode = 0;
  v2 = mockSSID;
  mockSSID = 0;

  pthread_mutex_unlock(&lock);
}

+ (void)setAirplaneMode:(BOOL)mode
{
  pthread_mutex_lock(&lock);
  if ((mocking & 1) == 0)
  {
    [(ATXDeviceStateMonitor *)a2 setAirplaneMode:self];
  }

  mockAirplaneMode = mode;

  pthread_mutex_unlock(&lock);
}

+ (void)setSSID:(id)d
{
  dCopy = d;
  pthread_mutex_lock(&lock);
  if ((mocking & 1) == 0)
  {
    [(ATXDeviceStateMonitor *)a2 setSSID:self];
  }

  v5 = [dCopy copy];
  v6 = mockSSID;
  mockSSID = v5;

  pthread_mutex_unlock(&lock);
}

+ (void)setAirplaneMode:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXDeviceStateMonitor.m" lineNumber:311 description:{@"Invalid parameter not satisfying: %@", @"mocking"}];
}

+ (void)setSSID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXDeviceStateMonitor.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"mocking"}];
}

@end
@interface ATXDeviceStateMonitor
+ (BOOL)airplaneMode;
+ (BOOL)onWifi;
+ (id)SSID;
+ (void)setAirplaneMode:(BOOL)a3;
+ (void)setSSID:(id)a3;
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
    v2 = mockSSID;
  }

  else
  {
    v3 = +[ATXWifiStateMonitor sharedInstance];
    v2 = [v3 SSID];
  }

  pthread_mutex_unlock(&lock);
  if (![(__CFString *)v2 length])
  {

    v2 = @"- - - - - - - - none - - - - - - - -";
  }

  return v2;
}

+ (BOOL)onWifi
{
  v2 = [a1 SSID];
  v3 = [v2 isEqualToString:@"- - - - - - - - none - - - - - - - -"];

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

+ (void)setAirplaneMode:(BOOL)a3
{
  pthread_mutex_lock(&lock);
  if ((mocking & 1) == 0)
  {
    [(ATXDeviceStateMonitor *)a2 setAirplaneMode:a1];
  }

  mockAirplaneMode = a3;

  pthread_mutex_unlock(&lock);
}

+ (void)setSSID:(id)a3
{
  v7 = a3;
  pthread_mutex_lock(&lock);
  if ((mocking & 1) == 0)
  {
    [(ATXDeviceStateMonitor *)a2 setSSID:a1];
  }

  v5 = [v7 copy];
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
@interface NCSTravelAlertsManager
+ (id)sharedManager;
- (BOOL)_ttlEnabledOnWatch;
- (BOOL)_ttlSupportedOnWatch;
- (BOOL)ttlRemoteForwardingEnabledForWatch;
@end

@implementation NCSTravelAlertsManager

+ (id)sharedManager
{
  if (qword_10DC0 != -1)
  {
    sub_564C();
  }

  v3 = qword_10DB8;

  return v3;
}

- (BOOL)_ttlSupportedOnWatch
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v2 getActivePairedDevice];

  if (getActivePairedDevice)
  {
    NRWatchOSVersionForRemoteDevice();
    IsGreaterThanOrEqual = NRVersionIsGreaterThanOrEqual();
  }

  else
  {
    IsGreaterThanOrEqual = 0;
  }

  return IsGreaterThanOrEqual;
}

- (BOOL)_ttlEnabledOnWatch
{
  _ttlSupportedOnWatch = [(NCSTravelAlertsManager *)self _ttlSupportedOnWatch];
  v3 = +[NanoCalendarPreferences appDefaults];
  v4 = [v3 objectForKey:@"EnableTTLOnWatch"];
  v5 = ncs_log_alerts_ttl();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_5660(v4, v5);
  }

  if (v4)
  {
    _ttlSupportedOnWatch = [v4 BOOLValue];
  }

  v6 = ncs_log_alerts_ttl();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = _ttlSupportedOnWatch;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Asked _ttlEnabled; returning %d", v8, 8u);
  }

  return _ttlSupportedOnWatch;
}

- (BOOL)ttlRemoteForwardingEnabledForWatch
{
  v2 = ![(NCSTravelAlertsManager *)self _ttlEnabledOnWatch];
  v3 = ncs_log_alerts_ttl();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Asked ttlRemoteForwardingEnabledForWatch; returning %d", v5, 8u);
  }

  return v2;
}

@end
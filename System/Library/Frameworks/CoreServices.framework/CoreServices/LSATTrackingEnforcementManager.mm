@interface LSATTrackingEnforcementManager
+ (BOOL)shouldEnforceTrackingWithReasonCode:(int64_t *)code;
@end

@implementation LSATTrackingEnforcementManager

+ (BOOL)shouldEnforceTrackingWithReasonCode:(int64_t *)code
{
  if (getATTrackingEnforcementManagerClass())
  {
    ATTrackingEnforcementManagerClass = getATTrackingEnforcementManagerClass();

    return [(objc_class *)ATTrackingEnforcementManagerClass shouldEnforceTrackingWithReasonCode:code];
  }

  else
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [LSATTrackingEnforcementManager shouldEnforceTrackingWithReasonCode:v6];
    }

    if (code)
    {
      *code = 0;
    }

    return 1;
  }
}

@end
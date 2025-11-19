@interface LSATTrackingEnforcementManager
+ (BOOL)shouldEnforceTrackingWithReasonCode:(int64_t *)a3;
@end

@implementation LSATTrackingEnforcementManager

+ (BOOL)shouldEnforceTrackingWithReasonCode:(int64_t *)a3
{
  if (getATTrackingEnforcementManagerClass())
  {
    ATTrackingEnforcementManagerClass = getATTrackingEnforcementManagerClass();

    return [(objc_class *)ATTrackingEnforcementManagerClass shouldEnforceTrackingWithReasonCode:a3];
  }

  else
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [LSATTrackingEnforcementManager shouldEnforceTrackingWithReasonCode:v6];
    }

    if (a3)
    {
      *a3 = 0;
    }

    return 1;
  }
}

@end
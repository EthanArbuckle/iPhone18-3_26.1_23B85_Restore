@interface NavIdleTimeoutTimerAccessibility
- (double)idleTimeout;
@end

@implementation NavIdleTimeoutTimerAccessibility

- (double)idleTimeout
{
  if (AXRequiresLongerTimeouts())
  {
    v3 = AXLogAppAccessibility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29BEFF000, v3, OS_LOG_TYPE_DEFAULT, "Accessibility option, setting idle timeout to 1 hour", buf, 2u);
    }

    return 3600.0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NavIdleTimeoutTimerAccessibility;
    [(NavIdleTimeoutTimerAccessibility *)&v5 idleTimeout];
  }

  return result;
}

@end
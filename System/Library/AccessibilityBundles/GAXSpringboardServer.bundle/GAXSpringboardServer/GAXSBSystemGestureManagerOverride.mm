@interface GAXSBSystemGestureManagerOverride
- (BOOL)_isGestureWithTypeAllowed:(unint64_t)allowed;
@end

@implementation GAXSBSystemGestureManagerOverride

- (BOOL)_isGestureWithTypeAllowed:(unint64_t)allowed
{
  v13.receiver = self;
  v13.super_class = GAXSBSystemGestureManagerOverride;
  if ([(GAXSBSystemGestureManagerOverride *)&v13 _isGestureWithTypeAllowed:?])
  {
    return 1;
  }

  v5 = +[GAXSpringboard sharedInstance];
  isOnlyGuidedAccessDisablingSystemGestures = [v5 isOnlyGuidedAccessDisablingSystemGestures];

  if (isOnlyGuidedAccessDisablingSystemGestures)
  {
    if (allowed - 13 >= 4 && allowed != 11)
    {
      if (allowed != 2 || (AXDeviceHasHomeButton() & 1) != 0)
      {
        return 0;
      }

      v9 = GAXLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "Allowing dismiss cover sheet for this device class.";
        v11 = v9;
        v12 = 2;
        goto LABEL_8;
      }

      goto LABEL_9;
    }

    v7 = +[AXSettings sharedInstance];
    guidedAccessAllowsMultipleWindows = [v7 guidedAccessAllowsMultipleWindows];

    if (guidedAccessAllowsMultipleWindows)
    {
      v9 = GAXLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        allowedCopy = allowed;
        v10 = "Allowing Medusa gesture: %lu";
        v11 = v9;
        v12 = 12;
LABEL_8:
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }

LABEL_9:

      return 1;
    }
  }

  return 0;
}

@end
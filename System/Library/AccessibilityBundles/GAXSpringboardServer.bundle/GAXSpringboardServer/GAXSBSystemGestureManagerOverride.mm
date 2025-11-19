@interface GAXSBSystemGestureManagerOverride
- (BOOL)_isGestureWithTypeAllowed:(unint64_t)a3;
@end

@implementation GAXSBSystemGestureManagerOverride

- (BOOL)_isGestureWithTypeAllowed:(unint64_t)a3
{
  v13.receiver = self;
  v13.super_class = GAXSBSystemGestureManagerOverride;
  if ([(GAXSBSystemGestureManagerOverride *)&v13 _isGestureWithTypeAllowed:?])
  {
    return 1;
  }

  v5 = +[GAXSpringboard sharedInstance];
  v6 = [v5 isOnlyGuidedAccessDisablingSystemGestures];

  if (v6)
  {
    if (a3 - 13 >= 4 && a3 != 11)
    {
      if (a3 != 2 || (AXDeviceHasHomeButton() & 1) != 0)
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
    v8 = [v7 guidedAccessAllowsMultipleWindows];

    if (v8)
    {
      v9 = GAXLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v15 = a3;
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
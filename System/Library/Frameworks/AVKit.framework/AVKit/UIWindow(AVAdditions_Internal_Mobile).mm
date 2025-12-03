@interface UIWindow(AVAdditions_Internal_Mobile)
- (uint64_t)avkit_canAttemptRotation;
- (uint64_t)avkit_canAttemptSecondWindowForRotability;
- (uint64_t)avkit_isHostedInAnotherProcess;
- (uint64_t)avkit_preferredInterfaceOrientationFromDeviceOrientation;
- (uint64_t)avkit_supportsAutorotationForInterfaceOrientationMask:()AVAdditions_Internal_Mobile;
@end

@implementation UIWindow(AVAdditions_Internal_Mobile)

- (uint64_t)avkit_supportsAutorotationForInterfaceOrientationMask:()AVAdditions_Internal_Mobile
{
  result = [self avkit_canAttemptRotation];
  if (result)
  {
    v6 = 1;
    while (1)
    {
      if (((1 << v6) & a3) != 0)
      {
        result = [self _shouldAutorotateToInterfaceOrientation:v6];
        if (!result)
        {
          break;
        }
      }

      if (++v6 == 6)
      {
        return 1;
      }
    }
  }

  return result;
}

- (uint64_t)avkit_canAttemptSecondWindowForRotability
{
  _windowOwnsInterfaceOrientation = [self _windowOwnsInterfaceOrientation];
  if ((_windowOwnsInterfaceOrientation & 1) == 0)
  {
    windowScene = [self windowScene];
    if (![windowScene _canDynamicallySpecifySupportedInterfaceOrientations])
    {
      v4 = 0;
      goto LABEL_10;
    }
  }

  if ([self _windowControlsStatusBarOrientation] && objc_msgSend(self, "_shouldControlAutorotation"))
  {
    v4 = [self avkit_isHostedInAnotherProcess] ^ 1;
    result = v4;
    if (_windowOwnsInterfaceOrientation)
    {
      return result;
    }

LABEL_10:

    return v4;
  }

  v4 = 0;
  result = 0;
  if ((_windowOwnsInterfaceOrientation & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

- (uint64_t)avkit_canAttemptRotation
{
  result = [self autorotates];
  if (result)
  {

    return [self avkit_canAttemptSecondWindowForRotability];
  }

  return result;
}

- (uint64_t)avkit_preferredInterfaceOrientationFromDeviceOrientation
{
  _windowInterfaceOrientation = [self _windowInterfaceOrientation];
  if ([self avkit_canAttemptRotation])
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    orientation = [currentDevice orientation];
    if ((orientation - 3) >= 2)
    {
      if (orientation == 2)
      {
        currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
        userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

        if (userInterfaceIdiom != 1)
        {
          return _windowInterfaceOrientation;
        }

        goto LABEL_6;
      }

      if (orientation != 1)
      {
LABEL_7:

        return _windowInterfaceOrientation;
      }
    }

LABEL_6:
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    _windowInterfaceOrientation = [currentDevice orientation];
    goto LABEL_7;
  }

  return _windowInterfaceOrientation;
}

- (uint64_t)avkit_isHostedInAnotherProcess
{
  if (objc_opt_respondsToSelector())
  {

    return [self _isHostedInAnotherProcess];
  }

  else
  {
    objc_opt_class();
    return objc_opt_isKindOfClass() & 1;
  }
}

@end
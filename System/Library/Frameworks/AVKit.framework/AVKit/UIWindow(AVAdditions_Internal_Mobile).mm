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
  result = [a1 avkit_canAttemptRotation];
  if (result)
  {
    v6 = 1;
    while (1)
    {
      if (((1 << v6) & a3) != 0)
      {
        result = [a1 _shouldAutorotateToInterfaceOrientation:v6];
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
  v3 = [a1 _windowOwnsInterfaceOrientation];
  if ((v3 & 1) == 0)
  {
    v1 = [a1 windowScene];
    if (![v1 _canDynamicallySpecifySupportedInterfaceOrientations])
    {
      v4 = 0;
      goto LABEL_10;
    }
  }

  if ([a1 _windowControlsStatusBarOrientation] && objc_msgSend(a1, "_shouldControlAutorotation"))
  {
    v4 = [a1 avkit_isHostedInAnotherProcess] ^ 1;
    result = v4;
    if (v3)
    {
      return result;
    }

LABEL_10:

    return v4;
  }

  v4 = 0;
  result = 0;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

- (uint64_t)avkit_canAttemptRotation
{
  result = [a1 autorotates];
  if (result)
  {

    return [a1 avkit_canAttemptSecondWindowForRotability];
  }

  return result;
}

- (uint64_t)avkit_preferredInterfaceOrientationFromDeviceOrientation
{
  v2 = [a1 _windowInterfaceOrientation];
  if ([a1 avkit_canAttemptRotation])
  {
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    v4 = [v3 orientation];
    if ((v4 - 3) >= 2)
    {
      if (v4 == 2)
      {
        v6 = [MEMORY[0x1E69DC938] currentDevice];
        v7 = [v6 userInterfaceIdiom];

        if (v7 != 1)
        {
          return v2;
        }

        goto LABEL_6;
      }

      if (v4 != 1)
      {
LABEL_7:

        return v2;
      }
    }

LABEL_6:
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    v2 = [v3 orientation];
    goto LABEL_7;
  }

  return v2;
}

- (uint64_t)avkit_isHostedInAnotherProcess
{
  if (objc_opt_respondsToSelector())
  {

    return [a1 _isHostedInAnotherProcess];
  }

  else
  {
    objc_opt_class();
    return objc_opt_isKindOfClass() & 1;
  }
}

@end
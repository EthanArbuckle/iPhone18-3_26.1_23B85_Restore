@interface PHCarPlayUtilities
+ (BOOL)activeInterfaceMechanismIsHardware;
+ (BOOL)activeInterfaceMechanismIsTouchOnly;
+ (BOOL)shouldLimitKeypadAccess;
@end

@implementation PHCarPlayUtilities

+ (BOOL)activeInterfaceMechanismIsHardware
{
  v2 = +[UIScreen _carScreen];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 _capabilityForKey:_UIScreenCapabilityInteractionModelsKey];
    v5 = [v4 integerValue];

    v6 = [v3 _capabilityForKey:_UIScreenCapabilityTouchLevelsKey];
    v7 = [v6 integerValue];

    v9 = ((v5 & 1) == 0 || v7 == 2) && (v5 & 6) != 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 BOOLForKey:@"StarkForceHardwareInterface"];

  return (v11 | v9) & 1;
}

+ (BOOL)activeInterfaceMechanismIsTouchOnly
{
  v2 = +[UIScreen _carScreen];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 _capabilityForKey:_UIScreenCapabilityInteractionModelsKey];
    v5 = [v4 integerValue];

    v6 = [v3 _capabilityForKey:_UIScreenCapabilityTouchLevelsKey];
    v7 = [v6 integerValue];

    v9 = (v5 & 7) == 1 && v7 != 2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)shouldLimitKeypadAccess
{
  v2 = +[AVExternalDevice currentCarPlayExternalDevice];
  v3 = v2;
  if (v2 && [v2 limitedUI])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [v3 limitedUIElements];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      v8 = AVExternalDeviceLimitedUIElementSoftPhoneKeypad;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v12 + 1) + 8 * i) isEqualToString:v8])
          {
            v10 = 1;
            goto LABEL_14;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_14:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end
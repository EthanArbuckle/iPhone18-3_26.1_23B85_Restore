@interface PSViewControllerAccessibility
- (BOOL)_accessibilityHandleNavigationControllerDidEndTransition;
@end

@implementation PSViewControllerAccessibility

- (BOOL)_accessibilityHandleNavigationControllerDidEndTransition
{
  v27[2] = *MEMORY[0x29EDCA608];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = [*MEMORY[0x29EDC8008] _accessibilityValueForKey:@"applicationDidBecomeActiveDate"];
    v4 = [MEMORY[0x29EDB8DB0] date];
    v5 = v4;
    if (v3 && ([v4 timeIntervalSinceDate:v3], v6 <= 1.0))
    {
    }

    else
    {
      v7 = [MEMORY[0x29EDB9F48] mainBundle];
      v8 = [v7 bundleIdentifier];
      v9 = [v8 isEqualToString:@"com.apple.Bridge"];

      if ((v9 & 1) == 0)
      {
        NSClassFromString(&cfstr_Uisplitviewcon_1.isa);
        v10 = [(PSViewControllerAccessibility *)self safeValueForKey:@"view"];
        if (v10)
        {
          v11 = v10;
          while (1)
          {
            v12 = [v11 safeValueForKey:@"_viewDelegate"];
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            v13 = [v11 superview];

            v11 = v13;
            if (!v13)
            {
              goto LABEL_12;
            }
          }

          v16 = v12;
          if ([v16 isCollapsed])
          {
            LOBYTE(v13) = 0;
LABEL_19:

            goto LABEL_12;
          }

          objc_opt_class();
          v17 = [(PSViewControllerAccessibility *)self safeValueForKey:@"parentViewController"];
          v18 = __UIAccessibilityCastAsClass();

          v19 = [v18 navigationBar];
          v20 = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
          v21 = [v19 _accessibilityLeafDescendantsWithOptions:v20];
          v22 = [v21 firstObject];

          if (v22 || (-[PSViewControllerAccessibility safeStringForKey:](self, "safeStringForKey:", @"title"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 length], v25, !v26))
          {
            v23 = v11;
          }

          else
          {
            v23 = v19;
            if (!v23)
            {
              LOBYTE(v13) = 0;
              goto LABEL_18;
            }
          }

          LODWORD(v13) = *MEMORY[0x29EDC7F10];
          v27[0] = *MEMORY[0x29EDBDB28];
          v27[1] = v23;
          v24 = [MEMORY[0x29EDB8D80] arrayWithObjects:v27 count:2];
          UIAccessibilityPostNotification(v13, v24);

          LOBYTE(v13) = 1;
LABEL_18:

          goto LABEL_19;
        }
      }
    }
  }

  LOBYTE(v13) = 0;
LABEL_12:
  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

@end
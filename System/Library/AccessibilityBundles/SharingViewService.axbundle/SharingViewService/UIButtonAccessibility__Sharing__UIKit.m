@interface UIButtonAccessibility__Sharing__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityUserTestingIsCancelButton;
- (BOOL)_axIsDismissButton;
- (id)accessibilityLabel;
@end

@implementation UIButtonAccessibility__Sharing__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AudioSoftwareUpdateViewController" hasInstanceMethod:@"handleDismissButton:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"ProximityPairingViewController" hasInstanceMethod:@"handleDismissButton:" withFullSignature:{"v", "@", 0}];
}

- (BOOL)_axIsDismissButton
{
  v40 = *MEMORY[0x29EDCA608];
  v36.receiver = self;
  v36.super_class = UIButtonAccessibility__Sharing__UIKit;
  v3 = [(UIButtonAccessibility__Sharing__UIKit *)&v36 accessibilityLabel];
  if ([v3 isEqualToString:@"x"])
  {
    v4 = 1;
    goto LABEL_30;
  }

  v5 = self;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = [(UIButtonAccessibility__Sharing__UIKit *)v5 allTargets];
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (!v7)
  {
    v4 = 0;
    goto LABEL_29;
  }

  v8 = *v33;
  v22 = *v33;
  while (2)
  {
    v9 = 0;
    v23 = v7;
    do
    {
      if (*v33 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v32 + 1) + 8 * v9);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v11 = [(UIButtonAccessibility__Sharing__UIKit *)v5 actionsForTarget:v10 forControlEvent:0x2000, v22];
      v12 = [v11 countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v29;
LABEL_10:
        v15 = 0;
        while (1)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ([*(*(&v28 + 1) + 8 * v15) isEqualToString:@"handleDismissButton:"])
          {
            goto LABEL_27;
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v28 objects:v38 count:16];
            if (v13)
            {
              goto LABEL_10;
            }

            break;
          }
        }
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = [(UIButtonAccessibility__Sharing__UIKit *)v5 actionsForTarget:v10 forControlEvent:64];
      v16 = [v11 countByEnumeratingWithState:&v24 objects:v37 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v25;
LABEL_18:
        v19 = 0;
        while (1)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v11);
          }

          if ([*(*(&v24 + 1) + 8 * v19) isEqualToString:@"handleDismissButton:"])
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [v11 countByEnumeratingWithState:&v24 objects:v37 count:16];
            if (v17)
            {
              goto LABEL_18;
            }

            goto LABEL_24;
          }
        }

LABEL_27:

        v4 = 1;
        goto LABEL_29;
      }

LABEL_24:

      ++v9;
      v8 = v22;
    }

    while (v9 != v23);
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v39 count:16];
    v4 = 0;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_29:

LABEL_30:
  v20 = *MEMORY[0x29EDCA608];
  return v4;
}

- (BOOL)_accessibilityUserTestingIsCancelButton
{
  if ([(UIButtonAccessibility__Sharing__UIKit *)self _axIsDismissButton])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = UIButtonAccessibility__Sharing__UIKit;
  return [(UIButtonAccessibility__Sharing__UIKit *)&v4 _accessibilityUserTestingIsCancelButton];
}

- (id)accessibilityLabel
{
  if ([(UIButtonAccessibility__Sharing__UIKit *)self _axIsDismissButton])
  {
    v7.receiver = self;
    v7.super_class = UIButtonAccessibility__Sharing__UIKit;
    v3 = [(UIButtonAccessibility__Sharing__UIKit *)&v7 accessibilityLabel];
    if (![v3 length] || (objc_msgSend(v3, "isEqualToString:", @"x") & 1) != 0)
    {
      v4 = accessibilityLocalizedString(@"dismiss.button");

      goto LABEL_7;
    }
  }

  v6.receiver = self;
  v6.super_class = UIButtonAccessibility__Sharing__UIKit;
  v4 = [(UIButtonAccessibility__Sharing__UIKit *)&v6 accessibilityLabel];
LABEL_7:

  return v4;
}

@end
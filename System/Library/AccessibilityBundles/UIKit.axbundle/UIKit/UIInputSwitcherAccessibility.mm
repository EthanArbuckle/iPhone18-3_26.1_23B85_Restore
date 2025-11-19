@interface UIInputSwitcherAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)switchMode:(id)a3 withHUD:(BOOL)a4 withDelay:(BOOL)a5;
@end

@implementation UIInputSwitcherAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  v5 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = "@";
  v3 = @"UIInputSwitcher";
  [location[0] validateClass:"@" hasInstanceMethod:"B" withFullSignature:{"B", 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"loadedIdentifier" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, v5);
}

- (BOOL)switchMode:(id)a3 withHUD:(BOOL)a4 withDelay:(BOOL)a5
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = a4;
  v30 = a5;
  v28.receiver = v33;
  v28.super_class = UIInputSwitcherAccessibility;
  v29 = [(UIInputSwitcherAccessibility *)&v28 switchMode:location[0] withHUD:a4 withDelay:a5];
  if ((v29 & 1) != 0 && location[0])
  {
    v26 = 0;
    objc_opt_class();
    v13 = [(UIInputSwitcherAccessibility *)v33 safeValueForKey:@"loadedIdentifier"];
    v25 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v13);
    v24 = MEMORY[0x29EDC9748](v25);
    objc_storeStrong(&v25, 0);
    v27 = v24;
    v12 = [MEMORY[0x29EDC7B18] sharedInputModeController];
    v23 = [v12 inputModeWithIdentifier:v27];
    v5 = MEMORY[0x29EDC9740](v12);
    v22 = MEMORY[0x29ED3DC30](v27, v5);
    v6 = MEMORY[0x29ED3DB20](v22);
    v7 = v22;
    v22 = v6;
    v21 = [v23 extendedDisplayName];
    v20 = UIKitAccessibilityLocalizedString();
    v19 = [MEMORY[0x29EDBA0F8] stringWithFormat:v20, v21];
    v17 = 0;
    v18 = 0;
    if (v21)
    {
      v17 = [v19 rangeOfString:v21];
      v18 = v8;
    }

    else
    {
      v35 = 0x7FFFFFFFFFFFFFFFLL;
      v34 = 0;
      v36 = 0x7FFFFFFFFFFFFFFFLL;
      v37 = 0;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
      v18 = 0;
    }

    argument = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v19];
    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [argument setAttribute:v22 forKey:*MEMORY[0x29EDBD918] withRange:{v17, v18}];
    }

    [argument setAttribute:&unk_2A238E7C8 forKey:*MEMORY[0x29EDBD860]];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7468], argument);
    v11 = MEMORY[0x29EDC7EA8];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDAB0]);
    UIAccessibilityPostNotification(*v11, argument);
    objc_storeStrong(&argument, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v27, 0);
  }

  v10 = v29;
  objc_storeStrong(location, 0);
  return v10 & 1;
}

@end
@interface UIApplication(MobileTimerUIApplicationAccessibility)
+ (void)_accessibilityPerformValidations:()MobileTimerUIApplicationAccessibility;
- (uint64_t)accessibilityPerformMagicTap;
@end

@implementation UIApplication(MobileTimerUIApplicationAccessibility)

+ (void)_accessibilityPerformValidations:()MobileTimerUIApplicationAccessibility
{
  v3 = a3;
  [v3 validateClass:@"MTATimerViewController" hasInstanceMethod:@"timerManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTTimer" hasInstanceMethod:@"state" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"MobileTimerTabBarController" hasInstanceMethod:@"stopwatchViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MobileTimerTabBarController" hasInstanceMethod:@"timerViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTTimerManager" hasInstanceMethod:@"getCurrentTimerSync" withFullSignature:{"@", 0}];
}

- (uint64_t)accessibilityPerformMagicTap
{
  v26[1] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  v2 = [self safeValueForKey:@"_tabBarController"];
  v3 = __UIAccessibilityCastAsClass();

  selectedViewController = [v3 selectedViewController];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v5 = [v3 safeValueForKey:@"stopwatchViewController"];
  v6 = [v3 safeValueForKey:@"timerViewController"];
  if (selectedViewController)
  {
    v26[0] = selectedViewController;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v26 count:1];
    v8 = [v7 mutableCopy];
  }

  else
  {
    v8 = 0;
  }

  while ([v8 count])
  {
    firstObject = [v8 firstObject];
    v10 = firstObject;
    if (firstObject == v5)
    {
      MEMORY[0x29C2E1AE0](@"MTAStopwatchViewController");
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_15;
      }

      v12 = [v5 safeValueForKey:@"_mode"];
      intValue = [v12 intValue];

      switch(intValue)
      {
        case 1:
          v14 = v20;
          v20[0] = MEMORY[0x29EDCA5F8];
          v20[1] = 3221225472;
          v20[2] = __84__UIApplication_MobileTimerUIApplicationAccessibility__accessibilityPerformMagicTap__block_invoke_2;
          v20[3] = &unk_29F2DAA60;
          v20[4] = v5;
          v20[5] = &v22;
          AXPerformSafeBlock();
          break;
        case 3:
          v14 = v19;
          v19[0] = MEMORY[0x29EDCA5F8];
          v19[1] = 3221225472;
          v19[2] = __84__UIApplication_MobileTimerUIApplicationAccessibility__accessibilityPerformMagicTap__block_invoke_3;
          v19[3] = &unk_29F2DAA60;
          v19[4] = v5;
          v19[5] = &v22;
          AXPerformSafeBlock();
          break;
        case 2:
          v14 = v21;
          v21[0] = MEMORY[0x29EDCA5F8];
          v21[1] = 3221225472;
          v21[2] = __84__UIApplication_MobileTimerUIApplicationAccessibility__accessibilityPerformMagicTap__block_invoke;
          v21[3] = &unk_29F2DAA60;
          v21[4] = v5;
          v21[5] = &v22;
          AXPerformSafeBlock();
          break;
        default:
LABEL_15:

          goto LABEL_16;
      }

LABEL_14:

      goto LABEL_15;
    }

    if (firstObject == v6)
    {
      v14 = v18;
      v18[0] = MEMORY[0x29EDCA5F8];
      v18[1] = 3221225472;
      v18[2] = __84__UIApplication_MobileTimerUIApplicationAccessibility__accessibilityPerformMagicTap__block_invoke_4;
      v18[3] = &unk_29F2DAA60;
      v18[4] = v6;
      v18[5] = &v22;
      AXPerformSafeBlock();
      goto LABEL_14;
    }

    [v8 removeObject:firstObject];
    childViewControllers = [v10 childViewControllers];
    [v8 addObjectsFromArray:childViewControllers];
  }

LABEL_16:
  v15 = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  v16 = *MEMORY[0x29EDCA608];
  return v15 & 1;
}

@end
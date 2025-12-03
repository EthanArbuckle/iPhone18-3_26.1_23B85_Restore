@interface UIStatusBarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_shouldSeekHigherPriorityTouchTarget;
- (BOOL)accessibilityPerformEscape;
- (void)_adjustDoubleHeightTextVisibility;
- (void)_finishedSettingStyleWithOldHeight:(double)height newHeight:(double)newHeight animation:(int)animation;
- (void)_setDoubleHeightStatusString:(id)string;
@end

@implementation UIStatusBarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  v5 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"UIStatusBar";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  v3 = "v";
  [location[0] validateClass:@"UIStatusBar" hasInstanceMethod:@"_adjustDoubleHeightTextVisibility" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceMethod:@"_finishedSettingStyleWithOldHeight: newHeight: animation:" withFullSignature:{v3, "d", "d", "i", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_setDoubleHeightStatusString:" withFullSignature:{v3, "@", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_shouldSeekHigherPriorityTouchTarget" withFullSignature:{"B", 0}];
  objc_storeStrong(v6, v5);
}

- (BOOL)accessibilityPerformEscape
{
  v15[2] = self;
  v15[1] = a2;
  v14 = 0;
  objc_opt_class();
  v10 = [*MEMORY[0x29EDC8008] safeValueForKey:@"_systemNavigationAction"];
  v13 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v10);
  v12 = MEMORY[0x29EDC9748](v13);
  objc_storeStrong(&v13, 0);
  v15[0] = v12;
  if ([v12 canSendResponse])
  {
    v3 = v15[0];
    response = [MEMORY[0x29EDBFBD0] response];
    [v3 sendResponse:?];
    MEMORY[0x29EDC9740](response);
    v11 = accessibilityUIKitLocalizedString();
    notification = *MEMORY[0x29EDC7EA8];
    v6 = MEMORY[0x29EDBA0F8];
    v5 = v11;
    v9 = [v15[0] titleForDestination:0];
    v8 = [v6 stringWithFormat:v5, v9];
    UIAccessibilityPostNotification(notification, v8);
    MEMORY[0x29EDC9740](v8);
    MEMORY[0x29EDC9740](v9);
    v16 = 1;
    objc_storeStrong(&v11, 0);
  }

  else
  {
    v16 = 0;
  }

  objc_storeStrong(v15, 0);
  return v16 & 1;
}

- (void)_setDoubleHeightStatusString:(id)string
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  v5 = [(UIStatusBarAccessibility *)selfCopy safeValueForKey:?];
  v4.receiver = selfCopy;
  v4.super_class = UIStatusBarAccessibility;
  [(UIStatusBarAccessibility *)&v4 _setDoubleHeightStatusString:location[0]];
  v3 = [(UIStatusBarAccessibility *)selfCopy safeValueForKey:@"_doubleHeightLabel"];
  if (v3)
  {
    [v3 accessibilitySetIdentification:@"doubleHeightLabel"];
  }

  [v3 _accessibilitySetOverridesInvisibility:1];
  if (v5 != v3)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  objc_storeStrong(&v3, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_adjustDoubleHeightTextVisibility
{
  selfCopy = self;
  v17 = a2;
  v15 = 0;
  objc_opt_class();
  v6 = [(UIStatusBarAccessibility *)selfCopy safeValueForKey:@"_doubleHeightLabel"];
  v14 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v6);
  v13 = MEMORY[0x29EDC9748](v14);
  objc_storeStrong(&v14, 0);
  [v13 alpha];
  v4 = v2;
  MEMORY[0x29EDC9740](v13);
  v16 = v4;
  v12.receiver = selfCopy;
  v12.super_class = UIStatusBarAccessibility;
  [(UIStatusBarAccessibility *)&v12 _adjustDoubleHeightTextVisibility];
  v10 = 0;
  objc_opt_class();
  v5 = [(UIStatusBarAccessibility *)selfCopy safeValueForKey:@"_doubleHeightLabel"];
  v9 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v5);
  v8 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);
  v11 = v8;
  [v8 alpha];
  v7 = v3;
  [v11 _accessibilitySetOverridesInvisibility:1];
  if (v16 != v7)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  objc_storeStrong(&v11, 0);
}

- (void)_finishedSettingStyleWithOldHeight:(double)height newHeight:(double)newHeight animation:(int)animation
{
  selfCopy = self;
  v12 = a2;
  heightCopy = height;
  newHeightCopy = newHeight;
  animationCopy = animation;
  [(UIStatusBarAccessibility *)self safeCGFloatForKey:@"currentHeight"];
  v8 = v5;
  v7 = v5 != newHeightCopy;
  v6.receiver = selfCopy;
  v6.super_class = UIStatusBarAccessibility;
  [(UIStatusBarAccessibility *)&v6 _finishedSettingStyleWithOldHeight:animationCopy newHeight:heightCopy animation:newHeightCopy];
  if (v7)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (BOOL)_shouldSeekHigherPriorityTouchTarget
{
  selfCopy = self;
  v4 = a2;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = UIStatusBarAccessibility;
  return [(UIStatusBarAccessibility *)&v3 _shouldSeekHigherPriorityTouchTarget];
}

uint64_t __71___UIStatusBarAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeBoolForKey:@"isEnabled"] ^ 1;
  MEMORY[0x29EDC9740](WeakRetained);
  return v3;
}

void __71___UIStatusBarAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(id *a1)
{
  v13 = a1;
  v12 = a1;
  v11 = [a1[4] safeIntegerForKey:@"enabilityStatus"];
  v10 = 0;
  if (v11 == 2)
  {
    v9 = [a1[5] safeValueForKey:@"currentAggregatedData"];
    v8 = [a1[4] safeValueForKeyPath:@"currentPlacementState.region.overriddenStyleAttributes"];
    v7 = [a1[5] safeValueForKey:@"styleAttributes"];
    v6 = [v7 styleAttributesWithOverrides:v8];
    v1 = [a1[4] _updateForUpdatedData:v9 updatedStyleAttributes:v6 updatedEnability:MEMORY[0x29EDB8EB0]];
    v2 = v10;
    v10 = v1;
    MEMORY[0x29EDC9740](v2);
    objc_storeStrong(&v6, 0);
    objc_storeStrong(&v7, 0);
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
  }

  else if (v11 == 3)
  {
    v3 = [a1[4] _updateForUpdatedData:0 updatedStyleAttributes:0 updatedEnability:MEMORY[0x29EDB8EA8]];
    v4 = v10;
    v10 = v3;
    MEMORY[0x29EDC9740](v4);
  }

  if (v10)
  {
    [a1[6] _accessibilitySetRetainedValue:v10 forKey:@"AccessibilityStatusBarUpdateData"];
  }

  objc_storeStrong(&v10, 0);
}

BOOL __59___UIStatusBarAccessibility__prepareVisualProviderIfNeeded__block_invoke(uint64_t a1)
{
  if (AXRequestingClient() == 3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 0;
    if ([WeakRetained _axElementWithinFocused])
    {
      v2 = 0;
    }

    else
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v5 = 1;
      v2 = [(_UIStatusBarAccessibility *)v6 _axGetIsHitTesting]^ 1;
    }

    v7 = v2 != 0;
    if (v5)
    {
      MEMORY[0x29EDC9740](v6);
    }

    MEMORY[0x29EDC9740](WeakRetained);
  }

  else
  {
    return 0;
  }

  return v7;
}

BOOL __52___UIStatusBarAccessibility__axElementWithinFocused__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = location[0] == a1[4];
  objc_storeStrong(location, 0);
  return v4;
}

@end
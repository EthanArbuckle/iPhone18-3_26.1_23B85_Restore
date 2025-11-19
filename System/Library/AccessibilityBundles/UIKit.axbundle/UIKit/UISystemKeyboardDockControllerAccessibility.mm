@interface UISystemKeyboardDockControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (double)_axUpdateGlobeKeyLabel;
- (uint64_t)_axShowsGlobeKeyAsEmoji;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkupDockItems;
- (void)loadView;
- (void)updateDockItemsVisibility;
@end

@implementation UISystemKeyboardDockControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"UISystemKeyboardDockController";
  [location[0] validateClass:? isKindOfClass:?];
  v3 = "UIKeyboardDockItem";
  [location[0] validateClass:@"UISystemKeyboardDockController" hasInstanceVariable:@"_globeDockItem" withType:?];
  [location[0] validateClass:@"UISystemKeyboardDockController" hasInstanceVariable:@"_dictationRunningDockItem" withType:"UIKeyboardDockItem"];
  [location[0] validateClass:@"UISystemKeyboardDockController" hasInstanceVariable:@"_dictationDockItem" withType:"UIKeyboardDockItem"];
  [location[0] validateClass:@"UISystemKeyboardDockController" hasInstanceVariable:@"_keyboardDockItem" withType:"UIKeyboardDockItem"];
  [location[0] validateClass:@"UIKeyboardDockItem" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  v5 = @"UIKeyboardImpl";
  v6 = "B";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v5 hasInstanceMethod:@"showsDedicatedEmojiKeyAlongsideGlobeButton" withFullSignature:{v6, 0}];
  objc_storeStrong(v8, v7);
}

- (uint64_t)_axShowsGlobeKeyAsEmoji
{
  location[1] = a1;
  if (a1)
  {
    location[0] = [MEMORY[0x29EDC7B08] activeInstance];
    LOBYTE(v2) = 0;
    if ([location[0] safeBoolForKey:@"globeKeyDisplaysAsEmojiKey"])
    {
      v2 = [location[0] safeBoolForKey:@"showsDedicatedEmojiKeyAlongsideGlobeButton"] ^ 1;
    }

    v4 = v2 & 1;
    objc_storeStrong(location, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (double)_axUpdateGlobeKeyLabel
{
  if (a1)
  {
    v2 = [a1 safeValueForKey:@"_globeDockItem"];
    v5 = 0;
    v3 = 0;
    if (([(UISystemKeyboardDockControllerAccessibility *)a1 _axShowsGlobeKeyAsEmoji]& 1) != 0)
    {
      v6 = AXKBElementLocalizedForKeyboardLocale(@"global.keyboard.key.emoji");
      v5 = 1;
      [v2 setAccessibilityLabel:{v6, v6}];
    }

    else
    {
      v4 = accessibilityLocalizedString(@"global.keyboard.key");
      v3 = 1;
      [v2 setAccessibilityLabel:{v4, v4}];
    }

    if (v3)
    {
      MEMORY[0x29EDC9740](v4);
    }

    if (v5)
    {
      MEMORY[0x29EDC9740](v6);
    }

    *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  }

  return result;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UISystemKeyboardDockControllerAccessibility;
  [(UISystemKeyboardDockControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(UISystemKeyboardDockControllerAccessibility *)v4 _accessibilityMarkupDockItems];
}

- (void)_accessibilityMarkupDockItems
{
  v23 = a1;
  if (a1)
  {
    v22 = [v23 safeValueForKey:{@"_globeDockItem", -[UISystemKeyboardDockControllerAccessibility _axUpdateGlobeKeyLabel](v23)}];
    v10 = accessibilityLocalizedString(@"globe.keyboard.key.hint");
    [v22 setAccessibilityHint:?];
    MEMORY[0x29EDC9740](v10);
    objc_initWeak(&location, v23);
    v11 = v22;
    v15 = MEMORY[0x29EDCA5F8];
    v16 = -1073741824;
    v17 = 0;
    v18 = __76__UISystemKeyboardDockControllerAccessibility__accessibilityMarkupDockItems__block_invoke;
    v19 = &unk_29F30C9E8;
    objc_copyWeak(&v20, &location);
    [v11 _setAccessibilityValueBlock:&v15];
    v14 = [v23 safeValueForKey:@"_dictationRunningDockItem"];
    v9 = accessibilityLocalizedString(@"dictation.key");
    [v14 setAccessibilityLabel:?];
    MEMORY[0x29EDC9740](v9);
    v8 = accessibilityLocalizedString(@"dictation.running.key.value");
    [v14 setAccessibilityValue:?];
    [v14 setAccessibilityIdentifier:{@"dictation", MEMORY[0x29EDC9740](v8).n128_f64[0]}];
    v13 = [v23 safeValueForKey:@"_dictationDockItem"];
    v7 = accessibilityLocalizedString(@"dictation.key");
    [v13 setAccessibilityLabel:?];
    MEMORY[0x29EDC9740](v7);
    v6 = accessibilityLocalizedString(@"dictation.key.hint");
    [v13 setAccessibilityHint:?];
    [v13 setAccessibilityIdentifier:{@"dictation", MEMORY[0x29EDC9740](v6).n128_f64[0]}];
    v12 = [v23 safeValueForKey:@"_keyboardDockItem"];
    v5 = accessibilityLocalizedString(@"keyboardMinimized.tabButton");
    [v12 setAccessibilityLabel:?];
    *&v1 = MEMORY[0x29EDC9740](v5).n128_u64[0];
    v2 = [v22 safeValueForKey:{@"button", v1}];
    v3 = [v13 safeValueForKey:@"button"];
    v4 = [v12 safeValueForKey:@"button"];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
    objc_storeStrong(&v22, 0);
  }
}

id __76__UISystemKeyboardDockControllerAccessibility__accessibilityMarkupDockItems__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [(UISystemKeyboardDockControllerAccessibility *)WeakRetained _axShowsGlobeKeyAsEmoji];
  MEMORY[0x29EDC9740](WeakRetained);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    KeyboardKeys = UIAXRequiresTwoNextKeyboardKeys();
    v2 = 2;
    if (!KeyboardKeys)
    {
      v2 = 0;
    }

    v6 = UIAXNextKeyboardValue(v2);
  }

  return v6;
}

- (void)updateDockItemsVisibility
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UISystemKeyboardDockControllerAccessibility;
  [(UISystemKeyboardDockControllerAccessibility *)&v2 updateDockItemsVisibility];
  [(UISystemKeyboardDockControllerAccessibility *)v4 _axUpdateGlobeKeyLabel];
}

- (void)loadView
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UISystemKeyboardDockControllerAccessibility;
  [(UISystemKeyboardDockControllerAccessibility *)&v2 loadView];
  [(UISystemKeyboardDockControllerAccessibility *)v4 _accessibilityMarkupDockItems];
}

@end
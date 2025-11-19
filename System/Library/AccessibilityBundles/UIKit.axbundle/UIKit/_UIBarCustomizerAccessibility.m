@interface _UIBarCustomizerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axContainerView;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)beginWithSession:(id)a3;
@end

@implementation _UIBarCustomizerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  v5 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = "@";
  v4 = @"_UIBarCustomizer";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceMethod:@"beginWithSession:" withFullSignature:{"v", v3, 0}];
  objc_storeStrong(v6, v5);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v14 = self;
  v13 = a2;
  v12.receiver = self;
  v12.super_class = _UIBarCustomizerAccessibility;
  [(_UIBarCustomizerAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, v14);
  v4 = [(_UIBarCustomizerAccessibility *)v14 _axContainerView];
  [v4 setAccessibilityViewIsModal:1];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v3 = [(_UIBarCustomizerAccessibility *)v14 _axContainerView];
  v5 = MEMORY[0x29EDCA5F8];
  v6 = -1073741824;
  v7 = 0;
  v8 = __75___UIBarCustomizerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v9 = &unk_29F30C7F0;
  objc_copyWeak(v10, &location);
  [v3 _setAccessibilityPerformEscapeBlock:&v5];
  MEMORY[0x29EDC9740](v3);
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (id)_axContainerView
{
  v10[2] = self;
  v10[1] = a2;
  v9 = 0;
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  v10[0] = v7;
  v5 = [v7 delegate];
  v3 = v10[0];
  v4 = [v10[0] _activeSession];
  v6 = [v5 barCustomizer:v3 containerViewForSession:?];
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);
  objc_storeStrong(v10, 0);

  return v6;
}

- (void)beginWithSession:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v7;
  v5.super_class = _UIBarCustomizerAccessibility;
  [(_UIBarCustomizerAccessibility *)&v5 beginWithSession:location[0]];
  [(_UIBarCustomizerAccessibility *)v7 _accessibilityLoadAccessibilityInformation];
  notification = *MEMORY[0x29EDC7F10];
  v4 = [(_UIBarCustomizerAccessibility *)v7 _axContainerView];
  UIAccessibilityPostNotification(notification, v4);
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(location, 0);
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v39 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v35 = 0;
  objc_opt_class();
  v34 = __UIAccessibilityCastAsClass();
  v33 = MEMORY[0x29EDC9748](v34);
  objc_storeStrong(&v34, 0);
  v36 = v33;
  v32 = [v33 _dropIndex];
  v30.receiver = v39;
  v30.super_class = _UIBarCustomizerAccessibility;
  v31 = [(_UIBarCustomizerAccessibility *)&v30 dropInteraction:location[0] sessionDidUpdate:v37];
  v29 = [v36 _dropIndex];
  if (v32 != v29 && v29 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v32 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v32 = v29 - 1;
    }

    v28 = [v36 _visibleItems];
    if (v32 >= v29 || (v18 = v32, v18 >= [v28 count]))
    {
      if (v29 < [v28 count])
      {
        v22 = 0;
        objc_opt_class();
        v11 = [v28 objectAtIndex:v29];
        v21 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v11);
        v20 = MEMORY[0x29EDC9748](v21);
        objc_storeStrong(&v21, 0);
        v23 = v20;
        v7 = *MEMORY[0x29EDC7EA8];
        v6 = MEMORY[0x29EDBA0F8];
        v10 = UIKitAccessibilityLocalizedString();
        v9 = [v23 name];
        v8 = [v6 localizedStringWithFormat:v10, v9];
        UIAccessibilityPostNotification(v7, v8);
        MEMORY[0x29EDC9740](v8);
        MEMORY[0x29EDC9740](v9);
        MEMORY[0x29EDC9740](v10);
        objc_storeStrong(&v23, 0);
      }
    }

    else
    {
      v26 = 0;
      objc_opt_class();
      v17 = [v28 objectAtIndex:v32];
      v25 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v17);
      v24 = MEMORY[0x29EDC9748](v25);
      objc_storeStrong(&v25, 0);
      v27 = v24;
      notification = *MEMORY[0x29EDC7EA8];
      v12 = MEMORY[0x29EDBA0F8];
      v16 = UIKitAccessibilityLocalizedString();
      v15 = [v27 name];
      v14 = [v12 localizedStringWithFormat:v16, v15];
      UIAccessibilityPostNotification(notification, v14);
      MEMORY[0x29EDC9740](v14);
      MEMORY[0x29EDC9740](v15);
      MEMORY[0x29EDC9740](v16);
      objc_storeStrong(&v27, 0);
    }

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDAA8]);
    objc_storeStrong(&v28, 0);
  }

  v5 = MEMORY[0x29EDC9748](v31);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);

  return v5;
}

@end
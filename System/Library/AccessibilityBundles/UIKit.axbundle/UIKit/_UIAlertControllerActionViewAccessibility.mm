@interface _UIAlertControllerActionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityUserTestingIsCancelButton;
- (BOOL)_accessibilityUserTestingIsDefaultButton;
- (BOOL)_accessibilityUserTestingIsDestructiveButton;
- (BOOL)_accessibilityUserTestingIsPreferredButton;
- (BOOL)isAccessibilityElement;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityLanguage;
- (unint64_t)accessibilityTraits;
@end

@implementation _UIAlertControllerActionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v11 = location;
  v10 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"_UIAlertControllerActionView";
  v3 = "UILabel";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"_UIAlertControllerActionView" hasInstanceVariable:@"_descriptiveLabel" withType:"UILabel"];
  v8 = "B";
  [location[0] validateClass:@"_UIAlertControllerActionView" hasInstanceVariable:@"_hasDescriptiveText" withType:?];
  v9 = "@";
  [location[0] validateClass:@"_UIAlertControllerActionView" hasInstanceMethod:@"action" withFullSignature:0];
  v5 = @"UIAlertAction";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v5 hasInstanceMethod:@"_contentViewController" withFullSignature:{v9, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"style" withFullSignature:{"q", 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"_isPreferred" withFullSignature:{v8, 0}];
  [location[0] validateClass:@"UIInterfaceActionRepresentationView"];
  v6 = @"_UIAlertControllerInterfaceActionGroupView";
  [location[0] validateClass:?];
  v7 = @"UIInterfaceActionGroupView";
  [location[0] validateClass:v6 isKindOfClass:?];
  [location[0] validateClass:v7 hasInstanceMethod:@"actionSelectionController" withFullSignature:{v9, 0}];
  [location[0] validateClass:@"_UIInterfaceActionCustomViewRepresentationView" hasInstanceMethod:@"setHighlighted:" withFullSignature:{"v", v8, 0}];
  [location[0] validateClass:@"UIInterfaceActionSelectionTrackingController" hasInstanceMethod:@"_allActionViewsIncludingCooperatingActionViews" withFullSignature:{v9, 0}];
  objc_storeStrong(v11, v10);
}

- (unint64_t)accessibilityTraits
{
  v15 = self;
  v14 = a2;
  v13 = 0;
  v7 = [(_UIAlertControllerActionViewAccessibility *)self accessibilityUserDefinedTraits];
  *&v2 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  if (v7)
  {
    v6 = [(_UIAlertControllerActionViewAccessibility *)v15 accessibilityUserDefinedTraits];
    v13 = [v6 unsignedLongLongValue];
    MEMORY[0x29EDC9740](v6);
  }

  else
  {
    v12.receiver = v15;
    v12.super_class = _UIAlertControllerActionViewAccessibility;
    v13 = [(_UIAlertControllerActionViewAccessibility *)&v12 accessibilityTraits]| *MEMORY[0x29EDC7F70];
  }

  v10 = 0;
  objc_opt_class();
  v5 = [(_UIAlertControllerActionViewAccessibility *)v15 safeValueForKey:@"action"];
  v9 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v5);
  v8 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);
  v11 = v8;
  if ([v8 safeBoolForKey:@"isEnabled"])
  {
    v13 &= ~*MEMORY[0x29EDC7FA8];
  }

  else
  {
    v13 |= *MEMORY[0x29EDC7FA8];
  }

  if ([v11 safeBoolForKey:@"_checked"])
  {
    v13 |= *MEMORY[0x29EDC7FC0];
  }

  v4 = v13;
  objc_storeStrong(&v11, 0);
  return v4;
}

- (BOOL)isAccessibilityElement
{
  v13 = self;
  v12[1] = a2;
  v8 = [(_UIAlertControllerActionViewAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if (v8)
  {
    v7 = [(_UIAlertControllerActionViewAccessibility *)v13 isAccessibilityUserDefinedElement];
    v14 = [v7 BOOLValue] & 1;
    MEMORY[0x29EDC9740](v7);
  }

  else
  {
    v11 = 0;
    objc_opt_class();
    v6 = [(_UIAlertControllerActionViewAccessibility *)v13 safeValueForKey:@"action"];
    v10 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v6);
    v9 = MEMORY[0x29EDC9748](v10);
    objc_storeStrong(&v10, 0);
    v12[0] = v9;
    v5 = [v9 safeValueForKey:@"_contentViewController"];
    *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
    if (v5)
    {
      v14 = 0;
    }

    else
    {
      v14 = ([(_UIAlertControllerActionViewAccessibility *)v13 accessibilityElementsHidden]& 1) == 0;
    }

    objc_storeStrong(v12, 0);
  }

  return v14 & 1;
}

- (id)accessibilityLabel
{
  v15 = self;
  v14[1] = a2;
  v11 = [(_UIAlertControllerActionViewAccessibility *)self accessibilityUserDefinedLabel];
  *&v2 = MEMORY[0x29EDC9740](v11).n128_u64[0];
  if (v11)
  {
    v16 = [(_UIAlertControllerActionViewAccessibility *)v15 accessibilityUserDefinedLabel];
  }

  else
  {
    v10 = [(_UIAlertControllerActionViewAccessibility *)v15 safeValueForKey:@"action", v2];
    v14[0] = [v10 accessibilityLabel];
    if ([v14[0] length])
    {
      v16 = MEMORY[0x29EDC9748](v14[0]);
      v13 = 1;
    }

    else
    {
      v9 = [(_UIAlertControllerActionViewAccessibility *)v15 safeValueForKey:@"label"];
      v12 = [v9 accessibilityLabel];
      if (([(_UIAlertControllerActionViewAccessibility *)v15 safeBoolForKey:@"_hasDescriptiveText", MEMORY[0x29EDC9740](v9).n128_f64[0]]& 1) != 0)
      {
        v8 = [(_UIAlertControllerActionViewAccessibility *)v15 safeValueForKey:@"_descriptiveLabel"];
        v7 = [v8 accessibilityLabel];
        v3 = __UIAXStringForVariables();
        v4 = v12;
        v12 = v3;
        MEMORY[0x29EDC9740](v4);
        MEMORY[0x29EDC9740](v7);
        MEMORY[0x29EDC9740](v8);
      }

      v16 = MEMORY[0x29EDC9748](v12);
      v13 = 1;
      objc_storeStrong(&v12, 0);
    }

    objc_storeStrong(v14, 0);
  }

  v5 = v16;

  return v5;
}

- (id)accessibilityLanguage
{
  v8 = self;
  location[1] = a2;
  v4 = [(_UIAlertControllerActionViewAccessibility *)self safeValueForKey:@"action"];
  location[0] = [v4 accessibilityLanguage];
  if ([location[0] length])
  {
    v9 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5.receiver = v8;
    v5.super_class = _UIAlertControllerActionViewAccessibility;
    v9 = [(_UIAlertControllerActionViewAccessibility *)&v5 accessibilityLanguage];
  }

  v6 = 1;
  objc_storeStrong(location, 0);
  v2 = v9;

  return v2;
}

- (id)accessibilityIdentifier
{
  v8 = self;
  location[1] = a2;
  v4 = [(_UIAlertControllerActionViewAccessibility *)self safeValueForKey:@"action"];
  location[0] = [v4 accessibilityIdentifier];
  if ([location[0] length])
  {
    v9 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5.receiver = v8;
    v5.super_class = _UIAlertControllerActionViewAccessibility;
    v9 = [(_UIAlertControllerActionViewAccessibility *)&v5 accessibilityIdentifier];
  }

  v6 = 1;
  objc_storeStrong(location, 0);
  v2 = v9;

  return v2;
}

- (BOOL)_accessibilityUserTestingIsDefaultButton
{
  v3 = [(_UIAlertControllerActionViewAccessibility *)self safeValueForKey:@"action"];
  v4 = [v3 safeIntegerForKey:@"style"] == 0;
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityUserTestingIsCancelButton
{
  v3 = [(_UIAlertControllerActionViewAccessibility *)self safeValueForKey:@"action"];
  v4 = [v3 safeIntegerForKey:@"style"] == 1;
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityUserTestingIsDestructiveButton
{
  v3 = [(_UIAlertControllerActionViewAccessibility *)self safeValueForKey:@"action"];
  v4 = [v3 safeIntegerForKey:@"style"] == 2;
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityUserTestingIsPreferredButton
{
  v3 = [(_UIAlertControllerActionViewAccessibility *)self safeValueForKey:@"action"];
  v4 = [v3 safeBoolForKey:@"_isPreferred"];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

@end
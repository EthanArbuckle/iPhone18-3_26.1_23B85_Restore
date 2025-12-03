@interface _UIAlertControllerActionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
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

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v11 = location;
  v10 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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
  selfCopy = self;
  v14 = a2;
  unsignedLongLongValue = 0;
  accessibilityUserDefinedTraits = [(_UIAlertControllerActionViewAccessibility *)self accessibilityUserDefinedTraits];
  *&v2 = MEMORY[0x29EDC9740](accessibilityUserDefinedTraits).n128_u64[0];
  if (accessibilityUserDefinedTraits)
  {
    accessibilityUserDefinedTraits2 = [(_UIAlertControllerActionViewAccessibility *)selfCopy accessibilityUserDefinedTraits];
    unsignedLongLongValue = [accessibilityUserDefinedTraits2 unsignedLongLongValue];
    MEMORY[0x29EDC9740](accessibilityUserDefinedTraits2);
  }

  else
  {
    v12.receiver = selfCopy;
    v12.super_class = _UIAlertControllerActionViewAccessibility;
    unsignedLongLongValue = [(_UIAlertControllerActionViewAccessibility *)&v12 accessibilityTraits]| *MEMORY[0x29EDC7F70];
  }

  v10 = 0;
  objc_opt_class();
  v5 = [(_UIAlertControllerActionViewAccessibility *)selfCopy safeValueForKey:@"action"];
  v9 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v5);
  v8 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);
  v11 = v8;
  if ([v8 safeBoolForKey:@"isEnabled"])
  {
    unsignedLongLongValue &= ~*MEMORY[0x29EDC7FA8];
  }

  else
  {
    unsignedLongLongValue |= *MEMORY[0x29EDC7FA8];
  }

  if ([v11 safeBoolForKey:@"_checked"])
  {
    unsignedLongLongValue |= *MEMORY[0x29EDC7FC0];
  }

  v4 = unsignedLongLongValue;
  objc_storeStrong(&v11, 0);
  return v4;
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  v12[1] = a2;
  isAccessibilityUserDefinedElement = [(_UIAlertControllerActionViewAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_u64[0];
  if (isAccessibilityUserDefinedElement)
  {
    isAccessibilityUserDefinedElement2 = [(_UIAlertControllerActionViewAccessibility *)selfCopy isAccessibilityUserDefinedElement];
    v14 = [isAccessibilityUserDefinedElement2 BOOLValue] & 1;
    MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement2);
  }

  else
  {
    v11 = 0;
    objc_opt_class();
    v6 = [(_UIAlertControllerActionViewAccessibility *)selfCopy safeValueForKey:@"action"];
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
      v14 = ([(_UIAlertControllerActionViewAccessibility *)selfCopy accessibilityElementsHidden]& 1) == 0;
    }

    objc_storeStrong(v12, 0);
  }

  return v14 & 1;
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v14[1] = a2;
  accessibilityUserDefinedLabel = [(_UIAlertControllerActionViewAccessibility *)self accessibilityUserDefinedLabel];
  *&v2 = MEMORY[0x29EDC9740](accessibilityUserDefinedLabel).n128_u64[0];
  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(_UIAlertControllerActionViewAccessibility *)selfCopy accessibilityUserDefinedLabel];
  }

  else
  {
    v10 = [(_UIAlertControllerActionViewAccessibility *)selfCopy safeValueForKey:@"action", v2];
    v14[0] = [v10 accessibilityLabel];
    if ([v14[0] length])
    {
      accessibilityUserDefinedLabel2 = MEMORY[0x29EDC9748](v14[0]);
      v13 = 1;
    }

    else
    {
      v9 = [(_UIAlertControllerActionViewAccessibility *)selfCopy safeValueForKey:@"label"];
      accessibilityLabel = [v9 accessibilityLabel];
      if (([(_UIAlertControllerActionViewAccessibility *)selfCopy safeBoolForKey:@"_hasDescriptiveText", MEMORY[0x29EDC9740](v9).n128_f64[0]]& 1) != 0)
      {
        v8 = [(_UIAlertControllerActionViewAccessibility *)selfCopy safeValueForKey:@"_descriptiveLabel"];
        accessibilityLabel2 = [v8 accessibilityLabel];
        v3 = __UIAXStringForVariables();
        v4 = accessibilityLabel;
        accessibilityLabel = v3;
        MEMORY[0x29EDC9740](v4);
        MEMORY[0x29EDC9740](accessibilityLabel2);
        MEMORY[0x29EDC9740](v8);
      }

      accessibilityUserDefinedLabel2 = MEMORY[0x29EDC9748](accessibilityLabel);
      v13 = 1;
      objc_storeStrong(&accessibilityLabel, 0);
    }

    objc_storeStrong(v14, 0);
  }

  v5 = accessibilityUserDefinedLabel2;

  return v5;
}

- (id)accessibilityLanguage
{
  selfCopy = self;
  location[1] = a2;
  v4 = [(_UIAlertControllerActionViewAccessibility *)self safeValueForKey:@"action"];
  location[0] = [v4 accessibilityLanguage];
  if ([location[0] length])
  {
    accessibilityLanguage = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = _UIAlertControllerActionViewAccessibility;
    accessibilityLanguage = [(_UIAlertControllerActionViewAccessibility *)&v5 accessibilityLanguage];
  }

  v6 = 1;
  objc_storeStrong(location, 0);
  v2 = accessibilityLanguage;

  return v2;
}

- (id)accessibilityIdentifier
{
  selfCopy = self;
  location[1] = a2;
  v4 = [(_UIAlertControllerActionViewAccessibility *)self safeValueForKey:@"action"];
  location[0] = [v4 accessibilityIdentifier];
  if ([location[0] length])
  {
    accessibilityIdentifier = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = _UIAlertControllerActionViewAccessibility;
    accessibilityIdentifier = [(_UIAlertControllerActionViewAccessibility *)&v5 accessibilityIdentifier];
  }

  v6 = 1;
  objc_storeStrong(location, 0);
  v2 = accessibilityIdentifier;

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
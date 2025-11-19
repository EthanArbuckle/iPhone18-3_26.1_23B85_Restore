@interface _UIInterfaceActionCustomViewRepresentationViewAccessibility
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

@implementation _UIInterfaceActionCustomViewRepresentationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v10 = location;
  v9 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = @"_UIInterfaceActionCustomViewRepresentationView";
  v3 = @"UIInterfaceActionRepresentationView";
  [location[0] validateClass:? isKindOfClass:?];
  v4 = @"action";
  v8 = "@";
  [location[0] validateClass:@"UIInterfaceActionRepresentationView" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v7 hasInstanceMethod:@"_actionContentView" withFullSignature:{v8, 0}];
  [location[0] validateClass:@"_UIInterfaceActionSeparatableSequenceView" hasInstanceMethod:@"arrangedContentViews" withFullSignature:{v8, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:v4 withFullSignature:{v8, 0}];
  v5 = @"UIInterfaceAction";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:@"_UIAlertControllerActionViewInterfaceAction" isKindOfClass:v5];
  [location[0] validateClass:v5 hasInstanceMethod:@"customContentView" withFullSignature:{v8, 0}];
  [location[0] validateClass:@"_UIAlertControllerActionView" hasInstanceVariable:@"_action" withType:"UIAlertAction"];
  v6 = "B";
  [location[0] validateClass:@"UIAlertAction" hasInstanceVariable:@"_checked" withType:?];
  [location[0] validateClass:@"_UIAlertControllerInterfaceActionGroupView"];
  [location[0] validateClass:@"UIInterfaceActionGroupView" hasInstanceMethod:@"actionSelectionController" withFullSignature:{v8, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"setHighlighted:" withFullSignature:{"v", v6, 0}];
  [location[0] validateClass:@"UIInterfaceActionSelectionTrackingController" hasInstanceMethod:@"_allActionViewsIncludingCooperatingActionViews" withFullSignature:{v8, 0}];
  objc_storeStrong(v10, v9);
}

- (unint64_t)accessibilityTraits
{
  v3 = [(_UIInterfaceActionCustomViewRepresentationViewAccessibility *)self safeValueForKey:@"_actionContentView"];
  v4 = [v3 accessibilityTraits];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(_UIInterfaceActionCustomViewRepresentationViewAccessibility *)self safeValueForKey:@"_actionContentView"];
  v4 = [v3 isAccessibilityElement];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(_UIInterfaceActionCustomViewRepresentationViewAccessibility *)self safeValueForKey:@"_actionContentView"];
  v4 = [v3 accessibilityLabel];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityLanguage
{
  v3 = [(_UIInterfaceActionCustomViewRepresentationViewAccessibility *)self safeValueForKey:@"_actionContentView"];
  v4 = [v3 accessibilityLanguage];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityIdentifier
{
  v3 = [(_UIInterfaceActionCustomViewRepresentationViewAccessibility *)self safeValueForKey:@"_actionContentView"];
  v4 = [v3 accessibilityIdentifier];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (BOOL)_accessibilityUserTestingIsDefaultButton
{
  v3 = [(_UIInterfaceActionCustomViewRepresentationViewAccessibility *)self safeValueForKey:@"_actionContentView"];
  v4 = [v3 _accessibilityUserTestingIsDefaultButton];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityUserTestingIsCancelButton
{
  v3 = [(_UIInterfaceActionCustomViewRepresentationViewAccessibility *)self safeValueForKey:@"_actionContentView"];
  v4 = [v3 _accessibilityUserTestingIsCancelButton];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityUserTestingIsDestructiveButton
{
  v3 = [(_UIInterfaceActionCustomViewRepresentationViewAccessibility *)self safeValueForKey:@"_actionContentView"];
  v4 = [v3 _accessibilityUserTestingIsDestructiveButton];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)_accessibilityUserTestingIsPreferredButton
{
  v3 = [(_UIInterfaceActionCustomViewRepresentationViewAccessibility *)self safeValueForKey:@"_actionContentView"];
  v4 = [v3 _accessibilityUserTestingIsPreferredButton];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

@end
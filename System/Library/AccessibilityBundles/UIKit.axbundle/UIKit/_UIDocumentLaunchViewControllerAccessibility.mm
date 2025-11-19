@interface _UIDocumentLaunchViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _UIDocumentLaunchViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = @"_UIDocumentLaunchViewController";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  v4 = @"UISheetPresentationController";
  [location[0] validateClass:@"_UIDocumentUnavailableBrowserPresentationController" isKindOfClass:?];
  v3 = @"UIPresentationController";
  [location[0] validateClass:@"UISheetPresentationController" isKindOfClass:?];
  v5 = "@";
  [location[0] validateClass:@"UIPresentationController" hasInstanceMethod:@"containerView" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceMethod:@"selectedDetentIdentifier" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"_UIRemoteView"];
  [location[0] validateClass:v6 hasInstanceVariable:@"_pageContainerView" withType:"_UITouchPassthroughView"];
  objc_storeStrong(v8, v7);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v22 = self;
  v21 = a2;
  v20.receiver = self;
  v20.super_class = _UIDocumentLaunchViewControllerAccessibility;
  [(_UIDocumentLaunchViewControllerAccessibility *)&v20 _accessibilityLoadAccessibilityInformation];
  v19 = [(_UIDocumentLaunchViewControllerAccessibility *)v22 safeValueForKey:@"_pageContainerView"];
  [v19 _accessibilitySetSortPriority:1000];
  v4 = [(_UIDocumentLaunchViewControllerAccessibility *)v22 safeValueForKey:@"_browserPresentationController"];
  v3 = [v4 safeUIViewForKey:@"containerView"];
  v18 = [v3 _accessibilityFindSubviewDescendant:&__block_literal_global_0];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);
  v16 = 0;
  objc_opt_class();
  v6 = [v18 accessibilityElements];
  v5 = [v6 firstObject];
  v15 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v6);
  v14 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v15, 0);
  v17 = v14;
  objc_initWeak(&v13, v22);
  v2 = v17;
  v7 = MEMORY[0x29EDCA5F8];
  v8 = -1073741824;
  v9 = 0;
  v10 = __90___UIDocumentLaunchViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v11 = &unk_29F30C7F0;
  objc_copyWeak(&v12, &v13);
  [v2 _setAccessibilityRemoteElementShouldHitTestHostProcessBlock:&v7];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v13);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
}

@end
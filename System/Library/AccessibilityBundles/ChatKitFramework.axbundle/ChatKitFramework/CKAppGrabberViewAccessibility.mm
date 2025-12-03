@interface CKAppGrabberViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CKAppGrabberViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKAppGrabberViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKAppGrabberView" hasInstanceVariable:@"_pluginTitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"CKAppGrabberView" hasInstanceVariable:@"_closeButton" withType:"UIButton"];
  [validationsCopy validateClass:@"CKAppGrabberView" hasInstanceVariable:@"_chevronView" withType:"_UIGrabber"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = CKAppGrabberViewAccessibility;
  [(CKAppGrabberViewAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(CKAppGrabberViewAccessibility *)self safeValueForKey:@"_pluginTitleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  accessibilityTraits = [v4 accessibilityTraits];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
  objc_initWeak(&location, self);
  v6 = [(CKAppGrabberViewAccessibility *)self safeUIViewForKey:@"_chevronView"];
  [v6 setIsAccessibilityElement:1];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __75__CKAppGrabberViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v7[3] = &unk_29F2B0908;
  objc_copyWeak(&v8, &location);
  [v6 _setAccessibilityLabelBlock:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

id __75__CKAppGrabberViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityBoolValueForKey:@"_axBrowserIsExpanded"];

  if (v2)
  {
    v3 = @"browser.collapse.button";
  }

  else
  {
    v3 = @"browser.expand.button";
  }

  return accessibilityLocalizedString(v3);
}

- (CKAppGrabberViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = CKAppGrabberViewAccessibility;
  v3 = [(CKAppGrabberViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(CKAppGrabberViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

@end
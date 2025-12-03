@interface VideosUI_NavigationBarLargeTitleViewLayoutAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VideosUI_NavigationBarLargeTitleViewLayoutAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_UINavigationBarLargeTitleViewLayout" hasInstanceMethod:@"_titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UINavigationBarLargeTitleViewLayout" hasInstanceMethod:@"layoutViewsWithOffset:useRestingTitleHeight:" withFullSignature:{"v", "{UIOffset=dd}", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = VideosUI_NavigationBarLargeTitleViewLayoutAccessibility;
  [(VideosUI_NavigationBarLargeTitleViewLayoutAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(VideosUI_NavigationBarLargeTitleViewLayoutAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  _accessibilityViewIsVisible = [v4 _accessibilityViewIsVisible];
  text = [v4 text];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v8 = [text stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v9 = [v8 length];

  if (_accessibilityViewIsVisible && v9)
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v10, &location);
    AXPerformBlockOnMainThreadAfterDelay();
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

@end
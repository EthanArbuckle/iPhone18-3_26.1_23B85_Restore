@interface VideosUI_NavigationBarLargeTitleViewLayoutAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VideosUI_NavigationBarLargeTitleViewLayoutAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_UINavigationBarLargeTitleViewLayout" hasInstanceMethod:@"_titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_UINavigationBarLargeTitleViewLayout" hasInstanceMethod:@"layoutViewsWithOffset:useRestingTitleHeight:" withFullSignature:{"v", "{UIOffset=dd}", "B", 0}];
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

  v5 = [v4 _accessibilityViewIsVisible];
  v6 = [v4 text];
  v7 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];
  v9 = [v8 length];

  if (v5 && v9)
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v10, &location);
    AXPerformBlockOnMainThreadAfterDelay();
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

@end
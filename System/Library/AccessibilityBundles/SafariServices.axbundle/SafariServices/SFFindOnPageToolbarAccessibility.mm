@interface SFFindOnPageToolbarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation SFFindOnPageToolbarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_SFFindOnPageToolbar" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"_SFFindOnPageToolbar" hasInstanceVariable:@"_previousButtonItem" withType:"UIBarButtonItem"];
  [v3 validateClass:@"_SFFindOnPageToolbar" hasInstanceVariable:@"_nextButtonItem" withType:"UIBarButtonItem"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = SFFindOnPageToolbarAccessibility;
  [(SFFindOnPageToolbarAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(SFFindOnPageToolbarAccessibility *)self safeValueForKey:@"_previousButtonItem"];
  v4 = accessibilitySafariServicesLocalizedString(@"find.on.page.previous");
  [v3 setAccessibilityLabel:v4];

  v5 = [(SFFindOnPageToolbarAccessibility *)self safeValueForKey:@"_nextButtonItem"];
  v6 = accessibilitySafariServicesLocalizedString(@"find.on.page.next");
  [v5 setAccessibilityLabel:v6];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFFindOnPageToolbarAccessibility;
  [(SFFindOnPageToolbarAccessibility *)&v3 layoutSubviews];
  [(SFFindOnPageToolbarAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
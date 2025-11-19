@interface NavIndicatorsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_pressedViewOverview;
- (void)_pressedViewTbT;
@end

@implementation NavIndicatorsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NavIndicatorsViewController" hasInstanceMethod:@"_pressedViewOverview" withFullSignature:{"v", 0}];
  [v3 validateClass:@"NavIndicatorsViewController" hasInstanceMethod:@"_pressedViewTbT" withFullSignature:{"v", 0}];
}

- (void)_pressedViewOverview
{
  v3.receiver = self;
  v3.super_class = NavIndicatorsViewControllerAccessibility;
  [(NavIndicatorsViewControllerAccessibility *)&v3 _pressedViewOverview];
  v2 = AXMapsLocString(@"navigation.overview.announcement");
  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

- (void)_pressedViewTbT
{
  v3.receiver = self;
  v3.super_class = NavIndicatorsViewControllerAccessibility;
  [(NavIndicatorsViewControllerAccessibility *)&v3 _pressedViewTbT];
  v2 = AXMapsLocString(@"navigation.turnbyturn.announcement");
  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

@end
@interface DetailViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySpeakThisViewController;
@end

@implementation DetailViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DetailViewController" hasInstanceMethod:@"contentViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"_accessibilitySpeakThisViewController" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySpeakThisViewController
{
  v2 = [(DetailViewControllerAccessibility *)self safeValueForKey:@"contentViewController"];
  v3 = [v2 safeValueForKey:@"_accessibilitySpeakThisViewController"];

  return v3;
}

@end
@interface DetailViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySpeakThisViewController;
@end

@implementation DetailViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DetailViewController" hasInstanceMethod:@"contentViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"_accessibilitySpeakThisViewController" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySpeakThisViewController
{
  v2 = [(DetailViewControllerAccessibility *)self safeValueForKey:@"contentViewController"];
  v3 = [v2 safeValueForKey:@"_accessibilitySpeakThisViewController"];

  return v3;
}

@end
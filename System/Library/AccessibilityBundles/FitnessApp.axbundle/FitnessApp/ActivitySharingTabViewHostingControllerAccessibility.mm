@interface ActivitySharingTabViewHostingControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation ActivitySharingTabViewHostingControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FitnessApp.ActivitySharingTabViewHostingController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"viewIsAppearing:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"navigationItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UINavigationItem" hasInstanceMethod:@"rightBarButtonItem" withFullSignature:{"@", 0}];
}

@end
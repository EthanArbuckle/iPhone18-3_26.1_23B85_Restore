@interface OBWelcomeControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation OBWelcomeControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"OBWelcomeController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"OBWelcomeController" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
}

@end
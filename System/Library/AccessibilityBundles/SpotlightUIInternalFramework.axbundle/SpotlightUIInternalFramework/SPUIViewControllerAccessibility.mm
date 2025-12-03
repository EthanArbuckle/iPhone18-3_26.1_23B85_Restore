@interface SPUIViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation SPUIViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SPUIViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SPUIViewController" hasInstanceMethod:@"activateViewController: animate:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"SPUIViewController" hasInstanceMethod:@"activeViewController" withFullSignature:{"@", 0}];
}

@end
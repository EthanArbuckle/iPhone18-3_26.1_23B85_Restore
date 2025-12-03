@interface ContainerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation ContainerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ContainerViewController" hasInstanceMethod:@"presentController: animated: useDefaultContaineeLayout:" withFullSignature:{"v", "@", "B", "B", 0}];
  [validationsCopy validateClass:@"ContainerViewController" hasInstanceVariable:@"_currentViewController" withType:"UIViewController<ContaineeProtocol>"];
}

@end
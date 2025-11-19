@interface ContainerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation ContainerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ContainerViewController" hasInstanceMethod:@"presentController: animated: useDefaultContaineeLayout:" withFullSignature:{"v", "@", "B", "B", 0}];
  [v3 validateClass:@"ContainerViewController" hasInstanceVariable:@"_currentViewController" withType:"UIViewController<ContaineeProtocol>"];
}

@end
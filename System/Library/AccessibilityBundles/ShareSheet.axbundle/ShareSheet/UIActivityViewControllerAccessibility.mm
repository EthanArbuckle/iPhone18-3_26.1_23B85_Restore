@interface UIActivityViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation UIActivityViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"viewWillDisappear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"UIActivityViewController" hasInstanceMethod:@"_cancel" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"UIActivityViewController" isKindOfClass:@"UIViewController"];
}

@end
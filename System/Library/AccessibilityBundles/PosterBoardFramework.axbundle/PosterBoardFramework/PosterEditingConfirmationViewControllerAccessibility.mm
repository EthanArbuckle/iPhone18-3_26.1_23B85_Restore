@interface PosterEditingConfirmationViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation PosterEditingConfirmationViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PosterBoard.PosterEditingConfirmationViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"PosterBoard.PosterEditingConfirmationViewController" hasSwiftFieldOfAnyClass:@"continueButton"];
}

@end
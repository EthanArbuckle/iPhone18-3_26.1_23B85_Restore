@interface PosterEditingConfirmationViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation PosterEditingConfirmationViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PosterBoard.PosterEditingConfirmationViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PosterBoard.PosterEditingConfirmationViewController" hasSwiftFieldOfAnyClass:@"continueButton"];
}

@end
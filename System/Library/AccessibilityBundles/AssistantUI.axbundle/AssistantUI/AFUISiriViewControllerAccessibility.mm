@interface AFUISiriViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)compactView:(id)view bottomContentInsetDidChange:(double)change;
@end

@implementation AFUISiriViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AFUISiriViewController" hasInstanceMethod:@"compactView:bottomContentInsetDidChange:" withFullSignature:{"v", "@", "d", 0}];
  [validationsCopy validateClass:@"AFUISiriViewController" isKindOfClass:@"UIViewController"];
}

- (void)compactView:(id)view bottomContentInsetDidChange:(double)change
{
  viewCopy = view;
  v7 = objc_opt_new();
  isClarityBoardEnabled = [v7 isClarityBoardEnabled];

  v9 = 0.0;
  if (isClarityBoardEnabled)
  {
    v17 = 0;
    objc_opt_class();
    v10 = __UIAccessibilityCastAsClass();
    view = [v10 view];
    [view frame];
    v13 = v12;

    if (v13 > 0.0)
    {
      mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
      [mainScreen bounds];
      v9 = v15 - v13;
    }
  }

  v16.receiver = self;
  v16.super_class = AFUISiriViewControllerAccessibility;
  [(AFUISiriViewControllerAccessibility *)&v16 compactView:viewCopy bottomContentInsetDidChange:v9 + change];
}

@end
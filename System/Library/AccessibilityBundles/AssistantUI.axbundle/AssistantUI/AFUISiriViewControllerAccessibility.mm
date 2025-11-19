@interface AFUISiriViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)compactView:(id)a3 bottomContentInsetDidChange:(double)a4;
@end

@implementation AFUISiriViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AFUISiriViewController" hasInstanceMethod:@"compactView:bottomContentInsetDidChange:" withFullSignature:{"v", "@", "d", 0}];
  [v3 validateClass:@"AFUISiriViewController" isKindOfClass:@"UIViewController"];
}

- (void)compactView:(id)a3 bottomContentInsetDidChange:(double)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v7 isClarityBoardEnabled];

  v9 = 0.0;
  if (v8)
  {
    v17 = 0;
    objc_opt_class();
    v10 = __UIAccessibilityCastAsClass();
    v11 = [v10 view];
    [v11 frame];
    v13 = v12;

    if (v13 > 0.0)
    {
      v14 = [MEMORY[0x29EDC7C40] mainScreen];
      [v14 bounds];
      v9 = v15 - v13;
    }
  }

  v16.receiver = self;
  v16.super_class = AFUISiriViewControllerAccessibility;
  [(AFUISiriViewControllerAccessibility *)&v16 compactView:v6 bottomContentInsetDidChange:v9 + a4];
}

@end
@interface AAUISignInViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_passwordCell;
- (id)_usernameCell;
@end

@implementation AAUISignInViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AAUISignInViewController" hasInstanceMethod:@"_usernameCell" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AAUISignInViewController" hasInstanceMethod:@"_passwordCell" withFullSignature:{"@", 0}];
}

- (id)_usernameCell
{
  v10 = 0;
  objc_opt_class();
  v9.receiver = self;
  v9.super_class = AAUISignInViewControllerAccessibility;
  v3 = [(AAUISignInViewControllerAccessibility *)&v9 _usernameCell];
  v4 = __UIAccessibilityCastAsClass();

  if (v10 == 1)
  {
    abort();
  }

  [v4 setIsAccessibilityElement:0];
  v5 = [v4 editableTextField];
  v6 = [v4 textLabel];
  v7 = [v6 accessibilityLabel];
  [v5 setAccessibilityLabel:v7];

  return v4;
}

- (id)_passwordCell
{
  v11 = 0;
  objc_opt_class();
  v10.receiver = self;
  v10.super_class = AAUISignInViewControllerAccessibility;
  v3 = [(AAUISignInViewControllerAccessibility *)&v10 _passwordCell];
  v4 = __UIAccessibilityCastAsClass();

  if (v11 == 1)
  {
    abort();
  }

  v5 = [v4 textLabel];
  [v5 setIsAccessibilityElement:0];

  v6 = [v4 editableTextField];
  v7 = [v4 textLabel];
  v8 = [v7 accessibilityLabel];
  [v6 setAccessibilityLabel:v8];

  return v4;
}

@end
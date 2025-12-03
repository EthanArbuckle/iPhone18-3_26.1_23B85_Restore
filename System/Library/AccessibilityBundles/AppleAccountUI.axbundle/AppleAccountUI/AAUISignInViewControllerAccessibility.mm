@interface AAUISignInViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_passwordCell;
- (id)_usernameCell;
@end

@implementation AAUISignInViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AAUISignInViewController" hasInstanceMethod:@"_usernameCell" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AAUISignInViewController" hasInstanceMethod:@"_passwordCell" withFullSignature:{"@", 0}];
}

- (id)_usernameCell
{
  v10 = 0;
  objc_opt_class();
  v9.receiver = self;
  v9.super_class = AAUISignInViewControllerAccessibility;
  _usernameCell = [(AAUISignInViewControllerAccessibility *)&v9 _usernameCell];
  v4 = __UIAccessibilityCastAsClass();

  if (v10 == 1)
  {
    abort();
  }

  [v4 setIsAccessibilityElement:0];
  editableTextField = [v4 editableTextField];
  textLabel = [v4 textLabel];
  accessibilityLabel = [textLabel accessibilityLabel];
  [editableTextField setAccessibilityLabel:accessibilityLabel];

  return v4;
}

- (id)_passwordCell
{
  v11 = 0;
  objc_opt_class();
  v10.receiver = self;
  v10.super_class = AAUISignInViewControllerAccessibility;
  _passwordCell = [(AAUISignInViewControllerAccessibility *)&v10 _passwordCell];
  v4 = __UIAccessibilityCastAsClass();

  if (v11 == 1)
  {
    abort();
  }

  textLabel = [v4 textLabel];
  [textLabel setIsAccessibilityElement:0];

  editableTextField = [v4 editableTextField];
  textLabel2 = [v4 textLabel];
  accessibilityLabel = [textLabel2 accessibilityLabel];
  [editableTextField setAccessibilityLabel:accessibilityLabel];

  return v4;
}

@end
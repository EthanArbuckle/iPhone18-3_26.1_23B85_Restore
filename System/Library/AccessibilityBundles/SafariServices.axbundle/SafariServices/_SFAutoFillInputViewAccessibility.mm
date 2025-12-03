@interface _SFAutoFillInputViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (_SFAutoFillInputViewAccessibility)initWithHostString:(id)string credentialSource:(id)source suggestion:(id)suggestion customTitle:(id)title;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _SFAutoFillInputViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_SFAutoFillInputView" hasInstanceMethod:@"initWithHostString:credentialSource:suggestion:customTitle:" withFullSignature:{"@", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"_SFAutoFillInputView" hasInstanceVariable:@"_keyboardButton" withType:"UIButton"];
  [validationsCopy validateClass:@"_SFAutoFillInputView" hasInstanceVariable:@"_otherPasswordsButton" withType:"UIButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = _SFAutoFillInputViewAccessibility;
  [(_SFAutoFillInputViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(_SFAutoFillInputViewAccessibility *)self safeValueForKey:@"_keyboardButton"];
  v4 = accessibilityUIKitLocalizedString();
  [v3 setAccessibilityLabel:v4];

  v5 = [(_SFAutoFillInputViewAccessibility *)self safeValueForKey:@"_otherPasswordsButton"];
  v6 = accessibilitySafariServicesLocalizedString(@"other.passwords");
  [v5 setAccessibilityLabel:v6];
}

- (id)accessibilityElements
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  _accessibilitySubviews = [v2 _accessibilitySubviews];

  v4 = [_accessibilitySubviews sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];

  return v4;
}

- (_SFAutoFillInputViewAccessibility)initWithHostString:(id)string credentialSource:(id)source suggestion:(id)suggestion customTitle:(id)title
{
  v8.receiver = self;
  v8.super_class = _SFAutoFillInputViewAccessibility;
  v6 = [(_SFAutoFillInputViewAccessibility *)&v8 initWithHostString:string credentialSource:source suggestion:suggestion customTitle:title];
  [(_SFAutoFillInputViewAccessibility *)v6 _accessibilityLoadAccessibilityInformation];

  return v6;
}

@end
@interface _SFAutoFillInputViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (_SFAutoFillInputViewAccessibility)initWithHostString:(id)a3 credentialSource:(id)a4 suggestion:(id)a5 customTitle:(id)a6;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _SFAutoFillInputViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_SFAutoFillInputView" hasInstanceMethod:@"initWithHostString:credentialSource:suggestion:customTitle:" withFullSignature:{"@", "@", "@", "@", 0}];
  [v3 validateClass:@"_SFAutoFillInputView" hasInstanceVariable:@"_keyboardButton" withType:"UIButton"];
  [v3 validateClass:@"_SFAutoFillInputView" hasInstanceVariable:@"_otherPasswordsButton" withType:"UIButton"];
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
  v3 = [v2 _accessibilitySubviews];

  v4 = [v3 sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];

  return v4;
}

- (_SFAutoFillInputViewAccessibility)initWithHostString:(id)a3 credentialSource:(id)a4 suggestion:(id)a5 customTitle:(id)a6
{
  v8.receiver = self;
  v8.super_class = _SFAutoFillInputViewAccessibility;
  v6 = [(_SFAutoFillInputViewAccessibility *)&v8 initWithHostString:a3 credentialSource:a4 suggestion:a5 customTitle:a6];
  [(_SFAutoFillInputViewAccessibility *)v6 _accessibilityLoadAccessibilityInformation];

  return v6;
}

@end
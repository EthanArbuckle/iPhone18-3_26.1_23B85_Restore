@interface PSFooterHyperlinkViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (PSFooterHyperlinkViewAccessibility)initWithSpecifier:(id)specifier;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PSFooterHyperlinkViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PSFooterHyperlinkView" hasInstanceVariable:@"_textView" withType:"UITextView"];
  [validationsCopy validateClass:@"PSFooterHyperlinkView" hasInstanceMethod:@"initWithSpecifier:" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PSFooterHyperlinkViewAccessibility;
  [(PSFooterHyperlinkViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PSFooterHyperlinkViewAccessibility *)self safeValueForKey:@"_textView"];
  [v3 _accessibilitySetTextViewShouldBreakUpParagraphs:1];
}

- (PSFooterHyperlinkViewAccessibility)initWithSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = PSFooterHyperlinkViewAccessibility;
  v3 = [(PSFooterHyperlinkViewAccessibility *)&v5 initWithSpecifier:specifier];
  [(PSFooterHyperlinkViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end
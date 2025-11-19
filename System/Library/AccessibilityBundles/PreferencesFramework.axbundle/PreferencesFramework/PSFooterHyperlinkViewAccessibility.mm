@interface PSFooterHyperlinkViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (PSFooterHyperlinkViewAccessibility)initWithSpecifier:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PSFooterHyperlinkViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PSFooterHyperlinkView" hasInstanceVariable:@"_textView" withType:"UITextView"];
  [v3 validateClass:@"PSFooterHyperlinkView" hasInstanceMethod:@"initWithSpecifier:" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PSFooterHyperlinkViewAccessibility;
  [(PSFooterHyperlinkViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PSFooterHyperlinkViewAccessibility *)self safeValueForKey:@"_textView"];
  [v3 _accessibilitySetTextViewShouldBreakUpParagraphs:1];
}

- (PSFooterHyperlinkViewAccessibility)initWithSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = PSFooterHyperlinkViewAccessibility;
  v3 = [(PSFooterHyperlinkViewAccessibility *)&v5 initWithSpecifier:a3];
  [(PSFooterHyperlinkViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end
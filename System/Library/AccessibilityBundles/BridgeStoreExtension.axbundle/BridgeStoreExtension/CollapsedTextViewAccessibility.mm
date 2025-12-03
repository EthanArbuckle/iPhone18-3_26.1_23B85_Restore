@interface CollapsedTextViewAccessibility
- (id)accessibilityLabel;
@end

@implementation CollapsedTextViewAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(CollapsedTextViewAccessibility *)self safeValueForKey:@"accessibilityTextView"];
  v4 = __UIAccessibilityCastAsClass();

  text = [v4 text];

  return text;
}

@end
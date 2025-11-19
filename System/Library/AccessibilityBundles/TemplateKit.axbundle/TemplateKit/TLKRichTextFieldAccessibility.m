@interface TLKRichTextFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axLabelForElementIfVisible:(id)a3;
- (id)accessibilityLabel;
@end

@implementation TLKRichTextFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TLKRichTextField" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKRichTextField" hasInstanceMethod:@"starRatingView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(TLKRichTextFieldAccessibility *)self safeValueForKey:@"textLabel"];
  v4 = [(TLKRichTextFieldAccessibility *)self _axLabelForElementIfVisible:v3];
  v5 = [(TLKRichTextFieldAccessibility *)self safeValueForKey:@"starRatingView"];
  v8 = [(TLKRichTextFieldAccessibility *)self _axLabelForElementIfVisible:v5];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)_axLabelForElementIfVisible:(id)a3
{
  v3 = a3;
  if ([v3 _accessibilityViewIsVisible])
  {
    v4 = [v3 accessibilityLabel];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
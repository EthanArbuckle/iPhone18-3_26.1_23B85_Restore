@interface TLKRichTextFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axLabelForElementIfVisible:(id)visible;
- (id)accessibilityLabel;
@end

@implementation TLKRichTextFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TLKRichTextField" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TLKRichTextField" hasInstanceMethod:@"starRatingView" withFullSignature:{"@", 0}];
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

- (id)_axLabelForElementIfVisible:(id)visible
{
  visibleCopy = visible;
  if ([visibleCopy _accessibilityViewIsVisible])
  {
    accessibilityLabel = [visibleCopy accessibilityLabel];
  }

  else
  {
    accessibilityLabel = 0;
  }

  return accessibilityLabel;
}

@end
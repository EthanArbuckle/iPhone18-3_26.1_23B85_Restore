@interface SiriAcousticIdHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SiriAcousticIdHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SiriAcousticIdHeaderView" hasInstanceVariable:@"_openButton" withType:"SKUIItemOfferButton"];
  [validationsCopy validateClass:@"SiriAcousticIdHeaderView" hasInstanceMethod:@"songTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SiriAcousticIdHeaderView" hasInstanceMethod:@"artistString" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SiriAcousticIdHeaderViewAccessibility *)self safeValueForKey:@"songTitle"];
  v6 = [(SiriAcousticIdHeaderViewAccessibility *)self safeValueForKey:@"artistString"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (id)accessibilityHint
{
  v3 = [(SiriAcousticIdHeaderViewAccessibility *)self safeValueForKey:@"_openButton"];
  superview = [v3 superview];

  if (superview)
  {
    accessibilityHint = accessibilityLocalizedString(@"buy.button.hint");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SiriAcousticIdHeaderViewAccessibility;
    accessibilityHint = [(SiriAcousticIdHeaderViewAccessibility *)&v7 accessibilityHint];
  }

  return accessibilityHint;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(SiriAcousticIdHeaderViewAccessibility *)self safeValueForKey:@"_openButton"];
  superview = [v2 superview];

  v4 = MEMORY[0x29EDC7FA0];
  if (superview)
  {
    v4 = MEMORY[0x29EDC7F70];
  }

  return *v4;
}

@end
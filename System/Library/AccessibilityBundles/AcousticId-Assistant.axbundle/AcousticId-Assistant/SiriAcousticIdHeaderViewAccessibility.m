@interface SiriAcousticIdHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SiriAcousticIdHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SiriAcousticIdHeaderView" hasInstanceVariable:@"_openButton" withType:"SKUIItemOfferButton"];
  [v3 validateClass:@"SiriAcousticIdHeaderView" hasInstanceMethod:@"songTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SiriAcousticIdHeaderView" hasInstanceMethod:@"artistString" withFullSignature:{"@", 0}];
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
  v4 = [v3 superview];

  if (v4)
  {
    v5 = accessibilityLocalizedString(@"buy.button.hint");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SiriAcousticIdHeaderViewAccessibility;
    v5 = [(SiriAcousticIdHeaderViewAccessibility *)&v7 accessibilityHint];
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(SiriAcousticIdHeaderViewAccessibility *)self safeValueForKey:@"_openButton"];
  v3 = [v2 superview];

  v4 = MEMORY[0x29EDC7FA0];
  if (v3)
  {
    v4 = MEMORY[0x29EDC7F70];
  }

  return *v4;
}

@end
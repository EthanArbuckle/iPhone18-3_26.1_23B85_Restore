@interface SiriAcousticIdAttributionFooterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (SiriAcousticIdAttributionFooterViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SiriAcousticIdAttributionFooterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SiriAcousticIdAttributionFooterView" hasInstanceMethod:@"attributionButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SiriAcousticIdAttributionFooterView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = SiriAcousticIdAttributionFooterViewAccessibility;
  [(SiriAcousticIdAttributionFooterViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(SiriAcousticIdAttributionFooterViewAccessibility *)self safeValueForKey:@"attributionButton"];
  v4 = accessibilityLocalizedString(@"attribution.button.title");
  [v3 setAccessibilityLabel:v4];

  v5 = accessibilityLocalizedString(@"attribution.button.hint");
  [v3 setAccessibilityHint:v5];
}

- (SiriAcousticIdAttributionFooterViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = SiriAcousticIdAttributionFooterViewAccessibility;
  v3 = [(SiriAcousticIdAttributionFooterViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SiriAcousticIdAttributionFooterViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end
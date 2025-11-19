@interface PLExpandedPlatterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation PLExpandedPlatterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateProtocol:@"PLExpandedPlatter" hasRequiredInstanceMethod:@"dismissControl"];
  [v3 validateClass:@"PLExpandedPlatterView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PLExpandedPlatterViewAccessibility;
  [(PLExpandedPlatterViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(PLExpandedPlatterViewAccessibility *)self safeValueForKey:@"_dismissControl"];
  v4 = accessibilityLocalizedString(@"dismiss");
  [v3 setAccessibilityLabel:v4];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PLExpandedPlatterViewAccessibility;
  [(PLExpandedPlatterViewAccessibility *)&v3 layoutSubviews];
  [(PLExpandedPlatterViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end
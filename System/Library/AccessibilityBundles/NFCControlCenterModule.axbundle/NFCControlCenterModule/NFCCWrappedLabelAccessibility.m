@interface NFCCWrappedLabelAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation NFCCWrappedLabelAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = NFCCWrappedLabelAccessibility;
  [(NFCCWrappedLabelAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(NFCCWrappedLabelAccessibility *)self safeValueForKey:@"label"];
  [v3 setIsAccessibilityElement:0];
}

- (id)accessibilityLabel
{
  v2 = [(NFCCWrappedLabelAccessibility *)self safeValueForKey:@"label"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(NFCCWrappedLabelAccessibility *)self safeValueForKey:@"label"];
  v3 = [v2 accessibilityTraits];

  return v3;
}

@end
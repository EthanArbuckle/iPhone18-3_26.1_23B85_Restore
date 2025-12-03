@interface AERoundedCornerButtonAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AERoundedCornerButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(AERoundedCornerButtonAccessibility *)self safeValueForKey:@"_label"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AERoundedCornerButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(AERoundedCornerButtonAccessibility *)&v3 accessibilityTraits];
}

@end
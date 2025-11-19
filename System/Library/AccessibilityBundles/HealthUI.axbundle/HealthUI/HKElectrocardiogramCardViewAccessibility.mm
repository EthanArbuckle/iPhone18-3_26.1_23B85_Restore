@interface HKElectrocardiogramCardViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation HKElectrocardiogramCardViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HKElectrocardiogramCardViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(HKElectrocardiogramCardViewAccessibility *)&v3 accessibilityTraits];
}

@end
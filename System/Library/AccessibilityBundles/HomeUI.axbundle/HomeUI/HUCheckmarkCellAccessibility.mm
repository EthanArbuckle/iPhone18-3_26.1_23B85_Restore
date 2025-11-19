@interface HUCheckmarkCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation HUCheckmarkCellAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = HUCheckmarkCellAccessibility;
  v3 = [(HUCheckmarkCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(HUCheckmarkCellAccessibility *)self safeBoolForKey:@"_checked"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

@end
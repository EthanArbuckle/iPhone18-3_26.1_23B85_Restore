@interface HUIconCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation HUIconCellAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = HUIconCellAccessibility;
  v3 = [(HUIconCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(HUIconCellAccessibility *)self safeBoolForKey:@"isDisabled"];
  v5 = *MEMORY[0x29EDC7FA8];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

@end
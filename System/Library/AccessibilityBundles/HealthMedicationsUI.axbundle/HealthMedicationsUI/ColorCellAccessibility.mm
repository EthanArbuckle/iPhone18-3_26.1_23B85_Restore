@interface ColorCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation ColorCellAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = ColorCellAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(ColorCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(ColorCellAccessibility *)self safeBoolForKey:@"_accessibilityCellIsSelected"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

@end
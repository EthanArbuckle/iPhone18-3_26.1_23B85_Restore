@interface HKPopulationNormsClassificationCollectionViewCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation HKPopulationNormsClassificationCollectionViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = HKPopulationNormsClassificationCollectionViewCellAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(HKPopulationNormsClassificationCollectionViewCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(HKPopulationNormsClassificationCollectionViewCellAccessibility *)self safeBoolForKey:@"isHighlighted"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

@end
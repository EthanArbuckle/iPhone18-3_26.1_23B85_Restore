@interface IntelligentCallScreeningMenuCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation IntelligentCallScreeningMenuCellAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = IntelligentCallScreeningMenuCellAccessibility;
  v3 = [(IntelligentCallScreeningMenuCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(IntelligentCallScreeningMenuCellAccessibility *)self safeBoolForKey:@"hasCheckmark"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

@end
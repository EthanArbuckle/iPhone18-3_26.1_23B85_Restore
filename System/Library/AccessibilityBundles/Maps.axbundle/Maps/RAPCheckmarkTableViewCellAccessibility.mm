@interface RAPCheckmarkTableViewCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation RAPCheckmarkTableViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3 = [(RAPCheckmarkTableViewCellAccessibility *)self safeBoolForKey:@"isChecked"];
  v7.receiver = self;
  v7.super_class = RAPCheckmarkTableViewCellAccessibility;
  accessibilityTraits = [(RAPCheckmarkTableViewCellAccessibility *)&v7 accessibilityTraits];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v5 = 0;
  }

  return *MEMORY[0x29EDC7F70] | accessibilityTraits | v5;
}

@end
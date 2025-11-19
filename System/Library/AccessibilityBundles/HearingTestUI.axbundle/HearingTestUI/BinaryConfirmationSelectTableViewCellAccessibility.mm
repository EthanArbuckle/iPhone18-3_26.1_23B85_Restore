@interface BinaryConfirmationSelectTableViewCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation BinaryConfirmationSelectTableViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  if ([(BinaryConfirmationSelectTableViewCellAccessibility *)self safeSwiftBoolForKey:@"accessoryIsSelected"])
  {
    v5.receiver = self;
    v5.super_class = BinaryConfirmationSelectTableViewCellAccessibility;
    return *MEMORY[0x29EDC7FC0] | [(BinaryConfirmationSelectTableViewCellAccessibility *)&v5 accessibilityTraits];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = BinaryConfirmationSelectTableViewCellAccessibility;
    return [(BinaryConfirmationSelectTableViewCellAccessibility *)&v4 accessibilityTraits];
  }
}

@end
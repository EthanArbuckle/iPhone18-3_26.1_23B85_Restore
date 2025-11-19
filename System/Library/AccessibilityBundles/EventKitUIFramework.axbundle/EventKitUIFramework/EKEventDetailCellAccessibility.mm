@interface EKEventDetailCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation EKEventDetailCellAccessibility

- (unint64_t)accessibilityTraits
{
  if ([(EKEventDetailCellAccessibility *)self accessoryType]== 1)
  {
    return *MEMORY[0x29EDC7F70];
  }

  v4.receiver = self;
  v4.super_class = EKEventDetailCellAccessibility;
  return [(EKEventDetailCellAccessibility *)&v4 accessibilityTraits];
}

@end
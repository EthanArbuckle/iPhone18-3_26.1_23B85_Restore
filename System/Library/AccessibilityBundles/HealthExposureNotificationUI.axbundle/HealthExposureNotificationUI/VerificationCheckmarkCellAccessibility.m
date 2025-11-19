@interface VerificationCheckmarkCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation VerificationCheckmarkCellAccessibility

- (unint64_t)accessibilityTraits
{
  v2 = [(VerificationCheckmarkCellAccessibility *)self safeBoolForKey:@"isChecked"];
  v3 = *MEMORY[0x29EDC7FC0];
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | *MEMORY[0x29EDC7F70];
}

@end
@interface DataTypeLoggingCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation DataTypeLoggingCellAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = DataTypeLoggingCellAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(DataTypeLoggingCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(DataTypeLoggingCellAccessibility *)self safeBoolForKey:@"axIsChecked"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

@end
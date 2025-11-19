@interface DataTypeDetailDisclosureCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation DataTypeDetailDisclosureCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = DataTypeDetailDisclosureCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(DataTypeDetailDisclosureCellAccessibility *)&v3 accessibilityTraits];
}

@end
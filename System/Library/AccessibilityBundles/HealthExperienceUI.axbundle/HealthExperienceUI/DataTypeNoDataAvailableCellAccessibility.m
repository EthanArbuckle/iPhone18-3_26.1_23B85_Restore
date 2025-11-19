@interface DataTypeNoDataAvailableCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation DataTypeNoDataAvailableCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = DataTypeNoDataAvailableCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(DataTypeNoDataAvailableCellAccessibility *)&v3 accessibilityTraits];
}

@end
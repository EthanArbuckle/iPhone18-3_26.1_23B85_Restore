@interface MyLibraryEntryCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation MyLibraryEntryCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MyLibraryEntryCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(MyLibraryEntryCellAccessibility *)&v3 accessibilityTraits];
}

@end
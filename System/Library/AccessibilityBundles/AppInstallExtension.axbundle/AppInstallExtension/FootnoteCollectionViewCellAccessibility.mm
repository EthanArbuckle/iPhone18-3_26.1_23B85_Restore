@interface FootnoteCollectionViewCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation FootnoteCollectionViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = FootnoteCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(FootnoteCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end
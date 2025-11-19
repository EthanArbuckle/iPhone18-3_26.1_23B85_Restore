@interface CollectionAccessoryViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation CollectionAccessoryViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CollectionAccessoryViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CollectionAccessoryViewAccessibility *)&v3 accessibilityTraits];
}

@end
@interface TLKStarsViewAccessibility
- (id)accessibilityLabel;
@end

@implementation TLKStarsViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(TLKStarsViewAccessibility *)self safeCGFloatForKey:@"starRating"];

  return MEMORY[0x2A1C69EC0](v2);
}

@end
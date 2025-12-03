@interface TransportTypeSegmentAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation TransportTypeSegmentAccessibility

- (unint64_t)accessibilityTraits
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = *MEMORY[0x29EDC7F70];
  isSelected = [v2 isSelected];

  v5 = *MEMORY[0x29EDC7FC0];
  if (!isSelected)
  {
    v5 = 0;
  }

  return v5 | v3;
}

@end
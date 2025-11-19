@interface ASExchangeIdTextViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation ASExchangeIdTextViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ASExchangeIdTextViewAccessibility;
  return [(ASExchangeIdTextViewAccessibility *)&v3 accessibilityTraits]& ~*MEMORY[0x29EDC7F70];
}

@end
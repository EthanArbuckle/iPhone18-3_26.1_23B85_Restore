@interface PMRoundProgressViewAccessibility
- (id)accessibilityValue;
@end

@implementation PMRoundProgressViewAccessibility

- (id)accessibilityValue
{
  [(PMRoundProgressViewAccessibility *)self safeCGFloatForKey:@"progress"];

  return AXFormatFloatWithPercentage();
}

@end
@interface _TVProgressViewAccessibility
- (id)accessibilityValue;
@end

@implementation _TVProgressViewAccessibility

- (id)accessibilityValue
{
  [(_TVProgressViewAccessibility *)self safeCGFloatForKey:@"progress"];
  v2.n128_f32[0] = v2.n128_f64[0];

  return MEMORY[0x2A1C5E4D0](0, v2);
}

@end
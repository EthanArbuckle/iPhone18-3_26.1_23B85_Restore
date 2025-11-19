@interface DOCProgressIndicatorViewAccessibility
- (id)accessibilityValue;
@end

@implementation DOCProgressIndicatorViewAccessibility

- (id)accessibilityValue
{
  [(DOCProgressIndicatorViewAccessibility *)self safeDoubleForKey:@"fractionCompleted"];
  v2.n128_f32[0] = v2.n128_f64[0];

  return MEMORY[0x2A1C5E4D0](0, v2);
}

@end
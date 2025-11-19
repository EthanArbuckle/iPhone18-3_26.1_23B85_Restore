@interface SiriUIReusableHeaderViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation SiriUIReusableHeaderViewAccessibility

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F80];
  v3 = [(SiriUIReusableHeaderViewAccessibility *)self safeValueForKey:@"snippetViewController"];
  v4 = [v3 safeValueForKey:@"headerPunchOut"];

  v5 = *MEMORY[0x29EDC7F70];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v2;
}

@end
@interface SiriUIBorderedLabelViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SiriUIBorderedLabelViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(SiriUIBorderedLabelViewAccessibility *)self safeValueForKey:@"_ratingLabel"];
  v3 = [v2 accessibilityLabel];

  if ([v3 length])
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = accessibilityLocalizedString(@"movie.rating");
    v6 = [v4 stringWithFormat:v5, v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
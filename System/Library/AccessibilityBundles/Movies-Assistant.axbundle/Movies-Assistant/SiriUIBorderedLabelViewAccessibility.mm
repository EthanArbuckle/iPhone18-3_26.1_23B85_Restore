@interface SiriUIBorderedLabelViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SiriUIBorderedLabelViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(SiriUIBorderedLabelViewAccessibility *)self safeValueForKey:@"_ratingLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = accessibilityLocalizedString(@"movie.rating");
    v6 = [v4 stringWithFormat:v5, accessibilityLabel];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
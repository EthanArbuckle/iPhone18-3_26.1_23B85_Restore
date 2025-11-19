@interface SiriGKAttributionViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SiriGKAttributionViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(SiriGKAttributionViewAccessibility *)self safeValueForKey:@"command"];
  v3 = [v2 safeValueForKey:@"punchOutUri"];
  v4 = [v3 safeValueForKey:@"host"];

  if ([v4 length])
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityLocalizedString(@"providedby.format");
    v7 = [v5 stringWithFormat:v6, v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
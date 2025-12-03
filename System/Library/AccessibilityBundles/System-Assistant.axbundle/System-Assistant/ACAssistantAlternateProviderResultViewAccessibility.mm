@interface ACAssistantAlternateProviderResultViewAccessibility
- (id)accessibilityLabel;
@end

@implementation ACAssistantAlternateProviderResultViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(ACAssistantAlternateProviderResultViewAccessibility *)self safeValueForKey:@"_providerNameLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = accessibilityLocalizedString(@"providedby.format");
    v6 = [v4 stringWithFormat:v5, accessibilityLabel];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
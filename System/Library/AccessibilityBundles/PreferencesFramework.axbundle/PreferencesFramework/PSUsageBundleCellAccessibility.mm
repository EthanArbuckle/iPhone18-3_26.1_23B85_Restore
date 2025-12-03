@interface PSUsageBundleCellAccessibility
- (id)accessibilityLabel;
@end

@implementation PSUsageBundleCellAccessibility

- (id)accessibilityLabel
{
  v10.receiver = self;
  v10.super_class = PSUsageBundleCellAccessibility;
  accessibilityLabel = [(PSUsageBundleCellAccessibility *)&v10 accessibilityLabel];
  if (![accessibilityLabel length])
  {
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    objc_opt_class();
    specifier = [v3 specifier];
    v5 = [specifier propertyForKey:*MEMORY[0x29EDC6360]];
    v6 = __UIAccessibilityCastAsClass();

    bundleIdentifier = [v6 bundleIdentifier];
    LODWORD(v5) = [bundleIdentifier hasPrefix:@"com.apple.Music"];

    if (v5)
    {
      v8 = accessibilityLocalizedString(@"usage.category.music");

      accessibilityLabel = v8;
    }
  }

  return accessibilityLabel;
}

@end
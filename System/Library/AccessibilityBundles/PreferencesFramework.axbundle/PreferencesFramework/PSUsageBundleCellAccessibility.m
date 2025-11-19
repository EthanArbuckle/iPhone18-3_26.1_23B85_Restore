@interface PSUsageBundleCellAccessibility
- (id)accessibilityLabel;
@end

@implementation PSUsageBundleCellAccessibility

- (id)accessibilityLabel
{
  v10.receiver = self;
  v10.super_class = PSUsageBundleCellAccessibility;
  v2 = [(PSUsageBundleCellAccessibility *)&v10 accessibilityLabel];
  if (![v2 length])
  {
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    objc_opt_class();
    v4 = [v3 specifier];
    v5 = [v4 propertyForKey:*MEMORY[0x29EDC6360]];
    v6 = __UIAccessibilityCastAsClass();

    v7 = [v6 bundleIdentifier];
    LODWORD(v5) = [v7 hasPrefix:@"com.apple.Music"];

    if (v5)
    {
      v8 = accessibilityLocalizedString(@"usage.category.music");

      v2 = v8;
    }
  }

  return v2;
}

@end
@interface SUBannerCellConfigurationAccessibility
- (id)accessibilityTableViewCellText;
@end

@implementation SUBannerCellConfigurationAccessibility

- (id)accessibilityTableViewCellText
{
  v2 = [MEMORY[0x29EDB9F48] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 hasSuffix:@"AppStore"];

  if (v4)
  {
    v5 = @"featured.app";
  }

  else
  {
    v5 = @"featured.album";
  }

  v6 = accessibilityLocalizedString(v5);

  return v6;
}

@end
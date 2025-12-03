@interface SUBannerCellConfigurationAccessibility
- (id)accessibilityTableViewCellText;
@end

@implementation SUBannerCellConfigurationAccessibility

- (id)accessibilityTableViewCellText
{
  mainBundle = [MEMORY[0x29EDB9F48] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier hasSuffix:@"AppStore"];

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
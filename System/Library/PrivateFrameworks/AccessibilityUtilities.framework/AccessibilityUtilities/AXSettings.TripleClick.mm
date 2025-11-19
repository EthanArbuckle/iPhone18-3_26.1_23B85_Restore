@interface AXSettings.TripleClick
- (NSArray)accessibilityHelpBannerTemporaryTripleClickOptions;
- (void)setAccessibilityHelpBannerTemporaryTripleClickOptions:(id)a3;
@end

@implementation AXSettings.TripleClick

- (NSArray)accessibilityHelpBannerTemporaryTripleClickOptions
{
  v2 = self;
  v3 = AXSettings.TripleClick.accessibilityHelpBannerTemporaryTripleClickOptions.getter();

  if (v3)
  {
    v4 = sub_18B2C99D4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAccessibilityHelpBannerTemporaryTripleClickOptions:(id)a3
{
  if (a3)
  {
    v4 = sub_18B2C99F4();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  AXSettings.TripleClick.accessibilityHelpBannerTemporaryTripleClickOptions.setter(v4);
}

@end
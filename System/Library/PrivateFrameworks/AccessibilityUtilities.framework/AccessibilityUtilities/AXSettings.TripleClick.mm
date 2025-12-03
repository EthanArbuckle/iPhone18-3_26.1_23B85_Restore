@interface AXSettings.TripleClick
- (NSArray)accessibilityHelpBannerTemporaryTripleClickOptions;
- (void)setAccessibilityHelpBannerTemporaryTripleClickOptions:(id)options;
@end

@implementation AXSettings.TripleClick

- (NSArray)accessibilityHelpBannerTemporaryTripleClickOptions
{
  selfCopy = self;
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

- (void)setAccessibilityHelpBannerTemporaryTripleClickOptions:(id)options
{
  if (options)
  {
    v4 = sub_18B2C99F4();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  AXSettings.TripleClick.accessibilityHelpBannerTemporaryTripleClickOptions.setter(v4);
}

@end
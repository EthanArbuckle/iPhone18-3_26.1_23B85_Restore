@interface BLSHLocalOnlySimplePlatformProvider
- (BLSHLocalOnlySimplePlatformProvider)initWithConfiguration:(id)configuration;
- (id)createInactiveEnvironmentSession;
@end

@implementation BLSHLocalOnlySimplePlatformProvider

- (BLSHLocalOnlySimplePlatformProvider)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = BLSHLocalOnlySimplePlatformProvider;
  v5 = [(BLSHLocalOnlySimplePlatformProvider *)&v11 init];
  if (v5)
  {
    [configurationCopy fadeInDuration];
    v5->_backlightFadeInDuration = v6;
    [configurationCopy fadeOutDuration];
    v5->_backlightFadeOutDuration = v7;
    [configurationCopy dimmingDuration];
    v5->_backlightDimmingDuration = v8;
    [configurationCopy dimmedFactor];
    v5->_backlightDimmedFactor = v9;
  }

  return v5;
}

- (id)createInactiveEnvironmentSession
{
  v2 = [BLSHBacklightEnvironmentPresentation alloc];
  v3 = [(BLSHBacklightEnvironmentPresentation *)v2 initWithPresentationEntries:MEMORY[0x277CBEBF8] flipbookContext:0 expirationDate:0];
  v4 = [BLSHBacklightInactiveEnvironmentSession sessionWithPresentation:v3];

  return v4;
}

@end
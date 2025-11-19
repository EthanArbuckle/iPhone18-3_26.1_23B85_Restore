@interface BLSHLocalOnlySimplePlatformProvider
- (BLSHLocalOnlySimplePlatformProvider)initWithConfiguration:(id)a3;
- (id)createInactiveEnvironmentSession;
@end

@implementation BLSHLocalOnlySimplePlatformProvider

- (BLSHLocalOnlySimplePlatformProvider)initWithConfiguration:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BLSHLocalOnlySimplePlatformProvider;
  v5 = [(BLSHLocalOnlySimplePlatformProvider *)&v11 init];
  if (v5)
  {
    [v4 fadeInDuration];
    v5->_backlightFadeInDuration = v6;
    [v4 fadeOutDuration];
    v5->_backlightFadeOutDuration = v7;
    [v4 dimmingDuration];
    v5->_backlightDimmingDuration = v8;
    [v4 dimmedFactor];
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
@interface INIntent(AssistantCardService)
- (id)acs_utteranceForCardService;
@end

@implementation INIntent(AssistantCardService)

- (id)acs_utteranceForCardService
{
  launchId = [self launchId];

  if (!launchId)
  {
    _title = [self _title];
    goto LABEL_10;
  }

  launchId2 = [self launchId];
  INExtractAppInfoFromSiriLaunchId();
  v4 = 0;

  v5 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v4];
  appState = [v5 appState];
  isValid = [appState isValid];

  if (isValid)
  {
    v8 = v5;
  }

  else
  {
    v8 = [MEMORY[0x277CC1E60] applicationProxyForSystemPlaceholder:v4];

    appState2 = [v8 appState];
    isValid2 = [appState2 isValid];

    if ((isValid2 & 1) == 0)
    {
      _title = [self _title];
      goto LABEL_9;
    }

    v5 = v8;
  }

  localizedName = [v5 localizedName];
  v13 = MEMORY[0x277CCACA8];
  _title2 = [self _title];
  _title = [v13 stringWithFormat:@"%@ using %@", _title2, localizedName];

LABEL_9:
LABEL_10:

  return _title;
}

@end
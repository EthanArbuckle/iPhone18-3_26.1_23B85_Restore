@interface _SFSecIdentityPreferencesController
+ (id)ephemeralSecIdentityPreferencesController;
+ (id)sharedPersistentSecIdentityPreferencesController;
- (BOOL)shouldUseOnlyAvailableIdentityWithoutPromptingForDomainAndPort:(id)port;
- (id)_initUsingEphemeralStorage:(BOOL)storage;
- (void)saveShouldUseOnlyAvailableIdentityWithoutPrompting:(BOOL)prompting forDomainAndPort:(id)port;
@end

@implementation _SFSecIdentityPreferencesController

+ (id)sharedPersistentSecIdentityPreferencesController
{
  if (sharedPersistentSecIdentityPreferencesController_onceToken != -1)
  {
    +[_SFSecIdentityPreferencesController sharedPersistentSecIdentityPreferencesController];
  }

  v3 = sharedPersistentSecIdentityPreferencesController_sharedInstance;

  return v3;
}

+ (id)ephemeralSecIdentityPreferencesController
{
  v2 = [[_SFSecIdentityPreferencesController alloc] _initUsingEphemeralStorage:1];

  return v2;
}

- (BOOL)shouldUseOnlyAvailableIdentityWithoutPromptingForDomainAndPort:(id)port
{
  domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting = self->_domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting;
  if (domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting)
  {
    portCopy = port;
    LOBYTE(domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting) = [(NSMutableSet *)domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting containsObject:portCopy];
  }

  else
  {
    v5 = MEMORY[0x1E695E000];
    portCopy2 = port;
    portCopy = [v5 safari_browserDefaults];
    v7 = [portCopy arrayForKey:*MEMORY[0x1E69B1F58]];
    domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting = [v7 containsObject:portCopy2];
  }

  return domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting;
}

- (void)saveShouldUseOnlyAvailableIdentityWithoutPrompting:(BOOL)prompting forDomainAndPort:(id)port
{
  promptingCopy = prompting;
  portCopy = port;
  domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting = self->_domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting;
  v15 = portCopy;
  if (domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting)
  {
    if (promptingCopy)
    {
      [(NSMutableSet *)domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting addObject:portCopy];
    }

    else
    {
      [(NSMutableSet *)domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting removeObject:portCopy];
    }
  }

  else
  {
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v9 = *MEMORY[0x1E69B1F58];
    v10 = [safari_browserDefaults arrayForKey:*MEMORY[0x1E69B1F58]];
    v11 = [v10 mutableCopy];
    v12 = v11;
    if (v11)
    {
      array = v11;
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    v14 = array;

    [v14 addObject:v15];
    [safari_browserDefaults setObject:v14 forKey:v9];
  }
}

- (id)_initUsingEphemeralStorage:(BOOL)storage
{
  storageCopy = storage;
  v9.receiver = self;
  v9.super_class = _SFSecIdentityPreferencesController;
  v4 = [(_SFSecIdentityPreferencesController *)&v9 init];
  if (v4)
  {
    if (storageCopy)
    {
      v5 = [MEMORY[0x1E695DFA8] set];
      domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting = v4->_domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting;
      v4->_domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting = v5;
    }

    v7 = v4;
  }

  return v4;
}

@end
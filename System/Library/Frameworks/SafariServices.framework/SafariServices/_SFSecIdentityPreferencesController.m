@interface _SFSecIdentityPreferencesController
+ (id)ephemeralSecIdentityPreferencesController;
+ (id)sharedPersistentSecIdentityPreferencesController;
- (BOOL)shouldUseOnlyAvailableIdentityWithoutPromptingForDomainAndPort:(id)a3;
- (id)_initUsingEphemeralStorage:(BOOL)a3;
- (void)saveShouldUseOnlyAvailableIdentityWithoutPrompting:(BOOL)a3 forDomainAndPort:(id)a4;
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

- (BOOL)shouldUseOnlyAvailableIdentityWithoutPromptingForDomainAndPort:(id)a3
{
  domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting = self->_domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting;
  if (domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting)
  {
    v4 = a3;
    LOBYTE(domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting) = [(NSMutableSet *)domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting containsObject:v4];
  }

  else
  {
    v5 = MEMORY[0x1E695E000];
    v6 = a3;
    v4 = [v5 safari_browserDefaults];
    v7 = [v4 arrayForKey:*MEMORY[0x1E69B1F58]];
    domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting = [v7 containsObject:v6];
  }

  return domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting;
}

- (void)saveShouldUseOnlyAvailableIdentityWithoutPrompting:(BOOL)a3 forDomainAndPort:(id)a4
{
  v4 = a3;
  v6 = a4;
  domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting = self->_domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting;
  v15 = v6;
  if (domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting)
  {
    if (v4)
    {
      [(NSMutableSet *)domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting addObject:v6];
    }

    else
    {
      [(NSMutableSet *)domainsAndPortsToUseOnlyAvailableIdentityWithoutPrompting removeObject:v6];
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v9 = *MEMORY[0x1E69B1F58];
    v10 = [v8 arrayForKey:*MEMORY[0x1E69B1F58]];
    v11 = [v10 mutableCopy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [MEMORY[0x1E695DF70] array];
    }

    v14 = v13;

    [v14 addObject:v15];
    [v8 setObject:v14 forKey:v9];
  }
}

- (id)_initUsingEphemeralStorage:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = _SFSecIdentityPreferencesController;
  v4 = [(_SFSecIdentityPreferencesController *)&v9 init];
  if (v4)
  {
    if (v3)
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
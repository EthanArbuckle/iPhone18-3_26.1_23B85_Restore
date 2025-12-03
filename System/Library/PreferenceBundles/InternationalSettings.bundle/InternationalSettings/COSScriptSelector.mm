@interface COSScriptSelector
- (COSScriptSelector)initWithInternationalController:(id)controller;
- (void)setSelectedScript:(id)script forLocale:(id)locale;
@end

@implementation COSScriptSelector

- (COSScriptSelector)initWithInternationalController:(id)controller
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = COSScriptSelector;
  v6 = [(COSScriptSelector *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internationalController, controller);
    v8 = [[NPSDomainAccessor alloc] initWithDomain:@".GlobalPreferences"];
    gizmoGlobalDomain = v7->_gizmoGlobalDomain;
    v7->_gizmoGlobalDomain = v8;

    v10 = objc_alloc_init(NPSManager);
    syncManager = v7->_syncManager;
    v7->_syncManager = v10;
  }

  return v7;
}

- (void)setSelectedScript:(id)script forLocale:(id)locale
{
  scriptCopy = script;
  preferenceKeysForSelectableScripts = [locale preferenceKeysForSelectableScripts];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [preferenceKeysForSelectableScripts countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(preferenceKeysForSelectableScripts);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [preferenceKeysForSelectableScripts objectForKeyedSubscript:v12];
        v14 = [v12 isEqualToString:scriptCopy];
        gizmoGlobalDomain = [(COSScriptSelector *)self gizmoGlobalDomain];
        v16 = gizmoGlobalDomain;
        if (v14)
        {
          v17 = &__kCFBooleanTrue;
        }

        else
        {
          v17 = 0;
        }

        [gizmoGlobalDomain setObject:v17 forKey:v13];
      }

      v9 = [preferenceKeysForSelectableScripts countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  gizmoGlobalDomain2 = [(COSScriptSelector *)self gizmoGlobalDomain];
  synchronize = [gizmoGlobalDomain2 synchronize];

  syncManager = [(COSScriptSelector *)self syncManager];
  gizmoGlobalDomain3 = [(COSScriptSelector *)self gizmoGlobalDomain];
  domain = [gizmoGlobalDomain3 domain];
  allValues = [preferenceKeysForSelectableScripts allValues];
  v24 = [NSSet setWithArray:allValues];
  [syncManager synchronizeNanoDomain:domain keys:v24];
}

@end
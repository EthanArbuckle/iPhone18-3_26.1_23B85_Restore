@interface COSScriptSelector
- (COSScriptSelector)initWithInternationalController:(id)a3;
- (void)setSelectedScript:(id)a3 forLocale:(id)a4;
@end

@implementation COSScriptSelector

- (COSScriptSelector)initWithInternationalController:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = COSScriptSelector;
  v6 = [(COSScriptSelector *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internationalController, a3);
    v8 = [[NPSDomainAccessor alloc] initWithDomain:@".GlobalPreferences"];
    gizmoGlobalDomain = v7->_gizmoGlobalDomain;
    v7->_gizmoGlobalDomain = v8;

    v10 = objc_alloc_init(NPSManager);
    syncManager = v7->_syncManager;
    v7->_syncManager = v10;
  }

  return v7;
}

- (void)setSelectedScript:(id)a3 forLocale:(id)a4
{
  v6 = a3;
  v7 = [a4 preferenceKeysForSelectableScripts];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        v14 = [v12 isEqualToString:v6];
        v15 = [(COSScriptSelector *)self gizmoGlobalDomain];
        v16 = v15;
        if (v14)
        {
          v17 = &__kCFBooleanTrue;
        }

        else
        {
          v17 = 0;
        }

        [v15 setObject:v17 forKey:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v18 = [(COSScriptSelector *)self gizmoGlobalDomain];
  v19 = [v18 synchronize];

  v20 = [(COSScriptSelector *)self syncManager];
  v21 = [(COSScriptSelector *)self gizmoGlobalDomain];
  v22 = [v21 domain];
  v23 = [v7 allValues];
  v24 = [NSSet setWithArray:v23];
  [v20 synchronizeNanoDomain:v22 keys:v24];
}

@end
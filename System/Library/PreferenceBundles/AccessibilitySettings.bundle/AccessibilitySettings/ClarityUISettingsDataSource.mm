@interface ClarityUISettingsDataSource
+ (id)applicationRecordForBundleIdentifier:(id)a3;
- (BOOL)_areSpecifiersLoaded;
- (BOOL)areSpecifiersLoaded;
- (BOOL)hasClaritySettingsIncludingSystem:(BOOL)a3;
- (ClarityUISettingsDataSource)initWithBundleIdentifier:(id)a3;
- (id)_bundle;
- (id)_claritySettingsBundlePath;
- (id)_claritySettingsPath;
- (id)_dataContainerURL;
- (id)_settingsBundle;
- (id)_systemPolicySpecifiers;
- (id)privacySpecifiers;
- (void)_areSpecifiersLoaded;
- (void)_loadSpecifiers;
- (void)loadSpecifiers;
- (void)reloadSpecifiers;
@end

@implementation ClarityUISettingsDataSource

- (ClarityUISettingsDataSource)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ClarityUISettingsDataSource;
  v5 = [(ClarityUISettingsDataSource *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v5->_bundleIdentifier = v4;
    v7 = [ClarityUISettingsDataSource applicationRecordForBundleIdentifier:v4];
    record = v6->_record;
    v6->_record = v7;

    v9 = [[ClarityUISystemPolicyForApp alloc] initWithBundleIdentifier:v4];
    clarityAppPolicy = v6->_clarityAppPolicy;
    v6->_clarityAppPolicy = v9;

    v6->_claritySupportedPolicyOptions = -142770180;
    v11 = objc_opt_new();
    systemSpecifiers = v6->_systemSpecifiers;
    v6->_systemSpecifiers = v11;

    v6->_specifiersLoaded = 0;
    v6->_systemSpecifiersLoaded = 0;
  }

  return v6;
}

+ (id)applicationRecordForBundleIdentifier:(id)a3
{
  v3 = a3;
  v9 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = CLFLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ClarityUIAppSelectionTableViewDataSource *)v3 _applicationRecordForIdentifier:v5, v6];
    }

    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (BOOL)hasClaritySettingsIncludingSystem:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(ClarityUISettingsDataSource *)self _systemPolicySpecifiers];
    v6 = [v5 count] != 0;

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = 0;
  }

  v7 = self->_record;
  if (v7)
  {
    v8 = [(ClarityUISettingsDataSource *)self _claritySettingsPath];
    if (v8 || ([(LSApplicationRecord *)v7 hasSettingsBundle]& 1) != 0)
    {
      v9 = [(ClarityUISettingsDataSource *)self _claritySettingsBundlePath];

      if (v3)
      {
        LOBYTE(v6) = (v9 != 0) | v6;
      }

      else
      {
        LOBYTE(v6) = v9 != 0;
      }

      v10 = CLFLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        bundleIdentifier = self->_bundleIdentifier;
        v14 = 138412802;
        v15 = bundleIdentifier;
        v16 = 1024;
        v17 = v6 & 1;
        v18 = 1024;
        v19 = v3;
        _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "Bundle Identifier: %@ - Has Clarity Settings: %d - Include System?: %d", &v14, 0x18u);
      }
    }

    else
    {
      v9 = CLFLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = self->_bundleIdentifier;
        v14 = 138412802;
        v15 = v13;
        v16 = 1024;
        v17 = v6;
        v18 = 1024;
        v19 = v3;
        _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "Bundle Identifier: %@ - Has Clarity Settings: %d - Include System?: %d", &v14, 0x18u);
      }
    }
  }

  else
  {
    v9 = CLFLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ClarityUISettingsDataSource hasClaritySettingsIncludingSystem:];
    }

    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (id)_bundle
{
  v2 = [(ClarityUISettingsDataSource *)self record];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 URL];
    v5 = [NSBundle bundleWithURL:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_settingsBundle
{
  v2 = [(ClarityUISettingsDataSource *)self record];
  v3 = v2;
  if (v2 && [v2 hasSettingsBundle])
  {
    v4 = [v3 URL];
    v5 = [v4 URLByAppendingPathComponent:@"Settings.bundle"];
    v6 = [NSBundle bundleWithURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_claritySettingsPath
{
  v3 = [(ClarityUISettingsDataSource *)self _bundle];
  v4 = [(ClarityUISettingsDataSource *)self _claritySettingsPathUsingBundle:v3];

  return v4;
}

- (id)_claritySettingsBundlePath
{
  v3 = [(ClarityUISettingsDataSource *)self _settingsBundle];
  v4 = [(ClarityUISettingsDataSource *)self _claritySettingsPathUsingBundle:v3];

  return v4;
}

- (id)_dataContainerURL
{
  v2 = [(ClarityUISettingsDataSource *)self record];
  v3 = [v2 dataContainerURL];

  return v3;
}

- (BOOL)_areSpecifiersLoaded
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = self->_systemSpecifiersLoaded && self->_specifiersLoaded;
  v4 = CLFLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(ClarityUISettingsDataSource *)v3 _areSpecifiersLoaded];
  }

  return v3;
}

- (BOOL)areSpecifiersLoaded
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(ClarityUISettingsDataSource *)self _areSpecifiersLoaded];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)reloadSpecifiers
{
  os_unfair_lock_lock(&self->_lock);
  self->_specifiersLoaded = 0;
  self->_systemSpecifiersLoaded = 0;
  v3 = CLFLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ClarityUISettingsDataSource reloadSpecifiers];
  }

  v4 = [(ClarityUISettingsDataSource *)self specifiers];
  [v4 removeAllObjects];

  v5 = [(ClarityUISettingsDataSource *)self systemSpecifiers];
  [v5 removeAllObjects];

  [(ClarityUISettingsDataSource *)self _loadSpecifiers];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)_systemPolicySpecifiers
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_systemSpecifiersLoaded)
  {
    v3 = self->_systemSpecifiers;
  }

  else
  {
    v4 = CLFLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [ClarityUISettingsDataSource _systemPolicySpecifiers];
    }

    [(NSMutableArray *)self->_systemSpecifiers removeAllObjects];
    v5 = [(ClarityUISystemPolicyForApp *)self->_clarityAppPolicy clarityPolicySpecifiers];
    [(NSMutableArray *)self->_systemSpecifiers addObjectsFromArray:v5];
    self->_systemSpecifiersLoaded = 1;
    v3 = self->_systemSpecifiers;
  }

  return v3;
}

- (void)_loadSpecifiers
{
  v2 = self;
  os_unfair_lock_assert_owner(&self->_lock);
  if (![(ClarityUISettingsDataSource *)v2 _areSpecifiersLoaded])
  {
    v3 = CLFLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [ClarityUISettingsDataSource _loadSpecifiers];
    }

    v4 = [(ClarityUISettingsDataSource *)v2 specifiers];
    v5 = [(ClarityUISettingsDataSource *)v2 _systemPolicySpecifiers];
    [v4 addObjectsFromArray:v5];
    v6 = [(ClarityUISettingsDataSource *)v2 _settingsBundle];
    if (v6)
    {
      v19 = v5;
      v20 = v4;
      [PSSpecifierDataSource loadSpecifiersFromPlist:@"ClarityUIRoot" inBundle:v6 target:v2 stringsTable:@"ClarityUIRoot.strings"];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      obj = v26 = 0u;
      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v7)
      {
        v8 = v7;
        v22 = *v24;
        v9 = PSStringsKey;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v24 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v23 + 1) + 8 * i);
            [v11 setProperty:@"ClarityUIRoot.strings" forKey:v9];
            [(ClarityUISettingsDataSource *)v2 _dataContainerURL];
            v13 = v12 = v2;
            [v11 setProperty:v13 forKey:@"AppContainerURL"];

            v14 = [v11 name];
            v15 = [v11 name];
            [v6 localizedStringForKey:v14 value:v15 table:@"ClarityUIRoot.strings"];
            v17 = v16 = v6;

            v2 = v12;
            [v11 setName:v17];

            v6 = v16;
          }

          v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v8);
      }

      v4 = v20;
      [v20 addObjectsFromArray:obj];
      v2->_specifiersLoaded = 1;

      v5 = v19;
    }

    else
    {
      v18 = CLFLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [ClarityUISettingsDataSource _loadSpecifiers];
      }

      v2->_specifiersLoaded = 1;
      v6 = 0;
    }
  }
}

- (void)loadSpecifiers
{
  os_unfair_lock_lock(&self->_lock);
  [(ClarityUISettingsDataSource *)self _loadSpecifiers];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)privacySpecifiers
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(ClarityUISystemPolicyForApp *)self->_clarityAppPolicy clarityPolicySpecifiers];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_areSpecifiersLoaded
{
  v3 = *(a2 + 32);
  v4[0] = 67109378;
  v4[1] = a1 & 1;
  v5 = 2112;
  v6 = v3;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "Specifiers are loaded: %d - Bundle Identifier: %@", v4, 0x12u);
}

@end
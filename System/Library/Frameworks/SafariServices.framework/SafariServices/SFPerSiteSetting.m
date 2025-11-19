@interface SFPerSiteSetting
- (BOOL)BOOLValue;
- (NSArray)actions;
- (NSString)displayName;
- (SFBrowsingAssistantPerSiteSettingObserving)observer;
- (SFPerSiteSetting)initWithPreference:(id)a3 manager:(id)a4 domain:(id)a5;
- (id)confirmationAlertForSwitchCell:(id)a3;
- (unint64_t)displayOption;
- (void)_setPreferenceValue:(id)a3;
- (void)setBoolValue:(BOOL)a3;
- (void)setObserver:(id)a3;
@end

@implementation SFPerSiteSetting

- (SFPerSiteSetting)initWithPreference:(id)a3 manager:(id)a4 domain:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(SFPerSiteSetting *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_domain, a5);
    objc_storeStrong(&v13->_manager, a4);
    objc_storeStrong(&v13->_preference, a3);
    objc_initWeak(&location, v13);
    preference = v13->_preference;
    domain = v13->_domain;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __54__SFPerSiteSetting_initWithPreference_manager_domain___block_invoke;
    v18[3] = &unk_1E8495BD0;
    objc_copyWeak(&v19, &location);
    [v10 getValueOfPreference:preference forDomain:domain withTimeout:0 usingBlock:v18];
    v16 = v13;
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __54__SFPerSiteSetting_initWithPreference_manager_domain___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SFPerSiteSetting_initWithPreference_manager_domain___block_invoke_2;
  v5[3] = &unk_1E8490298;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __54__SFPerSiteSetting_initWithPreference_manager_domain___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained + 1;
    if (!v3[1])
    {
      v6 = v3;
      objc_storeStrong(v4, *(a1 + 32));
      v5 = objc_loadWeakRetained(v6 + 5);
      [v5 perSiteSettingDidUpdate:v6];

      v3 = v6;
    }
  }
}

- (void)setObserver:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_observer, obj);
    [obj perSiteSettingDidUpdate:self];
  }
}

- (NSString)displayName
{
  v2 = [(SFPerSiteSetting *)self _displayInformation];
  v3 = [v2 localizedDisplayName];

  return v3;
}

- (unint64_t)displayOption
{
  v2 = [(SFPerSiteSetting *)self _displayInformation];
  v3 = [v2 displayOption];

  return v3 != 1;
}

- (NSArray)actions
{
  objc_initWeak(&location, self);
  v3 = [(WBSPerSitePreferenceManager *)self->_manager valuesForPreference:self->_preference];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__SFPerSiteSetting_actions__block_invoke;
  v6[3] = &unk_1E8495BF8;
  v6[4] = self;
  objc_copyWeak(&v7, &location);
  v4 = [v3 safari_mapObjectsUsingBlock:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

id __27__SFPerSiteSetting_actions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 24) localizedStringForValue:v3 inPreference:*(*(a1 + 32) + 32)];
  v5 = MEMORY[0x1E69DC628];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __27__SFPerSiteSetting_actions__block_invoke_2;
  v12 = &unk_1E848F4D0;
  objc_copyWeak(&v14, (a1 + 40));
  v6 = v3;
  v13 = v6;
  v7 = [v5 actionWithTitle:v4 image:0 identifier:0 handler:&v9];
  if ([v6 isEqual:{*(*(a1 + 32) + 8), v9, v10, v11, v12}])
  {
    [v7 setState:1];
  }

  if (([*(*(a1 + 32) + 24) isEditable] & 1) == 0)
  {
    [v7 setAttributes:{objc_msgSend(v7, "attributes") | 1}];
  }

  objc_destroyWeak(&v14);

  return v7;
}

void __27__SFPerSiteSetting_actions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setPreferenceValue:*(a1 + 32)];
}

- (void)_setPreferenceValue:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69C8810] sharedLogger];
  v6 = [(WBSPerSitePreference *)self->_preference identifier];
  [v5 didModifyPerSitePreferencesWithPreferenceIdentifier:v6 modificationLevel:1 type:0 method:1];

  cachedValue = self->_cachedValue;
  self->_cachedValue = v4;
  v8 = v4;

  objc_opt_class();
  v9 = (objc_opt_isKindOfClass() & 1) == 0;
  manager = self->_manager;
  preference = self->_preference;
  domain = self->_domain;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__SFPerSiteSetting__setPreferenceValue___block_invoke;
  v13[3] = &__block_descriptor_33_e8_v12__0B8l;
  v14 = v9;
  [(WBSPerSitePreferenceManager *)manager setValue:v8 ofPreference:preference forDomain:domain completionHandler:v13];
}

void __40__SFPerSiteSetting__setPreferenceValue___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 32) == 1)
    {
      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_63);
    }
  }
}

- (id)confirmationAlertForSwitchCell:(id)a3
{
  v4 = a3;
  v5 = [(WBSPerSitePreference *)self->_preference identifier];
  if (WBSIsEqual())
  {
    v6 = [v4 isOn];

    if ((v6 & 1) == 0)
    {
      v7 = MEMORY[0x1E69DC650];
      v8 = MEMORY[0x1E696AEC0];
      v9 = _WBSLocalizedString();
      v10 = [v8 localizedStringWithFormat:v9, self->_domain];
      v11 = _WBSLocalizedString();
      v12 = [v7 alertControllerWithTitle:v10 message:v11 preferredStyle:1];

      v13 = MEMORY[0x1E69DC648];
      v14 = _WBSLocalizedString();
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __51__SFPerSiteSetting_confirmationAlertForSwitchCell___block_invoke;
      v23[3] = &unk_1E848FBF8;
      v24 = v4;
      v15 = [v13 actionWithTitle:v14 style:1 handler:v23];
      [v12 addAction:v15];

      objc_initWeak(&location, self);
      v16 = MEMORY[0x1E69DC648];
      v17 = _WBSLocalizedString();
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __51__SFPerSiteSetting_confirmationAlertForSwitchCell___block_invoke_2;
      v20[3] = &unk_1E848FFD0;
      objc_copyWeak(&v21, &location);
      v18 = [v16 actionWithTitle:v17 style:2 handler:v20];
      [v12 addAction:v18];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = 0;
LABEL_6:

  return v12;
}

void __51__SFPerSiteSetting_confirmationAlertForSwitchCell___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setBoolValue:0];
}

- (BOOL)BOOLValue
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  cachedValue = self->_cachedValue;

  return [cachedValue BOOLValue];
}

- (void)setBoolValue:(BOOL)a3
{
  v4 = [_SFPerSitePreferencesUtilities preferenceValueForBoolValue:a3 preference:self->_preference preferenceManager:self->_manager];
  [(SFPerSiteSetting *)self _setPreferenceValue:v4];
}

- (SFBrowsingAssistantPerSiteSettingObserving)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end
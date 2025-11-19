@interface _SFAppInfoOverlayPreferenceManager
- (_SFAppInfoOverlayPreferenceManager)initWithPerSitePreferencesStore:(id)a3;
- (id)defaultPreferenceValueForPreferenceIfNotCustomized:(id)a3;
- (id)localizedStringForValue:(id)a3 inPreference:(id)a4;
- (id)preferences;
- (void)getAppInfoOverlayPreferenceForDomain:(id)a3 completionHandler:(id)a4;
- (void)setAppInfoOverlayPreferenceForDomain:(id)a3 settings:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation _SFAppInfoOverlayPreferenceManager

- (_SFAppInfoOverlayPreferenceManager)initWithPerSitePreferencesStore:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _SFAppInfoOverlayPreferenceManager;
  v6 = [(_SFAppInfoOverlayPreferenceManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_perSitePreferencesStore, a3);
    v8 = [objc_alloc(MEMORY[0x1E69C8FB8]) initWithIdentifier:@"AppInfoOverlayPreference"];
    appInfoOverlayPreference = v7->_appInfoOverlayPreference;
    v7->_appInfoOverlayPreference = v8;

    [(WBSPerSitePreferenceManager *)v7 setStorageDelegate:v7];
    [(WBSPerSitePreferenceManager *)v7 setDefaultsDelegate:v7];
    v10 = v7;
  }

  return v7;
}

- (void)getAppInfoOverlayPreferenceForDomain:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [MEMORY[0x1E69C8FC0] timeoutWithInterval:&unk_1F50230B0 fallbackValue:0.5];
    appInfoOverlayPreference = self->_appInfoOverlayPreference;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __93___SFAppInfoOverlayPreferenceManager_getAppInfoOverlayPreferenceForDomain_completionHandler___block_invoke;
    v10[3] = &unk_1E8491CA0;
    v11 = v7;
    [(WBSPerSitePreferenceManager *)self getValueOfPreference:appInfoOverlayPreference forDomain:v6 withTimeout:v8 usingBlock:v10];
  }

  else
  {
    (*(v7 + 2))(v7, [(_SFAppInfoOverlayPreferenceManager *)self _defaultPreferenceValue], 1);
  }
}

- (void)setAppInfoOverlayPreferenceForDomain:(id)a3 settings:(int64_t)a4 completionHandler:(id)a5
{
  v8 = MEMORY[0x1E696AD98];
  v9 = a5;
  v10 = a3;
  v11 = [v8 numberWithInteger:a4];
  [(WBSPerSitePreferenceManager *)self setValue:v11 ofPreference:self->_appInfoOverlayPreference forDomain:v10 completionHandler:v9];
}

- (id)preferences
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_appInfoOverlayPreference;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)localizedStringForValue:(id)a3 inPreference:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [(_SFAppInfoOverlayPreferenceManager *)self onValueForPreference:a4];
  v9 = [v7 isEqual:v8];

  v10 = [v6 numberWithBool:v9];

  v11 = [MEMORY[0x1E69C8FB8] localizedStringForBinaryPreferenceValue:v10];

  return v11;
}

- (id)defaultPreferenceValueForPreferenceIfNotCustomized:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [(_SFAppInfoOverlayPreferenceManager *)self _defaultPreferenceValue];

  return [v3 numberWithInteger:v4];
}

@end
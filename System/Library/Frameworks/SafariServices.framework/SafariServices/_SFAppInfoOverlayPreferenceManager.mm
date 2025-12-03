@interface _SFAppInfoOverlayPreferenceManager
- (_SFAppInfoOverlayPreferenceManager)initWithPerSitePreferencesStore:(id)store;
- (id)defaultPreferenceValueForPreferenceIfNotCustomized:(id)customized;
- (id)localizedStringForValue:(id)value inPreference:(id)preference;
- (id)preferences;
- (void)getAppInfoOverlayPreferenceForDomain:(id)domain completionHandler:(id)handler;
- (void)setAppInfoOverlayPreferenceForDomain:(id)domain settings:(int64_t)settings completionHandler:(id)handler;
@end

@implementation _SFAppInfoOverlayPreferenceManager

- (_SFAppInfoOverlayPreferenceManager)initWithPerSitePreferencesStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = _SFAppInfoOverlayPreferenceManager;
  v6 = [(_SFAppInfoOverlayPreferenceManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_perSitePreferencesStore, store);
    v8 = [objc_alloc(MEMORY[0x1E69C8FB8]) initWithIdentifier:@"AppInfoOverlayPreference"];
    appInfoOverlayPreference = v7->_appInfoOverlayPreference;
    v7->_appInfoOverlayPreference = v8;

    [(WBSPerSitePreferenceManager *)v7 setStorageDelegate:v7];
    [(WBSPerSitePreferenceManager *)v7 setDefaultsDelegate:v7];
    v10 = v7;
  }

  return v7;
}

- (void)getAppInfoOverlayPreferenceForDomain:(id)domain completionHandler:(id)handler
{
  domainCopy = domain;
  handlerCopy = handler;
  if ([domainCopy length])
  {
    v8 = [MEMORY[0x1E69C8FC0] timeoutWithInterval:&unk_1F50230B0 fallbackValue:0.5];
    appInfoOverlayPreference = self->_appInfoOverlayPreference;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __93___SFAppInfoOverlayPreferenceManager_getAppInfoOverlayPreferenceForDomain_completionHandler___block_invoke;
    v10[3] = &unk_1E8491CA0;
    v11 = handlerCopy;
    [(WBSPerSitePreferenceManager *)self getValueOfPreference:appInfoOverlayPreference forDomain:domainCopy withTimeout:v8 usingBlock:v10];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, [(_SFAppInfoOverlayPreferenceManager *)self _defaultPreferenceValue], 1);
  }
}

- (void)setAppInfoOverlayPreferenceForDomain:(id)domain settings:(int64_t)settings completionHandler:(id)handler
{
  v8 = MEMORY[0x1E696AD98];
  handlerCopy = handler;
  domainCopy = domain;
  v11 = [v8 numberWithInteger:settings];
  [(WBSPerSitePreferenceManager *)self setValue:v11 ofPreference:self->_appInfoOverlayPreference forDomain:domainCopy completionHandler:handlerCopy];
}

- (id)preferences
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_appInfoOverlayPreference;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)localizedStringForValue:(id)value inPreference:(id)preference
{
  v6 = MEMORY[0x1E696AD98];
  valueCopy = value;
  v8 = [(_SFAppInfoOverlayPreferenceManager *)self onValueForPreference:preference];
  v9 = [valueCopy isEqual:v8];

  v10 = [v6 numberWithBool:v9];

  v11 = [MEMORY[0x1E69C8FB8] localizedStringForBinaryPreferenceValue:v10];

  return v11;
}

- (id)defaultPreferenceValueForPreferenceIfNotCustomized:(id)customized
{
  v3 = MEMORY[0x1E696AD98];
  _defaultPreferenceValue = [(_SFAppInfoOverlayPreferenceManager *)self _defaultPreferenceValue];

  return [v3 numberWithInteger:_defaultPreferenceValue];
}

@end
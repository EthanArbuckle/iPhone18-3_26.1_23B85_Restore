@interface _SFRequestDesktopSitePreferenceManager
- (_SFRequestDesktopSitePreferenceManager)initWithPerSitePreferencesStore:(id)a3 quirksManager:(id)a4;
- (id)defaultPreferenceValueForPreferenceIfNotCustomized:(id)a3;
- (id)localizedStringForValue:(id)a3 inPreference:(id)a4;
- (id)preferences;
- (void)_notifyObserversOfPerSitePreferenceDefaultValueUpdate;
- (void)_notifyObserversOfPerSitePreferenceDomainValuesUpdate;
- (void)_requestDesktopSitePerSitePreferenceDidChange:(id)a3;
- (void)addRequestDesktopSitePerSitePreferenceObserver:(id)a3;
- (void)dealloc;
- (void)didUpdatePreference:(id)a3 toValue:(id)a4 forDomain:(id)a5;
- (void)getAllDomainsConfiguredForPreference:(id)a3 usingBlock:(id)a4;
- (void)getAllRequestDesktopSitePerSitePreferenceValues:(id)a3;
- (void)getDefaultPreferenceValueForPreference:(id)a3 completionHandler:(id)a4;
- (void)getDefaultPreferenceValueIfNotCustomizedForPreference:(id)a3 domain:(id)a4 completionHandler:(id)a5;
- (void)getRequestDesktopSitePreferenceForDomain:(id)a3 withTimeout:(double)a4 completionHandler:(id)a5;
- (void)getValueOfPreference:(id)a3 forDomain:(id)a4 withTimeout:(id)a5 usingBlock:(id)a6;
- (void)setClientPrefersMobileUserAgentByDefault:(BOOL)a3;
@end

@implementation _SFRequestDesktopSitePreferenceManager

- (_SFRequestDesktopSitePreferenceManager)initWithPerSitePreferencesStore:(id)a3 quirksManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = _SFRequestDesktopSitePreferenceManager;
  v9 = [(_SFRequestDesktopSitePreferenceManager *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_perSitePreferencesStore, a3);
    v11 = objc_alloc(MEMORY[0x1E69C8FB8]);
    v12 = [v11 initWithIdentifier:*MEMORY[0x1E69C9588]];
    requestDesktopSitePreference = v10->_requestDesktopSitePreference;
    v10->_requestDesktopSitePreference = v12;

    objc_storeStrong(&v10->_quirksManager, a4);
    [(WBSPerSitePreferenceManager *)v10 setStorageDelegate:v10];
    [(WBSPerSitePreferenceManager *)v10 setDefaultsDelegate:v10];
    v14 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v14 addObserver:v10 selector:sel__requestDesktopSitePerSitePreferenceDidChange_ name:@"com.apple.SafariServices.RequestDesktopSitePerSitePreferenceDidChange" object:0];

    v15 = v10;
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _SFRequestDesktopSitePreferenceManager;
  [(_SFRequestDesktopSitePreferenceManager *)&v4 dealloc];
}

- (void)addRequestDesktopSitePerSitePreferenceObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSMutableSet *)observers addObject:v4];
}

- (void)getRequestDesktopSitePreferenceForDomain:(id)a3 withTimeout:(double)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 length])
  {
    requestDesktopSitePreference = self->_requestDesktopSitePreference;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __113___SFRequestDesktopSitePreferenceManager_getRequestDesktopSitePreferenceForDomain_withTimeout_completionHandler___block_invoke;
    v11[3] = &unk_1E8493770;
    v11[4] = self;
    v12 = v8;
    v14 = a4;
    v13 = v9;
    [(_SFRequestDesktopSitePreferenceManager *)self getDefaultPreferenceValueIfNotCustomizedForPreference:requestDesktopSitePreference domain:v12 completionHandler:v11];
  }

  else
  {
    (*(v9 + 2))(v9, [(_SFRequestDesktopSitePreferenceManager *)self _defaultPreferenceValue], 1);
  }
}

- (void)getValueOfPreference:(id)a3 forDomain:(id)a4 withTimeout:(id)a5 usingBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96___SFRequestDesktopSitePreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke;
  v17[3] = &unk_1E84937C0;
  v18 = v11;
  v19 = self;
  v20 = v10;
  v21 = v12;
  v16.receiver = self;
  v16.super_class = _SFRequestDesktopSitePreferenceManager;
  v13 = v10;
  v14 = v11;
  v15 = v12;
  [(WBSPerSitePreferenceManager *)&v16 getValueOfPreference:v13 forDomain:v14 withTimeout:a5 usingBlock:v17];
}

- (void)getAllRequestDesktopSitePerSitePreferenceValues:(id)a3
{
  v4 = a3;
  perSitePreferencesStore = self->_perSitePreferencesStore;
  v6 = *MEMORY[0x1E69C94E8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90___SFRequestDesktopSitePreferenceManager_getAllRequestDesktopSitePerSitePreferenceValues___block_invoke;
  v8[3] = &unk_1E84937E8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(WBSPerSitePreferencesSQLiteStore *)perSitePreferencesStore getAllPreferenceInformationForPreference:v6 completionHandler:v8];
}

- (void)getAllDomainsConfiguredForPreference:(id)a3 usingBlock:(id)a4
{
  v4.receiver = self;
  v4.super_class = _SFRequestDesktopSitePreferenceManager;
  [(WBSPerSitePreferenceManager *)&v4 getAllDomainsConfiguredForPreference:a3 usingBlock:a4];
}

- (void)didUpdatePreference:(id)a3 toValue:(id)a4 forDomain:(id)a5
{
  if ([(NSMutableSet *)self->_observers count:a3])
  {

    [(_SFRequestDesktopSitePreferenceManager *)self _notifyObserversOfPerSitePreferenceDomainValuesUpdate];
  }
}

- (void)_requestDesktopSitePerSitePreferenceDidChange:(id)a3
{
  [(_SFRequestDesktopSitePreferenceManager *)self _notifyObserversOfPerSitePreferenceDefaultValueUpdate];

  [(_SFRequestDesktopSitePreferenceManager *)self _notifyObserversOfPerSitePreferenceDomainValuesUpdate];
}

- (void)_notifyObserversOfPerSitePreferenceDefaultValueUpdate
{
  if ([(NSMutableSet *)self->_observers count])
  {
    objc_initWeak(&location, self);
    requestDesktopSitePreference = self->_requestDesktopSitePreference;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __95___SFRequestDesktopSitePreferenceManager__notifyObserversOfPerSitePreferenceDefaultValueUpdate__block_invoke;
    v4[3] = &unk_1E8493810;
    objc_copyWeak(&v5, &location);
    [(_SFRequestDesktopSitePreferenceManager *)self getDefaultPreferenceValueForPreference:requestDesktopSitePreference completionHandler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)_notifyObserversOfPerSitePreferenceDomainValuesUpdate
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __95___SFRequestDesktopSitePreferenceManager__notifyObserversOfPerSitePreferenceDomainValuesUpdate__block_invoke;
  v3[3] = &unk_1E8490FC8;
  objc_copyWeak(&v4, &location);
  [(_SFRequestDesktopSitePreferenceManager *)self getAllRequestDesktopSitePerSitePreferenceValues:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (id)preferences
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_requestDesktopSitePreference;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)getDefaultPreferenceValueForPreference:(id)a3 completionHandler:(id)a4
{
  if (self->_clientPrefersMobileUserAgentByDefault)
  {
    v5 = a4;
    v6 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [_SFRequestDesktopSitePreferenceManager getDefaultPreferenceValueForPreference:v6 completionHandler:?];
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_SFRequestDesktopSitePreferenceManager _defaultPreferenceValue](self, "_defaultPreferenceValue")}];
    v5[2](v5, v7);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _SFRequestDesktopSitePreferenceManager;
    v7 = a4;
    [(WBSPerSitePreferenceManager *)&v9 getDefaultPreferenceValueForPreference:a3 completionHandler:v7];
  }
}

- (id)localizedStringForValue:(id)a3 inPreference:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [(_SFRequestDesktopSitePreferenceManager *)self onValueForPreference:a4];
  v9 = [v7 isEqual:v8];

  v10 = [v6 numberWithBool:v9];

  v11 = [MEMORY[0x1E69C8FB8] localizedStringForBinaryPreferenceValue:v10];

  return v11;
}

- (id)defaultPreferenceValueForPreferenceIfNotCustomized:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [(_SFRequestDesktopSitePreferenceManager *)self _defaultPreferenceValue];

  return [v3 numberWithInteger:v4];
}

- (void)getDefaultPreferenceValueIfNotCustomizedForPreference:(id)a3 domain:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = v7;
  quirksManager = self->_quirksManager;
  if (quirksManager)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __121___SFRequestDesktopSitePreferenceManager_getDefaultPreferenceValueIfNotCustomizedForPreference_domain_completionHandler___block_invoke;
    v10[3] = &unk_1E8493838;
    v10[4] = self;
    v11 = v7;
    [(_SFRequestDesktopSiteQuirksManager *)quirksManager quirksValueForDomain:a4 completionHandler:v10];
  }

  else
  {
    [(_SFRequestDesktopSitePreferenceManager *)self getDefaultPreferenceValueForPreference:self->_requestDesktopSitePreference completionHandler:v7];
  }
}

- (void)setClientPrefersMobileUserAgentByDefault:(BOOL)a3
{
  if (self->_clientPrefersMobileUserAgentByDefault != a3)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(_SFRequestDesktopSitePreferenceManager *)a3 setClientPrefersMobileUserAgentByDefault:v5];
    }

    self->_clientPrefersMobileUserAgentByDefault = a3;
    [(_SFRequestDesktopSitePreferenceManager *)self _notifyObserversOfPerSitePreferenceDefaultValueUpdate];
  }
}

- (void)setClientPrefersMobileUserAgentByDefault:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = @"NO";
  if (a1)
  {
    v3 = @"YES";
  }

  v4 = v3;
  v5 = 138543362;
  v6 = v4;
  _os_log_debug_impl(&dword_1D4644000, a2, OS_LOG_TYPE_DEBUG, "Updating client preference for loading Mobile user agent by default: %{public}@", &v5, 0xCu);
}

@end
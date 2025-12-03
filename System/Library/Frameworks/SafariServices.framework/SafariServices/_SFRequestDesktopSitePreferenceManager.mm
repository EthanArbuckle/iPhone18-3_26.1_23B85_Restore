@interface _SFRequestDesktopSitePreferenceManager
- (_SFRequestDesktopSitePreferenceManager)initWithPerSitePreferencesStore:(id)store quirksManager:(id)manager;
- (id)defaultPreferenceValueForPreferenceIfNotCustomized:(id)customized;
- (id)localizedStringForValue:(id)value inPreference:(id)preference;
- (id)preferences;
- (void)_notifyObserversOfPerSitePreferenceDefaultValueUpdate;
- (void)_notifyObserversOfPerSitePreferenceDomainValuesUpdate;
- (void)_requestDesktopSitePerSitePreferenceDidChange:(id)change;
- (void)addRequestDesktopSitePerSitePreferenceObserver:(id)observer;
- (void)dealloc;
- (void)didUpdatePreference:(id)preference toValue:(id)value forDomain:(id)domain;
- (void)getAllDomainsConfiguredForPreference:(id)preference usingBlock:(id)block;
- (void)getAllRequestDesktopSitePerSitePreferenceValues:(id)values;
- (void)getDefaultPreferenceValueForPreference:(id)preference completionHandler:(id)handler;
- (void)getDefaultPreferenceValueIfNotCustomizedForPreference:(id)preference domain:(id)domain completionHandler:(id)handler;
- (void)getRequestDesktopSitePreferenceForDomain:(id)domain withTimeout:(double)timeout completionHandler:(id)handler;
- (void)getValueOfPreference:(id)preference forDomain:(id)domain withTimeout:(id)timeout usingBlock:(id)block;
- (void)setClientPrefersMobileUserAgentByDefault:(BOOL)default;
@end

@implementation _SFRequestDesktopSitePreferenceManager

- (_SFRequestDesktopSitePreferenceManager)initWithPerSitePreferencesStore:(id)store quirksManager:(id)manager
{
  storeCopy = store;
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = _SFRequestDesktopSitePreferenceManager;
  v9 = [(_SFRequestDesktopSitePreferenceManager *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_perSitePreferencesStore, store);
    v11 = objc_alloc(MEMORY[0x1E69C8FB8]);
    v12 = [v11 initWithIdentifier:*MEMORY[0x1E69C9588]];
    requestDesktopSitePreference = v10->_requestDesktopSitePreference;
    v10->_requestDesktopSitePreference = v12;

    objc_storeStrong(&v10->_quirksManager, manager);
    [(WBSPerSitePreferenceManager *)v10 setStorageDelegate:v10];
    [(WBSPerSitePreferenceManager *)v10 setDefaultsDelegate:v10];
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__requestDesktopSitePerSitePreferenceDidChange_ name:@"com.apple.SafariServices.RequestDesktopSitePerSitePreferenceDidChange" object:0];

    v15 = v10;
  }

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _SFRequestDesktopSitePreferenceManager;
  [(_SFRequestDesktopSitePreferenceManager *)&v4 dealloc];
}

- (void)addRequestDesktopSitePerSitePreferenceObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_observers;
    self->_observers = v6;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSMutableSet *)observers addObject:observerCopy];
}

- (void)getRequestDesktopSitePreferenceForDomain:(id)domain withTimeout:(double)timeout completionHandler:(id)handler
{
  domainCopy = domain;
  handlerCopy = handler;
  if ([domainCopy length])
  {
    requestDesktopSitePreference = self->_requestDesktopSitePreference;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __113___SFRequestDesktopSitePreferenceManager_getRequestDesktopSitePreferenceForDomain_withTimeout_completionHandler___block_invoke;
    v11[3] = &unk_1E8493770;
    v11[4] = self;
    v12 = domainCopy;
    timeoutCopy = timeout;
    v13 = handlerCopy;
    [(_SFRequestDesktopSitePreferenceManager *)self getDefaultPreferenceValueIfNotCustomizedForPreference:requestDesktopSitePreference domain:v12 completionHandler:v11];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, [(_SFRequestDesktopSitePreferenceManager *)self _defaultPreferenceValue], 1);
  }
}

- (void)getValueOfPreference:(id)preference forDomain:(id)domain withTimeout:(id)timeout usingBlock:(id)block
{
  preferenceCopy = preference;
  domainCopy = domain;
  blockCopy = block;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96___SFRequestDesktopSitePreferenceManager_getValueOfPreference_forDomain_withTimeout_usingBlock___block_invoke;
  v17[3] = &unk_1E84937C0;
  v18 = domainCopy;
  selfCopy = self;
  v20 = preferenceCopy;
  v21 = blockCopy;
  v16.receiver = self;
  v16.super_class = _SFRequestDesktopSitePreferenceManager;
  v13 = preferenceCopy;
  v14 = domainCopy;
  v15 = blockCopy;
  [(WBSPerSitePreferenceManager *)&v16 getValueOfPreference:v13 forDomain:v14 withTimeout:timeout usingBlock:v17];
}

- (void)getAllRequestDesktopSitePerSitePreferenceValues:(id)values
{
  valuesCopy = values;
  perSitePreferencesStore = self->_perSitePreferencesStore;
  v6 = *MEMORY[0x1E69C94E8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90___SFRequestDesktopSitePreferenceManager_getAllRequestDesktopSitePerSitePreferenceValues___block_invoke;
  v8[3] = &unk_1E84937E8;
  v8[4] = self;
  v9 = valuesCopy;
  v7 = valuesCopy;
  [(WBSPerSitePreferencesSQLiteStore *)perSitePreferencesStore getAllPreferenceInformationForPreference:v6 completionHandler:v8];
}

- (void)getAllDomainsConfiguredForPreference:(id)preference usingBlock:(id)block
{
  v4.receiver = self;
  v4.super_class = _SFRequestDesktopSitePreferenceManager;
  [(WBSPerSitePreferenceManager *)&v4 getAllDomainsConfiguredForPreference:preference usingBlock:block];
}

- (void)didUpdatePreference:(id)preference toValue:(id)value forDomain:(id)domain
{
  if ([(NSMutableSet *)self->_observers count:preference])
  {

    [(_SFRequestDesktopSitePreferenceManager *)self _notifyObserversOfPerSitePreferenceDomainValuesUpdate];
  }
}

- (void)_requestDesktopSitePerSitePreferenceDidChange:(id)change
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

- (void)getDefaultPreferenceValueForPreference:(id)preference completionHandler:(id)handler
{
  if (self->_clientPrefersMobileUserAgentByDefault)
  {
    handlerCopy = handler;
    v6 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [_SFRequestDesktopSitePreferenceManager getDefaultPreferenceValueForPreference:v6 completionHandler:?];
    }

    handlerCopy2 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_SFRequestDesktopSitePreferenceManager _defaultPreferenceValue](self, "_defaultPreferenceValue")}];
    handlerCopy[2](handlerCopy, handlerCopy2);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _SFRequestDesktopSitePreferenceManager;
    handlerCopy2 = handler;
    [(WBSPerSitePreferenceManager *)&v9 getDefaultPreferenceValueForPreference:preference completionHandler:handlerCopy2];
  }
}

- (id)localizedStringForValue:(id)value inPreference:(id)preference
{
  v6 = MEMORY[0x1E696AD98];
  valueCopy = value;
  v8 = [(_SFRequestDesktopSitePreferenceManager *)self onValueForPreference:preference];
  v9 = [valueCopy isEqual:v8];

  v10 = [v6 numberWithBool:v9];

  v11 = [MEMORY[0x1E69C8FB8] localizedStringForBinaryPreferenceValue:v10];

  return v11;
}

- (id)defaultPreferenceValueForPreferenceIfNotCustomized:(id)customized
{
  v3 = MEMORY[0x1E696AD98];
  _defaultPreferenceValue = [(_SFRequestDesktopSitePreferenceManager *)self _defaultPreferenceValue];

  return [v3 numberWithInteger:_defaultPreferenceValue];
}

- (void)getDefaultPreferenceValueIfNotCustomizedForPreference:(id)preference domain:(id)domain completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = handlerCopy;
  quirksManager = self->_quirksManager;
  if (quirksManager)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __121___SFRequestDesktopSitePreferenceManager_getDefaultPreferenceValueIfNotCustomizedForPreference_domain_completionHandler___block_invoke;
    v10[3] = &unk_1E8493838;
    v10[4] = self;
    v11 = handlerCopy;
    [(_SFRequestDesktopSiteQuirksManager *)quirksManager quirksValueForDomain:domain completionHandler:v10];
  }

  else
  {
    [(_SFRequestDesktopSitePreferenceManager *)self getDefaultPreferenceValueForPreference:self->_requestDesktopSitePreference completionHandler:handlerCopy];
  }
}

- (void)setClientPrefersMobileUserAgentByDefault:(BOOL)default
{
  if (self->_clientPrefersMobileUserAgentByDefault != default)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(_SFRequestDesktopSitePreferenceManager *)default setClientPrefersMobileUserAgentByDefault:v5];
    }

    self->_clientPrefersMobileUserAgentByDefault = default;
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
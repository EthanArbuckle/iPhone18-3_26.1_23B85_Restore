@interface _SFPageZoomPreferenceManager
+ (id)sharedManager;
- (_SFPageZoomPreferenceManager)initWithPerSitePreferencesStore:(id)store;
- (void)_didRemoveHostnames:(id)hostnames;
- (void)dealloc;
- (void)removePreferenceValuesForDomains:(id)domains fromPreference:(id)preference completionHandler:(id)handler;
- (void)setDefaultValue:(id)value ofPreference:(id)preference completionHandler:(id)handler;
- (void)setValue:(id)value ofPreference:(id)preference forDomain:(id)domain completionHandler:(id)handler;
@end

@implementation _SFPageZoomPreferenceManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[_SFPageZoomPreferenceManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

- (_SFPageZoomPreferenceManager)initWithPerSitePreferencesStore:(id)store
{
  v7.receiver = self;
  v7.super_class = _SFPageZoomPreferenceManager;
  v3 = [(WBSPageZoomPreferenceManager *)&v7 initWithPerSitePreferencesStore:store];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__didRemoveHostnames_ name:*MEMORY[0x1E69C9330] object:0];
    [defaultCenter addObserver:v3 selector:sel__historyWasCleared_ name:*MEMORY[0x1E69C9360] object:0];
    v5 = v3;
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _SFPageZoomPreferenceManager;
  [(_SFPageZoomPreferenceManager *)&v4 dealloc];
}

- (void)_didRemoveHostnames:(id)hostnames
{
  object = [hostnames object];
  v5 = [object copy];

  [(WBSPageZoomPreferenceManager *)self removePageZoomPreferencesForHostnames:v5];
}

- (void)setValue:(id)value ofPreference:(id)preference forDomain:(id)domain completionHandler:(id)handler
{
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82___SFPageZoomPreferenceManager_setValue_ofPreference_forDomain_completionHandler___block_invoke;
  v13[3] = &unk_1E848FA50;
  v14 = handlerCopy;
  v12.receiver = self;
  v12.super_class = _SFPageZoomPreferenceManager;
  v11 = handlerCopy;
  [(WBSPerSitePreferenceManager *)&v12 setValue:value ofPreference:preference forDomain:domain completionHandler:v13];
}

- (void)setDefaultValue:(id)value ofPreference:(id)preference completionHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79___SFPageZoomPreferenceManager_setDefaultValue_ofPreference_completionHandler___block_invoke;
  v11[3] = &unk_1E848FA50;
  v12 = handlerCopy;
  v10.receiver = self;
  v10.super_class = _SFPageZoomPreferenceManager;
  v9 = handlerCopy;
  [(WBSPerSitePreferenceManager *)&v10 setDefaultValue:value ofPreference:preference completionHandler:v11];
}

- (void)removePreferenceValuesForDomains:(id)domains fromPreference:(id)preference completionHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __98___SFPageZoomPreferenceManager_removePreferenceValuesForDomains_fromPreference_completionHandler___block_invoke;
  v11[3] = &unk_1E848FA50;
  v12 = handlerCopy;
  v10.receiver = self;
  v10.super_class = _SFPageZoomPreferenceManager;
  v9 = handlerCopy;
  [(WBSPerSitePreferenceManager *)&v10 removePreferenceValuesForDomains:domains fromPreference:preference completionHandler:v11];
}

@end
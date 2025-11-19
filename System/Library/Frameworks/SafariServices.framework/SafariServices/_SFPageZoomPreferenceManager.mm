@interface _SFPageZoomPreferenceManager
+ (id)sharedManager;
- (_SFPageZoomPreferenceManager)initWithPerSitePreferencesStore:(id)a3;
- (void)_didRemoveHostnames:(id)a3;
- (void)dealloc;
- (void)removePreferenceValuesForDomains:(id)a3 fromPreference:(id)a4 completionHandler:(id)a5;
- (void)setDefaultValue:(id)a3 ofPreference:(id)a4 completionHandler:(id)a5;
- (void)setValue:(id)a3 ofPreference:(id)a4 forDomain:(id)a5 completionHandler:(id)a6;
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

- (_SFPageZoomPreferenceManager)initWithPerSitePreferencesStore:(id)a3
{
  v7.receiver = self;
  v7.super_class = _SFPageZoomPreferenceManager;
  v3 = [(WBSPageZoomPreferenceManager *)&v7 initWithPerSitePreferencesStore:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__didRemoveHostnames_ name:*MEMORY[0x1E69C9330] object:0];
    [v4 addObserver:v3 selector:sel__historyWasCleared_ name:*MEMORY[0x1E69C9360] object:0];
    v5 = v3;
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _SFPageZoomPreferenceManager;
  [(_SFPageZoomPreferenceManager *)&v4 dealloc];
}

- (void)_didRemoveHostnames:(id)a3
{
  v4 = [a3 object];
  v5 = [v4 copy];

  [(WBSPageZoomPreferenceManager *)self removePageZoomPreferencesForHostnames:v5];
}

- (void)setValue:(id)a3 ofPreference:(id)a4 forDomain:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82___SFPageZoomPreferenceManager_setValue_ofPreference_forDomain_completionHandler___block_invoke;
  v13[3] = &unk_1E848FA50;
  v14 = v10;
  v12.receiver = self;
  v12.super_class = _SFPageZoomPreferenceManager;
  v11 = v10;
  [(WBSPerSitePreferenceManager *)&v12 setValue:a3 ofPreference:a4 forDomain:a5 completionHandler:v13];
}

- (void)setDefaultValue:(id)a3 ofPreference:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79___SFPageZoomPreferenceManager_setDefaultValue_ofPreference_completionHandler___block_invoke;
  v11[3] = &unk_1E848FA50;
  v12 = v8;
  v10.receiver = self;
  v10.super_class = _SFPageZoomPreferenceManager;
  v9 = v8;
  [(WBSPerSitePreferenceManager *)&v10 setDefaultValue:a3 ofPreference:a4 completionHandler:v11];
}

- (void)removePreferenceValuesForDomains:(id)a3 fromPreference:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __98___SFPageZoomPreferenceManager_removePreferenceValuesForDomains_fromPreference_completionHandler___block_invoke;
  v11[3] = &unk_1E848FA50;
  v12 = v8;
  v10.receiver = self;
  v10.super_class = _SFPageZoomPreferenceManager;
  v9 = v8;
  [(WBSPerSitePreferenceManager *)&v10 removePreferenceValuesForDomains:a3 fromPreference:a4 completionHandler:v11];
}

@end
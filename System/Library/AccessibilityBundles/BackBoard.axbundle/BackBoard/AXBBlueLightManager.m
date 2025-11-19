@interface AXBBlueLightManager
+ (id)sharedManager;
- (AXBBlueLightManager)init;
- (BOOL)adaptationEnabled;
- (BOOL)blueLightStatusEnabled;
- (BOOL)brightnessFiltersEnabled;
- (BOOL)supportsAdaptation;
- (BOOL)supportsBlueLightReduction;
- (void)dealloc;
- (void)disableBrightnessFilters;
- (void)restoreCachedBrightnessFilters;
@end

@implementation AXBBlueLightManager

- (AXBBlueLightManager)init
{
  v12.receiver = self;
  v12.super_class = AXBBlueLightManager;
  v2 = [(AXBBlueLightManager *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDC0DA8]);
    brightnessClient = v2->_brightnessClient;
    v2->_brightnessClient = v3;

    v5 = [(CBClient *)v2->_brightnessClient blueLightClient];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __27__AXBBlueLightManager_init__block_invoke;
    v10[3] = &unk_29F2A4DC0;
    v6 = v2;
    v11 = v6;
    [v5 setStatusNotificationBlock:v10];

    v7 = [(AXBBlueLightManager *)v6 supportsBlueLightReduction];
    v8 = [MEMORY[0x29EDBDFA0] sharedInstance];
    [v8 setSupportsAdvancedDisplayFilters:v7];
  }

  return v2;
}

void __27__AXBBlueLightManager_init__block_invoke(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v8 = *a2;
  v9 = v2;
  v10 = *(a2 + 4);
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __27__AXBBlueLightManager_init__block_invoke_2;
  v3[3] = &unk_29F2A4D98;
  v4 = *(a1 + 32);
  v5 = v8;
  v6 = v9;
  v7 = v10;
  dispatch_async(MEMORY[0x29EDCA578], v3);
}

- (void)dealloc
{
  v3 = [(CBClient *)self->_brightnessClient blueLightClient];
  [v3 setStatusNotificationBlock:0];

  v4.receiver = self;
  v4.super_class = AXBBlueLightManager;
  [(AXBBlueLightManager *)&v4 dealloc];
}

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[AXBBlueLightManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __36__AXBBlueLightManager_sharedManager__block_invoke()
{
  sharedManager_manager = objc_alloc_init(AXBBlueLightManager);

  return MEMORY[0x2A1C71028]();
}

- (BOOL)supportsBlueLightReduction
{
  v2 = [(CBClient *)self->_brightnessClient blueLightClient];
  v3 = [v2 supported];

  return v3;
}

- (void)disableBrightnessFilters
{
  if ([(AXBBlueLightManager *)self blueLightStatusEnabled])
  {
    v3 = [(CBClient *)self->_brightnessClient blueLightClient:0];
    [v3 getBlueLightStatus:&v9];

    [MEMORY[0x29EDBA070] numberWithUnsignedInt:DWORD1(v9)];
    _AXSSetCacheForBrightnessFilter();
    v4 = [(CBClient *)self->_brightnessClient blueLightClient];
    [v4 setMode:0];

    v5 = [(CBClient *)self->_brightnessClient blueLightClient];
    [v5 setEnabled:0];
  }

  if ([(AXBBlueLightManager *)self adaptationEnabled])
  {
    v6 = MEMORY[0x29EDBA070];
    v7 = [(CBClient *)self->_brightnessClient adaptationClient];
    [v6 numberWithBool:{objc_msgSend(v7, "getEnabled")}];

    _AXSSetCacheForBrightnessFilter();
    v8 = [(CBClient *)self->_brightnessClient adaptationClient];
    [v8 setEnabled:0];
  }
}

- (BOOL)brightnessFiltersEnabled
{
  if ([(AXBBlueLightManager *)self blueLightStatusEnabled])
  {
    return 1;
  }

  return [(AXBBlueLightManager *)self adaptationEnabled];
}

- (BOOL)blueLightStatusEnabled
{
  v3 = [(CBClient *)self->_brightnessClient blueLightClient];
  v4 = [v3 supported];

  result = 0;
  if (v4)
  {
    v5 = [(CBClient *)self->_brightnessClient blueLightClient:0];
    [v5 getBlueLightStatus:v7];

    if (self->_blueLightStatusEnabled || v7[1] == 1 || v8)
    {
      return 1;
    }
  }

  return result;
}

- (void)restoreCachedBrightnessFilters
{
  if (!_AXSScreenFilterApplied())
  {
    v3 = [(CBClient *)self->_brightnessClient blueLightClient];
    v4 = [v3 supported];

    if (v4)
    {
      if (![(AXBBlueLightManager *)self blueLightStatusEnabled])
      {
        v5 = _AXSCachedValueForBrightnessFilter();
        if (v5)
        {
          v6 = [v5 intValue];
          v7 = [(CBClient *)self->_brightnessClient blueLightClient];
          [v7 setMode:v6];
        }
      }

      _AXSSetCacheForBrightnessFilter();
    }

    v8 = [(CBClient *)self->_brightnessClient adaptationClient];
    v9 = [v8 supported];

    if (v9)
    {
      if (![(AXBBlueLightManager *)self adaptationEnabled])
      {
        v10 = _AXSCachedValueForBrightnessFilter();
        if (v10)
        {
          v11 = [v10 BOOLValue];
          v12 = [(CBClient *)self->_brightnessClient adaptationClient];
          [v12 setEnabled:v11];
        }
      }

      _AXSSetCacheForBrightnessFilter();
    }
  }
}

- (BOOL)adaptationEnabled
{
  v3 = [(CBClient *)self->_brightnessClient adaptationClient];
  v4 = [v3 supported];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CBClient *)self->_brightnessClient adaptationClient];
  v6 = [v5 getEnabled];

  return v6;
}

- (BOOL)supportsAdaptation
{
  v2 = [(CBClient *)self->_brightnessClient adaptationClient];
  v3 = [v2 supported];

  return v3;
}

@end
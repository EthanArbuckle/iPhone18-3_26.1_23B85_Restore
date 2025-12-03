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

    blueLightClient = [(CBClient *)v2->_brightnessClient blueLightClient];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __27__AXBBlueLightManager_init__block_invoke;
    v10[3] = &unk_29F2A4DC0;
    v6 = v2;
    v11 = v6;
    [blueLightClient setStatusNotificationBlock:v10];

    supportsBlueLightReduction = [(AXBBlueLightManager *)v6 supportsBlueLightReduction];
    mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
    [mEMORY[0x29EDBDFA0] setSupportsAdvancedDisplayFilters:supportsBlueLightReduction];
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
  blueLightClient = [(CBClient *)self->_brightnessClient blueLightClient];
  [blueLightClient setStatusNotificationBlock:0];

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
  blueLightClient = [(CBClient *)self->_brightnessClient blueLightClient];
  supported = [blueLightClient supported];

  return supported;
}

- (void)disableBrightnessFilters
{
  if ([(AXBBlueLightManager *)self blueLightStatusEnabled])
  {
    v3 = [(CBClient *)self->_brightnessClient blueLightClient:0];
    [v3 getBlueLightStatus:&v9];

    [MEMORY[0x29EDBA070] numberWithUnsignedInt:DWORD1(v9)];
    _AXSSetCacheForBrightnessFilter();
    blueLightClient = [(CBClient *)self->_brightnessClient blueLightClient];
    [blueLightClient setMode:0];

    blueLightClient2 = [(CBClient *)self->_brightnessClient blueLightClient];
    [blueLightClient2 setEnabled:0];
  }

  if ([(AXBBlueLightManager *)self adaptationEnabled])
  {
    v6 = MEMORY[0x29EDBA070];
    adaptationClient = [(CBClient *)self->_brightnessClient adaptationClient];
    [v6 numberWithBool:{objc_msgSend(adaptationClient, "getEnabled")}];

    _AXSSetCacheForBrightnessFilter();
    adaptationClient2 = [(CBClient *)self->_brightnessClient adaptationClient];
    [adaptationClient2 setEnabled:0];
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
  blueLightClient = [(CBClient *)self->_brightnessClient blueLightClient];
  supported = [blueLightClient supported];

  result = 0;
  if (supported)
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
    blueLightClient = [(CBClient *)self->_brightnessClient blueLightClient];
    supported = [blueLightClient supported];

    if (supported)
    {
      if (![(AXBBlueLightManager *)self blueLightStatusEnabled])
      {
        v5 = _AXSCachedValueForBrightnessFilter();
        if (v5)
        {
          intValue = [v5 intValue];
          blueLightClient2 = [(CBClient *)self->_brightnessClient blueLightClient];
          [blueLightClient2 setMode:intValue];
        }
      }

      _AXSSetCacheForBrightnessFilter();
    }

    adaptationClient = [(CBClient *)self->_brightnessClient adaptationClient];
    supported2 = [adaptationClient supported];

    if (supported2)
    {
      if (![(AXBBlueLightManager *)self adaptationEnabled])
      {
        v10 = _AXSCachedValueForBrightnessFilter();
        if (v10)
        {
          bOOLValue = [v10 BOOLValue];
          adaptationClient2 = [(CBClient *)self->_brightnessClient adaptationClient];
          [adaptationClient2 setEnabled:bOOLValue];
        }
      }

      _AXSSetCacheForBrightnessFilter();
    }
  }
}

- (BOOL)adaptationEnabled
{
  adaptationClient = [(CBClient *)self->_brightnessClient adaptationClient];
  supported = [adaptationClient supported];

  if (!supported)
  {
    return 0;
  }

  adaptationClient2 = [(CBClient *)self->_brightnessClient adaptationClient];
  getEnabled = [adaptationClient2 getEnabled];

  return getEnabled;
}

- (BOOL)supportsAdaptation
{
  adaptationClient = [(CBClient *)self->_brightnessClient adaptationClient];
  supported = [adaptationClient supported];

  return supported;
}

@end
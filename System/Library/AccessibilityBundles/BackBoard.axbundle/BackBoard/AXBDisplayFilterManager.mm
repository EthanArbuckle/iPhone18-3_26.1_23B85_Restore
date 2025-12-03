@interface AXBDisplayFilterManager
+ (id)sharedInstance;
+ (void)initializeMonitor;
- (AXBDisplayFilterManager)init;
- (AXUIClient)displayFilterUIClient;
- (BOOL)_display:(id)_display matchesDisplayType:(unint64_t)type;
- (BOOL)_invertColorsEnabled;
- (__MADisplayFilter)displayFilterFromLastUpdate;
- (void)_applyMatrixFilter:(__MADisplayFilter *)filter whitePointReduction:(double)reduction displayType:(unint64_t)type;
- (void)_handleFrameRateLimit;
- (void)_handlePulseWidthMaximization;
- (void)_repostNotificationIfNeeded;
- (void)_updateBrightnessFilters:(BOOL)filters;
- (void)_updateCoreSupportForDisplayType:(unint64_t)type;
- (void)_updateMatrixSupportForDisplayType:(unint64_t)type;
- (void)_updateNotificationCache;
- (void)_whitePointRampDown;
- (void)dealloc;
- (void)setDisplayFilterFromLastUpdate:(__MADisplayFilter *)update;
- (void)updateSettings;
@end

@implementation AXBDisplayFilterManager

- (void)setDisplayFilterFromLastUpdate:(__MADisplayFilter *)update
{
  if (update)
  {
    CFRetain(update);
  }

  displayFilterFromLastUpdate = self->_displayFilterFromLastUpdate;
  if (displayFilterFromLastUpdate)
  {
    CFRelease(displayFilterFromLastUpdate);
  }

  self->_displayFilterFromLastUpdate = update;
}

- (__MADisplayFilter)displayFilterFromLastUpdate
{
  result = self->_displayFilterFromLastUpdate;
  if (result)
  {
    v3 = CFRetain(result);

    return CFAutorelease(v3);
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AXBDisplayFilterManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __41__AXBDisplayFilterManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(AXBDisplayFilterManager);

  return MEMORY[0x2A1C71028]();
}

- (AXBDisplayFilterManager)init
{
  v3.receiver = self;
  v3.super_class = AXBDisplayFilterManager;
  return [(AXBDisplayFilterManager *)&v3 init];
}

+ (void)initializeMonitor
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __44__AXBDisplayFilterManager_initializeMonitor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initializeMonitor_onceToken_0 != -1)
  {
    dispatch_once(&initializeMonitor_onceToken_0, block);
  }
}

void __44__AXBDisplayFilterManager_initializeMonitor__block_invoke(uint64_t a1)
{
  _AXSAccessibilityEnabled();
  v2 = +[AXBDisplayFilterManager sharedInstance];
  [v2 _updateNotificationCache];

  v3 = AXIsInternalInstall();
  v4 = MEMORY[0x29EDC8478];
  v5 = MEMORY[0x29EDC8428];
  if (v3)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-toggle-testing", *v4];
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _toggleAXSetting, v7, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-toggle-testing", *v5];
    CFNotificationCenterAddObserver(v8, 0, _toggleAXSetting, v9, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-toggle-testing", *MEMORY[0x29EDC84D8]];
    CFNotificationCenterAddObserver(v10, 0, _toggleAXSetting, v11, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v12 = CFNotificationCenterGetDarwinNotifyCenter();
    v13 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-toggle-testing", *MEMORY[0x29EDC8430]];
    CFNotificationCenterAddObserver(v12, 0, _toggleAXSetting, v13, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v14 = CFNotificationCenterGetDarwinNotifyCenter();
    v15 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-toggle-testing", *MEMORY[0x29EDC83F8]];
    CFNotificationCenterAddObserver(v14, 0, _toggleAXSetting, v15, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v16 = CFNotificationCenterGetDarwinNotifyCenter();
    v17 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-toggle-testing", *MEMORY[0x29EDC8508]];
    CFNotificationCenterAddObserver(v16, 0, _toggleAXSetting, v17, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v18 = +[AXBDisplayFilterManager sharedInstance];
  [v18 _handleFrameRateLimit];

  if (AXDeviceSupportsPulseWidthMaximization())
  {
    v19 = +[AXBDisplayFilterManager sharedInstance];
    [v19 _handlePulseWidthMaximization];
  }

  v20 = [MEMORY[0x29EDBA068] defaultCenter];
  v21 = *MEMORY[0x29EDBB2A8];
  v22 = [MEMORY[0x29EDBA088] mainQueue];
  v23 = [v20 addObserverForName:v21 object:0 queue:v22 usingBlock:&__block_literal_global_292];

  v24 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v24, *(a1 + 32), _displayFiltersChanged, v21, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v25 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v25, *(a1 + 32), _displayFiltersChanged, *MEMORY[0x29EDC8410], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v26 = [MEMORY[0x29EDBA068] defaultCenter];
  v27 = +[AXBDisplayFilterManager sharedInstance];
  [v26 addObserver:v27 selector:sel__updateSettings_ name:*v4 object:0];

  v28 = [MEMORY[0x29EDBA068] defaultCenter];
  v29 = +[AXBDisplayFilterManager sharedInstance];
  [v28 addObserver:v29 selector:sel__updateSettings_ name:*v5 object:0];

  v30 = [MEMORY[0x29EDBDFA0] sharedInstance];
  [v30 registerUpdateBlock:&__block_literal_global_297 forRetrieveSelector:sel_classicInvertColors withListener:*(a1 + 32)];

  AXPerformBlockOnMainThreadAfterDelay();
  if (MADisplayFilterPrefGetCategoryEnabled())
  {
    v31 = +[AXBDisplayFilterManager sharedInstance];
    [v31 setLastCommittedReduceWhitePointEnabledStatus:1.0];

    MADisplayFilterPrefGetReduceWhitePointIntensity();
    v33 = v32;
    v34 = +[AXBDisplayFilterManager sharedInstance];
    [v34 setLastCommittedReduceWhitePointValue:v33];
  }
}

void __44__AXBDisplayFilterManager_initializeMonitor__block_invoke_2()
{
  v0 = +[AXBDisplayFilterManager sharedInstance];
  [v0 updateSettings];
}

void __44__AXBDisplayFilterManager_initializeMonitor__block_invoke_3()
{
  v0 = +[AXBDisplayFilterManager sharedInstance];
  [v0 updateSettings];
}

void __44__AXBDisplayFilterManager_initializeMonitor__block_invoke_4()
{
  v0 = +[AXBDisplayFilterManager sharedInstance];
  [v0 updateSettings];
}

- (void)_handlePulseWidthMaximization
{
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__AXBDisplayFilterManager__handlePulseWidthMaximization__block_invoke;
  aBlock[3] = &unk_29F2A4B10;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  [mEMORY[0x29EDBDFA0] registerUpdateBlock:v3 forRetrieveSelector:sel_pulseWidthMaximization withListener:self];

  v3[2](v3);
}

- (void)_handleFrameRateLimit
{
  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  [mEMORY[0x29EDBDFA0] registerUpdateBlock:&__block_literal_global_305 forRetrieveSelector:sel_shouldLimitDisplayRefreshRate withListener:self];

  __48__AXBDisplayFilterManager__handleFrameRateLimit__block_invoke();
}

void __48__AXBDisplayFilterManager__handleFrameRateLimit__block_invoke()
{
  v22 = *MEMORY[0x29EDCA608];
  v0 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v1 = [v0 shouldLimitDisplayRefreshRate];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [MEMORY[0x29EDBBAE0] serverIfRunning];
  v3 = [v2 displays];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v14;
    *&v5 = 67109378;
    v12 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (![v9 displayType])
        {
          [v9 setAccessibilityFrameRateLimitEnabled:v1];
          v10 = AXLogCommon();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = v12;
            v18 = v1;
            v19 = 2112;
            v20 = v9;
            _os_log_impl(&dword_29BBBD000, v10, OS_LOG_TYPE_INFO, "AX: Setting frame rate limit: %d on %@", buf, 0x12u);
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x29EDCA608];
}

- (void)_updateBrightnessFilters:(BOOL)filters
{
  if (filters)
  {
    v4 = _AXSScreenFilterApplied();
    if (v4 || ([MEMORY[0x29EDBDFA0] sharedInstance], v8 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v8, "classicInvertColors"), v3 = v8, v5))
    {
      v9 = v3;
      server = [MEMORY[0x29EDBDF40] server];
      brightnessFiltersEnabled = [server brightnessFiltersEnabled];

      if (v4)
      {
        if (!brightnessFiltersEnabled)
        {
          return;
        }
      }

      else
      {

        if ((brightnessFiltersEnabled & 1) == 0)
        {
          return;
        }
      }

      [MEMORY[0x29EDBDF40] server];
      [objc_claimAutoreleasedReturnValue() disableBrightnessFilters];
    }
  }

  else
  {
    [MEMORY[0x29EDBDF40] server];
    [objc_claimAutoreleasedReturnValue() restoreCachedBrightnessFilters];
  }

  MEMORY[0x2A1C71028]();
}

- (BOOL)_invertColorsEnabled
{
  if (_AXSInvertColorsEnabled())
  {
    return 1;
  }

  mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
  classicInvertColors = [mEMORY[0x29EDBDFA0] classicInvertColors];

  return classicInvertColors;
}

- (AXUIClient)displayFilterUIClient
{
  if ([(AXBDisplayFilterManager *)self _allowSoftwareFilters]&& !self->_displayFilterUIClient)
  {
    v3 = objc_alloc(MEMORY[0x29EDBDDD0]);
    v4 = [v3 initWithIdentifier:@"DisplayFilterIPrimaryClientID" serviceBundleName:*MEMORY[0x29EDBDE58]];
    displayFilterUIClient = self->_displayFilterUIClient;
    self->_displayFilterUIClient = v4;

    [(AXUIClient *)self->_displayFilterUIClient setDelegate:self];
  }

  v6 = self->_displayFilterUIClient;

  return v6;
}

- (void)_updateNotificationCache
{
  [(AXBDisplayFilterManager *)self setInvertColorsWasEnabled:[(AXBDisplayFilterManager *)self _invertColorsEnabled]];
  [(AXBDisplayFilterManager *)self setGrayscaleWasEnabled:_AXSGrayscaleEnabled() != 0];
  v3 = _AXSReduceWhitePointEnabled() != 0;

  [(AXBDisplayFilterManager *)self setReduceWhitePointWasEnabled:v3];
}

- (void)_repostNotificationIfNeeded
{
  [(AXBDisplayFilterManager *)self setIgnoringNotifications:1];
  invertColorsWasEnabled = [(AXBDisplayFilterManager *)self invertColorsWasEnabled];
  if (invertColorsWasEnabled != [(AXBDisplayFilterManager *)self _invertColorsEnabled])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x29EDC8478], 0, 0, 1u);
  }

  grayscaleWasEnabled = [(AXBDisplayFilterManager *)self grayscaleWasEnabled];
  if (_AXSGrayscaleEnabled() != grayscaleWasEnabled)
  {
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v6, *MEMORY[0x29EDC8428], 0, 0, 1u);
  }

  reduceWhitePointWasEnabled = [(AXBDisplayFilterManager *)self reduceWhitePointWasEnabled];
  if (_AXSReduceWhitePointEnabled() != reduceWhitePointWasEnabled)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    v9 = MEMORY[0x29EDC84E8];
    CFNotificationCenterPostNotification(LocalCenter, *MEMORY[0x29EDC84E8], 0, 0, 1u);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v10, *v9, 0, 0, 1u);
  }

  [(AXBDisplayFilterManager *)self _updateNotificationCache];

  [(AXBDisplayFilterManager *)self setIgnoringNotifications:0];
}

- (BOOL)_display:(id)_display matchesDisplayType:(unint64_t)type
{
  _displayCopy = _display;
  displayType = [_displayCopy displayType];
  v7 = [_displayCopy tag];

  v9 = (v7 & 0x20) == 0 && displayType != 2;
  if (type)
  {
    v9 = 0;
  }

  if (type == 1)
  {
    return (v7 & 0x20) != 0;
  }

  else
  {
    return v9;
  }
}

- (void)_updateCoreSupportForDisplayType:(unint64_t)type
{
  v46 = *MEMORY[0x29EDCA608];
  if (![(AXBDisplayFilterManager *)self _forceSoftwareFilters])
  {
    server = [MEMORY[0x29EDBDF40] server];
    supportsAccessibilityDisplayFilters = [server supportsAccessibilityDisplayFilters];

    _invertColorsEnabled = [(AXBDisplayFilterManager *)self _invertColorsEnabled];
    v30 = _AXSGrayscaleEnabled();
    CategoryEnabled = MADisplayFilterPrefGetCategoryEnabled();
    v8 = !_invertColorsEnabled;
    if (CategoryEnabled)
    {
      v8 = 0;
    }

    v31 = v8;
    v32 = _invertColorsEnabled;
    if (CategoryEnabled)
    {
      v9 = 0.89;
    }

    else
    {
      v9 = 1.0;
    }

    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    serverIfRunning = [MEMORY[0x29EDBBAE0] serverIfRunning];
    displays = [serverIfRunning displays];

    obj = displays;
    v12 = [displays countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v12)
    {
      v14 = v12;
      v15 = *v36;
      *&v13 = 138412802;
      v29 = v13;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          if ([(AXBDisplayFilterManager *)self _display:v17 matchesDisplayType:type, v29])
          {
            if ([v17 displayType] == 2)
            {
              didEnableHWFiltersForDisplayType = [(AXBDisplayFilterManager *)self didEnableHWFiltersForDisplayType];
              v19 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:type];
              v20 = [didEnableHWFiltersForDisplayType objectForKeyedSubscript:v19];
              bOOLValue = [v20 BOOLValue];

              if (bOOLValue)
              {
                [v17 setAllowsWirelessColorFiltering:1];
              }
            }

            [v17 invertsColors];
            [v17 setInvertsColors:v32];
            [v17 setAllowsExtendedDynamicRange:v31];
            if (![v17 displayType] && AXDeviceSupportsPulseWidthMaximization())
            {
              mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
              pulseWidthMaximization = [mEMORY[0x29EDBDFA0] pulseWidthMaximization];

              [v17 setPulseWidthMaximization:pulseWidthMaximization];
              v24 = AXLogCommon();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = [MEMORY[0x29EDBA070] numberWithBool:pulseWidthMaximization];
                v26 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v17, "pulseWidthMaximization")}];
                *buf = v29;
                v40 = v25;
                v41 = 2112;
                v42 = v26;
                v43 = 2112;
                v44 = v17;
                _os_log_impl(&dword_29BBBD000, v24, OS_LOG_TYPE_DEFAULT, "Enabling pulse width maximization on display: %@ %@ -> %@", buf, 0x20u);
              }
            }

            if ((supportsAccessibilityDisplayFilters & 1) == 0)
            {
              [v17 isGrayscale];
              [v17 setGrayscale:v30 != 0];
              *&v27 = v9;
              [v17 setMaximumBrightness:v27];
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v14);
    }
  }

  v28 = *MEMORY[0x29EDCA608];
}

- (void)_whitePointRampDown
{
  v28 = *MEMORY[0x29EDCA608];
  Current = CFAbsoluteTimeGetCurrent();
  [(AXBDisplayFilterManager *)self reduceWhitePointRampStartTime];
  v5 = Current - v4;
  [(AXBDisplayFilterManager *)self reduceWhitePointRampTime];
  v7 = log2(v5 / v6 + 1.0);
  [(AXBDisplayFilterManager *)self reduceWhitePointRampStartValue];
  v9 = v8;
  [(AXBDisplayFilterManager *)self reduceWhitePointRampEndValue];
  v11 = v10;
  [(AXBDisplayFilterManager *)self reduceWhitePointRampStartValue];
  v13 = v9 + (v11 - v12) * v7;
  if (v7 <= 1.0)
  {
    if (v7 - *&_whitePointRampDown_LastPercentage <= 0.01)
    {
      goto LABEL_9;
    }

    [(AXBDisplayFilterManager *)self _applyMatrixFilter:[(AXBDisplayFilterManager *)self reduceWhitePointRampDownFilter] whitePointReduction:0 displayType:v13];
    currentDisplayLinkManager = AXLogDisplayFilters();
    if (os_log_type_enabled(currentDisplayLinkManager, OS_LOG_TYPE_INFO))
    {
      v17 = [MEMORY[0x29EDBA070] numberWithDouble:v13];
      v18 = [MEMORY[0x29EDBA070] numberWithDouble:v7];
      v19 = MEMORY[0x29EDBA070];
      [(AXBDisplayFilterManager *)self reduceWhitePointRampEndValue];
      v20 = [v19 numberWithDouble:?];
      v22 = 138412802;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&dword_29BBBD000, currentDisplayLinkManager, OS_LOG_TYPE_INFO, "Apply ramp down: %@ -> percentage: %@ : startValue: %@", &v22, 0x20u);
    }
  }

  else
  {
    v14 = AXLogDisplayFilters();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [MEMORY[0x29EDBA070] numberWithDouble:v13];
      v22 = 138412290;
      v23 = v15;
      _os_log_impl(&dword_29BBBD000, v14, OS_LOG_TYPE_INFO, "Finish white point ramp down: %@", &v22, 0xCu);
    }

    currentDisplayLinkManager = [MEMORY[0x29EDBDF50] currentDisplayLinkManager];
    [currentDisplayLinkManager removeTarget:self selector:sel__whitePointRampDown];
    v7 = 0.0;
  }

  _whitePointRampDown_LastPercentage = *&v7;
LABEL_9:
  v21 = *MEMORY[0x29EDCA608];
}

- (void)_updateMatrixSupportForDisplayType:(unint64_t)type
{
  v54 = *MEMORY[0x29EDCA608];
  _forceSoftwareFilters = [(AXBDisplayFilterManager *)self _forceSoftwareFilters];
  [(AXBDisplayFilterManager *)self _invertColorsEnabled];
  v6 = +[AXBDisplayFilterManager sharedInstance];
  [v6 lastCommittedReduceWhitePointEnabledStatus];
  v8 = v7;

  CategoryEnabled = MADisplayFilterPrefGetCategoryEnabled();
  v10 = 0.0;
  v11 = 0.0;
  if (CategoryEnabled)
  {
    [(AXBDisplayFilterManager *)self lastCommittedReduceWhitePointValue];
    v10 = v12;
    MADisplayFilterPrefGetReduceWhitePointIntensity();
    v11 = v13;
    [(AXBDisplayFilterManager *)self setLastCommittedReduceWhitePointValue:?];
  }

  v14 = 1.0;
  if (!CategoryEnabled)
  {
    v14 = 0.0;
  }

  [(AXBDisplayFilterManager *)self setLastCommittedReduceWhitePointEnabledStatus:v14];
  Identity = MADisplayFilterCopySystemFilter();
  if (!Identity)
  {
    Identity = MADisplayFilterCreateIdentity();
  }

  [(AXBDisplayFilterManager *)self setDisplayFilterFromLastUpdate:Identity];
  if (_forceSoftwareFilters || ([MEMORY[0x29EDBDF40] server], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "supportsAccessibilityDisplayFilters"), v16, !v17))
  {
    if (!Identity)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!Identity)
  {
    goto LABEL_19;
  }

  v18 = MADisplayFilterCreateIdentity();
  v19 = 0x29EDBA000uLL;
  if (!v18)
  {
    v22 = 0;
    v23 = v11 <= 0.0001;
LABEL_25:
    didEnableHWFiltersForDisplayType = [(AXBDisplayFilterManager *)self didEnableHWFiltersForDisplayType];
    v34 = [*(v19 + 112) numberWithUnsignedInteger:type];
    v35 = [didEnableHWFiltersForDisplayType objectForKeyedSubscript:v34];
    bOOLValue = [v35 BOOLValue];

    if ((v22 & 1) == 0 && (bOOLValue & 1) == 0)
    {
      didEnableHWFiltersForDisplayType2 = [(AXBDisplayFilterManager *)self didEnableHWFiltersForDisplayType];

      if (!didEnableHWFiltersForDisplayType2)
      {
        v38 = objc_opt_new();
        [(AXBDisplayFilterManager *)self setDidEnableHWFiltersForDisplayType:v38];
      }

      didEnableHWFiltersForDisplayType3 = [(AXBDisplayFilterManager *)self didEnableHWFiltersForDisplayType];
      v40 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:type];
      [didEnableHWFiltersForDisplayType3 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:v40];
    }

    if ((v23 | AXDeviceIsJ5XX() ^ 1))
    {
      [(AXBDisplayFilterManager *)self _applyMatrixFilter:Identity whitePointReduction:type displayType:v11];
    }

    else
    {
      v41 = fmin(v11, 0.999);
      if (v8 == 0.0)
      {
        v10 = 0.0;
      }

      v42 = log2(vabdd_f64(v41, v10) + 1.0);
      [(AXBDisplayFilterManager *)self setReduceWhitePointRampStartTime:CFAbsoluteTimeGetCurrent()];
      [(AXBDisplayFilterManager *)self setReduceWhitePointRampTime:v42];
      [(AXBDisplayFilterManager *)self setReduceWhitePointRampEndValue:v41];
      [(AXBDisplayFilterManager *)self setReduceWhitePointRampStartValue:v10];
      [(AXBDisplayFilterManager *)self setReduceWhitePointRampDownFilter:Identity];
      v43 = AXLogDisplayFilters();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = [MEMORY[0x29EDBA070] numberWithDouble:v10];
        v45 = [MEMORY[0x29EDBA070] numberWithDouble:v41];
        v46 = [MEMORY[0x29EDBA070] numberWithDouble:v42];
        v48 = 138412802;
        v49 = v44;
        v50 = 2112;
        v51 = v45;
        v52 = 2112;
        v53 = v46;
        _os_log_impl(&dword_29BBBD000, v43, OS_LOG_TYPE_INFO, "White point start %@ -> end %@ : duration: %@", &v48, 0x20u);
      }

      currentDisplayLinkManager = [MEMORY[0x29EDBDF50] currentDisplayLinkManager];
      [currentDisplayLinkManager addTarget:self selector:sel__whitePointRampDown];
    }

    goto LABEL_16;
  }

  v20 = v18;
  v21 = CFEqual(v18, Identity);
  CFRelease(v20);
  v22 = 0;
  v23 = v11 <= 0.0001;
  if (v11 > 0.0001 || !v21)
  {
    goto LABEL_25;
  }

  didEnableHWFiltersForDisplayType4 = [(AXBDisplayFilterManager *)self didEnableHWFiltersForDisplayType];
  v25 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:type];
  v26 = [didEnableHWFiltersForDisplayType4 objectForKeyedSubscript:v25];
  bOOLValue2 = [v26 BOOLValue];

  if (bOOLValue2)
  {
    v22 = 1;
    v23 = 1;
    v19 = 0x29EDBA000;
    goto LABEL_25;
  }

LABEL_16:
  CFRelease(Identity);
LABEL_17:
  if (_forceSoftwareFilters)
  {
    v28 = MEMORY[0x29EDB8EB0];
LABEL_22:
    [(AXBDisplayFilterManager *)self setSoftwareFiltersEnabled:_forceSoftwareFilters];
    v29 = objc_opt_new();
    v30 = [MEMORY[0x29EDBA070] numberWithBool:_forceSoftwareFilters];
    [v29 setObject:v30 forKey:@"showFilters"];

    [v29 setObject:v28 forKey:@"forceSoftwareFilter"];
    displayFilterUIClient = [(AXBDisplayFilterManager *)self displayFilterUIClient];
    [displayFilterUIClient sendAsynchronousMessage:v29 withIdentifier:0 targetAccessQueue:0 completion:0];

    goto LABEL_23;
  }

LABEL_19:
  if ([(AXBDisplayFilterManager *)self _allowSoftwareFilters]&& [(AXBDisplayFilterManager *)self softwareFiltersEnabled])
  {
    v28 = MEMORY[0x29EDB8EA8];
    goto LABEL_22;
  }

LABEL_23:
  v32 = *MEMORY[0x29EDCA608];
}

- (void)_applyMatrixFilter:(__MADisplayFilter *)filter whitePointReduction:(double)reduction displayType:(unint64_t)type
{
  v71 = *MEMORY[0x29EDCA608];
  v8 = _AXSGrayscaleEnabled();
  if (_AXSInvertColorsEnabled())
  {
    classicInvertColors = 1;
  }

  else
  {
    mEMORY[0x29EDBDFA0] = [MEMORY[0x29EDBDFA0] sharedInstance];
    classicInvertColors = [mEMORY[0x29EDBDFA0] classicInvertColors];
  }

  v44 = 0;
  memset(v43, 0, sizeof(v43));
  MADisplayFilterGetMatrix();
  v11 = 0.0;
  v68 = 0.0;
  v12 = vcvt_f32_f64(*(v43 + 8));
  v13 = *&v12.i32[1];
  v37 = v12;
  v38 = vcvt_f32_f64(*(&v43[1] + 8));
  v14 = v38.f32[1];
  v69 = vcvt_hight_f32_f64(v12, *(&v43[1] + 8));
  v15 = vcvt_f32_f64(*(&v43[2] + 8));
  v16 = *&v15.i32[1];
  *&v17.f64[0] = vcvt_f32_f64(0);
  v35 = v17;
  v36 = v15;
  v18 = *(v17.f64 + 1);
  v70 = vcvt_hight_f32_f64(v15, 0);
  MADisplayFilterGetGain();
  if (reduction > 0.0001)
  {
    if (classicInvertColors)
    {
      v20 = v11;
      if (v8)
      {
        v11 = reduction * 0.05 + v20;
        v68 = v11;
        v21 = vdupq_lane_s64(COERCE__INT64(reduction * 0.05), 0);
        *v69.f32 = vcvt_f32_f64(vaddq_f64(v21, vcvtq_f64_f32(v37)));
        *&v69.u32[2] = vcvt_f32_f64(vaddq_f64(v21, vcvtq_f64_f32(v38)));
        v22 = vaddq_f64(v21, vcvtq_f64_f32(*&v35.f64[0]));
        *&v22.f64[0] = vcvt_f32_f64(v22);
        *v70.f32 = vcvt_f32_f64(vaddq_f64(v21, vcvtq_f64_f32(v36)));
        v70.i64[1] = *&v22.f64[0];
        v37.i32[0] = v69.i32[0];
        v38.i32[0] = v69.i32[2];
        v13 = v69.f32[1];
        v14 = v69.f32[3];
        v35 = v22;
        v16 = v70.f32[1];
        v36.i32[0] = v70.i32[0];
        v18 = *(v22.f64 + 1);
      }

      else
      {
        v11 = reduction * 0.3 + v20;
        v14 = reduction * 0.3 + v38.f32[1];
        v68 = v11;
        v69.f32[3] = v14;
        v18 = reduction * 0.3 + v18;
        v70.f32[3] = v18;
      }
    }

    else if (1.0 - reduction < v19)
    {
      v19 = (1.0 - reduction) * 0.95 + 0.05;
    }
  }

  v23 = 0.05;
  if (v19 >= 0.05)
  {
    v23 = v19;
    if (v19 > 1.0)
    {
      v23 = 1.0;
    }
  }

  v24 = AXLogDisplayFilters();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134220544;
    v47 = v23;
    v48 = 2048;
    reductionCopy = reduction;
    v50 = 2048;
    v51 = v11;
    v52 = 2048;
    v53 = v37.f32[0];
    v54 = 2048;
    v55 = v13;
    v56 = 2048;
    v57 = v38.f32[0];
    v58 = 2048;
    v59 = v14;
    v60 = 2048;
    v61 = v36.f32[0];
    v62 = 2048;
    v63 = v16;
    v64 = 2048;
    v65 = *v35.f64;
    v66 = 2048;
    v67 = v18;
    _os_log_debug_impl(&dword_29BBBD000, v24, OS_LOG_TYPE_DEBUG, "Setting Matrix; Gain: %f WhitePointReduction: %f Matrix: [ [%0.5f, %0.5f, %0.5f], [%0.5f, %0.5f, %0.5f], [%0.5f, %0.5f, %0.5f] ]", buf, 0x70u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  serverIfRunning = [MEMORY[0x29EDBBAE0] serverIfRunning];
  displays = [serverIfRunning displays];

  v27 = [displays countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v40;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(displays);
        }

        v32 = *(*(&v39 + 1) + 8 * i);
        if ([(AXBDisplayFilterManager *)self _display:v32 matchesDisplayType:type, *&v35])
        {
          v30 = v23;
          *&v33 = v30;
          [v32 setAccessibilityColorMatrix:&v68 scale:v33];
        }
      }

      v28 = [displays countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v28);
  }

  v34 = *MEMORY[0x29EDCA608];
}

- (void)updateSettings
{
  if (![(AXBDisplayFilterManager *)self ignoringNotifications])
  {
    MAPreferencesSetDomainOverride();
    [(AXBDisplayFilterManager *)self _updateMatrixSupportForDisplayType:0];
    [(AXBDisplayFilterManager *)self _updateCoreSupportForDisplayType:0];
    MAPreferencesSetDomainOverride();
    [(AXBDisplayFilterManager *)self _updateMatrixSupportForDisplayType:1];
    [(AXBDisplayFilterManager *)self _updateCoreSupportForDisplayType:1];

    MAPreferencesSetDomainOverride();
  }
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x29EDBB2A8], 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, *MEMORY[0x29EDC8410], 0);
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = AXBDisplayFilterManager;
  [(AXBDisplayFilterManager *)&v6 dealloc];
}

@end
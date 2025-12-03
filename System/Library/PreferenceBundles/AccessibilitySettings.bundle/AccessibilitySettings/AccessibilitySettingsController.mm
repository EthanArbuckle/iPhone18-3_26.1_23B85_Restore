@interface AccessibilitySettingsController
+ (void)formatSearchEntries:(id)entries parent:(id)parent;
- (AccessibilitySettingsController)init;
- (id)_airPodDevices;
- (id)_prepareAirPodSpecifierForDevices:(id)devices;
- (id)_roundedSettingsIcon:(id)icon;
- (id)_tableCellImageForImage:(id)image;
- (id)adaptiveVoiceShortcutsEnabled:(id)enabled;
- (id)assistiveTouchHeadTrackingEnabled:(id)enabled;
- (id)commandAndControlEnabled:(id)enabled;
- (id)descriptiveVideoEnabled:(id)enabled;
- (id)guidedAccessEnabled:(id)enabled;
- (id)hapticMusicEnabled:(id)enabled;
- (id)hoverTextEnabled:(id)enabled;
- (id)liveSpeechEnabled:(id)enabled;
- (id)onDeviceEyeTrackingEnabled:(id)enabled;
- (id)rttEnabled:(id)enabled;
- (id)scatEnabled:(id)enabled;
- (id)soundDetectionIsRunning:(id)running;
- (id)specifierForKey:(id)key;
- (id)specifierTitle:(id)title;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tripleClickStatus:(id)status;
- (id)voiceOverTouchEnabled:(id)enabled;
- (id)zoomTouchEnabled:(id)enabled;
- (void)_handleInvertColorsEnabled:(BOOL)enabled specifier:(id)specifier;
- (void)_monitorForPairedAirPods;
- (void)_monitorPencilSupport;
- (void)_setPencilSpecifierShown:(BOOL)shown;
- (void)_showAirPodsSpecifierWithAirPods:(id)pods;
- (void)_updateFaceIDAndAttentionPaneForOneness;
- (void)confirmDisablingWithString:(id)string forKey:(id)key confirmedBlock:(id)block canceledBlock:(id)canceledBlock inWindow:(id)window;
- (void)dealloc;
- (void)deferredURLStateUpdated:(id)updated;
- (void)deviceMonitorDidDetectDeviceEvent:(id)event;
- (void)disableOption:(id)option;
- (void)handleReloadSpecifiers;
- (void)handleResourcesDictionaryDidChange:(id)change;
- (void)handleTeachableMomentsNotification;
- (void)setSpecifier:(id)specifier;
- (void)showPersonalVoiceController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBecomeActive;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation AccessibilitySettingsController

- (AccessibilitySettingsController)init
{
  v71.receiver = self;
  v71.super_class = AccessibilitySettingsController;
  v2 = [(AccessibilitySettingsBaseController *)&v71 init];
  if (v2)
  {
    +[AccessibilitySettingsControllerUtilities initializeTipKit];
    if (+[NSThread isMainThread])
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _accessibilityiTunesSettings, kAXSiTunesAccessibilityStatusChangedNotification, 0, 1028);
      v4 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v4, v2, _accessibilityiTunesSettings, kAXSVoiceOverTouchEnabledNotification, 0, 1028);
      v5 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v5, v2, _accessibilityiTunesSettings, kAXSPreferredFontSizeChangedNotification, 0, 1028);
      v6 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v6, v2, _accessibilityiTunesSettings, kAXSZoomTouchEnabledNotification, 0, 1028);
      v7 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v7, v2, _accessibilityiTunesSettings, kAXSInvertColorsEnabledNotification, 0, 1028);
      v8 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v8, v2, _accessibilityiTunesSettings, kAXSGrayscaleEnabledNotification, 0, 1028);
      v9 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v9, v2, _accessibilityiTunesSettings, kAXSTripleHomeEnabledNotification, 0, 1028);
      v10 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v10, v2, _accessibilityiTunesSettings, kAXSAssistiveTouchEnabledNotification, 0, 1028);
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(LocalCenter, v2, _accessibilityiTunesSettings, kAXSAssistiveTouchScannerEnabledNotification, 0, 1028);
      v12 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(v12, v2, _accessibilityiTunesSettings, kAXSCommandAndControlEnabledNotification, 0, 1028);
      v13 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(v13, v2, _accessibilityiTunesSettings, kAXSFullKeyboardAccessEnabledNotification, 0, 1028);
      v14 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(v14, v2, _accessibilityiTunesSettings, kAXSPhotosensitiveMitigationEnabledNotification, 0, 1028);
      v15 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(v15, v2, _accessibilityiTunesSettings, kAXSClarityUIEnabledNotification, 0, 1028);
      v16 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(v16, v2, _accessibilityiTunesSettings, kAXSHoverTextEnabledNotification, 0, 1028);
      v17 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v17, v2, _accessibilityiTunesSettings, kAXSHomeClickSpeedChangedNotification, 0, 1028);
      v18 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v18, v2, _accessibilityiTunesSettings, @"com.apple.mediaaccessibility.audibleMediaSettingsChanged", 0, 1028);
      v19 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(v19, v2, _accessibilityiTunesSettings, kAXSAssistiveTouchScannerEnabledNotification, 0, 1028);
      v20 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(v20, v2, _accessibilityiTunesSettings, kAXSVisualAlertEnabledNotification, 0, 1028);
      v21 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(v21, v2, _accessibilityiTunesSettings, kAXSHapticMusicPreferenceDidChangeNotification, 0, 1028);
      v22 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v22, v2, _handleContinuityDisplayStateChanged, kAXSContinuityDisplayStateChangedNotification, 0, 1028);
      v23 = +[NSNotificationCenter defaultCenter];
      [v23 addObserver:v2 selector:"_orientationChange:" name:UIDeviceOrientationDidChangeNotification object:0];

      v24 = +[RTTServer sharedInstance];
      [v24 primeRTTServer];

      v25 = +[RTTTelephonyUtilities sharedUtilityProvider];
      objc_initWeak(&location, v2);
      v26 = +[AXSettings sharedInstance];
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = __39__AccessibilitySettingsController_init__block_invoke;
      v68[3] = &unk_255388;
      objc_copyWeak(&v69, &location);
      v27 = objc_loadWeakRetained(&location);
      [v26 registerUpdateBlock:v68 forRetrieveSelector:"touchAccommodationsEnabled" withListener:v27];

      objc_destroyWeak(&v69);
      v28 = +[RTTSettings sharedInstance];
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = __39__AccessibilitySettingsController_init__block_invoke_2;
      v66[3] = &unk_255388;
      objc_copyWeak(&v67, &location);
      [v28 registerUpdateBlock:v66 forRetrieveSelector:"TTYSoftwareEnabled" withListener:v2];

      v29 = +[RTTSettings sharedInstance];
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = __39__AccessibilitySettingsController_init__block_invoke_4;
      v64[3] = &unk_255388;
      objc_copyWeak(&v65, &location);
      [v29 registerUpdateBlock:v64 forRetrieveSelector:"TTYHardwareEnabled" withListener:v2];

      v30 = +[AXSDSettings sharedInstance];
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = __39__AccessibilitySettingsController_init__block_invoke_6;
      v62[3] = &unk_255388;
      objc_copyWeak(&v63, &location);
      [v30 registerUpdateBlock:v62 forRetrieveSelector:"soundDetectionState" withListener:v2];

      [v2 _monitorPencilSupport];
      v31 = AXAssetAndDataClient();
      v32 = +[AXAccessQueue mainAccessQueue];
      [v31 sendAsynchronousMessage:&__NSDictionary0__struct withIdentifier:3 targetAccessQueue:v32 completion:0];

      objc_destroyWeak(&v63);
      objc_destroyWeak(&v65);
      objc_destroyWeak(&v67);
      objc_destroyWeak(&location);
    }

    v33 = settingsLocString(@"PencilTitle", @"Accessibility");
    v34 = [PSSpecifier preferenceSpecifierNamed:v33 target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    v35 = *(v2 + 182);
    *(v2 + 182) = v34;

    [*(v2 + 182) ax_applyCustomAccessibilityGraphicIconNamed:@"pencil"];
    v36 = +[AXAirPodSettingsManager sharedInstance];
    titleAndAssetNameForSettings = [v36 titleAndAssetNameForSettings];

    v38 = AXAirPodsLocalizedStringForKey();
    if ([titleAndAssetNameForSettings count] == &dword_0 + 2)
    {
      v39 = [titleAndAssetNameForSettings objectAtIndexedSubscript:0];

      v40 = [titleAndAssetNameForSettings objectAtIndexedSubscript:1];
      v38 = v39;
    }

    else
    {
      v40 = @"airpods";
    }

    v41 = [PSSpecifier preferenceSpecifierNamed:v38 target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    v42 = *(v2 + 198);
    *(v2 + 198) = v41;

    [*(v2 + 198) setProperty:@"AIRPODS" forKey:PSIDKey];
    [*(v2 + 198) ax_applyCustomAccessibilityGraphicIconNamed:v40];
    v60[1] = _NSConcreteStackBlock;
    v60[2] = 3221225472;
    v60[3] = __39__AccessibilitySettingsController_init__block_invoke_7;
    v60[4] = &unk_2553B0;
    v43 = v2;
    v61 = v43;
    AXPerformBlockAsynchronouslyOnMainThread();
    v44 = +[AXPointerDeviceManager sharedInstance];
    [v44 addObserver:v43];

    objc_initWeak(&location, v43);
    v45 = +[AXSettings sharedInstance];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = __39__AccessibilitySettingsController_init__block_invoke_8;
    v59[3] = &unk_255388;
    objc_copyWeak(v60, &location);
    v46 = objc_loadWeakRetained(&location);
    [v45 registerUpdateBlock:v59 forRetrieveSelector:"isAdaptiveVoiceShortcutsEnabled" withListener:v46];

    objc_destroyWeak(v60);
    if (AXDeviceSupportsOnDeviceEyeTracking())
    {
      v47 = +[AXSettings sharedInstance];
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = __39__AccessibilitySettingsController_init__block_invoke_9;
      v57[3] = &unk_255388;
      objc_copyWeak(&v58, &location);
      [v47 registerUpdateBlock:v57 forRetrieveSelector:"assistiveTouchMouseOnDeviceEyeTrackingEnabled" withListener:v43];

      objc_destroyWeak(&v58);
    }

    v48 = +[AXSettings sharedInstance];
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = __39__AccessibilitySettingsController_init__block_invoke_10;
    v55[3] = &unk_255388;
    objc_copyWeak(&v56, &location);
    [v48 registerUpdateBlock:v55 forRetrieveSelector:"assistiveTouchHeadTrackingEnabled" withListener:v43];

    objc_destroyWeak(&v56);
    v49 = +[AXSettings sharedInstance];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = __39__AccessibilitySettingsController_init__block_invoke_11;
    v53[3] = &unk_255388;
    objc_copyWeak(&v54, &location);
    v50 = objc_loadWeakRetained(&location);
    [v49 registerUpdateBlock:v53 forRetrieveSelector:"accessibilityReaderEnabled" withListener:v50];

    objc_destroyWeak(&v54);
    v51 = v43;
    objc_destroyWeak(&location);
  }

  return v2;
}

void __39__AccessibilitySettingsController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __39__AccessibilitySettingsController_init__block_invoke_2(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void __39__AccessibilitySettingsController_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __39__AccessibilitySettingsController_init__block_invoke_4(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockAsynchronouslyOnMainThread();
  objc_destroyWeak(&v1);
}

void __39__AccessibilitySettingsController_init__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __39__AccessibilitySettingsController_init__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __39__AccessibilitySettingsController_init__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __39__AccessibilitySettingsController_init__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __39__AccessibilitySettingsController_init__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __39__AccessibilitySettingsController_init__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, self);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [*(&self->_pencilSpecifier + 6) invalidate];
  v6 = +[AXPointerDeviceManager sharedInstance];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = AccessibilitySettingsController;
  [(AccessibilitySettingsBaseController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AccessibilitySettingsController;
  [(AccessibilitySettingsController *)&v4 viewDidLoad];
  view = [(AccessibilitySettingsController *)self view];
  [view setAccessibilityIdentifier:@"AccessibilitySettingsControllerView"];
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = AccessibilitySettingsController;
  [(AccessibilitySettingsController *)&v10 viewDidAppear:appear];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v6 bundleURL];
  v8 = [v4 initWithKey:@"ROOT_LEVEL_TITLE" table:@"Accessibility" locale:v5 bundleURL:bundleURL];

  v9 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Accessibility"];
  [(AccessibilitySettingsController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.accessibility" title:v8 localizedNavigationComponents:&__NSArray0__struct deepLink:v9];
}

- (void)handleResourcesDictionaryDidChange:(id)change
{
  if (change)
  {
    [(AccessibilitySettingsController *)self handleURL:change withCompletion:0];
  }
}

- (void)deferredURLStateUpdated:(id)updated
{
  object = [updated object];
  [(AccessibilitySettingsController *)self setDeferredURLState:object];
  resourcesDictionary = [object resourcesDictionary];
  [(AccessibilitySettingsController *)self handleResourcesDictionaryDidChange:resourcesDictionary];
}

- (void)setSpecifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = AccessibilitySettingsController;
  specifierCopy = specifier;
  [(AccessibilitySettingsController *)&v8 setSpecifier:specifierCopy];
  v5 = [specifierCopy objectForKeyedSubscript:{@"DeferredURLState", v8.receiver, v8.super_class}];

  resourcesDictionary = [v5 resourcesDictionary];
  [(AccessibilitySettingsController *)self handleResourcesDictionaryDidChange:resourcesDictionary];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"deferredURLStateUpdated:" name:@"DeferredURLStateUpdated" object:0];
}

- (void)_monitorPencilSupport
{
  v3 = [NSMutableArray arrayWithObjects:&off_2798B8, 0];
  [v3 addObject:&off_2798D0];
  v12[0] = @"DeviceUsagePage";
  v12[1] = @"PrimaryUsage";
  v13[0] = &off_2798E8;
  v13[1] = &off_279900;
  v12[2] = @"ProductIDArray";
  v13[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  v5 = [AXDeviceMonitor alloc];
  v6 = +[NSRunLoop mainRunLoop];
  v7 = [v5 initWithMatchingDictionary:v4 callbackRunLoop:v6];
  v8 = *(&self->_pencilSpecifier + 6);
  *(&self->_pencilSpecifier + 6) = v7;

  [*(&self->_pencilSpecifier + 6) setDelegate:self];
  [*(&self->_pencilSpecifier + 6) begin];
  v9 = AXLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Monitoring for pencils: %@", buf, 0xCu);
  }
}

- (id)_airPodDevices
{
  v2 = +[AXAirPodSettingsManager sharedInstance];
  pairedAirPods = [v2 pairedAirPods];

  return pairedAirPods;
}

- (void)_monitorForPairedAirPods
{
  _airPodDevices = [(AccessibilitySettingsController *)self _airPodDevices];
  [(AccessibilitySettingsController *)self _showAirPodsSpecifierWithAirPods:_airPodDevices];
}

- (id)_prepareAirPodSpecifierForDevices:(id)devices
{
  devicesCopy = devices;
  if ([devicesCopy count])
  {
    [devicesCopy count];
    [*(&self->_pencilMonitor + 6) setDetailControllerClass:objc_opt_class()];
    v5 = AXLogAirPodSettings();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = devicesCopy;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Loading class for AirPods: %@", &v8, 0xCu);
    }

    [*(&self->_pencilMonitor + 6) setProperty:devicesCopy forKey:@"AirPods"];
    v6 = *(&self->_pencilMonitor + 6);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_showAirPodsSpecifierWithAirPods:(id)pods
{
  podsCopy = pods;
  if (AXHasCapability())
  {
    specifiers = [(AccessibilitySettingsController *)self specifiers];
    v6 = [specifiers indexOfObjectPassingTest:&__block_literal_global];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = AXLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [AccessibilitySettingsController _showAirPodsSpecifierWithAirPods:v7];
      }
    }

    v8 = [(AccessibilitySettingsController *)self _prepareAirPodSpecifierForDevices:podsCopy];
    if (([*&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers] containsObject:*(&self->_pencilMonitor + 6)] & 1) == 0)
    {
      [(AccessibilitySettingsController *)self insertSpecifier:*(&self->_pencilMonitor + 6) atIndex:v6 animated:1];
    }
  }

  else
  {
    [(AccessibilitySettingsController *)self removeSpecifier:*(&self->_pencilMonitor + 6) animated:1];
  }
}

BOOL __68__AccessibilitySettingsController__showAirPodsSpecifierWithAirPods___block_invoke(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = [a2 properties];
  v5 = [v4 objectForKey:PSIDKey];
  v6 = [v5 isEqualToString:@"GENERAL_HEADING"];

  return v6;
}

- (void)willBecomeActive
{
  v3.receiver = self;
  v3.super_class = AccessibilitySettingsController;
  [(AccessibilitySettingsController *)&v3 willBecomeActive];
  [(AccessibilitySettingsController *)self deviceMonitorDidDetectDeviceEvent:*(&self->_pencilSpecifier + 6)];
}

- (void)deviceMonitorDidDetectDeviceEvent:(id)event
{
  v4 = *(&self->_pencilSpecifier + 6);
  if (v4 == event)
  {
    copyDevices = [v4 copyDevices];
    v6 = [copyDevices count];
    v7 = AXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = copyDevices;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Pencil devices: %@", &v11, 0xCu);
    }

    if (v6)
    {
      anyObject = [copyDevices anyObject];

      v9 = IOHIDDeviceGetProperty(anyObject, @"ProductID");
      v10 = AXLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Found pencil product: %@", &v11, 0xCu);
      }

      if (v9)
      {
        [*(&self->_easyReachCache + 6) setProperty:v9 forKey:@"ProductID"];
      }
    }

    [(AccessibilitySettingsController *)self _setPencilSpecifierShown:v6 != 0];
  }
}

- (void)handleReloadSpecifiers
{
  v3 = *(&self->_didConfirmDisabling + 6);
  v4 = v3 < 1;
  v5 = v3 - 1;
  if (v4)
  {
    view = [(AccessibilitySettingsController *)self view];
    [view setNeedsLayout];

    [(AccessibilitySettingsController *)self reloadSpecifiers];
  }

  else
  {
    *(&self->_didConfirmDisabling + 6) = v5;
  }
}

+ (void)formatSearchEntries:(id)entries parent:(id)parent
{
  parentCopy = parent;
  entriesCopy = entries;
  v7 = +[NSMutableArray array];
  +[NSMutableArray array];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __62__AccessibilitySettingsController_formatSearchEntries_parent___block_invoke;
  v11[3] = &unk_255418;
  v12 = v7;
  v14 = v13 = parentCopy;
  v8 = v14;
  v9 = parentCopy;
  v10 = v7;
  [entriesCopy enumerateObjectsUsingBlock:v11];
  [entriesCopy removeObjectsInArray:v8];
  [entriesCopy addObjectsFromArray:v10];
}

void __62__AccessibilitySettingsController_formatSearchEntries_parent___block_invoke(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = [v23 identifier];
  v4 = [v3 isEqualToString:@"HOME_CLICK_TITLE"];

  if (v4)
  {
    if (!AXSettingsRestFingerToOpenIsAvailable())
    {
      goto LABEL_16;
    }

    v5 = settingsLocString(@"RestingUnlockSetting", @"HomeClickSettings");
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:0 set:0 get:0 detail:0 cell:6 edit:0];

    v7 = [PSSearchEntry alloc];
    v8 = v6;
    v9 = v23;
LABEL_10:
    v14 = [v7 initWithSpecifier:v8 parent:v9];
    [*(a1 + 32) addObject:v14];
LABEL_11:

    goto LABEL_16;
  }

  v10 = [v23 identifier];
  v11 = [v10 isEqualToString:@"KEYBOARDS"];

  if (v11)
  {
    if (!AXDeviceHas3DTouch())
    {
      goto LABEL_16;
    }

    if (AXDeviceHasLongPress3dTouch())
    {
      v12 = @"HAPTIC_TOUCH";
    }

    else
    {
      v12 = @"FORCE_TOUCH";
    }

    v13 = settingsLocString(v12, @"Accessibility");
    v6 = [PSSpecifier preferenceSpecifierNamed:v13 target:0 set:0 get:0 detail:0 cell:2 edit:0];

    v7 = [PSSearchEntry alloc];
    v9 = *(a1 + 40);
    v8 = v6;
    goto LABEL_10;
  }

  v15 = [v23 identifier];
  v16 = [v15 isEqualToString:@"GRAY_SCALE"];

  if (v16)
  {
    [*(a1 + 48) addObject:v23];
  }

  else
  {
    v17 = [v23 identifier];
    v18 = [v17 isEqualToString:@"DISPLAY_FILTERS"];

    if (v18)
    {
      v19 = settingsLocString(@"DISPLAY_FILTER_COLOR_TITLE", @"DisplayFilterColorSettings");
      v6 = [PSSpecifier preferenceSpecifierNamed:v19 target:0 set:0 get:0 detail:0 cell:6 edit:0];

      v14 = [[PSSearchEntry alloc] initWithSpecifier:v6 parent:v23];
      [*(a1 + 32) addObject:v14];
      v20 = settingsLocString(@"GRAYSCALE", @"DisplayFilterColorSettings");
      v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:0 set:0 get:0 detail:0 cell:6 edit:0];

      v22 = [[PSSearchEntry alloc] initWithSpecifier:v21 parent:v14];
      [*(a1 + 32) addObject:v22];

      goto LABEL_11;
    }
  }

LABEL_16:
}

- (id)specifierTitle:(id)title
{
  v4 = settingsLocString(title, @"AccessibilityTitles");
  view = [(AccessibilitySettingsController *)self view];
  v6 = _UIAdaptLocalizedStringForView();

  return v6;
}

- (void)willMoveToParentViewController:(id)controller
{
  v8.receiver = self;
  v8.super_class = AccessibilitySettingsController;
  [(AccessibilitySettingsController *)&v8 willMoveToParentViewController:?];
  if (!controller)
  {
    parentViewController = [(AccessibilitySettingsController *)self parentViewController];
    navigationItem = [parentViewController navigationItem];
    [navigationItem setTitleView:0];

    navigationItem2 = [(AccessibilitySettingsController *)self navigationItem];
    [navigationItem2 setTitleView:0];
  }
}

- (id)specifiers
{
  v3 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_85;
  }

  v121 = OBJC_IVAR___PSListController__specifiers;
  v4 = [objc_allocWithZone(NSMutableArray) init];
  traitCollection = [(AccessibilitySettingsController *)self traitCollection];
  pe_isSettingsFeatureDescriptionCellSupported = [traitCollection pe_isSettingsFeatureDescriptionCellSupported];

  if (pe_isSettingsFeatureDescriptionCellSupported)
  {
    v7 = [PSSpecifier groupSpecifierWithID:@"ACCESSIBILITY_PLACARD_GROUP"];
    [v4 addObject:v7];
    v8 = settingsLocString(@"ROOT_LEVEL_TITLE", @"Accessibility");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:-1 edit:0];

    [v9 setProperty:objc_opt_class() forKey:PSCellClassKey];
    IsPad = AXDeviceIsPad();
    v11 = @"helpkit://open?topic=iph3e2e4367";
    if (IsPad)
    {
      v11 = @"helpkit://open?topic=ipad9a2465f9";
    }

    v12 = v11;
    v13 = AXLocStringKeyForModel();
    v14 = settingsLocString(v13, @"Accessibility");
    v15 = [NSString localizedStringWithFormat:v14, v12];

    [v9 setProperty:v15 forKey:PSTableCellSubtitleTextKey];
    v16 = PSIDKey;
    [v9 setProperty:@"ACCESSIBILITY_PLACARD" forKey:PSIDKey];
    [v9 setProperty:@"com.apple.graphic-icon.accessibility" forKey:PSIconUTTypeIdentifierKey];
    [v4 addObject:v9];
  }

  else
  {
    v16 = PSIDKey;
  }

  v17 = [(AccessibilitySettingsController *)self specifierTitle:@"VISION"];
  v18 = [PSSpecifier groupSpecifierWithName:v17];

  [v18 setProperty:@"VISION" forKey:v16];
  [v4 addObject:v18];
  if ([(AccessibilitySettingsBaseController *)self isSettingAvailableOnPlatform])
  {
    v19 = [(AccessibilitySettingsController *)self specifierTitle:@"VOICEOVER_TITLE"];
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:"voiceOverTouchEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v20 setProperty:@"VOICEOVER_TITLE" forKey:v16];
    [v20 setProperty:@"VoiceOverSettings" forKey:PSSpecifierSearchPlistKey];
    [v20 ax_applyCustomAccessibilityGraphicIconNamed:@"voiceover"];
    [v4 addObject:v20];
    v21 = [(AccessibilitySettingsController *)self specifierTitle:@"ZOOM_TITLE"];
    v18 = [PSSpecifier preferenceSpecifierNamed:v21 target:self set:0 get:"zoomTouchEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v18 setProperty:@"ZOOM_TITLE" forKey:v16];
    [v18 ax_applyCustomAccessibilityGraphicIconNamed:@"zoom"];
    [v4 addObject:v18];
  }

  if (AXHasCapability())
  {
    v22 = [(AccessibilitySettingsController *)self specifierTitle:@"HOVERTEXT_TITLE"];
    v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:0 get:"hoverTextEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v23 setProperty:@"HOVERTEXT_TITLE" forKey:v16];
    [v23 ax_applyCustomAccessibilityGraphicIconNamed:@"hovertext"];
    [v23 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v4 addObject:v23];
    v18 = v23;
  }

  v24 = [(AccessibilitySettingsController *)self specifierTitle:@"DISPLAY_AND_TEXT"];
  v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v25 setProperty:@"DISPLAY_AND_TEXT" forKey:v16];
  [v25 ax_applyCustomAccessibilityGraphicIconNamed:@"text.size"];
  [v4 addObject:v25];
  v26 = [(AccessibilitySettingsController *)self specifierTitle:@"MOTION_TITLE"];
  v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v27 setProperty:@"MOTION_TITLE" forKey:v16];
  [v27 ax_applyCustomAccessibilityGraphicIconNamed:@"motion"];
  [v4 addObject:v27];
  if (AXHasCapability())
  {
    v28 = @"READ_AND_SPEAK_TITLE";
  }

  else
  {
    v28 = @"SPEECH_TITLE";
  }

  v29 = [(AccessibilitySettingsController *)self specifierTitle:v28];
  v30 = [PSSpecifier preferenceSpecifierNamed:v29 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v30 setProperty:@"SPEECH_TITLE" forKey:v16];
  [v30 ax_applyCustomAccessibilityGraphicIconNamed:@"spoken.content"];
  v31 = PSSpecifierSearchPlistKey;
  [v30 setProperty:@"SpeechSettings" forKey:PSSpecifierSearchPlistKey];
  [v4 addObject:v30];
  if ([(AccessibilitySettingsBaseController *)self isSettingAvailableOnPlatform])
  {
    v32 = [(AccessibilitySettingsController *)self specifierTitle:@"DESCRIPTIVE_VIDEO_SETTING"];
    v33 = [PSSpecifier preferenceSpecifierNamed:v32 target:self set:0 get:"descriptiveVideoEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v33 setProperty:@"DESCRIPTIVE_VIDEO" forKey:v16];
    [v33 ax_applyCustomAccessibilityGraphicIconNamed:@"audio.descriptions"];
    [v4 addObject:v33];
    v30 = v33;
  }

  v34 = [(AccessibilitySettingsController *)self specifierTitle:@"MOBILITY_HEADING"];
  v35 = [PSSpecifier groupSpecifierWithName:v34];

  [v35 setProperty:@"MOBILITY_HEADING" forKey:v16];
  [v4 addObject:v35];
  v36 = [(AccessibilitySettingsController *)self specifierTitle:@"TOUCH"];
  v37 = [PSSpecifier preferenceSpecifierNamed:v36 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v37 setProperty:@"TOUCH_REACHABILITY_TITLE" forKey:v16];
  [v37 ax_applyCustomAccessibilityGraphicIconNamed:@"touch"];
  [v4 addObject:v37];
  if (AXDeviceHasPearl())
  {
    v38 = [(AccessibilitySettingsController *)self specifierTitle:@"FACE_ID"];
    v39 = [PSSpecifier preferenceSpecifierNamed:v38 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v39 ax_applyCustomAccessibilityGraphicIconNamed:@"faceid"];
    [v39 setProperty:@"FACE_ID" forKey:v16];
    [v4 addObject:v39];
    v37 = v39;
  }

  if ([(AccessibilitySettingsBaseController *)self isSettingAvailableOnPlatform])
  {
    v40 = [(AccessibilitySettingsController *)self specifierTitle:@"ScannerSwitchTitle"];
    v41 = [PSSpecifier preferenceSpecifierNamed:v40 target:self set:0 get:"scatEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v41 ax_applyCustomAccessibilityGraphicIconNamed:@"switch.control"];
    [v41 setProperty:@"ScannerSwitchTitle" forKey:v16];
    [v4 addObject:v41];
    v37 = v41;
  }

  if (specifiers_onceToken != -1)
  {
    [AccessibilitySettingsController specifiers];
  }

  v42 = [(AccessibilitySettingsController *)self specifierTitle:@"CommandAndControlTitle"];
  v43 = [PSSpecifier preferenceSpecifierNamed:v42 target:self set:0 get:"commandAndControlEnabled:" detail:specifiers_CACSettingsControllerClass cell:2 edit:0];

  [v43 setProperty:@"CommandAndControlTitle" forKey:v16];
  v44 = [NSBundle bundleForClass:objc_opt_class()];
  v120 = [UIImage imageNamed:@"Command&Control" inBundle:v44];

  [v43 ax_applyCustomAccessibilityGraphicIconNamed:@"voice.control"];
  [v4 addObject:v43];
  if (AXHasCapability())
  {
    v45 = [(AccessibilitySettingsController *)self specifierTitle:@"OnDeviceEyeTrackingTitle"];
    v46 = [PSSpecifier preferenceSpecifierNamed:v45 target:self set:0 get:"onDeviceEyeTrackingEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v46 setProperty:@"OnDeviceEyeTracking" forKey:v16];
    [v46 ax_applyCustomAccessibilityGraphicIconNamed:@"eye.tracking"];
    [v4 addObject:v46];
    v43 = v46;
  }

  v47 = [(AccessibilitySettingsController *)self specifierTitle:@"AST_HEAD_TRACKING"];
  v48 = [PSSpecifier preferenceSpecifierNamed:v47 target:self set:0 get:"assistiveTouchHeadTrackingEnabled:" detail:objc_opt_class() cell:2 edit:0];

  [v48 setProperty:@"AST_HEAD_TRACKING" forKey:v16];
  [v48 ax_applyCustomAccessibilityGraphicIconNamed:@"headtracking"];
  [v4 addObject:v48];
  if ([(AccessibilitySettingsBaseController *)self isSettingAvailableOnPlatform])
  {
    v49 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    v50 = AXHasCapability();
    v51 = AXHasCapability();
    v52 = @"home.button";
    if (v51)
    {
      v52 = @"side.button";
    }

    if (v50)
    {
      v53 = @"top.button";
    }

    else
    {
      v53 = v52;
    }

    [v49 ax_applyCustomAccessibilityGraphicIconNamed:v53];
    if (AXHasCapability())
    {
      v54 = settingsLocString(@"TOP_CLICK_TITLE", @"Accessibility");
    }

    else
    {
      if (AXHasCapability())
      {
        v55 = @"SIDE_CLICK_TITLE";
      }

      else
      {
        v55 = @"HOME_CLICK_TITLE";
      }

      v54 = [(AccessibilitySettingsController *)self specifierTitle:v55];
    }

    [v49 setName:v54];

    if (AXHasCapability())
    {
      v56 = settingsLocStringTopTouchIDButton(@"TOP_TOUCH_CLICK_TITLE");
      [v49 setName:v56];
    }

    [v49 setProperty:@"HOME_CLICK_TITLE" forKey:v16];
    [v4 addObject:v49];
  }

  else
  {
    v49 = v48;
  }

  if (AXHasCapability())
  {
    v57 = settingsLocString(@"CAMERA_BUTTON_TITLE", @"Accessibility");
    v58 = [PSSpecifier preferenceSpecifierNamed:v57 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v58 setProperty:@"CAMERA_CONTROL" forKey:v16];
    [v58 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v58 ax_applyCustomAccessibilityGraphicIconNamed:@"camera.button"];
    [v4 addObject:v58];
    v49 = v58;
  }

  if (AXHasCapability())
  {
    v59 = settingsLocString(@"APPLE_WATCH_REMOTE_SCREEN", @"Accessibility");
    v60 = [PSSpecifier preferenceSpecifierNamed:v59 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v60 setProperty:0 forKey:v31];
    [v60 setProperty:@"APPLE_WATCH_REMOTE_SCREEN" forKey:v16];
    [v60 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v60 ax_applyCustomAccessibilityGraphicIconNamed:@"applewatch.remote.mirroring"];
    [v4 addObject:v60];
    v49 = v60;
  }

  if (AXRuntimeCheck_SupportsNearbyDeviceControl())
  {
    v61 = settingsLocString(@"CONTROL_NEARBY_DEVICES", @"Accessibility");
    v62 = [PSSpecifier preferenceSpecifierNamed:v61 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v62 setProperty:0 forKey:v31];
    [v62 setProperty:@"CONTROL_NEARBY_DEVICES" forKey:v16];
    [v62 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v62 ax_applyCustomAccessibilityGraphicIconNamed:@"control.nearby.devices"];
    [v4 addObject:v62];
    v49 = v62;
  }

  v63 = [(AccessibilitySettingsController *)self specifierTitle:@"HEARING"];
  v64 = [PSSpecifier groupSpecifierWithName:v63];

  [v64 setProperty:@"HEARING_HEADING" forKey:v16];
  [v4 addObject:v64];
  if ([(AccessibilitySettingsBaseController *)self isSettingAvailableOnPlatform])
  {
    v65 = [(AccessibilitySettingsBaseController *)self detailClassForFeature:1];
    if (v65)
    {
      v66 = v65;
      v67 = [(AccessibilitySettingsController *)self specifierTitle:@"HEARING_AID_TITLE"];
      v68 = [PSSpecifier preferenceSpecifierNamed:v67 target:self set:0 get:0 detail:v66 cell:2 edit:0];

      [v68 setProperty:@"HEARING_AID_TITLE" forKey:v16];
      [v68 ax_applyCustomAccessibilityGraphicIconNamed:@"hearing.devices"];
      [v4 addObject:v68];
      v64 = v68;
    }

    v69 = settingsLocString(@"HEARING_CONTROL_CENTER_TITLE", @"Accessibility");
    v70 = [PSSpecifier preferenceSpecifierNamed:v69 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v70 setIdentifier:@"HEARING_CONTROL_CENTER"];
    [v70 ax_applyCustomAccessibilityGraphicIconNamed:@"hearing.control.center"];
    [v4 addObject:v70];
    if (AXDeviceSupportsNameRecognition())
    {
      v71 = @"SOUND_AND_NAME_RECOGNITION_TITLE";
      v72 = [(AccessibilitySettingsController *)self specifierTitle:@"SOUND_AND_NAME_RECOGNITION_TITLE"];
      [PSSpecifier preferenceSpecifierNamed:v72 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    }

    else
    {
      v71 = @"SOUND_RECOGNITION_TITLE";
      v72 = [(AccessibilitySettingsController *)self specifierTitle:@"SOUND_RECOGNITION_TITLE"];
      [PSSpecifier preferenceSpecifierNamed:v72 target:self set:0 get:"soundDetectionIsRunning:" detail:objc_opt_class() cell:2 edit:0];
    }
    v73 = ;

    [v73 setProperty:v71 forKey:v16];
    [v73 ax_applyCustomAccessibilityGraphicIconNamed:@"sound.recognition"];
    [v4 addObject:v73];
    if (!AXHasCapability())
    {
      v74 = v73;
LABEL_64:
      v79 = [(AccessibilitySettingsController *)self specifierTitle:@"AUDIO_VISUAL_TITLE"];
      v64 = [PSSpecifier preferenceSpecifierNamed:v79 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

      [v64 ax_applyCustomAccessibilityGraphicIconNamed:@"audio.visual"];
      [v64 setProperty:@"AUDIO_VISUAL_TITLE" forKey:v16];
      [v4 addObject:v64];
      goto LABEL_65;
    }

    v74 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:"rttEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v74 setProperty:@"RTT" forKey:v16];
    [v74 ax_applyCustomAccessibilityGraphicIconNamed:@"rtt.tty"];
    [v74 setProperty:0 forKey:v31];
    [v74 setProperty:&off_27C968 forKey:PSRequiredCapabilitiesKey];
    [v74 setProperty:&__kCFBooleanTrue forKey:PSSpecifierIsSearchableKey];
    [v4 addObject:v74];
    if (AXHasCapability())
    {
      v75 = @"RTT_LABEL";
    }

    else if (AXHasCapability())
    {
      v75 = @"TTY_RTT_LABEL";
    }

    else
    {
      if (!AXHasCapability())
      {
LABEL_61:
        if (AXDeviceIsPhone())
        {
          v77 = +[RTTTelephonyUtilities sharedUtilityProvider];
          activeContextCount = [v77 activeContextCount];

          if (activeContextCount >= 2)
          {
            [v74 setDetailControllerClass:objc_opt_class()];
          }
        }

        goto LABEL_64;
      }

      v75 = @"TTY_LABEL";
    }

    v76 = settingsLocString(v75, @"Accessibility");
    [v74 setName:v76];

    goto LABEL_61;
  }

LABEL_65:
  v80 = [(AccessibilitySettingsController *)self specifierTitle:@"SUBTITLES_CAPTIONING"];
  v81 = [PSSpecifier preferenceSpecifierNamed:v80 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v81 setProperty:@"SUBTITLES_CAPTIONING" forKey:v16];
  [v81 ax_applyCustomAccessibilityGraphicIconNamed:@"subtitles.captioning"];
  [v4 addObject:v81];
  if (AXHasCapability())
  {
    v82 = AXUILocalizedStringForKey();
    v83 = [PSSpecifier preferenceSpecifierNamed:v82 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v83 setIdentifier:@"LIVE_TRANSCRIPTION"];
    [v83 ax_applyCustomAccessibilityGraphicIconNamed:@"live.captions"];
    [v83 setProperty:&__kCFBooleanFalse forKey:AXInBuddySetupKey];
    [v4 addObject:v83];
    v81 = v83;
  }

  if (AXHasCapability())
  {
    v84 = AXUILocalizedStringForKeyWithTable();
    v85 = [PSSpecifier preferenceSpecifierNamed:v84 target:self set:0 get:"hapticMusicEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v85 ax_applyCustomAccessibilityGraphicIconNamed:@"music.haptics"];
    [v85 setProperty:@"HAPTIC_MUSIC" forKey:v16];
    [v4 addObject:v85];
    v81 = v85;
  }

  v86 = [(AccessibilitySettingsController *)self specifierTitle:@"SPEECH_HEADING"];
  v87 = [PSSpecifier groupSpecifierWithName:v86];

  [v87 setProperty:@"SPEECH_HEADING" forKey:v16];
  [v4 addObject:v87];
  if (AXDeviceSupportsLiveSpeech())
  {
    v88 = [(AccessibilitySettingsController *)self specifierTitle:@"LIVE_SPEECH_TITLE"];
    v89 = [PSSpecifier preferenceSpecifierNamed:v88 target:self set:0 get:"liveSpeechEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v89 setProperty:@"LIVE_SPEECH_TITLE" forKey:v16];
    [v89 ax_applyCustomAccessibilityGraphicIconNamed:@"live.speech"];
    [v4 addObject:v89];
    v87 = v89;
  }

  if (AXHasCapability())
  {
    v90 = [(AccessibilitySettingsController *)self specifierTitle:@"PERSONAL_VOICE_TITLE"];
    v91 = [PSSpecifier preferenceSpecifierNamed:v90 target:self set:0 get:0 detail:0 cell:2 edit:0];

    [v91 setControllerLoadAction:"showPersonalVoiceController:"];
    [v91 setProperty:@"PERSONAL_VOICE_TITLE" forKey:v16];
    [v91 ax_applyCustomAccessibilityGraphicIconNamed:@"personal.voice"];
    [v4 addObject:v91];
    v87 = v91;
  }

  if (AXHasCapability())
  {
    v92 = [(AccessibilitySettingsController *)self specifierTitle:@"ADAPTIVE_VOICE_SHORTCUTS_TITLE"];
    v93 = [PSSpecifier preferenceSpecifierNamed:v92 target:self set:0 get:"adaptiveVoiceShortcutsEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v93 ax_applyCustomAccessibilityGraphicIconNamed:@"vocal.shortcuts"];
    [v93 setProperty:@"ADAPTIVE_VOICE_SHORTCUTS_TITLE" forKey:v16];
    [v4 addObject:v93];
    v87 = v93;
  }

  v94 = [(AccessibilitySettingsController *)self specifierTitle:@"ACCESSORIES_HEADING"];
  v95 = [PSSpecifier groupSpecifierWithName:v94];

  [v95 setProperty:@"ACCESSORIES_HEADING" forKey:v16];
  [v4 addObject:v95];
  v96 = [(AccessibilitySettingsController *)self specifierTitle:@"KEYBOARDS"];
  v97 = [PSSpecifier preferenceSpecifierNamed:v96 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v97 setProperty:0 forKey:v31];
  [v97 setProperty:@"KEYBOARDS" forKey:v16];
  [v97 ax_applyPredefinedGraphicIconNamed:@"keyboard"];
  [v4 addObject:v97];
  v98 = [(AccessibilitySettingsController *)self specifierTitle:@"APPLE_TV_REMOTE"];
  v99 = [PSSpecifier preferenceSpecifierNamed:v98 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v99 ax_applyCustomAccessibilityGraphicIconNamed:@"appletvremote"];
  [v99 setProperty:@"APPLE_TV_REMOTE" forKey:v16];
  [v4 addObject:v99];
  if (AXUICanShowPointerControlSettings())
  {
    v100 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v100 setProperty:0 forKey:v31];
    v101 = settingsLocString(@"PointerControlTitle", @"Accessibility-hello");
    [v100 setName:v101];

    [v100 setProperty:@"POINTER_CONTROL" forKey:v16];
    [v100 ax_applyCustomAccessibilityGraphicIconNamed:@"pointer.control"];
    [v4 addObject:v100];
    v99 = v100;
  }

  _airPodDevices = [(AccessibilitySettingsController *)self _airPodDevices];
  v103 = [(AccessibilitySettingsController *)self _prepareAirPodSpecifierForDevices:_airPodDevices];

  if (v103)
  {
    [v4 addObject:v103];
  }

  v104 = [(AccessibilitySettingsController *)self specifierTitle:@"GENERAL_HEADING"];
  v105 = [PSSpecifier groupSpecifierWithName:v104];

  [v105 setProperty:@"GENERAL_HEADING" forKey:v16];
  [v4 addObject:v105];
  if ([(AccessibilitySettingsBaseController *)self isSettingAvailableOnPlatform])
  {
    v106 = [(AccessibilitySettingsController *)self specifierTitle:@"GUIDED_ACCESS_TITLE"];
    v107 = [PSSpecifier preferenceSpecifierNamed:v106 target:self set:0 get:"guidedAccessEnabled:" detail:objc_opt_class() cell:2 edit:0];

    [v107 setProperty:@"GUIDED_ACCESS_TITLE" forKey:v16];
    [v107 ax_applyCustomAccessibilityGraphicIconNamed:@"guided.access"];
    [v4 addObject:v107];
    v108 = [(AccessibilitySettingsController *)self specifierTitle:@"CLARITY_UI_TITLE"];
    v109 = [PSSpecifier preferenceSpecifierNamed:v108 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v109 setProperty:@"CLARITY_UI_TITLE" forKey:v16];
    v119 = PSAllowMultilineTitleKey;
    [v109 setProperty:&__kCFBooleanTrue forKey:?];
    [v109 ax_applyCustomAccessibilityGraphicIconNamed:@"assistive.access"];
    [v4 addObject:v109];
    if (AXHasCapability())
    {
      v110 = [(AccessibilitySettingsController *)self specifierTitle:@"SIRI_SETTINGS_TITLE"];
      v111 = [PSSpecifier preferenceSpecifierNamed:v110 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

      [v111 setProperty:@"SIRI_SETTINGS_TITLE" forKey:v16];
      [v111 setObject:&__kCFBooleanTrue forKeyedSubscript:PSLazyIconLoading];
      [v111 setObject:@"com.apple.siri" forKeyedSubscript:PSLazyIconAppID];
      [v4 addObject:v111];
      v109 = v111;
    }

    v112 = [(AccessibilitySettingsController *)self specifierTitle:@"TRIPLE_CLICK_TITLE"];
    v113 = [PSSpecifier preferenceSpecifierNamed:v112 target:self set:0 get:"tripleClickStatus:" detail:objc_opt_class() cell:2 edit:0];

    [v113 setProperty:@"TRIPLE_CLICK_TITLE" forKey:v16];
    [v113 ax_applyPredefinedGraphicIconNamed:@"accessibility"];
    [v4 addObject:v113];
    v114 = [(AccessibilitySettingsController *)self specifierTitle:@"APP_AX_SETTINGS_TITLE"];
    v105 = [PSSpecifier preferenceSpecifierNamed:v114 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v105 setProperty:@"APP_AX_SETTINGS_TITLE" forKey:v16];
    [v105 ax_applyCustomAccessibilityGraphicIconNamed:@"per.app.settings"];
    [v4 addObject:v105];
    if (_os_feature_enabled_impl())
    {
      v115 = [(AccessibilitySettingsController *)self specifierTitle:@"GUEST_PASS_TITLE"];
      v116 = [PSSpecifier preferenceSpecifierNamed:v115 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

      [v116 setProperty:&__kCFBooleanTrue forKey:v119];
      [v116 setProperty:@"GUEST_PASS_TITLE" forKey:v16];
      [v116 ax_applyCustomAccessibilityGraphicIconNamed:@"guestpass"];
      [v4 addObject:v116];
      v105 = v116;
    }
  }

  [(AccessibilitySettingsController *)self setupLongTitleSpecifiers:v4];
  v117 = *&self->super.AXUISettingsListController_opaque[v121];
  *&self->super.AXUISettingsListController_opaque[v121] = v4;

  [(AccessibilitySettingsController *)self _updateFaceIDAndAttentionPaneForOneness];
  v3 = *&self->super.AXUISettingsListController_opaque[v121];
LABEL_85:

  return v3;
}

void __45__AccessibilitySettingsController_specifiers__block_invoke(id a1)
{
  v1 = [NSBundle bundleWithPath:@"/System/Library/PreferenceBundles/VoiceControlSettings.bundle"];
  [v1 load];
  specifiers_CACSettingsControllerClass = [v1 principalClass];
}

- (id)hapticMusicEnabled:(id)enabled
{
  if (_AXSHapticMusicEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (id)rttEnabled:(id)enabled
{
  v3 = @"ON";
  if ((+[RTTTelephonyUtilities TTYHardwareEnabledForAnyActiveContext](RTTTelephonyUtilities, "TTYHardwareEnabledForAnyActiveContext", enabled) & 1) == 0 && !+[RTTTelephonyUtilities TTYSoftwareEnabledForAnyActiveContext])
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (void)_setPencilSpecifierShown:(BOOL)shown
{
  shownCopy = shown;
  v5 = OBJC_IVAR___PSListController__specifiers;
  if ([*&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers] containsObject:*(&self->_easyReachCache + 6)] == shown)
  {
    v7 = AXLogCommon();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v12 = 0;
    v8 = "Already showing pencil";
    v9 = &v12;
LABEL_12:
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
    goto LABEL_13;
  }

  if (!shownCopy)
  {
    [(AccessibilitySettingsController *)self removeSpecifier:*(&self->_easyReachCache + 6) animated:1];
    v7 = AXLogCommon();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v10 = 0;
    v8 = "Removing pencil specifier";
    v9 = &v10;
    goto LABEL_12;
  }

  v6 = [*&self->super.AXUISettingsListController_opaque[v5] indexOfObjectPassingTest:&__block_literal_global_927];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(AccessibilitySettingsController *)self insertSpecifier:*(&self->_easyReachCache + 6) atIndex:v6 animated:1];
    v7 = AXLogCommon();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v8 = "Inserting pencil specifier";
    v9 = buf;
    goto LABEL_12;
  }

  v7 = AXLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [AccessibilitySettingsController _showAirPodsSpecifierWithAirPods:v7];
  }

LABEL_13:
}

BOOL __60__AccessibilitySettingsController__setPencilSpecifierShown___block_invoke(id a1, PSSpecifier *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(PSSpecifier *)a2 propertyForKey:PSIDKey, a4];
  v5 = [v4 isEqualToString:@"HEARING_HEADING"];

  return v5;
}

- (id)specifierForKey:(id)key
{
  keyCopy = key;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = PSKeyNameKey;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        properties = [v11 properties];
        v13 = [properties objectForKey:v9];
        v14 = [v13 isEqualToString:keyCopy];

        if (v14)
        {
          v15 = v11;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (id)_roundedSettingsIcon:(id)icon
{
  iconCopy = icon;
  v4 = AXSettingsBundle();
  v5 = [UIImage imageNamed:iconCopy inBundle:v4];

  v6 = [v5 _applicationIconImageForFormat:0 precomposed:0];

  return v6;
}

- (id)_tableCellImageForImage:(id)image
{
  if (image)
  {
    imageCopy = image;
    v4 = +[UIScreen mainScreen];
    [v4 scale];
    v6 = v5;

    v10 = v6;
    [UIImage _iconVariantForUIApplicationIconFormat:0 scale:&v10];
    [imageCopy CGImage];

    v7 = LICreateIconForImage();
    v8 = [UIImage imageWithCGImage:v7 scale:0 orientation:v10];
    CGImageRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)confirmDisablingWithString:(id)string forKey:(id)key confirmedBlock:(id)block canceledBlock:(id)canceledBlock inWindow:(id)window
{
  stringCopy = string;
  blockCopy = block;
  canceledBlockCopy = canceledBlock;
  windowCopy = window;
  BooleaniTunesPreference = _AXSAccessibilityGetBooleaniTunesPreference();
  self->_didConfirmDisabling = 1;
  if (!BooleaniTunesPreference || (self->_didConfirmDisabling = 0, settingsLocString(@"IMPORTANT", @"Accessibility"), v16 = objc_claimAutoreleasedReturnValue(), +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", v16, stringCopy, 1), v17 = objc_claimAutoreleasedReturnValue(), v16, settingsLocString(@"CANCEL", @"Accessibility"), v18 = objc_claimAutoreleasedReturnValue(), v28[0] = _NSConcreteStackBlock, v28[1] = 3221225472, v28[2] = __107__AccessibilitySettingsController_confirmDisablingWithString_forKey_confirmedBlock_canceledBlock_inWindow___block_invoke, v28[3] = &unk_2554C0, v29 = canceledBlockCopy, +[UIAlertAction actionWithTitle:style:handler:](UIAlertAction, "actionWithTitle:style:handler:", v18, 1, v28), v19 = objc_claimAutoreleasedReturnValue(), v18, [v17 addAction:v19], settingsLocString(@"OK", @"Accessibility"), v20 = objc_claimAutoreleasedReturnValue(), v23 = _NSConcreteStackBlock, v24 = 3221225472, v25 = __107__AccessibilitySettingsController_confirmDisablingWithString_forKey_confirmedBlock_canceledBlock_inWindow___block_invoke_2, v26 = &unk_2554C0, v27 = blockCopy, +[UIAlertAction actionWithTitle:style:handler:](UIAlertAction, "actionWithTitle:style:handler:", v20, 0, &v23), v21 = objc_claimAutoreleasedReturnValue(), v20, objc_msgSend(v17, "addAction:", v21, v23, v24, v25, v26), objc_msgSend(windowCopy, "rootViewController"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "presentViewController:animated:completion:", v17, 1, 0), v22, v21, v27, v19, v29, v17, self->_didConfirmDisabling))
  {
    blockCopy[2](blockCopy);
  }
}

uint64_t __107__AccessibilitySettingsController_confirmDisablingWithString_forKey_confirmedBlock_canceledBlock_inWindow___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __107__AccessibilitySettingsController_confirmDisablingWithString_forKey_confirmedBlock_canceledBlock_inWindow___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)disableOption:(id)option
{
  optionCopy = option;
  if ([optionCopy isEqualToString:kAXSZoomTouchEnabledPreference])
  {
    [ZoomController setZoomEnabled:0];
  }

  else if ([optionCopy isEqualToString:kAXSVoiceOverTouchEnabledPreference])
  {
    [VoiceOverController setVoiceOverEnabled:0];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v18.receiver = self;
  v18.super_class = AccessibilitySettingsController;
  pathCopy = path;
  v7 = [(AccessibilitySettingsController *)&v18 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(AccessibilitySettingsController *)self specifierForIndexPath:pathCopy, v18.receiver, v18.super_class];

  v9 = [v8 propertyForKey:PSIconImageKey];
  if (v9)
  {
    v10 = kISImageDescriptorTableUIName;
    v11 = v7;
    v12 = [ISImageDescriptor imageDescriptorNamed:v10];
    [v12 continuousCornerRadius];
    v14 = v13;

    iconImageView = [v11 iconImageView];
    [iconImageView _setContinuousCornerRadius:v14];

    iconImageView2 = [v11 iconImageView];

    [iconImageView2 setClipsToBounds:1];
  }

  return v7;
}

- (void)_handleInvertColorsEnabled:(BOOL)enabled specifier:(id)specifier
{
  specifierCopy = specifier;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __72__AccessibilitySettingsController__handleInvertColorsEnabled_specifier___block_invoke;
  v18[3] = &unk_2554E8;
  v18[4] = self;
  enabledCopy = enabled;
  v7 = objc_retainBlock(v18);
  v8 = v7;
  if (enabled)
  {
    (v7[2])(v7);
  }

  else
  {
    v9 = settingsLocString(@"CONFIRM_INVERT_COLORS_REMOVAL", @"Accessibility");
    v10 = kAXSInvertColorsEnabledByiTunesPreference;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __72__AccessibilitySettingsController__handleInvertColorsEnabled_specifier___block_invoke_2;
    v16[3] = &unk_255510;
    v17 = v8;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __72__AccessibilitySettingsController__handleInvertColorsEnabled_specifier___block_invoke_3;
    v13[3] = &unk_255538;
    v14 = specifierCopy;
    selfCopy = self;
    view = [(AccessibilitySettingsController *)self view];
    window = [view window];
    [(AccessibilitySettingsController *)self confirmDisablingWithString:v9 forKey:v10 confirmedBlock:v16 canceledBlock:v13 inWindow:window];
  }
}

uint64_t __72__AccessibilitySettingsController__handleInvertColorsEnabled_specifier___block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 166);
  result = _AXSInvertColorsSetEnabled();
  ++*(*(a1 + 32) + 166);
  return result;
}

id __72__AccessibilitySettingsController__handleInvertColorsEnabled_specifier___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setProperty:&__kCFBooleanTrue forKey:PSValueKey];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 reloadSpecifier:v3];
}

- (id)zoomTouchEnabled:(id)enabled
{
  if (_AXSZoomTouchEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (id)hoverTextEnabled:(id)enabled
{
  if (_AXSHoverTextEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = AccessibilitySettingsController;
  [(AccessibilitySettingsBaseController *)&v6 viewWillAppear:?];
  v5 = [(AccessibilitySettingsController *)self specifierForKey:@"LARGER_TEXT"];
  [(AccessibilitySettingsController *)self reloadSpecifier:v5 animated:appearCopy];

  AXPerformBlockAsynchronouslyOnMainThread();
  [(AccessibilitySettingsController *)self handleTeachableMomentsNotification];
}

- (void)handleTeachableMomentsNotification
{
  if (_os_feature_enabled_impl())
  {
    v2 = dispatch_get_global_queue(0, 0);
    dispatch_async(v2, &__block_literal_global_954);
  }
}

void __69__AccessibilitySettingsController_handleTeachableMomentsNotification__block_invoke(id a1)
{
  v1 = AXLogCommon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "Initialize check for teachable accessibility moments.", v4, 2u);
  }

  v2 = [[AXUIClient alloc] initWithIdentifier:@"AXAssetClient-teachableMoments" serviceBundleName:@"AXAssetAndDataServer"];
  v3 = +[AXAccessQueue mainAccessQueue];
  [v2 sendAsynchronousMessage:&__NSDictionary0__struct withIdentifier:15 targetAccessQueue:v3 completion:0];
}

- (id)descriptiveVideoEnabled:(id)enabled
{
  v3 = MAAudibleMediaPrefCopyPreferDescriptiveVideo();
  if ([v3 BOOLValue])
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = settingsLocString(v4, @"Accessibility");

  return v5;
}

- (id)guidedAccessEnabled:(id)enabled
{
  if (_AXSGuidedAccessEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (id)liveSpeechEnabled:(id)enabled
{
  v3 = _AXSTripleClickCopyOptions();
  v4 = _AXSTripleClickContainsOption();
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    v5 = @"ON";
  }

  else
  {
    v5 = @"OFF";
  }

  return settingsLocString(v5, @"Accessibility");
}

- (id)adaptiveVoiceShortcutsEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  isAdaptiveVoiceShortcutsEnabled = [v3 isAdaptiveVoiceShortcutsEnabled];

  if (isAdaptiveVoiceShortcutsEnabled)
  {
    v5 = @"ON";
  }

  else
  {
    v5 = @"OFF";
  }

  return settingsLocString(v5, @"Accessibility");
}

- (id)voiceOverTouchEnabled:(id)enabled
{
  if (_AXSVoiceOverTouchEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (id)scatEnabled:(id)enabled
{
  if (_AXSAssistiveTouchScannerEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (id)commandAndControlEnabled:(id)enabled
{
  if (_AXSCommandAndControlEnabled())
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  return settingsLocString(v3, @"Accessibility");
}

- (id)onDeviceEyeTrackingEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  assistiveTouchMouseOnDeviceEyeTrackingEnabled = [v3 assistiveTouchMouseOnDeviceEyeTrackingEnabled];

  if (assistiveTouchMouseOnDeviceEyeTrackingEnabled)
  {
    v5 = @"ON";
  }

  else
  {
    v5 = @"OFF";
  }

  return settingsLocString(v5, @"Accessibility");
}

- (id)assistiveTouchHeadTrackingEnabled:(id)enabled
{
  v3 = +[AXSettings sharedInstance];
  assistiveTouchHeadTrackingEnabled = [v3 assistiveTouchHeadTrackingEnabled];

  if (assistiveTouchHeadTrackingEnabled)
  {
    v5 = @"ON";
  }

  else
  {
    v5 = @"OFF";
  }

  return settingsLocString(v5, @"Accessibility");
}

- (id)soundDetectionIsRunning:(id)running
{
  v3 = +[AXSDSettings sharedInstance];
  if ([v3 soundDetectionEnabled])
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = settingsLocString(v4, @"Accessibility");

  if (AXDeviceSupportsNameRecognition())
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v6;
}

- (id)tripleClickStatus:(id)status
{
  v3 = _AXSTripleClickCopyOptions();
  if ([v3 count])
  {
    if ([v3 count] < 2)
    {
      if (_AXSTripleClickContainsOption())
      {
        v5 = +[AXSettings sharedInstance];
        voiceOverActivationWorkaround = [v5 voiceOverActivationWorkaround];

        if (voiceOverActivationWorkaround != &dword_0 + 3)
        {
          v4 = @"TRIPLE_CLICK_VOICEOVER_SHORT";
          goto LABEL_23;
        }
      }

      else
      {
        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_WHITEONBLACK_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_CLASSIC_INVERT_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_REDUCE_TRANSPARENCY_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_REDUCE_MOTION_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_BACKGROUND_SOUNDS_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_LEFT_RIGHT_BALANCE_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_INCREASE_CONTRAST_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v10 = +[AXBackBoardServer server];
          supportsAccessibilityDisplayFilters = [v10 supportsAccessibilityDisplayFilters];

          if (supportsAccessibilityDisplayFilters)
          {
            v4 = @"TRIPLE_CLICK_COLOR_FILTER_SHORT";
          }

          else
          {
            v4 = @"TRIPLE_CLICK_GRAYSCALE_SHORT";
          }

          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_WHITE_POINT_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_ZOOM_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_LIVE_SPEECH_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_HOVERTEXT_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_HOVERTEXT_TYPING_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_SWITCHOVER_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_ASSISTIVETOUCH_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_GUIDEDACCESS_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_HEARING_AIDS_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_TOUCH_ACCOMMODATIONS_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_MAGNIFIER_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          goto LABEL_55;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_COMMAND_AND_CONTROL_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_FULL_KEYBOARD_ACCESS_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
LABEL_55:
          v8 = AXUIAssistiveTouchStringForName();
          goto LABEL_24;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_LIVE_TRANSCRIPTION_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_ON_DEVICE_EYE_TRACKING_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_CLARITY_UI_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_NEARBY_DEVICE_CONTROL_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_SPEAK_SCREEN_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_DIM_FLASHING_LIGHTS_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_MOTION_CUES_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_HAPTIC_MUSIC_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_CONVERSATION_BOOST_SHORT";
          goto LABEL_23;
        }

        if (_AXSTripleClickContainsOption())
        {
          v4 = @"TRIPLE_CLICK_ACCESSIBILITY_READER_SHORT";
          goto LABEL_23;
        }
      }

      v7 = 0;
      goto LABEL_25;
    }

    v4 = @"TRIPLE_CLICK_ASK";
  }

  else
  {
    v4 = @"TRIPLE_CLICK_OFF";
  }

LABEL_23:
  v8 = settingsLocString(v4, @"TripleClickSettings");
LABEL_24:
  v7 = v8;
LABEL_25:

  return v7;
}

- (void)showPersonalVoiceController:(id)controller
{
  controllerCopy = controller;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v5 = getTTSVBUILoaderClass_softClass;
  v18 = getTTSVBUILoaderClass_softClass;
  if (!getTTSVBUILoaderClass_softClass)
  {
    location[0] = _NSConcreteStackBlock;
    location[1] = 3221225472;
    location[2] = __getTTSVBUILoaderClass_block_invoke;
    location[3] = &unk_2555F8;
    location[4] = &v15;
    __getTTSVBUILoaderClass_block_invoke(location);
    v5 = v16[3];
  }

  v6 = v5;
  _Block_object_dispose(&v15, 8);

  objc_initWeak(location, self);
  v7 = NSClassFromString(@"VBManagerViewBridge");
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = __63__AccessibilitySettingsController_showPersonalVoiceController___block_invoke;
  v12 = &unk_255580;
  objc_copyWeak(&v13, location);
  v8 = [(objc_class *)v7 makeVBManagerViewControllerWithAuthenticationCallback:&v9];
  [(AccessibilitySettingsController *)self showController:v8, v9, v10, v11, v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(location);
}

void __63__AccessibilitySettingsController_showPersonalVoiceController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = NSClassFromString(@"VoiceManagementViewBridge");
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __63__AccessibilitySettingsController_showPersonalVoiceController___block_invoke_2;
  v10[3] = &unk_255388;
  objc_copyWeak(&v11, (a1 + 32));
  v8 = [(objc_class *)v7 makeVoiceManagementViewControllerWithVoiceID:v5 voiceName:v6 dismissCallback:v10];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showController:v8];

  objc_destroyWeak(&v11);
}

void __63__AccessibilitySettingsController_showPersonalVoiceController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];
  v10 = [v3 viewControllers];

  v4 = [v10 count] >= 3;
  v5 = v10;
  if (v4)
  {
    v6 = [v10 objectAtIndex:2];
    if (v6)
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      v8 = [v7 navigationController];
      v9 = [v8 popToViewController:v6 animated:1];
    }

    v5 = v10;
  }
}

- (void)_updateFaceIDAndAttentionPaneForOneness
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = [(AccessibilitySettingsController *)self specifierForID:@"FACE_ID"];
  if (v6[5])
  {
    v3 = dispatch_get_global_queue(0, 0);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = __74__AccessibilitySettingsController__updateFaceIDAndAttentionPaneForOneness__block_invoke;
    v4[3] = &unk_2555D0;
    v4[4] = self;
    v4[5] = &v5;
    dispatch_async(v3, v4);
  }

  _Block_object_dispose(&v5, 8);
}

void __74__AccessibilitySettingsController__updateFaceIDAndAttentionPaneForOneness__block_invoke(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v2 = +[AXSpringBoardServer server];
  v3 = [v2 isContinuitySessionActive] ^ 1;

  v8 = v3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __74__AccessibilitySettingsController__updateFaceIDAndAttentionPaneForOneness__block_invoke_2;
  block[3] = &unk_2555A8;
  v6 = v7;
  v5 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
  _Block_object_dispose(v7, 8);
}

id __74__AccessibilitySettingsController__updateFaceIDAndAttentionPaneForOneness__block_invoke_2(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  v3 = [NSNumber numberWithBool:*(*(a1[6] + 8) + 24)];
  [v2 setProperty:v3 forKey:PSEnabledKey];

  v4 = a1[4];
  v5 = *(*(a1[5] + 8) + 40);

  return [v4 reloadSpecifier:v5];
}

@end
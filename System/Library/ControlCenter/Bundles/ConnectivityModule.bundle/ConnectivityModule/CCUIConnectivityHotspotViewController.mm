@interface CCUIConnectivityHotspotViewController
- (BOOL)_isHotspotRestricted;
- (BOOL)_toggleState;
- (CCUIConnectivityHotspotViewController)init;
- (CCUIConnectivityManager)connectivityManager;
- (WFPersonalHotspotStateMonitor)phStateMonitor;
- (id)_glyphImageForCurrentState;
- (id)displayName;
- (id)subtitleText;
- (void)_hostAPStateChanged;
- (void)_networkTetheringStateChanged;
- (void)_setGlobalServiceState:(int)a3;
- (void)_updateDiscoverability;
- (void)_updateState;
- (void)buttonTapped:(id)a3;
- (void)dealloc;
- (void)startObserving;
- (void)stopObserving;
- (void)viewDidLoad;
@end

@implementation CCUIConnectivityHotspotViewController

- (CCUIConnectivityHotspotViewController)init
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = objc_msgSend__systemImageNamed_(MEMORY[0x29EDC7AC8], a2, @"personalhotspot");
  v6 = objc_msgSend_systemGreenColor(MEMORY[0x29EDC7A00], v4, v5);
  v18.receiver = self;
  v18.super_class = CCUIConnectivityHotspotViewController;
  v7 = [(CCUIConnectivityButtonViewController *)&v18 initWithGlyphImage:v3 highlightColor:v6];

  if (v7)
  {
    v8 = *MEMORY[0x29EDC0C90];
    if (os_log_type_enabled(*MEMORY[0x29EDC0C90], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v20 = v7;
      _os_log_impl(&dword_29C961000, v8, OS_LOG_TYPE_DEFAULT, "[Hotspot] (%{public}p) Initialization", buf, 0xCu);
    }

    objc_msgSend_setUseAutomaticSymbolColors_(v7, v9, 1);
    v10 = dispatch_queue_create("com.apple.ControlCenter.HotspotViewController", 0);
    queue = v7->_queue;
    v7->_queue = v10;

    v14 = objc_msgSend_sharedConnection(MEMORY[0x29EDC58E0], v12, v13);
    objc_msgSend_registerObserver_(v14, v15, v7);
  }

  v16 = *MEMORY[0x29EDCA608];
  return v7;
}

- (id)displayName
{
  v2 = MEMORY[0x29EDB9F48];
  v3 = objc_opt_class();
  v5 = objc_msgSend_bundleForClass_(v2, v4, v3);
  v7 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, @"CONTROL_CENTER_STATUS_HOTSPOT_NAME", &stru_2A23E4910, 0);

  return v7;
}

- (id)subtitleText
{
  v4 = objc_msgSend_connections(self, a2, v2);
  if (!objc_msgSend_isInoperative(self, v5, v6))
  {
    if (objc_msgSend_isEnabled(self, v7, v8))
    {
      if (v4)
      {
        v16 = MEMORY[0x29EDB9F48];
        v17 = objc_opt_class();
        v19 = objc_msgSend_bundleForClass_(v16, v18, v17);
        v12 = objc_msgSend_localizedStringForKey_value_table_(v19, v20, @"CONTROL_CENTER_STATUS_HOTSPOT_CONNECTIONS", &stru_2A23E4910, @"ControlCenterUI+SystemModules");

        v22 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x29EDBA0F8], v21, v12, v4);
        goto LABEL_13;
      }

      isDiscoverable = objc_msgSend_isDiscoverable(self, v14, v15);
      v30 = MEMORY[0x29EDB9F48];
      v31 = objc_opt_class();
      v12 = objc_msgSend_bundleForClass_(v30, v32, v31);
      if (!isDiscoverable)
      {
        v28 = @"CONTROL_CENTER_STATUS_HOTSPOT_UNDISCOVERABLE";
        goto LABEL_11;
      }
    }

    else
    {
      v23 = objc_msgSend_isDiscoverable(self, v14, v15);
      v24 = MEMORY[0x29EDB9F48];
      v25 = objc_opt_class();
      v12 = objc_msgSend_bundleForClass_(v24, v26, v25);
      if (!v23)
      {
        v28 = @"CONTROL_CENTER_STATUS_HOTSPOT_OFF";
LABEL_11:
        objc_msgSend_localizedStringForKey_value_table_(v12, v27, v28, &stru_2A23E4910, 0);
        goto LABEL_12;
      }
    }

    v28 = @"CONTROL_CENTER_STATUS_HOTSPOT_DISCOVERABLE";
    goto LABEL_11;
  }

  v9 = MEMORY[0x29EDB9F48];
  v10 = objc_opt_class();
  v12 = objc_msgSend_bundleForClass_(v9, v11, v10);
  objc_msgSend_localizedStringForKey_value_table_(v12, v13, @"CONTROL_CENTER_STATUS_HOTSPOT_OFF", &stru_2A23E4910, 0);
  v22 = LABEL_12:;
LABEL_13:
  v33 = v22;

  return v33;
}

- (void)buttonTapped:(id)a3
{
  v4 = a3;
  objc_msgSend__toggleState(self, v5, v6);
  v7.receiver = self;
  v7.super_class = CCUIConnectivityHotspotViewController;
  [(CCUIConnectivityButtonViewController *)&v7 buttonTapped:v4];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = CCUIConnectivityHotspotViewController;
  [(CCUIConnectivityButtonViewController *)&v11 viewDidLoad];
  v5 = objc_msgSend_sharedInstance(MEMORY[0x29EDC0C50], v3, v4);
  objc_storeWeak(&self->_connectivityManager, v5);
  v8 = objc_msgSend_hotspotStateMonitor(v5, v6, v7);
  objc_storeWeak(&self->_phStateMonitor, v8);
  objc_msgSend_startObserving(self, v9, v10);
}

- (void)dealloc
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDC0C90];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C90], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v9 = self;
    _os_log_impl(&dword_29C961000, v3, OS_LOG_TYPE_DEFAULT, "[Hotspot] (%{public}p) Dealloc", buf, 0xCu);
  }

  objc_msgSend_stopObserving(self, v4, v5);
  v7.receiver = self;
  v7.super_class = CCUIConnectivityHotspotViewController;
  [(CCUIConnectivityHotspotViewController *)&v7 dealloc];
  v6 = *MEMORY[0x29EDCA608];
}

- (void)startObserving
{
  v5 = objc_msgSend_connectivityManager(self, a2, v2);
  objc_msgSend_addHotspotViewControllerObservingStateChanges_(v5, v4, self);
}

- (void)stopObserving
{
  v5 = objc_msgSend_connectivityManager(self, a2, v2);
  objc_msgSend_removeHotspotViewControllerObservingStateChanges_(v5, v4, self);
}

- (BOOL)_toggleState
{
  isEnabled = objc_msgSend_isEnabled(self, a2, v2);
  v7 = MEMORY[0x29EDC0C90];
  if ((isEnabled & 1) == 0)
  {
    v8 = *MEMORY[0x29EDC0C90];
    if (os_log_type_enabled(*MEMORY[0x29EDC0C90], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C961000, v8, OS_LOG_TYPE_DEFAULT, "[Hotspot] Starting hotspot service", buf, 2u);
    }

    objc_msgSend__setGlobalServiceState_(self, v9, 1023);
  }

  if (objc_msgSend_connections(self, v5, v6))
  {
    v12 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_29C961000, v12, OS_LOG_TYPE_DEFAULT, "[Hotspot] Stopping hotspot service", v27, 2u);
    }

    objc_msgSend__setGlobalServiceState_(self, v13, 1022);
  }

  else
  {
    isDiscoverable = objc_msgSend_isDiscoverable(self, v10, v11);
    v17 = *v7;
    v18 = os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT);
    if (isDiscoverable)
    {
      if (v18)
      {
        *v26 = 0;
        _os_log_impl(&dword_29C961000, v17, OS_LOG_TYPE_DEFAULT, "[Hotspot] Shutting down hotspot discoverability immediately", v26, 2u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_phStateMonitor);
      objc_msgSend_setMISDiscoveryState_immediateDisable_(WeakRetained, v20, 0, 1);
    }

    else
    {
      if (v18)
      {
        *v25 = 0;
        _os_log_impl(&dword_29C961000, v17, OS_LOG_TYPE_DEFAULT, "[Hotspot] Starting hotspot discoverability", v25, 2u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_phStateMonitor);
      objc_msgSend_setMISDiscoveryState_immediateDisable_(WeakRetained, v21, 1, 0);
    }
  }

  objc_msgSend__updateDiscoverability(self, v14, v15);
  objc_msgSend__updateState(self, v22, v23);
  return 1;
}

- (void)_setGlobalServiceState:(int)a3
{
  objc_initWeak(&location, self);
  v7 = objc_msgSend_queue(self, v5, v6);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C9671A4;
  block[3] = &unk_29F337418;
  objc_copyWeak(&v9, &location);
  v10 = a3;
  dispatch_async(v7, block);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (void)_updateDiscoverability
{
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_phStateMonitor);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = sub_29C967340;
  v5[3] = &unk_29F337468;
  objc_copyWeak(&v6, &location);
  objc_msgSend_asyncMISDiscoveryState_(WeakRetained, v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_updateState
{
  objc_initWeak(&location, self);
  v5 = objc_msgSend_queue(self, v3, v4);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C9675B4;
  block[3] = &unk_29F3374B8;
  objc_copyWeak(&v7, &location);
  block[4] = self;
  dispatch_async(v5, block);
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);
}

- (id)_glyphImageForCurrentState
{
  if (objc_msgSend_isInoperative(self, a2, v2))
  {
    v6 = MEMORY[0x29EDC7AC8];
LABEL_3:
    objc_msgSend__systemImageNamed_(v6, v4, @"personalhotspot.slash");
    goto LABEL_8;
  }

  if (objc_msgSend_isEnabled(self, v4, v5))
  {
    v6 = MEMORY[0x29EDC7AC8];
  }

  else
  {
    isDiscoverable = objc_msgSend_isDiscoverable(self, v4, v7);
    v6 = MEMORY[0x29EDC7AC8];
    if (!isDiscoverable)
    {
      goto LABEL_3;
    }
  }

  objc_msgSend__systemImageNamed_(v6, v4, @"personalhotspot");
  v9 = LABEL_8:;

  return v9;
}

- (BOOL)_isHotspotRestricted
{
  v3 = objc_msgSend_sharedConnection(MEMORY[0x29EDC58E0], a2, v2);
  isPersonalHotspotModificationAllowed = objc_msgSend_isPersonalHotspotModificationAllowed(v3, v4, v5);

  return isPersonalHotspotModificationAllowed ^ 1;
}

- (void)_networkTetheringStateChanged
{
  v3 = *MEMORY[0x29EDC0C90];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C90], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_29C961000, v3, OS_LOG_TYPE_DEFAULT, "[Hotspot] Network tethering state changed", v6, 2u);
  }

  objc_msgSend__updateState(self, v4, v5);
}

- (void)_hostAPStateChanged
{
  v3 = *MEMORY[0x29EDC0C90];
  if (os_log_type_enabled(*MEMORY[0x29EDC0C90], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_29C961000, v3, OS_LOG_TYPE_DEFAULT, "[Hotspot] Host AP state changed", v6, 2u);
  }

  objc_msgSend__updateDiscoverability(self, v4, v5);
}

- (WFPersonalHotspotStateMonitor)phStateMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_phStateMonitor);

  return WeakRetained;
}

- (CCUIConnectivityManager)connectivityManager
{
  WeakRetained = objc_loadWeakRetained(&self->_connectivityManager);

  return WeakRetained;
}

@end
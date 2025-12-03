@interface _SFPerSitePreferencesVendor
- (WBSAutomaticReaderActivationManager)automaticReaderActivationManager;
- (WBSLockdownModePreferenceManager)lockdownModePreferenceManager;
- (WBSProfilePreferenceManager)profilePreferenceManager;
- (_SFAppInfoOverlayPreferenceManager)appInfoOverlayPreferenceManager;
- (_SFContentBlockersPreferenceManager)contentBlockersPreferenceManager;
- (_SFPageZoomPreferenceManager)pageZoomPreferenceManager;
- (_SFPerSitePreferencesVendor)initWithExtensionsController:(id)controller profileProvider:(id)provider;
- (_SFRequestDesktopSitePreferenceManager)requestDesktopSitePreferenceManager;
- (id)managerForPreference:(id)preference;
@end

@implementation _SFPerSitePreferencesVendor

- (_SFRequestDesktopSitePreferenceManager)requestDesktopSitePreferenceManager
{
  requestDesktopSitePreferenceManager = self->_requestDesktopSitePreferenceManager;
  if (!requestDesktopSitePreferenceManager)
  {
    v4 = [_SFRequestDesktopSitePreferenceManager alloc];
    mEMORY[0x1E69C8FC8] = [MEMORY[0x1E69C8FC8] sharedStore];
    v6 = +[_SFRequestDesktopSiteQuirksManager sharedManager];
    v7 = [(_SFRequestDesktopSitePreferenceManager *)v4 initWithPerSitePreferencesStore:mEMORY[0x1E69C8FC8] quirksManager:v6];
    v8 = self->_requestDesktopSitePreferenceManager;
    self->_requestDesktopSitePreferenceManager = v7;

    requestDesktopSitePreferenceManager = self->_requestDesktopSitePreferenceManager;
  }

  return requestDesktopSitePreferenceManager;
}

- (_SFPerSitePreferencesVendor)initWithExtensionsController:(id)controller profileProvider:(id)provider
{
  controllerCopy = controller;
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = _SFPerSitePreferencesVendor;
  v9 = [(_SFPerSitePreferencesVendor *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_extensionsController, controller);
    objc_storeStrong(&v10->_profileProvider, provider);
    v11 = v10;
  }

  return v10;
}

- (WBSAutomaticReaderActivationManager)automaticReaderActivationManager
{
  automaticReaderPreferenceManager = self->_automaticReaderPreferenceManager;
  if (!automaticReaderPreferenceManager)
  {
    v4 = objc_alloc(MEMORY[0x1E69C8EA8]);
    mEMORY[0x1E69C8FC8] = [MEMORY[0x1E69C8FC8] sharedStore];
    v6 = [v4 initWithPerSitePreferencesStore:mEMORY[0x1E69C8FC8]];
    v7 = self->_automaticReaderPreferenceManager;
    self->_automaticReaderPreferenceManager = v6;

    automaticReaderPreferenceManager = self->_automaticReaderPreferenceManager;
  }

  return automaticReaderPreferenceManager;
}

- (_SFContentBlockersPreferenceManager)contentBlockersPreferenceManager
{
  contentBlockersPreferenceManager = self->_contentBlockersPreferenceManager;
  if (!contentBlockersPreferenceManager)
  {
    v4 = [_SFContentBlockersPreferenceManager alloc];
    mEMORY[0x1E69C8FC8] = [MEMORY[0x1E69C8FC8] sharedStore];
    v6 = [(_SFContentBlockersPreferenceManager *)v4 initWithPerSitePreferencesStore:mEMORY[0x1E69C8FC8] extensionsController:self->_extensionsController];
    v7 = self->_contentBlockersPreferenceManager;
    self->_contentBlockersPreferenceManager = v6;

    contentBlockersPreferenceManager = self->_contentBlockersPreferenceManager;
  }

  return contentBlockersPreferenceManager;
}

- (WBSLockdownModePreferenceManager)lockdownModePreferenceManager
{
  lockdownModePreferenceManager = self->_lockdownModePreferenceManager;
  if (!lockdownModePreferenceManager)
  {
    v4 = objc_alloc(MEMORY[0x1E69C8F70]);
    mEMORY[0x1E69C8FC8] = [MEMORY[0x1E69C8FC8] sharedStore];
    v6 = [v4 initWithPerSitePreferenceStore:mEMORY[0x1E69C8FC8]];
    v7 = self->_lockdownModePreferenceManager;
    self->_lockdownModePreferenceManager = v6;

    lockdownModePreferenceManager = self->_lockdownModePreferenceManager;
  }

  return lockdownModePreferenceManager;
}

- (_SFPageZoomPreferenceManager)pageZoomPreferenceManager
{
  pageZoomPreferenceManager = self->_pageZoomPreferenceManager;
  if (!pageZoomPreferenceManager)
  {
    v4 = +[_SFPageZoomPreferenceManager sharedManager];
    v5 = self->_pageZoomPreferenceManager;
    self->_pageZoomPreferenceManager = v4;

    pageZoomPreferenceManager = self->_pageZoomPreferenceManager;
  }

  return pageZoomPreferenceManager;
}

- (_SFAppInfoOverlayPreferenceManager)appInfoOverlayPreferenceManager
{
  appInfoOverlayPreferenceManager = self->_appInfoOverlayPreferenceManager;
  if (!appInfoOverlayPreferenceManager)
  {
    v4 = [_SFAppInfoOverlayPreferenceManager alloc];
    mEMORY[0x1E69C8FC8] = [MEMORY[0x1E69C8FC8] sharedStore];
    v6 = [(_SFAppInfoOverlayPreferenceManager *)v4 initWithPerSitePreferencesStore:mEMORY[0x1E69C8FC8]];
    v7 = self->_appInfoOverlayPreferenceManager;
    self->_appInfoOverlayPreferenceManager = v6;

    appInfoOverlayPreferenceManager = self->_appInfoOverlayPreferenceManager;
  }

  return appInfoOverlayPreferenceManager;
}

- (WBSProfilePreferenceManager)profilePreferenceManager
{
  profilePreferenceManager = self->_profilePreferenceManager;
  if (!profilePreferenceManager)
  {
    v4 = objc_alloc(MEMORY[0x1E69C8FE8]);
    mEMORY[0x1E69C8FC8] = [MEMORY[0x1E69C8FC8] sharedStore];
    v6 = [v4 initWithPerSitePreferencesStore:mEMORY[0x1E69C8FC8] profileProvider:self->_profileProvider];
    v7 = self->_profilePreferenceManager;
    self->_profilePreferenceManager = v6;

    profilePreferenceManager = self->_profilePreferenceManager;
  }

  return profilePreferenceManager;
}

- (id)managerForPreference:(id)preference
{
  preferenceCopy = preference;
  preferenceToManager = self->_preferenceToManager;
  if (!preferenceToManager)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_preferenceToManager;
    self->_preferenceToManager = dictionary;

    automaticReaderActivationManager = [(_SFPerSitePreferencesVendor *)self automaticReaderActivationManager];
    v8 = self->_preferenceToManager;
    readerPreference = [automaticReaderActivationManager readerPreference];
    [(NSMutableDictionary *)v8 setObject:automaticReaderActivationManager forKeyedSubscript:readerPreference];

    contentBlockersPreferenceManager = [(_SFPerSitePreferencesVendor *)self contentBlockersPreferenceManager];
    v10 = self->_preferenceToManager;
    contentBlockersPreference = [contentBlockersPreferenceManager contentBlockersPreference];
    [(NSMutableDictionary *)v10 setObject:contentBlockersPreferenceManager forKeyedSubscript:contentBlockersPreference];

    sharedUserMediaPermissionController = [(_SFPerSitePreferencesVendor *)self sharedUserMediaPermissionController];
    v13 = self->_preferenceToManager;
    cameraMediaCapturePreference = [sharedUserMediaPermissionController cameraMediaCapturePreference];
    [(NSMutableDictionary *)v13 setObject:sharedUserMediaPermissionController forKeyedSubscript:cameraMediaCapturePreference];

    v15 = self->_preferenceToManager;
    microphoneMediaCapturePreference = [sharedUserMediaPermissionController microphoneMediaCapturePreference];
    [(NSMutableDictionary *)v15 setObject:sharedUserMediaPermissionController forKeyedSubscript:microphoneMediaCapturePreference];

    sharedGeolocationPermissionManager = [(_SFPerSitePreferencesVendor *)self sharedGeolocationPermissionManager];
    v17 = self->_preferenceToManager;
    geolocationPreference = [sharedGeolocationPermissionManager geolocationPreference];
    [(NSMutableDictionary *)v17 setObject:sharedGeolocationPermissionManager forKeyedSubscript:geolocationPreference];

    requestDesktopSitePreferenceManager = [(_SFPerSitePreferencesVendor *)self requestDesktopSitePreferenceManager];
    v20 = self->_preferenceToManager;
    requestDesktopSitePreference = [requestDesktopSitePreferenceManager requestDesktopSitePreference];
    [(NSMutableDictionary *)v20 setObject:requestDesktopSitePreferenceManager forKeyedSubscript:requestDesktopSitePreference];

    pageZoomPreferenceManager = [(_SFPerSitePreferencesVendor *)self pageZoomPreferenceManager];
    v23 = self->_preferenceToManager;
    pageZoomPreference = [pageZoomPreferenceManager pageZoomPreference];
    [(NSMutableDictionary *)v23 setObject:pageZoomPreferenceManager forKeyedSubscript:pageZoomPreference];

    appInfoOverlayPreferenceManager = [(_SFPerSitePreferencesVendor *)self appInfoOverlayPreferenceManager];
    v26 = self->_preferenceToManager;
    appInfoOverlayPreference = [appInfoOverlayPreferenceManager appInfoOverlayPreference];
    [(NSMutableDictionary *)v26 setObject:appInfoOverlayPreferenceManager forKeyedSubscript:appInfoOverlayPreference];

    lockdownModePreferenceManager = [(_SFPerSitePreferencesVendor *)self lockdownModePreferenceManager];
    v29 = self->_preferenceToManager;
    lockdownPreference = [lockdownModePreferenceManager lockdownPreference];
    [(NSMutableDictionary *)v29 setObject:lockdownModePreferenceManager forKeyedSubscript:lockdownPreference];

    profilePreferenceManager = [(_SFPerSitePreferencesVendor *)self profilePreferenceManager];
    v32 = self->_preferenceToManager;
    profilePreference = [profilePreferenceManager profilePreference];
    [(NSMutableDictionary *)v32 setObject:profilePreferenceManager forKeyedSubscript:profilePreference];

    preferenceToManager = self->_preferenceToManager;
  }

  v34 = [(NSMutableDictionary *)preferenceToManager objectForKeyedSubscript:preferenceCopy];

  return v34;
}

@end
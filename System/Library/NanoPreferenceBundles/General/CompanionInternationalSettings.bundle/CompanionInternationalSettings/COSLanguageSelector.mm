@interface COSLanguageSelector
- (COSInternationalController)internationalController;
- (COSLanguageSelector)initWithInternationalController:(id)controller;
- (id)appleLanguages;
- (id)deviceLanguageIdentifier;
- (id)systemLanguages;
- (void)setLanguages:(id)languages;
@end

@implementation COSLanguageSelector

- (COSLanguageSelector)initWithInternationalController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = COSLanguageSelector;
  v5 = [(COSLanguageSelector *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_internationalController, controllerCopy);
    v7 = [[NPSDomainAccessor alloc] initWithDomain:@".GlobalPreferences"];
    gizmoGlobalDomain = v6->_gizmoGlobalDomain;
    v6->_gizmoGlobalDomain = v7;

    v9 = objc_alloc_init(NPSManager);
    syncManager = v6->_syncManager;
    v6->_syncManager = v9;
  }

  return v6;
}

- (id)appleLanguages
{
  gizmoGlobalDomain = [(COSLanguageSelector *)self gizmoGlobalDomain];
  synchronize = [gizmoGlobalDomain synchronize];

  gizmoGlobalDomain2 = [(COSLanguageSelector *)self gizmoGlobalDomain];
  v6 = [gizmoGlobalDomain2 objectForKey:@"AppleLanguages"];

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = &off_29C88;
  }

  return v6;
}

- (void)setLanguages:(id)languages
{
  languagesCopy = languages;
  gizmoGlobalDomain = [(COSLanguageSelector *)self gizmoGlobalDomain];
  [gizmoGlobalDomain setObject:languagesCopy forKey:@"AppleLanguages"];

  gizmoGlobalDomain2 = [(COSLanguageSelector *)self gizmoGlobalDomain];
  synchronize = [gizmoGlobalDomain2 synchronize];

  syncManager = [(COSLanguageSelector *)self syncManager];
  gizmoGlobalDomain3 = [(COSLanguageSelector *)self gizmoGlobalDomain];
  domain = [gizmoGlobalDomain3 domain];
  v11 = [NSSet setWithObject:@"AppleLanguages"];
  [syncManager synchronizeNanoDomain:domain keys:v11];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.nano.watchlanguagechanged", 0, 0, 1u);
}

- (id)systemLanguages
{
  WeakRetained = objc_loadWeakRetained(&self->_internationalController);
  systemLanguages = [WeakRetained systemLanguages];

  return systemLanguages;
}

- (id)deviceLanguageIdentifier
{
  systemLanguages = [(COSLanguageSelector *)self systemLanguages];
  appleLanguages = [(COSLanguageSelector *)self appleLanguages];
  v5 = [NSBundle preferredLocalizationsFromArray:systemLanguages forPreferences:appleLanguages];
  firstObject = [v5 firstObject];

  return firstObject;
}

- (COSInternationalController)internationalController
{
  WeakRetained = objc_loadWeakRetained(&self->_internationalController);

  return WeakRetained;
}

@end
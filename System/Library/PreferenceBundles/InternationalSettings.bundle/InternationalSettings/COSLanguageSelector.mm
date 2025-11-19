@interface COSLanguageSelector
- (COSInternationalController)internationalController;
- (COSLanguageSelector)initWithInternationalController:(id)a3;
- (id)appleLanguages;
- (id)deviceLanguageIdentifier;
- (id)systemLanguages;
- (void)setLanguages:(id)a3;
@end

@implementation COSLanguageSelector

- (COSLanguageSelector)initWithInternationalController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = COSLanguageSelector;
  v5 = [(COSLanguageSelector *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_internationalController, v4);
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
  v3 = [(COSLanguageSelector *)self gizmoGlobalDomain];
  v4 = [v3 synchronize];

  v5 = [(COSLanguageSelector *)self gizmoGlobalDomain];
  v6 = [v5 objectForKey:@"AppleLanguages"];

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = &off_36E50;
  }

  return v6;
}

- (void)setLanguages:(id)a3
{
  v4 = a3;
  v5 = [(COSLanguageSelector *)self gizmoGlobalDomain];
  [v5 setObject:v4 forKey:@"AppleLanguages"];

  v6 = [(COSLanguageSelector *)self gizmoGlobalDomain];
  v7 = [v6 synchronize];

  v8 = [(COSLanguageSelector *)self syncManager];
  v9 = [(COSLanguageSelector *)self gizmoGlobalDomain];
  v10 = [v9 domain];
  v11 = [NSSet setWithObject:@"AppleLanguages"];
  [v8 synchronizeNanoDomain:v10 keys:v11];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.nano.watchlanguagechanged", 0, 0, 1u);
}

- (id)systemLanguages
{
  WeakRetained = objc_loadWeakRetained(&self->_internationalController);
  v3 = [WeakRetained systemLanguages];

  return v3;
}

- (id)deviceLanguageIdentifier
{
  v3 = [(COSLanguageSelector *)self systemLanguages];
  v4 = [(COSLanguageSelector *)self appleLanguages];
  v5 = [NSBundle preferredLocalizationsFromArray:v3 forPreferences:v4];
  v6 = [v5 firstObject];

  return v6;
}

- (COSInternationalController)internationalController
{
  WeakRetained = objc_loadWeakRetained(&self->_internationalController);

  return WeakRetained;
}

@end
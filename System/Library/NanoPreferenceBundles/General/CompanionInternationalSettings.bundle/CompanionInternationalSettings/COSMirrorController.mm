@interface COSMirrorController
+ (id)mirrorControllerWithInternationalController:(id)controller;
- (BOOL)mirrorSettings;
- (BOOL)shouldShowMirroringAsEnabled;
- (COSInternationalController)internationalController;
- (id)applicationBundleIdentifier;
@end

@implementation COSMirrorController

+ (id)mirrorControllerWithInternationalController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    [v4 setInternationalController:controllerCopy];
    specifiers = [v5 specifiers];
  }

  return v5;
}

- (BOOL)shouldShowMirroringAsEnabled
{
  if (![(COSMirrorController *)self mirrorSettings])
  {
    return 0;
  }

  internationalController = [(COSMirrorController *)self internationalController];
  languageSelector = [internationalController languageSelector];
  appleLanguages = [languageSelector appleLanguages];

  v6 = +[NSLocale preferredLanguages];
  LOBYTE(languageSelector) = [appleLanguages isEqualToArray:v6];

  return (languageSelector & 1) != 0;
}

- (id)applicationBundleIdentifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (BOOL)mirrorSettings
{
  if (COSActivePairingIsTinker())
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = COSMirrorController;
  return [(COSMirrorController *)&v4 mirrorSettings];
}

- (COSInternationalController)internationalController
{
  WeakRetained = objc_loadWeakRetained(&self->_internationalController);

  return WeakRetained;
}

@end
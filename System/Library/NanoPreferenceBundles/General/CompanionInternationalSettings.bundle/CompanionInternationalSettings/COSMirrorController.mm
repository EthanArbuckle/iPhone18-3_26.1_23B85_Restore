@interface COSMirrorController
+ (id)mirrorControllerWithInternationalController:(id)a3;
- (BOOL)mirrorSettings;
- (BOOL)shouldShowMirroringAsEnabled;
- (COSInternationalController)internationalController;
- (id)applicationBundleIdentifier;
@end

@implementation COSMirrorController

+ (id)mirrorControllerWithInternationalController:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    [v4 setInternationalController:v3];
    v6 = [v5 specifiers];
  }

  return v5;
}

- (BOOL)shouldShowMirroringAsEnabled
{
  if (![(COSMirrorController *)self mirrorSettings])
  {
    return 0;
  }

  v3 = [(COSMirrorController *)self internationalController];
  v4 = [v3 languageSelector];
  v5 = [v4 appleLanguages];

  v6 = +[NSLocale preferredLanguages];
  LOBYTE(v4) = [v5 isEqualToArray:v6];

  return (v4 & 1) != 0;
}

- (id)applicationBundleIdentifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundleIdentifier];

  return v3;
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
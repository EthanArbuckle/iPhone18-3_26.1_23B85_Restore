@interface SFCertificateWarningJSController
- (SFCertificateWarningJSController)initWithCertificateWarningController:(id)a3;
- (id)bypassFeatureTitleText;
- (id)bypassFeatureWarningText;
- (void)bypassFeatureVisitWebsite;
- (void)goBackSelected;
- (void)openClockSettings;
- (void)pageLoaded;
- (void)showCertificateInformation;
- (void)visitInsecureWebsite;
- (void)visitInsecureWebsiteWithTemporaryBypass;
@end

@implementation SFCertificateWarningJSController

- (SFCertificateWarningJSController)initWithCertificateWarningController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFCertificateWarningJSController;
  v5 = [(SFCertificateWarningJSController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_certificateWarningController, v4);
    v7 = v6;
  }

  return v6;
}

- (void)pageLoaded
{
  WeakRetained = objc_loadWeakRetained(&self->_certificateWarningController);
  [WeakRetained certificateWarningPageLoaded];
}

- (void)visitInsecureWebsite
{
  WeakRetained = objc_loadWeakRetained(&self->_certificateWarningController);
  [WeakRetained visitInsecureWebsite];
}

- (void)visitInsecureWebsiteWithTemporaryBypass
{
  WeakRetained = objc_loadWeakRetained(&self->_certificateWarningController);
  [WeakRetained visitInsecureWebsiteWithTemporaryBypass];
}

- (void)showCertificateInformation
{
  WeakRetained = objc_loadWeakRetained(&self->_certificateWarningController);
  [WeakRetained showCertificateInformation];
}

- (void)openClockSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_certificateWarningController);
  [WeakRetained openClockSettings];
}

- (void)goBackSelected
{
  WeakRetained = objc_loadWeakRetained(&self->_certificateWarningController);
  [WeakRetained goBackSelected];
}

- (void)bypassFeatureVisitWebsite
{
  WeakRetained = objc_loadWeakRetained(&self->_certificateWarningController);
  [WeakRetained visitWebsiteWithoutPrivateRelay];
}

- (id)bypassFeatureTitleText
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = _WBSLocalizedString();
  v4 = [v2 stringWithFormat:v3, @" "];

  return v4;
}

- (id)bypassFeatureWarningText
{
  WeakRetained = objc_loadWeakRetained(&self->_certificateWarningController);
  v3 = [WeakRetained warningPageContext];

  v4 = [v3 failingURL];
  v5 = [v4 host];

  [v3 warningCategory];
  v6 = MEMORY[0x1E696AEC0];
  v7 = _WBSLocalizedString();
  v8 = [v6 stringWithFormat:v7, v5, @" "];

  return v8;
}

@end
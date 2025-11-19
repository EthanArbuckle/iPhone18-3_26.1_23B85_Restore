@interface SFWebProcessPlugInCertificateWarningController
- (SFWebProcessPlugInCertificateWarningController)initWithPageController:(id)a3;
- (id)_certificateWarningPageHandlerProxy;
- (void)_clearCertificateWarningPagePresenterInterface;
- (void)_setUpCertificateWarningPagePresenterInterface;
- (void)certificateWarningPageLoaded;
- (void)dealloc;
- (void)goBackSelected;
- (void)injectCertificateWarningBindingsForFrame:(id)a3 inScriptWorld:(id)a4;
- (void)openClockSettings;
- (void)showCertificateInformation;
- (void)visitInsecureWebsite;
- (void)visitInsecureWebsiteWithTemporaryBypass;
- (void)visitWebsiteWithoutPrivateRelay;
@end

@implementation SFWebProcessPlugInCertificateWarningController

- (SFWebProcessPlugInCertificateWarningController)initWithPageController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFWebProcessPlugInCertificateWarningController;
  v5 = [(SFWebProcessPlugInCertificateWarningController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_pageController, v4);
    [(SFWebProcessPlugInCertificateWarningController *)v6 _setUpCertificateWarningPagePresenterInterface];
    v7 = v6;
  }

  return v6;
}

- (void)dealloc
{
  [(SFWebProcessPlugInCertificateWarningController *)self _clearCertificateWarningPagePresenterInterface];
  v3.receiver = self;
  v3.super_class = SFWebProcessPlugInCertificateWarningController;
  [(SFWebProcessPlugInCertificateWarningController *)&v3 dealloc];
}

- (void)_setUpCertificateWarningPagePresenterInterface
{
  v3 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F50A2AA0];
  certificateWarningPagePresenterInterface = self->_certificateWarningPagePresenterInterface;
  self->_certificateWarningPagePresenterInterface = v3;

  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  v5 = [WeakRetained browserContextController];
  v6 = [v5 _remoteObjectRegistry];
  [v6 registerExportedObject:self interface:self->_certificateWarningPagePresenterInterface];
}

- (void)_clearCertificateWarningPagePresenterInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  v4 = [WeakRetained browserContextController];
  v6 = [v4 _remoteObjectRegistry];

  [v6 unregisterExportedObject:self interface:self->_certificateWarningPagePresenterInterface];
  certificateWarningPagePresenterInterface = self->_certificateWarningPagePresenterInterface;
  self->_certificateWarningPagePresenterInterface = 0;
}

- (void)injectCertificateWarningBindingsForFrame:(id)a3 inScriptWorld:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v13 URL];
  if ([v7 isFileURL] && self->_warningPageContext)
  {
    v8 = [v13 jsContextForWorld:v6];
    v9 = [v8 globalObject];
    v10 = MEMORY[0x1E696EB58];
    v11 = [[SFCertificateWarningJSController alloc] initWithCertificateWarningController:self];
    v12 = [v10 valueWithObject:v11 inContext:v8];

    [v9 setValue:v12 forProperty:@"CertificateWarningController"];
  }
}

- (void)certificateWarningPageLoaded
{
  v37[6] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  v4 = [WeakRetained browserContextController];
  v5 = [v4 mainFrame];

  v6 = [MEMORY[0x1E6985398] normalWorld];
  v7 = [v5 jsContextForWorld:v6];

  v8 = [v7 globalObject];
  v9 = [v8 valueForProperty:@"CertificateWarning"];
  v10 = v9;
  if (v9 && ([v9 isUndefined] & 1) == 0)
  {
    v11 = MEMORY[0x1E696EB58];
    v12 = [(WBSCertificateWarningPageContext *)self->_warningPageContext failingURL];
    v13 = [v12 host];
    v35 = [v11 valueWithObject:v13 inContext:v7];

    v14 = MEMORY[0x1E696EB58];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WBSCertificateWarningPageContext warningCategory](self->_warningPageContext, "warningCategory")}];
    v34 = [v14 valueWithObject:v15 inContext:v7];

    v16 = MEMORY[0x1E696EB58];
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[WBSCertificateWarningPageContext canGoBack](self->_warningPageContext, "canGoBack")}];
    v18 = [v16 valueWithObject:v17 inContext:v7];

    v19 = MEMORY[0x1E696EB58];
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WBSCertificateWarningPageContext numberOfDaysInvalid](self->_warningPageContext, "numberOfDaysInvalid")}];
    v21 = [v19 valueWithObject:v20 inContext:v7];

    v22 = MEMORY[0x1E696EB58];
    v23 = [(WBSCertificateWarningPageContext *)self->_warningPageContext expiredCerticateDescription];
    v24 = [v22 valueWithObject:v23 inContext:v7];

    v25 = MEMORY[0x1E696EB58];
    [(WBSCertificateWarningPageContext *)self->_warningPageContext clockSkew];
    v26 = [v25 valueWithDouble:v7 inContext:?];
    v37[0] = v35;
    v37[1] = v34;
    v37[2] = v18;
    v37[3] = v21;
    v37[4] = v24;
    v37[5] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:6];
    v28 = [v10 invokeMethod:@"updateUI" withArguments:v27];

    warningPageContext = self->_warningPageContext;
    self->_warningPageContext = 0;

    v30 = [MEMORY[0x1E69DC668] sharedApplication];
    LODWORD(v27) = [v30 safari_prefersRTLLayout];

    if (v27)
    {
      v31 = [MEMORY[0x1E696EB58] valueWithObject:@"rtl" inContext:v7];
      v36 = v31;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
      v33 = [v10 invokeMethod:@"setTextDirection" withArguments:v32];
    }
  }
}

- (id)_certificateWarningPageHandlerProxy
{
  certificateWarningPageHandlerProxy = self->_certificateWarningPageHandlerProxy;
  if (!certificateWarningPageHandlerProxy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_pageController);
    v5 = [WeakRetained browserContextController];
    v6 = [v5 _remoteObjectRegistry];
    v7 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F5046A38];
    v8 = [v6 remoteObjectProxyWithInterface:v7];
    v9 = self->_certificateWarningPageHandlerProxy;
    self->_certificateWarningPageHandlerProxy = v8;

    certificateWarningPageHandlerProxy = self->_certificateWarningPageHandlerProxy;
  }

  return certificateWarningPageHandlerProxy;
}

- (void)visitInsecureWebsite
{
  v2 = [(SFWebProcessPlugInCertificateWarningController *)self _certificateWarningPageHandlerProxy];
  [v2 visitInsecureWebsite];
}

- (void)visitInsecureWebsiteWithTemporaryBypass
{
  v2 = [(SFWebProcessPlugInCertificateWarningController *)self _certificateWarningPageHandlerProxy];
  [v2 visitInsecureWebsiteWithTemporaryBypass];
}

- (void)showCertificateInformation
{
  v2 = [(SFWebProcessPlugInCertificateWarningController *)self _certificateWarningPageHandlerProxy];
  [v2 showCertificateInformation];
}

- (void)openClockSettings
{
  v2 = [(SFWebProcessPlugInCertificateWarningController *)self _certificateWarningPageHandlerProxy];
  [v2 openClockSettings];
}

- (void)goBackSelected
{
  v2 = [(SFWebProcessPlugInCertificateWarningController *)self _certificateWarningPageHandlerProxy];
  [v2 goBackButtonClicked];
}

- (void)visitWebsiteWithoutPrivateRelay
{
  v2 = [(SFWebProcessPlugInCertificateWarningController *)self _certificateWarningPageHandlerProxy];
  [v2 visitWebsiteWithoutPrivateRelay];
}

@end
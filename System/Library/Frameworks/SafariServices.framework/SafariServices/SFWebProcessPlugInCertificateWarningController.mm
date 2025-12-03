@interface SFWebProcessPlugInCertificateWarningController
- (SFWebProcessPlugInCertificateWarningController)initWithPageController:(id)controller;
- (id)_certificateWarningPageHandlerProxy;
- (void)_clearCertificateWarningPagePresenterInterface;
- (void)_setUpCertificateWarningPagePresenterInterface;
- (void)certificateWarningPageLoaded;
- (void)dealloc;
- (void)goBackSelected;
- (void)injectCertificateWarningBindingsForFrame:(id)frame inScriptWorld:(id)world;
- (void)openClockSettings;
- (void)showCertificateInformation;
- (void)visitInsecureWebsite;
- (void)visitInsecureWebsiteWithTemporaryBypass;
- (void)visitWebsiteWithoutPrivateRelay;
@end

@implementation SFWebProcessPlugInCertificateWarningController

- (SFWebProcessPlugInCertificateWarningController)initWithPageController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = SFWebProcessPlugInCertificateWarningController;
  v5 = [(SFWebProcessPlugInCertificateWarningController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_pageController, controllerCopy);
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
  browserContextController = [WeakRetained browserContextController];
  _remoteObjectRegistry = [browserContextController _remoteObjectRegistry];
  [_remoteObjectRegistry registerExportedObject:self interface:self->_certificateWarningPagePresenterInterface];
}

- (void)_clearCertificateWarningPagePresenterInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  browserContextController = [WeakRetained browserContextController];
  _remoteObjectRegistry = [browserContextController _remoteObjectRegistry];

  [_remoteObjectRegistry unregisterExportedObject:self interface:self->_certificateWarningPagePresenterInterface];
  certificateWarningPagePresenterInterface = self->_certificateWarningPagePresenterInterface;
  self->_certificateWarningPagePresenterInterface = 0;
}

- (void)injectCertificateWarningBindingsForFrame:(id)frame inScriptWorld:(id)world
{
  frameCopy = frame;
  worldCopy = world;
  v7 = [frameCopy URL];
  if ([v7 isFileURL] && self->_warningPageContext)
  {
    v8 = [frameCopy jsContextForWorld:worldCopy];
    globalObject = [v8 globalObject];
    v10 = MEMORY[0x1E696EB58];
    v11 = [[SFCertificateWarningJSController alloc] initWithCertificateWarningController:self];
    v12 = [v10 valueWithObject:v11 inContext:v8];

    [globalObject setValue:v12 forProperty:@"CertificateWarningController"];
  }
}

- (void)certificateWarningPageLoaded
{
  v37[6] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  browserContextController = [WeakRetained browserContextController];
  mainFrame = [browserContextController mainFrame];

  normalWorld = [MEMORY[0x1E6985398] normalWorld];
  v7 = [mainFrame jsContextForWorld:normalWorld];

  globalObject = [v7 globalObject];
  v9 = [globalObject valueForProperty:@"CertificateWarning"];
  v10 = v9;
  if (v9 && ([v9 isUndefined] & 1) == 0)
  {
    v11 = MEMORY[0x1E696EB58];
    failingURL = [(WBSCertificateWarningPageContext *)self->_warningPageContext failingURL];
    host = [failingURL host];
    v35 = [v11 valueWithObject:host inContext:v7];

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
    expiredCerticateDescription = [(WBSCertificateWarningPageContext *)self->_warningPageContext expiredCerticateDescription];
    v24 = [v22 valueWithObject:expiredCerticateDescription inContext:v7];

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

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    LODWORD(v27) = [mEMORY[0x1E69DC668] safari_prefersRTLLayout];

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
    browserContextController = [WeakRetained browserContextController];
    _remoteObjectRegistry = [browserContextController _remoteObjectRegistry];
    v7 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F5046A38];
    v8 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v7];
    v9 = self->_certificateWarningPageHandlerProxy;
    self->_certificateWarningPageHandlerProxy = v8;

    certificateWarningPageHandlerProxy = self->_certificateWarningPageHandlerProxy;
  }

  return certificateWarningPageHandlerProxy;
}

- (void)visitInsecureWebsite
{
  _certificateWarningPageHandlerProxy = [(SFWebProcessPlugInCertificateWarningController *)self _certificateWarningPageHandlerProxy];
  [_certificateWarningPageHandlerProxy visitInsecureWebsite];
}

- (void)visitInsecureWebsiteWithTemporaryBypass
{
  _certificateWarningPageHandlerProxy = [(SFWebProcessPlugInCertificateWarningController *)self _certificateWarningPageHandlerProxy];
  [_certificateWarningPageHandlerProxy visitInsecureWebsiteWithTemporaryBypass];
}

- (void)showCertificateInformation
{
  _certificateWarningPageHandlerProxy = [(SFWebProcessPlugInCertificateWarningController *)self _certificateWarningPageHandlerProxy];
  [_certificateWarningPageHandlerProxy showCertificateInformation];
}

- (void)openClockSettings
{
  _certificateWarningPageHandlerProxy = [(SFWebProcessPlugInCertificateWarningController *)self _certificateWarningPageHandlerProxy];
  [_certificateWarningPageHandlerProxy openClockSettings];
}

- (void)goBackSelected
{
  _certificateWarningPageHandlerProxy = [(SFWebProcessPlugInCertificateWarningController *)self _certificateWarningPageHandlerProxy];
  [_certificateWarningPageHandlerProxy goBackButtonClicked];
}

- (void)visitWebsiteWithoutPrivateRelay
{
  _certificateWarningPageHandlerProxy = [(SFWebProcessPlugInCertificateWarningController *)self _certificateWarningPageHandlerProxy];
  [_certificateWarningPageHandlerProxy visitWebsiteWithoutPrivateRelay];
}

@end
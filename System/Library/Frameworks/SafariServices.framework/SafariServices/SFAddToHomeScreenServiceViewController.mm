@interface SFAddToHomeScreenServiceViewController
+ (id)_exportedInterface;
- (void)dataProvider:(id)a3 didFinishWithResult:(BOOL)a4;
- (void)didCopyStagedCookiesToURL:(id)a3 sandboxExtensionToken:(id)a4;
- (void)didFetchManifestData:(id)a3;
- (void)didFetchWebClipMetadata:(id)a3;
- (void)prepareForDisplayWithCompletionHandler:(id)a3;
- (void)viewDidLoad;
@end

@implementation SFAddToHomeScreenServiceViewController

+ (id)_exportedInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F50B2200];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v3 setWithObjects:{v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_didFetchManifestData_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v11 forSelector:sel_didFetchWebClipMetadata_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = SFAddToHomeScreenServiceViewController;
  [(SFAddToHomeScreenServiceViewController *)&v10 viewDidLoad];
  provider = self->_provider;
  if (!provider)
  {
    v4 = objc_alloc_init(SFWebAppDataProvider);
    v5 = self->_provider;
    self->_provider = v4;

    [(SFWebAppDataProvider *)self->_provider setDelegate:self];
    provider = self->_provider;
  }

  v6 = [(SFWebAppDataProvider *)provider activityViewController];
  [(SFAddToHomeScreenServiceViewController *)self addChildViewController:v6];
  v7 = [v6 view];
  v8 = [(SFAddToHomeScreenServiceViewController *)self view];
  [v8 addSubview:v7];

  v9 = [(SFAddToHomeScreenServiceViewController *)self view];
  [v9 bounds];
  [v7 setFrame:?];

  [v7 setAutoresizingMask:18];
  [v6 didMoveToParentViewController:self];
}

- (void)prepareForDisplayWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(SFAddToHomeScreenServiceViewController *)self _hostAuditToken];
  if (WBSAuditTokenHasEntitlement())
  {
    [(SFWebAppDataProvider *)self->_provider setContentReadyForDisplay:0];
  }

  else
  {
    v5 = [(SFAddToHomeScreenServiceViewController *)self _remoteViewControllerProxy:0];
    [v5 serviceViewControllerDidFinishWithResult:0];
  }

  v4[2](v4);
}

- (void)didFetchManifestData:(id)a3
{
  v4 = a3;
  [(SFAddToHomeScreenServiceViewController *)self _hostAuditToken];
  if (WBSAuditTokenHasEntitlement())
  {
    [(SFWebAppDataProvider *)self->_provider prepareWithManifestData:v4, 0, 0, 0, 0];
  }

  else
  {
    v5 = [(SFAddToHomeScreenServiceViewController *)self _remoteViewControllerProxy:0];
    [v5 serviceViewControllerDidFinishWithResult:0];
  }
}

- (void)didFetchWebClipMetadata:(id)a3
{
  v4 = a3;
  [(SFAddToHomeScreenServiceViewController *)self _hostAuditToken];
  if (WBSAuditTokenHasEntitlement())
  {
    [(SFWebAppDataProvider *)self->_provider updateWithWebClipMetadata:v4, 0, 0, 0, 0];
  }

  else
  {
    v5 = [(SFAddToHomeScreenServiceViewController *)self _remoteViewControllerProxy:0];
    [v5 serviceViewControllerDidFinishWithResult:0];
  }
}

- (void)didCopyStagedCookiesToURL:(id)a3 sandboxExtensionToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SFAddToHomeScreenServiceViewController *)self _hostAuditToken];
  if (WBSAuditTokenHasEntitlement())
  {
    [(SFWebAppDataProvider *)self->_provider updateWithStagedCookiesDirectoryURL:v6 sandboxExtensionToken:v7, 0, 0, 0, 0];
  }

  else
  {
    v8 = [(SFAddToHomeScreenServiceViewController *)self _remoteViewControllerProxy:0];
    [v8 serviceViewControllerDidFinishWithResult:0];

    [v7 UTF8String];
    sandbox_extension_consume();
    sandbox_extension_release();
  }
}

- (void)dataProvider:(id)a3 didFinishWithResult:(BOOL)a4
{
  v4 = a4;
  v5 = [(SFAddToHomeScreenServiceViewController *)self _remoteViewControllerProxy];
  [v5 serviceViewControllerDidFinishWithResult:v4];
}

@end
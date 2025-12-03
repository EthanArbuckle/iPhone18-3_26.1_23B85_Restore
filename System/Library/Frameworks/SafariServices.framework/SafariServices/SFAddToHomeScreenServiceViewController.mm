@interface SFAddToHomeScreenServiceViewController
+ (id)_exportedInterface;
- (void)dataProvider:(id)provider didFinishWithResult:(BOOL)result;
- (void)didCopyStagedCookiesToURL:(id)l sandboxExtensionToken:(id)token;
- (void)didFetchManifestData:(id)data;
- (void)didFetchWebClipMetadata:(id)metadata;
- (void)prepareForDisplayWithCompletionHandler:(id)handler;
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

  activityViewController = [(SFWebAppDataProvider *)provider activityViewController];
  [(SFAddToHomeScreenServiceViewController *)self addChildViewController:activityViewController];
  view = [activityViewController view];
  view2 = [(SFAddToHomeScreenServiceViewController *)self view];
  [view2 addSubview:view];

  view3 = [(SFAddToHomeScreenServiceViewController *)self view];
  [view3 bounds];
  [view setFrame:?];

  [view setAutoresizingMask:18];
  [activityViewController didMoveToParentViewController:self];
}

- (void)prepareForDisplayWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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

  handlerCopy[2](handlerCopy);
}

- (void)didFetchManifestData:(id)data
{
  dataCopy = data;
  [(SFAddToHomeScreenServiceViewController *)self _hostAuditToken];
  if (WBSAuditTokenHasEntitlement())
  {
    [(SFWebAppDataProvider *)self->_provider prepareWithManifestData:dataCopy, 0, 0, 0, 0];
  }

  else
  {
    v5 = [(SFAddToHomeScreenServiceViewController *)self _remoteViewControllerProxy:0];
    [v5 serviceViewControllerDidFinishWithResult:0];
  }
}

- (void)didFetchWebClipMetadata:(id)metadata
{
  metadataCopy = metadata;
  [(SFAddToHomeScreenServiceViewController *)self _hostAuditToken];
  if (WBSAuditTokenHasEntitlement())
  {
    [(SFWebAppDataProvider *)self->_provider updateWithWebClipMetadata:metadataCopy, 0, 0, 0, 0];
  }

  else
  {
    v5 = [(SFAddToHomeScreenServiceViewController *)self _remoteViewControllerProxy:0];
    [v5 serviceViewControllerDidFinishWithResult:0];
  }
}

- (void)didCopyStagedCookiesToURL:(id)l sandboxExtensionToken:(id)token
{
  lCopy = l;
  tokenCopy = token;
  [(SFAddToHomeScreenServiceViewController *)self _hostAuditToken];
  if (WBSAuditTokenHasEntitlement())
  {
    [(SFWebAppDataProvider *)self->_provider updateWithStagedCookiesDirectoryURL:lCopy sandboxExtensionToken:tokenCopy, 0, 0, 0, 0];
  }

  else
  {
    v8 = [(SFAddToHomeScreenServiceViewController *)self _remoteViewControllerProxy:0];
    [v8 serviceViewControllerDidFinishWithResult:0];

    [tokenCopy UTF8String];
    sandbox_extension_consume();
    sandbox_extension_release();
  }
}

- (void)dataProvider:(id)provider didFinishWithResult:(BOOL)result
{
  resultCopy = result;
  _remoteViewControllerProxy = [(SFAddToHomeScreenServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy serviceViewControllerDidFinishWithResult:resultCopy];
}

@end
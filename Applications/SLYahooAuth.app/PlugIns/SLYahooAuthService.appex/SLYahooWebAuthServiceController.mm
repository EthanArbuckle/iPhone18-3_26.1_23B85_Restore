@interface SLYahooWebAuthServiceController
- (SLYahooWebAuthServiceController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)webViewController:(id)controller didFinishWithSuccess:(BOOL)success response:(id)response error:(id)error;
@end

@implementation SLYahooWebAuthServiceController

- (SLYahooWebAuthServiceController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = SLYahooWebAuthServiceController;
  v4 = [(SLYahooWebAuthServiceController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc_init(SL_OOPAWebViewController);
    webViewController = v4->_webViewController;
    v4->_webViewController = v5;

    [(SL_OOPAWebViewController *)v4->_webViewController setDelegate:v4];
  }

  return v4;
}

- (void)loadView
{
  v20.receiver = self;
  v20.super_class = SLYahooWebAuthServiceController;
  [(SLYahooWebAuthServiceController *)&v20 loadView];
  view = [(SLYahooWebAuthServiceController *)self view];
  [view setOpaque:1];

  v4 = +[UIColor clearColor];
  view2 = [(SLYahooWebAuthServiceController *)self view];
  [view2 setBackgroundColor:v4];

  extensionContext = [(SLYahooWebAuthServiceController *)self extensionContext];
  inputItems = [extensionContext inputItems];
  firstObject = [inputItems firstObject];

  userInfo = [firstObject userInfo];
  _SLLog();
  v10 = [userInfo objectForKeyedSubscript:{@"description", userInfo}];
  [(SL_OOPAWebViewController *)self->_webViewController setNavBarTitle:v10];

  v11 = [userInfo objectForKeyedSubscript:@"username"];
  if (v11)
  {
    [(SL_OOPAWebViewController *)self->_webViewController setUsername:v11];
  }

  v12 = objc_opt_class();
  v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
  v14 = [userInfo objectForKeyedSubscript:@"webClient"];
  v19 = 0;
  v15 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v13 fromData:v14 error:&v19];
  v16 = v19;

  if (v16)
  {
    v18 = v16;
    _SLLog();
  }

  [(SLYahooWebAuthServiceController *)self pushViewController:self->_webViewController animated:0, v18];
  v17 = [[SLWebAuthFlowController alloc] initWithWebClient:v15];
  [(SL_OOPAWebViewController *)self->_webViewController setAuthFlowDelegate:v17];
}

- (void)webViewController:(id)controller didFinishWithSuccess:(BOOL)success response:(id)response error:(id)error
{
  successCopy = success;
  errorCopy = error;
  v10 = errorCopy;
  if (response || successCopy)
  {
    v12 = [NSKeyedArchiver archivedDataWithRootObject:response requiringSecureCoding:1 error:0];
    v13 = [[NSItemProvider alloc] initWithItem:v12 typeIdentifier:kUTTypeData];
    v20 = v13;
    v14 = [NSArray arrayWithObjects:&v20 count:1];
    v15 = objc_alloc_init(NSExtensionItem);
    [v15 setAttachments:v14];
    _SLLog();
    extensionContext = [(SLYahooWebAuthServiceController *)self extensionContext];
    v19 = v15;
    v17 = [NSArray arrayWithObjects:&v19 count:1];
    [extensionContext completeRequestReturningItems:v17 completionHandler:&stru_100004178];
  }

  else
  {
    v18 = errorCopy;
    _SLLog();
    extensionContext2 = [(SLYahooWebAuthServiceController *)self extensionContext];
    [extensionContext2 cancelRequestWithError:v10];

    _SLLog();
  }
}

@end
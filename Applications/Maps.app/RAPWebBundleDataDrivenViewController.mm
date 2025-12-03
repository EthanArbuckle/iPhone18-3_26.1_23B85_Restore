@interface RAPWebBundleDataDrivenViewController
- (RAPWebBundleDataDrivenViewController)initWithEntryPoint:(id)point report:(id)report title:(id)title data:(id)data replyHandler:(id)handler;
- (void)_dismiss;
- (void)_submit;
- (void)didReceiveMessageFromUserContentController:(id)controller message:(id)message replyHandler:(id)handler;
- (void)dismissModal;
- (void)setupViews;
- (void)viewDidLoad;
@end

@implementation RAPWebBundleDataDrivenViewController

- (void)didReceiveMessageFromUserContentController:(id)controller message:(id)message replyHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = RAPWebBundleDataDrivenViewController;
  [(RAPWebBundleBaseViewController *)&v17 didReceiveMessageFromUserContentController:controller message:messageCopy replyHandler:handlerCopy];
  v10 = [messageCopy objectForKeyedSubscript:@"name"];
  v11 = [v10 isEqualToString:@"context"];

  if (v11)
  {
    v12 = [messageCopy objectForKeyedSubscript:@"supportedLocales"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = +[NSArray array];

      v12 = v13;
    }

    v14 = [[RAPWebBundleBaseContext alloc] initWithType:&stru_1016631F0 locales:v12];
    context = [(RAPWebBundleBaseContext *)v14 context];
    v16 = [context mutableCopy];

    [v16 setObject:self->_data forKeyedSubscript:@"modalData"];
    handlerCopy[2](handlerCopy, v16, 0);
  }
}

- (void)setupViews
{
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_dismiss"];
  navigationItem = [(RAPWebBundleDataDrivenViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v3];

  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_submit"];
  navigationItem2 = [(RAPWebBundleDataDrivenViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v5];

  title = self->_title;
  navigationItem3 = [(RAPWebBundleDataDrivenViewController *)self navigationItem];
  [navigationItem3 setTitle:title];

  v9.receiver = self;
  v9.super_class = RAPWebBundleDataDrivenViewController;
  [(RAPWebBundleBaseViewController *)&v9 setupViews];
}

- (void)_submit
{
  objc_initWeak(&location, self);
  webView = [(RAPWebBundleBaseViewController *)self webView];
  v4 = +[WKContentWorld pageWorld];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100AF0FD4;
  v5[3] = &unk_101637AD0;
  objc_copyWeak(&v6, &location);
  [webView callAsyncJavaScript:@"return rapGetModalData()" arguments:0 inFrame:0 inContentWorld:v4 completionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_dismiss
{
  replyHandler = self->_replyHandler;
  v4 = +[NSNull null];
  replyHandler[2](replyHandler, v4, 0);

  [(RAPWebBundleDataDrivenViewController *)self dismissModal];
}

- (void)dismissModal
{
  if (sub_10000FA08(self) == 5)
  {
    navigationController = [(RAPWebBundleDataDrivenViewController *)self navigationController];
    v3 = [navigationController popViewControllerAnimated:1];
  }

  else
  {
    navigationController = [(RAPWebBundleDataDrivenViewController *)self presentingViewController];
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = RAPWebBundleDataDrivenViewController;
  [(RAPWebBundleBaseViewController *)&v3 viewDidLoad];
  [(RAPWebBundleBaseViewController *)self loadWebView];
}

- (RAPWebBundleDataDrivenViewController)initWithEntryPoint:(id)point report:(id)report title:(id)title data:(id)data replyHandler:(id)handler
{
  pointCopy = point;
  titleCopy = title;
  dataCopy = data;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = RAPWebBundleDataDrivenViewController;
  v16 = [(RAPWebBundleBaseViewController *)&v21 initWithReport:report];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_data, data);
    objc_storeStrong(&v17->_title, title);
    v18 = objc_retainBlock(handlerCopy);
    replyHandler = v17->_replyHandler;
    v17->_replyHandler = v18;

    [(RAPWebBundleBaseViewController *)v17 setEntryPointString:pointCopy];
  }

  return v17;
}

@end
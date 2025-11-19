@interface RAPWebBundleDataDrivenViewController
- (RAPWebBundleDataDrivenViewController)initWithEntryPoint:(id)a3 report:(id)a4 title:(id)a5 data:(id)a6 replyHandler:(id)a7;
- (void)_dismiss;
- (void)_submit;
- (void)didReceiveMessageFromUserContentController:(id)a3 message:(id)a4 replyHandler:(id)a5;
- (void)dismissModal;
- (void)setupViews;
- (void)viewDidLoad;
@end

@implementation RAPWebBundleDataDrivenViewController

- (void)didReceiveMessageFromUserContentController:(id)a3 message:(id)a4 replyHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = RAPWebBundleDataDrivenViewController;
  [(RAPWebBundleBaseViewController *)&v17 didReceiveMessageFromUserContentController:a3 message:v8 replyHandler:v9];
  v10 = [v8 objectForKeyedSubscript:@"name"];
  v11 = [v10 isEqualToString:@"context"];

  if (v11)
  {
    v12 = [v8 objectForKeyedSubscript:@"supportedLocales"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = +[NSArray array];

      v12 = v13;
    }

    v14 = [[RAPWebBundleBaseContext alloc] initWithType:&stru_1016631F0 locales:v12];
    v15 = [(RAPWebBundleBaseContext *)v14 context];
    v16 = [v15 mutableCopy];

    [v16 setObject:self->_data forKeyedSubscript:@"modalData"];
    v9[2](v9, v16, 0);
  }
}

- (void)setupViews
{
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_dismiss"];
  v4 = [(RAPWebBundleDataDrivenViewController *)self navigationItem];
  [v4 setLeftBarButtonItem:v3];

  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_submit"];
  v6 = [(RAPWebBundleDataDrivenViewController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  title = self->_title;
  v8 = [(RAPWebBundleDataDrivenViewController *)self navigationItem];
  [v8 setTitle:title];

  v9.receiver = self;
  v9.super_class = RAPWebBundleDataDrivenViewController;
  [(RAPWebBundleBaseViewController *)&v9 setupViews];
}

- (void)_submit
{
  objc_initWeak(&location, self);
  v3 = [(RAPWebBundleBaseViewController *)self webView];
  v4 = +[WKContentWorld pageWorld];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100AF0FD4;
  v5[3] = &unk_101637AD0;
  objc_copyWeak(&v6, &location);
  [v3 callAsyncJavaScript:@"return rapGetModalData()" arguments:0 inFrame:0 inContentWorld:v4 completionHandler:v5];

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
    v4 = [(RAPWebBundleDataDrivenViewController *)self navigationController];
    v3 = [v4 popViewControllerAnimated:1];
  }

  else
  {
    v4 = [(RAPWebBundleDataDrivenViewController *)self presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = RAPWebBundleDataDrivenViewController;
  [(RAPWebBundleBaseViewController *)&v3 viewDidLoad];
  [(RAPWebBundleBaseViewController *)self loadWebView];
}

- (RAPWebBundleDataDrivenViewController)initWithEntryPoint:(id)a3 report:(id)a4 title:(id)a5 data:(id)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = RAPWebBundleDataDrivenViewController;
  v16 = [(RAPWebBundleBaseViewController *)&v21 initWithReport:a4];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_data, a6);
    objc_storeStrong(&v17->_title, a5);
    v18 = objc_retainBlock(v15);
    replyHandler = v17->_replyHandler;
    v17->_replyHandler = v18;

    [(RAPWebBundleBaseViewController *)v17 setEntryPointString:v12];
  }

  return v17;
}

@end
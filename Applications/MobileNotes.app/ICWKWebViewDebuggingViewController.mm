@interface ICWKWebViewDebuggingViewController
- (WKWebView)webView;
- (void)dismiss:(id)dismiss;
- (void)viewDidLoad;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation ICWKWebViewDebuggingViewController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = ICWKWebViewDebuggingViewController;
  [(ICWKWebViewDebuggingViewController *)&v10 viewDidLoad];
  webView = [(ICWKWebViewDebuggingViewController *)self webView];
  [webView setNavigationDelegate:self];

  webView2 = [(ICWKWebViewDebuggingViewController *)self webView];
  [webView2 _setInputDelegate:self];

  webView3 = [(ICWKWebViewDebuggingViewController *)self webView];
  [webView3 _setEditable:1];

  webView4 = [(ICWKWebViewDebuggingViewController *)self webView];
  v7 = +[NoteHTMLEditorView baseHTMLString];
  v8 = [webView4 loadHTMLString:v7 baseURL:0];

  navigationItem = [(ICWKWebViewDebuggingViewController *)self navigationItem];
  [navigationItem setTitle:@"WKWebView"];
}

- (void)dismiss:(id)dismiss
{
  navigationController = [(ICWKWebViewDebuggingViewController *)self navigationController];
  presentingViewController = [navigationController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  v4 = [(ICWKWebViewDebuggingViewController *)self webView:view];
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_1000B5D6C;
  v8 = &unk_100648350;
  v9 = @"var editor = document.getElementById('editor')\neditor.setAttribute('contentEditable', true);\neditor.focus();\n";
  [v4 evaluateJavaScript:? completionHandler:?];
}

- (WKWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

@end
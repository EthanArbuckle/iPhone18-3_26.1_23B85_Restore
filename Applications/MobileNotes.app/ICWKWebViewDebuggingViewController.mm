@interface ICWKWebViewDebuggingViewController
- (WKWebView)webView;
- (void)dismiss:(id)a3;
- (void)viewDidLoad;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation ICWKWebViewDebuggingViewController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = ICWKWebViewDebuggingViewController;
  [(ICWKWebViewDebuggingViewController *)&v10 viewDidLoad];
  v3 = [(ICWKWebViewDebuggingViewController *)self webView];
  [v3 setNavigationDelegate:self];

  v4 = [(ICWKWebViewDebuggingViewController *)self webView];
  [v4 _setInputDelegate:self];

  v5 = [(ICWKWebViewDebuggingViewController *)self webView];
  [v5 _setEditable:1];

  v6 = [(ICWKWebViewDebuggingViewController *)self webView];
  v7 = +[NoteHTMLEditorView baseHTMLString];
  v8 = [v6 loadHTMLString:v7 baseURL:0];

  v9 = [(ICWKWebViewDebuggingViewController *)self navigationItem];
  [v9 setTitle:@"WKWebView"];
}

- (void)dismiss:(id)a3
{
  v4 = [(ICWKWebViewDebuggingViewController *)self navigationController];
  v3 = [v4 presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v4 = [(ICWKWebViewDebuggingViewController *)self webView:a3];
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
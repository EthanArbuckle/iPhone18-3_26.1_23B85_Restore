@interface SKTermsPageViewController
- (SKTermsPageViewController)initWithTerms:(id)terms;
- (SKTermsPageViewControllerDelegate)delegate;
- (id)_markupTermsWithHTML:(id)l;
- (void)_buttonAccept:(id)accept;
- (void)_dismissViewControllerAnimated:(BOOL)animated;
- (void)_dismissViewControllerAnimated:(BOOL)animated withAcceptance:(BOOL)acceptance;
- (void)_loadSubviews;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
@end

@implementation SKTermsPageViewController

- (SKTermsPageViewController)initWithTerms:(id)terms
{
  termsCopy = terms;
  if (termsCopy)
  {
    v10.receiver = self;
    v10.super_class = SKTermsPageViewController;
    v5 = [(SKTermsPageViewController *)&v10 init];
    v6 = v5;
    if (v5)
    {
      v7 = [(SKTermsPageViewController *)v5 _markupTermsWithHTML:termsCopy];
      terms = v6->_terms;
      v6->_terms = v7;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)viewDidLayoutSubviews
{
  view = [(SKTermsPageViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v36 = v7;
  [(UINavigationBar *)self->_navbar setFrame:v5, v7, v9, v11];
  [(UINavigationBar *)self->_navbar sizeToFit];
  navbar = self->_navbar;
  if (navbar)
  {
    [(UINavigationBar *)navbar frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v14 = *MEMORY[0x1E695F058];
    v16 = *(MEMORY[0x1E695F058] + 8);
    v18 = *(MEMORY[0x1E695F058] + 16);
    v20 = *(MEMORY[0x1E695F058] + 24);
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] statusBarFrame];
  Height = CGRectGetHeight(v39);
  v40.origin.x = v14;
  v40.origin.y = v16;
  v40.size.width = v18;
  v40.size.height = v20;
  v23 = Height + CGRectGetHeight(v40);

  [(UINavigationBar *)self->_navbar setFrame:v14, v16, v18, v23];
  [(UIToolbar *)self->_toolbar setFrame:v5, v36, v9, v11];
  [(UIToolbar *)self->_toolbar sizeToFit];
  toolbar = self->_toolbar;
  if (toolbar)
  {
    [(UIToolbar *)toolbar frame];
    toolbar = self->_toolbar;
  }

  else
  {
    v25 = *MEMORY[0x1E695F058];
    v26 = *(MEMORY[0x1E695F058] + 16);
    v27 = *(MEMORY[0x1E695F058] + 24);
  }

  [(UIToolbar *)toolbar setFrame:v25, v11 - v27, v26];
  [(WKWebView *)self->_webview setFrame:v5, v36, v9, v11];
  terms = self->_terms;
  if (terms)
  {
    webview = self->_webview;
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    resourceURL = [mainBundle resourceURL];
    v32 = [(WKWebView *)webview loadHTMLString:terms baseURL:resourceURL];
  }

  [(UINavigationBar *)self->_navbar frame];
  v33 = CGRectGetHeight(v41);
  [(UIToolbar *)self->_toolbar frame];
  v34 = CGRectGetHeight(v42);
  scrollView = [(WKWebView *)self->_webview scrollView];
  v43.origin.x = v5;
  v43.origin.y = v36;
  v43.size.width = v9;
  v43.size.height = v11;
  Width = CGRectGetWidth(v43);
  v44.origin.x = v5;
  v44.origin.y = v36;
  v44.size.width = v9;
  v44.size.height = v11;
  [scrollView setFrame:{v5, v33, Width, CGRectGetHeight(v44) - v33 - v34}];
}

- (void)viewDidLoad
{
  view = [(SKTermsPageViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  v5.receiver = self;
  v5.super_class = SKTermsPageViewController;
  [(SKTermsPageViewController *)&v5 viewDidLoad];
}

- (void)_buttonAccept:(id)accept
{
  v4 = MEMORY[0x1E69DC650];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TERMS_AND_CONDITIONS" value:&stru_1F29BCE20 table:0];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"AGREE_TEXT" value:&stru_1F29BCE20 table:0];
  v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v10 = MEMORY[0x1E69DC648];
  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_1F29BCE20 table:0];
  v13 = [v10 actionWithTitle:v12 style:1 handler:0];
  [v9 addAction:v13];

  v14 = MEMORY[0x1E69DC648];
  v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"AGREE" value:&stru_1F29BCE20 table:0];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __43__SKTermsPageViewController__buttonAccept___block_invoke;
  v18[3] = &unk_1E7B27EE0;
  v18[4] = self;
  v17 = [v14 actionWithTitle:v16 style:0 handler:v18];
  [v9 addAction:v17];

  [(SKTermsPageViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_dismissViewControllerAnimated:(BOOL)animated
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__SKTermsPageViewController__dismissViewControllerAnimated___block_invoke;
  v3[3] = &unk_1E7B27980;
  v3[4] = self;
  [(SKTermsPageViewController *)self dismissViewControllerAnimated:animated completion:v3];
}

void __60__SKTermsPageViewController__dismissViewControllerAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1024));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 1024));
    [v4 termsPageViewControllerDidFinish:*(a1 + 32)];
  }
}

- (void)_dismissViewControllerAnimated:(BOOL)animated withAcceptance:(BOOL)acceptance
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__SKTermsPageViewController__dismissViewControllerAnimated_withAcceptance___block_invoke;
  v4[3] = &unk_1E7B27F08;
  v4[4] = self;
  acceptanceCopy = acceptance;
  [(SKTermsPageViewController *)self dismissViewControllerAnimated:animated completion:v4];
}

void __75__SKTermsPageViewController__dismissViewControllerAnimated_withAcceptance___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1024));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 1024));
    [v4 termsPageViewControllerDidFinish:*(a1 + 32) withAcceptance:*(a1 + 40)];
  }
}

- (void)_loadSubviews
{
  v35[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  v34 = objc_alloc_init(MEMORY[0x1E69853A8]);
  preferences = [v34 preferences];
  [preferences setTextInteractionEnabled:0];

  v10 = [objc_alloc(MEMORY[0x1E69853A0]) initWithFrame:v34 configuration:{v4, v5, v6, v7}];
  webview = self->_webview;
  self->_webview = v10;

  [(WKWebView *)self->_webview setNavigationDelegate:self];
  [(WKWebView *)self->_webview setAllowsLinkPreview:0];
  [(WKWebView *)self->_webview setOpaque:0];
  v12 = self->_webview;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(WKWebView *)v12 setBackgroundColor:clearColor];

  scrollView = [(WKWebView *)self->_webview scrollView];
  [scrollView _setShowsBackgroundShadow:0];

  [v8 addSubview:self->_webview];
  v15 = [objc_alloc(MEMORY[0x1E69DCCC0]) initWithFrame:{v4, v5, v6, v7}];
  navbar = self->_navbar;
  self->_navbar = v15;

  v17 = objc_alloc(MEMORY[0x1E69DCCE0]);
  v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"TERMS_AND_CONDITIONS" value:&stru_1F29BCE20 table:0];
  v33 = [v17 initWithTitle:v19];

  [(UINavigationBar *)self->_navbar pushNavigationItem:v33 animated:0];
  [v8 addSubview:self->_navbar];
  [(UINavigationBar *)self->_navbar setDelegate:self];
  v20 = [objc_alloc(MEMORY[0x1E69DD180]) initWithFrame:{v4, v5, v6, v7}];
  toolbar = self->_toolbar;
  self->_toolbar = v20;

  v22 = objc_alloc(MEMORY[0x1E69DC708]);
  v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"AGREE" value:&stru_1F29BCE20 table:0];
  v25 = [v22 initWithTitle:v24 style:2 target:self action:sel__buttonAccept_];

  v26 = objc_alloc(MEMORY[0x1E69DC708]);
  v27 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"DISAGREE" value:&stru_1F29BCE20 table:0];
  v29 = [v26 initWithTitle:v28 style:0 target:self action:sel__buttonDecline_];

  v30 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v31 = self->_toolbar;
  v35[0] = v29;
  v35[1] = v30;
  v35[2] = v25;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
  [(UIToolbar *)v31 setItems:v32];

  [(UIToolbar *)self->_toolbar setTranslucent:1];
  [v8 addSubview:self->_toolbar];
  [(SKTermsPageViewController *)self setView:v8];
}

- (id)_markupTermsWithHTML:(id)l
{
  if (l)
  {
    v3 = MEMORY[0x1E696AEC0];
    lCopy = l;
    v5 = [v3 stringWithFormat:@"<style type=text/css> p.p1 {background-color: transparent color:#4C566C;text-shadow: white 0px 1px 1px; font-family: Helvetica; font-size: 9pt; } </style>"];;
    lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"<html><head>%@</head><body><p class=p1>%@</p></body></html>", v5, lCopy];

    v7 = [lCopy stringByReplacingOccurrencesOfString:@"\n" withString:@"<br/>"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  handlerCopy = handler;
  handlerCopy[2](handlerCopy, [action navigationType] != 0);
}

- (SKTermsPageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
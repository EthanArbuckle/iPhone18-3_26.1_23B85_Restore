@interface SSSDittoDebugView
- (SSSDittoDebugView)initWithFrame:(CGRect)a3;
- (SSSDittoDebugViewDelegate)delegate;
- (id)generatePDF:(CGRect *)a3;
- (void)_addScreenshotPushed;
- (void)_uiCatalogButtonPushed;
- (void)_updateScreenshotCount;
- (void)advanceScrollOffset;
- (void)layoutSubviews;
- (void)resetScrollOffset;
@end

@implementation SSSDittoDebugView

- (SSSDittoDebugView)initWithFrame:(CGRect)a3
{
  v44.receiver = self;
  v44.super_class = SSSDittoDebugView;
  v3 = [(SSSDittoDebugView *)&v44 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = +[UIColor grayColor];
  [(SSSDittoDebugView *)v3 setBackgroundColor:v4];

  v5 = [UIButton buttonWithType:1];
  addScreenshotsButton = v3->_addScreenshotsButton;
  v3->_addScreenshotsButton = v5;

  [(UIButton *)v3->_addScreenshotsButton addTarget:v3 action:"_addScreenshotPushed" forControlEvents:64];
  v7 = v3->_addScreenshotsButton;
  v8 = +[UIColor orangeColor];
  [(UIButton *)v7 setTintColor:v8];

  [(SSSDittoDebugView *)v3 addSubview:v3->_addScreenshotsButton];
  v9 = objc_alloc_init(UIStepper);
  numberOfScreenshotsToAddStepper = v3->_numberOfScreenshotsToAddStepper;
  v3->_numberOfScreenshotsToAddStepper = v9;

  [(UIStepper *)v3->_numberOfScreenshotsToAddStepper setMinimumValue:1.0];
  [(UIStepper *)v3->_numberOfScreenshotsToAddStepper setMaximumValue:10.0];
  [(UIStepper *)v3->_numberOfScreenshotsToAddStepper setValue:1.0];
  v11 = v3->_numberOfScreenshotsToAddStepper;
  v12 = +[UIColor orangeColor];
  [(UIStepper *)v11 setTintColor:v12];

  [(UIStepper *)v3->_numberOfScreenshotsToAddStepper addTarget:v3 action:"_updateScreenshotCount" forControlEvents:4096];
  [(SSSDittoDebugView *)v3 addSubview:v3->_numberOfScreenshotsToAddStepper];
  [(SSSDittoDebugView *)v3 _updateScreenshotCount];
  v13 = objc_alloc_init(UISwitch);
  snapshotPDFSwitch = v3->_snapshotPDFSwitch;
  v3->_snapshotPDFSwitch = v13;

  v15 = v3->_snapshotPDFSwitch;
  v16 = +[UIColor orangeColor];
  [(UISwitch *)v15 setTintColor:v16];

  [(SSSDittoDebugView *)v3 addSubview:v3->_snapshotPDFSwitch];
  v17 = objc_alloc_init(UILabel);
  snapshotPDFLabel = v3->_snapshotPDFLabel;
  v3->_snapshotPDFLabel = v17;

  [(UILabel *)v3->_snapshotPDFLabel setText:@"Include PDF"];
  v19 = v3->_snapshotPDFLabel;
  v20 = [UIFont systemFontOfSize:15.0];
  [(UILabel *)v19 setFont:v20];

  v21 = v3->_snapshotPDFLabel;
  v22 = +[UIColor orangeColor];
  [(UILabel *)v21 setTextColor:v22];

  [(UILabel *)v3->_snapshotPDFLabel sizeToFit];
  [(SSSDittoDebugView *)v3 addSubview:v3->_snapshotPDFLabel];
  v23 = objc_alloc_init(UISwitch);
  multipagePDFSwitch = v3->_multipagePDFSwitch;
  v3->_multipagePDFSwitch = v23;

  v25 = v3->_multipagePDFSwitch;
  v26 = +[UIColor orangeColor];
  [(UISwitch *)v25 setTintColor:v26];

  [(SSSDittoDebugView *)v3 addSubview:v3->_multipagePDFSwitch];
  v27 = objc_alloc_init(UILabel);
  multipagePDFLabel = v3->_multipagePDFLabel;
  v3->_multipagePDFLabel = v27;

  [(UILabel *)v3->_multipagePDFLabel setText:@"Multipage"];
  v29 = v3->_multipagePDFLabel;
  v30 = [UIFont systemFontOfSize:15.0];
  [(UILabel *)v29 setFont:v30];

  v31 = v3->_multipagePDFLabel;
  v32 = +[UIColor orangeColor];
  [(UILabel *)v31 setTextColor:v32];

  [(UILabel *)v3->_multipagePDFLabel sizeToFit];
  [(SSSDittoDebugView *)v3 addSubview:v3->_multipagePDFLabel];
  v33 = [UIButton buttonWithType:3];
  uiCatalogButton = v3->_uiCatalogButton;
  v3->_uiCatalogButton = v33;

  [(UIButton *)v3->_uiCatalogButton addTarget:v3 action:"_uiCatalogButtonPushed" forControlEvents:64];
  [(SSSDittoDebugView *)v3 addSubview:v3->_uiCatalogButton];
  v46 = 0;
  v47 = &v46;
  v48 = 0x2050000000;
  v35 = qword_1000D4A10;
  v49 = qword_1000D4A10;
  if (!qword_1000D4A10)
  {
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100018C2C;
    v45[3] = &unk_1000B9FA8;
    v45[4] = &v46;
    sub_100018C2C(v45);
    v35 = v47[3];
  }

  v36 = v35;
  _Block_object_dispose(&v46, 8);
  v37 = objc_alloc_init(v35);
  webView = v3->_webView;
  v3->_webView = v37;

  v39 = v3->_webView;
  v40 = [NSURL URLWithString:@"https://apple.com"];
  v41 = [NSURLRequest requestWithURL:v40];
  v42 = [(WKWebView *)v39 loadRequest:v41];

  [(SSSDittoDebugView *)v3 addSubview:v3->_webView];
  return v3;
}

- (void)_addScreenshotPushed
{
  v2 = [(SSSDittoDebugView *)self blockToRunForAddScreenshotsButton];
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

- (id)generatePDF:(CGRect *)a3
{
  v5 = [(WKWebView *)self->_webView _webViewPrintFormatter];
  [v5 setSnapshotFirstPage:1];
  v6 = objc_alloc_init(DebugPrintPageRenderer);
  y = CGPointZero.y;
  v8 = [(WKWebView *)self->_webView scrollView];
  [v8 contentSize];
  [(DebugPrintPageRenderer *)v6 setPaperRect:CGPointZero.x, y, v9, v10];

  [(DebugPrintPageRenderer *)v6 paperRect];
  [(DebugPrintPageRenderer *)v6 setPrintableRect:?];
  v37 = v5;
  v11 = [NSArray arrayWithObjects:&v37 count:1];
  [(DebugPrintPageRenderer *)v6 setPrintFormatters:v11];

  v12 = [(WKWebView *)self->_webView _printProvider];
  [v12 _wk_requestDocumentForPrintFormatter:v5];
  if (![v12 _wk_pageCountForPrintFormatter:v5])
  {
    v14 = 0;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v13 = [v5 _printedDocument];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v29 = +[NSBundle mainBundle];
    v35 = [v29 URLForResource:@"ApplePDFForTestingRemoveBeforeMerging" withExtension:@"pdf"];
    if (!v35)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v36 = v35;
    v14 = CGPDFDocumentCreateWithURL(v35);

    if (!v14)
    {
      goto LABEL_14;
    }
  }

  Page = CGPDFDocumentGetPage(v14, 1uLL);
  BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFMediaBox);
  x = BoxRect.origin.x;
  v17 = BoxRect.origin.y;
  width = BoxRect.size.width;
  height = BoxRect.size.height;
  v20 = BoxRect.size.height;
  if ([(UISwitch *)self->_multipagePDFSwitch isOn])
  {
    v21 = +[UIScreen mainScreen];
    [v21 bounds];
    v20 = v22;
  }

  v14 = +[NSMutableData data];
  v40.origin.x = x;
  v40.origin.y = v17;
  v40.size.width = width;
  v40.size.height = v20;
  UIGraphicsBeginPDFContextToData(v14, v40, 0);
  v41.origin.x = x;
  v41.origin.y = v17;
  v41.size.width = width;
  v41.size.height = height;
  v46.origin.x = x;
  v46.origin.y = v17;
  v46.size.width = width;
  v46.size.height = v20;
  if (CGRectIntersectsRect(v41, v46))
  {
    v23 = v17;
    do
    {
      v42.origin.x = x;
      v42.origin.y = v23;
      v42.size.width = width;
      v42.size.height = v20;
      v47.origin.x = x;
      v47.origin.y = v17;
      v47.size.width = width;
      v47.size.height = height;
      v43 = CGRectIntersection(v42, v47);
      v24 = v43.size.height;
      v43.origin.y = 0.0;
      UIGraphicsBeginPDFPageWithInfo(v43, 0);
      CurrentContext = UIGraphicsGetCurrentContext();
      v23 = v20 + v23;
      CGContextTranslateCTM(CurrentContext, 0.0, height - v23 + v20 - v24);
      v26 = UIGraphicsGetCurrentContext();
      PDFContextBounds = UIGraphicsGetPDFContextBounds();
      CGContextTranslateCTM(v26, 0.0, PDFContextBounds.size.height);
      v27 = UIGraphicsGetCurrentContext();
      CGContextScaleCTM(v27, 1.0, -1.0);
      v28 = UIGraphicsGetCurrentContext();
      CGContextDrawPDFPage(v28, Page);
      v45.origin.x = x;
      v45.origin.y = v17;
      v45.size.width = width;
      v45.size.height = height;
      v48.origin.x = x;
      v48.origin.y = v23;
      v48.size.width = width;
      v48.size.height = v20;
    }

    while (CGRectIntersectsRect(v45, v48));
  }

  UIGraphicsEndPDFContext();
  if (a3)
  {
LABEL_12:
    v29 = [(WKWebView *)self->_webView scrollView];
    [v29 bounds];
    a3->origin.x = v30;
    a3->origin.y = v31;
    a3->size.width = v32;
    a3->size.height = v33;
LABEL_13:
  }

LABEL_14:

  return v14;
}

- (void)advanceScrollOffset
{
  v3 = [(WKWebView *)self->_webView scrollView];
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;

  [(SSSDittoDebugView *)self bounds];
  v9 = v7 + v8 + -20.0;
  v10 = [(WKWebView *)self->_webView scrollView];
  [v10 setContentOffset:1 animated:{v5, v9}];
}

- (void)resetScrollOffset
{
  v2 = [(WKWebView *)self->_webView scrollView];
  [v2 setContentOffset:1 animated:{CGPointZero.x, CGPointZero.y}];
}

- (void)_uiCatalogButtonPushed
{
  v4 = objc_alloc_init(SSSDebugUICatalogViewController);
  v3 = [(SSSDittoDebugView *)self delegate];
  [v3 dittoDebugView:self requestsPresentationOfViewController:v4];
}

- (void)_updateScreenshotCount
{
  [(UIStepper *)self->_numberOfScreenshotsToAddStepper value];
  addScreenshotsButton = self->_addScreenshotsButton;
  v5 = &stru_1000BC350;
  if (v3 > 1)
  {
    v5 = @"s";
  }

  v6 = [NSString stringWithFormat:@"Snapshot %d Image%@", v3, v5];
  [(UIButton *)addScreenshotsButton setTitle:v6 forState:0];
}

- (void)layoutSubviews
{
  [(UIButton *)self->_addScreenshotsButton setTitle:@"Snapshot 10 Images" forState:0];
  [(UIButton *)self->_addScreenshotsButton intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = (100.0 - v5) * 0.5;
  [(UIButton *)self->_addScreenshotsButton setFrame:8.0, v7, v3, v5];
  [(SSSDittoDebugView *)self _updateScreenshotCount];
  [(UIStepper *)self->_numberOfScreenshotsToAddStepper intrinsicContentSize];
  v9 = v8;
  v11 = v10;
  v46.origin.x = 8.0;
  v46.origin.y = v7;
  v46.size.width = v4;
  v46.size.height = v6;
  v12 = CGRectGetMaxX(v46) + 8.0;
  [(UIStepper *)self->_numberOfScreenshotsToAddStepper setFrame:v12, (100.0 - v11) * 0.5, v9, v11];
  [(UILabel *)self->_snapshotPDFLabel frame];
  v14 = v13;
  v16 = v15;
  v47.origin.x = v12;
  v47.origin.y = (100.0 - v11) * 0.5;
  v47.size.width = v9;
  v47.size.height = v11;
  v17 = CGRectGetMaxX(v47) + 32.0;
  [(UILabel *)self->_snapshotPDFLabel setFrame:v17, (100.0 - v16) * 0.5, v14, v16];
  [(UISwitch *)self->_snapshotPDFSwitch frame];
  v19 = v18;
  v21 = v20;
  v48.origin.x = v17;
  v48.origin.y = (100.0 - v16) * 0.5;
  v48.size.width = v14;
  v48.size.height = v16;
  v22 = CGRectGetMaxX(v48) + 8.0;
  [(UISwitch *)self->_snapshotPDFSwitch setFrame:v22, (100.0 - v21) * 0.5, v19, v21];
  [(UILabel *)self->_multipagePDFLabel frame];
  v24 = v23;
  v26 = v25;
  v49.origin.x = v22;
  v49.origin.y = (100.0 - v21) * 0.5;
  v49.size.width = v19;
  v49.size.height = v21;
  v27 = CGRectGetMaxX(v49) + 22.0;
  [(UILabel *)self->_multipagePDFLabel setFrame:v27, (100.0 - v26) * 0.5, v24, v26];
  [(UISwitch *)self->_multipagePDFSwitch frame];
  v29 = v28;
  v31 = v30;
  v50.origin.x = v27;
  v50.origin.y = (100.0 - v26) * 0.5;
  v50.size.width = v24;
  v50.size.height = v26;
  [(UISwitch *)self->_multipagePDFSwitch setFrame:CGRectGetMaxX(v50) + 8.0, (100.0 - v31) * 0.5, v29, v31];
  [(UIButton *)self->_uiCatalogButton bounds];
  v33 = v32;
  v35 = v34;
  [(SSSDittoDebugView *)self bounds];
  [(UIButton *)self->_uiCatalogButton setFrame:v36 + v37 - v33 + -24.0, (100.0 - v35) * 0.5, v33, v35];
  [(SSSDittoDebugView *)self bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  [(SSSDittoDebugView *)self bounds];
  v53.origin.x = v39;
  v53.origin.y = 100.0;
  v53.size.width = v41;
  v53.size.height = v43;
  v52 = CGRectIntersection(v51, v53);
  webView = self->_webView;

  [(WKWebView *)webView setFrame:v52.origin.x, v52.origin.y, v52.size.width, v52.size.height];
}

- (SSSDittoDebugViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
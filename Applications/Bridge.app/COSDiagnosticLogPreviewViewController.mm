@interface COSDiagnosticLogPreviewViewController
- (COSDiagnosticLogPreviewDelegate)logPreviewDelegate;
- (COSDiagnosticLogPreviewViewController)initWithFilePath:(id)path andQueue:(id)queue;
- (id)shrinkScreenshotImage:(id)image;
- (void)loadViewFromLogPath;
- (void)shareLog;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation COSDiagnosticLogPreviewViewController

- (COSDiagnosticLogPreviewViewController)initWithFilePath:(id)path andQueue:(id)queue
{
  pathCopy = path;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = COSDiagnosticLogPreviewViewController;
  v9 = [(COSDiagnosticLogPreviewViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localSavePath, path);
    [(COSDiagnosticLogPreviewViewController *)v10 setQueue:queueCopy];
    v11 = [[NSSManager alloc] initWithQueue:v10->_queue];
    nssManager = v10->_nssManager;
    v10->_nssManager = v11;
  }

  return v10;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = COSDiagnosticLogPreviewViewController;
  [(COSDiagnosticLogPreviewViewController *)&v25 viewDidLoad];
  lastPathComponent = [(NSString *)self->_localSavePath lastPathComponent];
  [(COSDiagnosticLogPreviewViewController *)self setTitle:lastPathComponent];

  v4 = [UITextView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  textView = self->_textView;
  self->_textView = v8;

  [(UITextView *)self->_textView setHidden:1];
  v10 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  imageView = self->_imageView;
  self->_imageView = v10;

  [(UIImageView *)self->_imageView setHidden:1];
  view = [(COSDiagnosticLogPreviewViewController *)self view];
  [view addSubview:self->_textView];

  view2 = [(COSDiagnosticLogPreviewViewController *)self view];
  [view2 addSubview:self->_imageView];

  v14 = [UIBarButtonItem alloc];
  v15 = [UIImage systemImageNamed:@"square.and.arrow.up"];
  v16 = [v14 initWithImage:v15 style:0 target:self action:"shareLog"];

  v17 = +[UIColor systemOrangeColor];
  [v16 setTintColor:v17];

  v18 = objc_opt_new();
  toolBar = self->_toolBar;
  self->_toolBar = v18;

  v20 = self->_toolBar;
  v26 = v16;
  v21 = [NSArray arrayWithObjects:&v26 count:1];
  [(UIToolbar *)v20 setItems:v21];

  v22 = self->_toolBar;
  v23 = BPSSetupTintColor();
  [(UIToolbar *)v22 setTintColor:v23];

  view3 = [(COSDiagnosticLogPreviewViewController *)self view];
  [view3 addSubview:self->_toolBar];
}

- (void)viewWillLayoutSubviews
{
  view = [(COSDiagnosticLogPreviewViewController *)self view];
  [view frame];
  v29 = v5;
  v30 = v4;
  v28 = v6;
  v8 = v7;

  view2 = [(COSDiagnosticLogPreviewViewController *)self view];
  [view2 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(UIToolbar *)self->_toolBar sizeToFit];
  [(UIToolbar *)self->_toolBar frame];
  v19 = v18;
  view3 = [(COSDiagnosticLogPreviewViewController *)self view];
  [view3 safeAreaInsets];
  v22 = v21;

  view4 = [(COSDiagnosticLogPreviewViewController *)self view];
  [view4 frame];
  v25 = v24 - v19 - v22;
  view5 = [(COSDiagnosticLogPreviewViewController *)self view];
  [view5 frame];
  [(UIToolbar *)self->_toolBar setFrame:0.0, v25];

  [(UITextView *)self->_textView setFrame:v30, v29, v28, v8 - (v19 + v22)];
  imageView = self->_imageView;

  [(UIImageView *)imageView setFrame:v11, v13, v15, v17 - (v19 + v22)];
}

- (void)shareLog
{
  v5 = [NSURL fileURLWithPath:self->_localSavePath];
  v3 = [NSArray arrayWithObjects:v5, 0];
  v4 = [[UIActivityViewController alloc] initWithActivityItems:v3 applicationActivities:0];
  [(COSDiagnosticLogPreviewViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)loadViewFromLogPath
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    localSavePath = self->_localSavePath;
    *buf = 138412290;
    v33 = localSavePath;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "local save path: %@", buf, 0xCu);
  }

  if ([(NSString *)self->_localSavePath _containsSubstring:@".png"])
  {
    v5 = [(COSDiagnosticLogPreviewViewController *)self shrinkScreenshotImage:self->_localSavePath];
    if (!v5)
    {
      v13 = 0;
      v12 = 0;
LABEL_15:
      [(UITextView *)self->_textView setHidden:0];
      textView = self->_textView;
      v23 = +[UIColor systemBlackColor];
      [(UITextView *)textView setBackgroundColor:v23];

      lastPathComponent = [(NSString *)self->_localSavePath lastPathComponent];
      v25 = self->_textView;
      v26 = +[UIColor systemWhiteColor];
      [(UITextView *)v25 setTextColor:v26];

      v27 = self->_textView;
      v28 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
      [(UITextView *)v27 setFont:v28];

      [(UITextView *)self->_textView setTextAlignment:1];
      v29 = self->_textView;
      [(UITextView *)v29 bounds];
      [(UITextView *)v29 setTextContainerInset:v30 * 0.5 + -60.0, 0.0, 0.0, 0.0];
      [(UITextView *)self->_textView setText:lastPathComponent];
      [(UITextView *)self->_textView setEditable:0];

      goto LABEL_16;
    }

    [(UIImageView *)self->_imageView setHidden:0];
    [(UIImageView *)self->_imageView setImage:v5];
    [(UIImageView *)self->_imageView setContentsPosition:0];
    imageView = self->_imageView;
    v7 = +[UIColor systemBlackColor];
    [(UIImageView *)imageView setBackgroundColor:v7];

    v8 = +[CATransition animation];
    v9 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    [v8 setTimingFunction:v9];

    [v8 setType:kCATransitionReveal];
    layer = [(UIImageView *)self->_imageView layer];
    [layer addAnimation:v8 forKey:kCATransition];

    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v14 = self->_localSavePath;
    v31 = 0;
    v15 = [NSString stringWithContentsOfFile:v14 encoding:4 error:&v31];
    v13 = v31;
    v12 = [v15 copy];

    v16 = [v12 length];
    v11 = v16 == 0;
    if (v16)
    {
      [(UITextView *)self->_textView setHidden:0];
      layer2 = [(UITextView *)self->_textView layer];
      v18 = +[CATransition animation];
      [layer2 addAnimation:v18 forKey:kCATransition];

      [(UITextView *)self->_textView setText:v12];
      v19 = self->_textView;
      v20 = +[UIColor systemBlackColor];
      [(UITextView *)v19 setBackgroundColor:v20];

      [(UITextView *)self->_textView setEditable:0];
    }

    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v12 length];
      *buf = 134218242;
      v33 = v21;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "logContent length: %lu with loadError %@", buf, 0x16u);
    }

    v5 = 0;
  }

  if (v11 || v13)
  {
    goto LABEL_15;
  }

LABEL_16:
}

- (id)shrinkScreenshotImage:(id)image
{
  v3 = [NSData dataWithContentsOfFile:image];
  v4 = [UIImage imageWithData:v3 scale:2.0];

  return v4;
}

- (COSDiagnosticLogPreviewDelegate)logPreviewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_logPreviewDelegate);

  return WeakRetained;
}

@end
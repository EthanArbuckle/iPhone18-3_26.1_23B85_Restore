@interface TradeInToolViewController
- (CGRect)frameForConfirmation;
- (CGRect)frameForPage:(int)page;
- (int)maxNumPages;
- (void)didUpdateCurrentImageView:(id)view;
- (void)endTestWithStatusCode:(id)code;
- (void)setUpViewAccessibilitySettings;
- (void)setupView;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
@end

@implementation TradeInToolViewController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  inputsCopy = inputs;
  responderCopy = responder;
  [(TradeInToolViewController *)self setInputs:inputsCopy];
  v35 = responderCopy;
  [(DisplayViewController *)self setDiagnosticResponder:responderCopy];
  v36 = dispatch_semaphore_create(0);
  v34 = +[NSMutableArray array];
  v8 = NSTemporaryDirectory();
  v37 = [NSURL fileURLWithPath:v8 isDirectory:1];

  inputs = [(TradeInToolViewController *)self inputs];
  imageFileNames = [inputs imageFileNames];
  v11 = [imageFileNames count];

  if (v11)
  {
    v13 = 0;
    *&v12 = 138412546;
    v33 = v12;
    while (1)
    {
      inputs2 = [(TradeInToolViewController *)self inputs];
      imageFileNames2 = [inputs2 imageFileNames];
      v16 = [imageFileNames2 objectAtIndexedSubscript:v13];

      v17 = +[NSUUID UUID];
      uUIDString = [v17 UUIDString];
      v19 = [v37 URLByAppendingPathComponent:uUIDString];
      pathExtension = [v16 pathExtension];
      v21 = [v19 URLByAppendingPathExtension:pathExtension];

      v43 = 0;
      v44 = &v43;
      v45 = 0x3032000000;
      v46 = sub_100002728;
      v47 = sub_100002738;
      v48 = 0;
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100002740;
      v39[3] = &unk_1000082D8;
      v22 = v16;
      v40 = v22;
      v42 = &v43;
      v23 = v36;
      v41 = v23;
      [v35 getAsset:v22 completion:v39];
      dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
      if (!v44[5])
      {
        break;
      }

      v24 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v21;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Saving image data to [%@]", buf, 0xCu);
      }

      v25 = v44[5];
      v38 = 0;
      v26 = [v25 writeToURL:v21 options:268435457 error:&v38];
      v27 = v38;
      if (v26)
      {
        [v34 addObject:v21];
      }

      else
      {
        v28 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = v33;
          v50 = v21;
          v51 = 2112;
          v52 = v27;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to save asset [%@]: %@", buf, 0x16u);
        }

        [(TradeInToolViewController *)self endTestWithStatusCode:&off_1000084B0];
      }

      _Block_object_dispose(&v43, 8);
      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }

      inputs3 = [(TradeInToolViewController *)self inputs];
      imageFileNames3 = [inputs3 imageFileNames];
      v31 = [imageFileNames3 count];

      if (v31 <= ++v13)
      {
        goto LABEL_13;
      }
    }

    v32 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1000036DC(v22, v32);
    }

    [(TradeInToolViewController *)self endTestWithStatusCode:&off_1000084C8];
    _Block_object_dispose(&v43, 8);
  }

  else
  {
LABEL_13:
    v22 = [v34 copy];
    [(TradeInToolViewController *)self setTradeInImages:v22];
  }

LABEL_18:
}

- (void)setupView
{
  v29.receiver = self;
  v29.super_class = TradeInToolViewController;
  [(DisplayViewController *)&v29 setupView];
  [(TradeInToolViewController *)self setShouldShowPressHomeLabel:0];
  scrollView = [(DisplayViewController *)self scrollView];
  panGestureRecognizer = [scrollView panGestureRecognizer];
  [panGestureRecognizer setMinimumNumberOfTouches:1];

  scrollView2 = [(DisplayViewController *)self scrollView];
  panGestureRecognizer2 = [scrollView2 panGestureRecognizer];
  [panGestureRecognizer2 setMaximumNumberOfTouches:2];

  view = [(TradeInToolViewController *)self view];
  [view frame];
  v9 = v8;
  tradeInImages = [(TradeInToolViewController *)self tradeInImages];
  v11 = v9 * ([tradeInImages count] + 1);
  view2 = [(TradeInToolViewController *)self view];
  [view2 frame];
  v14 = v13;
  scrollView3 = [(DisplayViewController *)self scrollView];
  [scrollView3 setContentSize:{v11, v14}];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"TRADE_IN_TOOL_COMPLETE_TITLE" value:&stru_100008398 table:0];
  confirmPageView = [(DisplayViewController *)self confirmPageView];
  [confirmPageView setMessage:v17];

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"DONE" value:&stru_100008398 table:0];
  confirmPageView2 = [(DisplayViewController *)self confirmPageView];
  [confirmPageView2 setButtonTitle:v20];

  objc_initWeak(&location, self);
  confirmPageView3 = [(DisplayViewController *)self confirmPageView];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100002AC8;
  v26 = &unk_100008288;
  objc_copyWeak(&v27, &location);
  [confirmPageView3 setButtonAction:&v23];

  [(TradeInToolViewController *)self setUpViewAccessibilitySettings:v23];
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (void)setUpViewAccessibilitySettings
{
  scrollView = [(DisplayViewController *)self scrollView];
  [scrollView setIsAccessibilityElement:1];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"TRADE_IN_TOOL_QR_IMAGE_AREA" value:&stru_100008398 table:0];
  scrollView2 = [(DisplayViewController *)self scrollView];
  [scrollView2 setAccessibilityLabel:v5];

  confirmPageView = [(DisplayViewController *)self confirmPageView];
  [confirmPageView setIsAccessibilityElement:1];

  scrollView3 = [(DisplayViewController *)self scrollView];
  v11 = scrollView3;
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  view = [(TradeInToolViewController *)self view];
  [view setAccessibilityElements:v9];
}

- (void)start
{
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
  v3 = dispatch_queue_create("com.apple.DiagnosticsService.Diagnostic-8381.animatedScrollingQueue", v4);
  [(DisplayViewController *)self setAnimatedScrollingQueue:v3];

  [(TradeInToolViewController *)self setupView];
}

- (void)endTestWithStatusCode:(id)code
{
  codeCopy = code;
  result = [(TradeInToolViewController *)self result];
  [result setStatusCode:codeCopy];

  [(TradeInToolViewController *)self setFinished:1];
}

- (CGRect)frameForPage:(int)page
{
  pageCopy = page;
  view = [(TradeInToolViewController *)self view];
  [view frame];
  v7 = v6 * pageCopy;
  view2 = [(TradeInToolViewController *)self view];
  [view2 frame];
  v10 = v9;
  view3 = [(TradeInToolViewController *)self view];
  [view3 frame];
  v13 = v12;

  v14 = 0.0;
  v15 = v7;
  v16 = v10;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (CGRect)frameForConfirmation
{
  tradeInImages = [(TradeInToolViewController *)self tradeInImages];
  -[TradeInToolViewController frameForPage:](self, "frameForPage:", [tradeInImages count]);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (int)maxNumPages
{
  tradeInImages = [(TradeInToolViewController *)self tradeInImages];
  v3 = [tradeInImages count];

  return v3;
}

- (void)didUpdateCurrentImageView:(id)view
{
  viewCopy = view;
  if (view)
  {
    scrollView = [(DisplayViewController *)self scrollView];
    v22[0] = scrollView;
    v22[1] = viewCopy;
    v7 = [NSArray arrayWithObjects:v22 count:2];
    view = [(TradeInToolViewController *)self view];
    [view setAccessibilityElements:v7];

    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, viewCopy);
  }

  else
  {
    confirmPageView = [(DisplayViewController *)self confirmPageView];
    _actionButton = [confirmPageView _actionButton];
    v21[0] = _actionButton;
    scrollView2 = [(DisplayViewController *)self scrollView];
    v21[1] = scrollView2;
    v12 = [NSArray arrayWithObjects:v21 count:2];
    view2 = [(TradeInToolViewController *)self view];
    [view2 setAccessibilityElements:v12];

    v14 = +[NSBundle mainBundle];

    v15 = [v14 localizedStringForKey:@"ANNOUNCE_TRADE_IN_TOOL_DONE" value:&stru_100008398 table:0];
    confirmPageView2 = [(DisplayViewController *)self confirmPageView];
    _actionButton2 = [confirmPageView2 _actionButton];
    [_actionButton2 setAccessibilityLabel:v15];

    confirmPageView3 = [(DisplayViewController *)self confirmPageView];
    _actionButton3 = [confirmPageView3 _actionButton];
    [_actionButton3 becomeFirstResponder];

    LODWORD(_actionButton3) = UIAccessibilityLayoutChangedNotification;
    viewCopy = [(DisplayViewController *)self confirmPageView];
    _actionButton4 = [viewCopy _actionButton];
    UIAccessibilityPostNotification(_actionButton3, _actionButton4);
  }
}

@end
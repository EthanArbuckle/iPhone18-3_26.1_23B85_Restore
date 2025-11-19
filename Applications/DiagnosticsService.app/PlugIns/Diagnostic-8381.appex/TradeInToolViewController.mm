@interface TradeInToolViewController
- (CGRect)frameForConfirmation;
- (CGRect)frameForPage:(int)a3;
- (int)maxNumPages;
- (void)didUpdateCurrentImageView:(id)a3;
- (void)endTestWithStatusCode:(id)a3;
- (void)setUpViewAccessibilitySettings;
- (void)setupView;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
@end

@implementation TradeInToolViewController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(TradeInToolViewController *)self setInputs:v6];
  v35 = v7;
  [(DisplayViewController *)self setDiagnosticResponder:v7];
  v36 = dispatch_semaphore_create(0);
  v34 = +[NSMutableArray array];
  v8 = NSTemporaryDirectory();
  v37 = [NSURL fileURLWithPath:v8 isDirectory:1];

  v9 = [(TradeInToolViewController *)self inputs];
  v10 = [v9 imageFileNames];
  v11 = [v10 count];

  if (v11)
  {
    v13 = 0;
    *&v12 = 138412546;
    v33 = v12;
    while (1)
    {
      v14 = [(TradeInToolViewController *)self inputs];
      v15 = [v14 imageFileNames];
      v16 = [v15 objectAtIndexedSubscript:v13];

      v17 = +[NSUUID UUID];
      v18 = [v17 UUIDString];
      v19 = [v37 URLByAppendingPathComponent:v18];
      v20 = [v16 pathExtension];
      v21 = [v19 URLByAppendingPathExtension:v20];

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

      v29 = [(TradeInToolViewController *)self inputs];
      v30 = [v29 imageFileNames];
      v31 = [v30 count];

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
  v3 = [(DisplayViewController *)self scrollView];
  v4 = [v3 panGestureRecognizer];
  [v4 setMinimumNumberOfTouches:1];

  v5 = [(DisplayViewController *)self scrollView];
  v6 = [v5 panGestureRecognizer];
  [v6 setMaximumNumberOfTouches:2];

  v7 = [(TradeInToolViewController *)self view];
  [v7 frame];
  v9 = v8;
  v10 = [(TradeInToolViewController *)self tradeInImages];
  v11 = v9 * ([v10 count] + 1);
  v12 = [(TradeInToolViewController *)self view];
  [v12 frame];
  v14 = v13;
  v15 = [(DisplayViewController *)self scrollView];
  [v15 setContentSize:{v11, v14}];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"TRADE_IN_TOOL_COMPLETE_TITLE" value:&stru_100008398 table:0];
  v18 = [(DisplayViewController *)self confirmPageView];
  [v18 setMessage:v17];

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"DONE" value:&stru_100008398 table:0];
  v21 = [(DisplayViewController *)self confirmPageView];
  [v21 setButtonTitle:v20];

  objc_initWeak(&location, self);
  v22 = [(DisplayViewController *)self confirmPageView];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100002AC8;
  v26 = &unk_100008288;
  objc_copyWeak(&v27, &location);
  [v22 setButtonAction:&v23];

  [(TradeInToolViewController *)self setUpViewAccessibilitySettings:v23];
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

- (void)setUpViewAccessibilitySettings
{
  v3 = [(DisplayViewController *)self scrollView];
  [v3 setIsAccessibilityElement:1];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"TRADE_IN_TOOL_QR_IMAGE_AREA" value:&stru_100008398 table:0];
  v6 = [(DisplayViewController *)self scrollView];
  [v6 setAccessibilityLabel:v5];

  v7 = [(DisplayViewController *)self confirmPageView];
  [v7 setIsAccessibilityElement:1];

  v8 = [(DisplayViewController *)self scrollView];
  v11 = v8;
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  v10 = [(TradeInToolViewController *)self view];
  [v10 setAccessibilityElements:v9];
}

- (void)start
{
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
  v3 = dispatch_queue_create("com.apple.DiagnosticsService.Diagnostic-8381.animatedScrollingQueue", v4);
  [(DisplayViewController *)self setAnimatedScrollingQueue:v3];

  [(TradeInToolViewController *)self setupView];
}

- (void)endTestWithStatusCode:(id)a3
{
  v4 = a3;
  v5 = [(TradeInToolViewController *)self result];
  [v5 setStatusCode:v4];

  [(TradeInToolViewController *)self setFinished:1];
}

- (CGRect)frameForPage:(int)a3
{
  v4 = a3;
  v5 = [(TradeInToolViewController *)self view];
  [v5 frame];
  v7 = v6 * v4;
  v8 = [(TradeInToolViewController *)self view];
  [v8 frame];
  v10 = v9;
  v11 = [(TradeInToolViewController *)self view];
  [v11 frame];
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
  v3 = [(TradeInToolViewController *)self tradeInImages];
  -[TradeInToolViewController frameForPage:](self, "frameForPage:", [v3 count]);
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
  v2 = [(TradeInToolViewController *)self tradeInImages];
  v3 = [v2 count];

  return v3;
}

- (void)didUpdateCurrentImageView:(id)a3
{
  v5 = a3;
  if (a3)
  {
    v6 = [(DisplayViewController *)self scrollView];
    v22[0] = v6;
    v22[1] = v5;
    v7 = [NSArray arrayWithObjects:v22 count:2];
    v8 = [(TradeInToolViewController *)self view];
    [v8 setAccessibilityElements:v7];

    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v5);
  }

  else
  {
    v9 = [(DisplayViewController *)self confirmPageView];
    v10 = [v9 _actionButton];
    v21[0] = v10;
    v11 = [(DisplayViewController *)self scrollView];
    v21[1] = v11;
    v12 = [NSArray arrayWithObjects:v21 count:2];
    v13 = [(TradeInToolViewController *)self view];
    [v13 setAccessibilityElements:v12];

    v14 = +[NSBundle mainBundle];

    v15 = [v14 localizedStringForKey:@"ANNOUNCE_TRADE_IN_TOOL_DONE" value:&stru_100008398 table:0];
    v16 = [(DisplayViewController *)self confirmPageView];
    v17 = [v16 _actionButton];
    [v17 setAccessibilityLabel:v15];

    v18 = [(DisplayViewController *)self confirmPageView];
    v19 = [v18 _actionButton];
    [v19 becomeFirstResponder];

    LODWORD(v19) = UIAccessibilityLayoutChangedNotification;
    v5 = [(DisplayViewController *)self confirmPageView];
    v20 = [v5 _actionButton];
    UIAccessibilityPostNotification(v19, v20);
  }
}

@end
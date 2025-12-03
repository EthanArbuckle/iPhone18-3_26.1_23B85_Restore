@interface SSSRecapViewController
- (SSSRecapViewController)initWithScreenshot:(id)screenshot;
- (id)tapToRadarURL;
- (int)_preferredStatusBarVisibility;
- (void)_sharePushed:(id)pushed;
- (void)finishLoadingScreenshot;
- (void)loadScreenshot;
- (void)tapToRadar:(id)radar screenshot:(id)screenshot;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SSSRecapViewController

- (SSSRecapViewController)initWithScreenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  v8.receiver = self;
  v8.super_class = SSSRecapViewController;
  v5 = [(SSSRecapViewController *)&v8 init];
  screenshot = v5->_screenshot;
  v5->_screenshot = screenshotCopy;

  return v5;
}

- (void)loadScreenshot
{
  if (!sub_100038940())
  {
    exit(0);
  }

  screenshot = [(SSSRecapViewController *)self screenshot];
  environmentDescription = [screenshot environmentDescription];
  appleInternalOptions = [environmentDescription appleInternalOptions];
  recapMovie = [appleInternalOptions recapMovie];

  screenRecording = [recapMovie screenRecording];

  if (screenRecording)
  {
    [(SSSRecapViewController *)self finishLoadingScreenshot];
  }

  else
  {
    screenshot2 = [(SSSRecapViewController *)self screenshot];
    imageProvider = [screenshot2 imageProvider];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100037968;
    v19[3] = &unk_1000BAD48;
    v19[4] = self;
    [imageProvider requestOutputImageForSaving:v19];

    v10 = NSTemporaryDirectory();
    v11 = +[NSUUID UUID];
    v12 = [v10 stringByAppendingFormat:@"%@.recapmov", v11];
    v13 = [NSURL fileURLWithPath:v12];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100037A8C;
    v15[3] = &unk_1000BA4D0;
    v16 = v13;
    v17 = recapMovie;
    selfCopy = self;
    v14 = v13;
    [v17 writeToURL:v14 completion:v15];
  }
}

- (void)finishLoadingScreenshot
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v3 = qword_1000D4A60;
  v29 = qword_1000D4A60;
  if (!qword_1000D4A60)
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100038B2C;
    v24 = &unk_1000B9FA8;
    v25 = &v26;
    sub_100038B2C(&v21);
    v3 = v27[3];
  }

  v4 = v3;
  _Block_object_dispose(&v26, 8);
  v5 = [[v3 alloc] initWithFrame:{100.0, 100.0, 500.0, 500.0}];
  traceView = self->_traceView;
  self->_traceView = v5;

  screenshot = [(SSSRecapViewController *)self screenshot];
  environmentDescription = [screenshot environmentDescription];
  appleInternalOptions = [environmentDescription appleInternalOptions];
  recapMovie = [appleInternalOptions recapMovie];
  [(RCPVizualizerView *)self->_traceView setRecapMovie:recapMovie];

  view = [(SSSRecapViewController *)self view];
  [view addSubview:self->_traceView];

  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v12 = qword_1000D4A68;
  v29 = qword_1000D4A68;
  if (!qword_1000D4A68)
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100038B84;
    v24 = &unk_1000B9FA8;
    v25 = &v26;
    sub_100038B84(&v21);
    v12 = v27[3];
  }

  v13 = v12;
  _Block_object_dispose(&v26, 8);
  v14 = [[v12 alloc] initWithFrame:{100.0, 600.0, 500.0, 100.0}];
  timelineView = self->_timelineView;
  self->_timelineView = v14;

  screenshot2 = [(SSSRecapViewController *)self screenshot];
  environmentDescription2 = [screenshot2 environmentDescription];
  appleInternalOptions2 = [environmentDescription2 appleInternalOptions];
  recapMovie2 = [appleInternalOptions2 recapMovie];
  [(RCPTimelineView *)self->_timelineView setRecapMovie:recapMovie2];

  [(RCPTimelineView *)self->_timelineView setDelegate:self->_traceView];
  view2 = [(SSSRecapViewController *)self view];
  [view2 addSubview:self->_timelineView];
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = SSSRecapViewController;
  [(SSSRecapViewController *)&v28 viewDidLoad];
  v3 = objc_alloc_init(UINavigationBar);
  topBar = self->_topBar;
  self->_topBar = v3;

  v5 = self->_topBar;
  v31 = NSForegroundColorAttributeName;
  v6 = +[UIColor whiteColor];
  v32 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  [(UINavigationBar *)v5 setTitleTextAttributes:v7];

  [(UINavigationBar *)self->_topBar setDelegate:self];
  v8 = self->_topBar;
  v9 = objc_opt_new();
  [(UINavigationBar *)v8 setShadowImage:v9];

  v10 = self->_topBar;
  v11 = objc_opt_new();
  [(UINavigationBar *)v10 setBackgroundImage:v11 forBarMetrics:0];

  view = [(SSSRecapViewController *)self view];
  [view addSubview:self->_topBar];

  view2 = [(SSSRecapViewController *)self view];
  [view2 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [(UINavigationBar *)self->_topBar intrinsicContentSize];
  [(UINavigationBar *)self->_topBar setFrame:v15, v17, v19, v20];
  v21 = objc_alloc_init(UINavigationItem);
  v22 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:9 target:self action:"_sharePushed:"];
  v30 = v22;
  v23 = [NSArray arrayWithObjects:&v30 count:1];
  [v21 setRightBarButtonItems:v23 animated:0];

  v24 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_donePushed:"];
  v29 = v24;
  v25 = [NSArray arrayWithObjects:&v29 count:1];
  [v21 setLeftBarButtonItems:v25 animated:0];

  [(UINavigationBar *)self->_topBar pushNavigationItem:v21 animated:0];
  v26 = +[UIColor darkGrayColor];
  view3 = [(SSSRecapViewController *)self view];
  [view3 setBackgroundColor:v26];

  [(SSSRecapViewController *)self loadScreenshot];
}

- (void)viewDidLayoutSubviews
{
  view = [(SSSRecapViewController *)self view];
  [view bounds];
  v5 = v4 + -150.0;
  view2 = [(SSSRecapViewController *)self view];
  [view2 bounds];
  [(RCPTimelineView *)self->_timelineView setFrame:50.0, v5, v7 + -100.0, 100.0];

  view3 = [(SSSRecapViewController *)self view];
  [view3 bounds];
  v10 = v9;
  v12 = v11;

  v13 = v12 + -100.0 + -150.0;
  v14 = v13 / v12;
  if ((v10 + -100.0) / v10 < v13 / v12)
  {
    v14 = (v10 + -100.0) / v10;
  }

  traceView = self->_traceView;
  v16 = (v13 - v12 * v14) * 0.5 + 50.0;

  [(RCPVizualizerView *)traceView setFrame:(v10 + -100.0 - v10 * v14) * 0.5 + 50.0, v16];
}

- (int)_preferredStatusBarVisibility
{
  parentViewController = [(SSSRecapViewController *)self parentViewController];
  _preferredStatusBarVisibility = [parentViewController _preferredStatusBarVisibility];

  return _preferredStatusBarVisibility;
}

- (void)_sharePushed:(id)pushed
{
  startCropTimestamp = [(RCPTimelineView *)self->_timelineView startCropTimestamp];
  endCropTimestamp = [(RCPTimelineView *)self->_timelineView endCropTimestamp];
  if (endCropTimestamp)
  {
    v6 = endCropTimestamp;
  }

  else
  {
    v6 = -1;
  }

  screenshot = [(SSSRecapViewController *)self screenshot];
  environmentDescription = [screenshot environmentDescription];
  appleInternalOptions = [environmentDescription appleInternalOptions];
  recapMovie = [appleInternalOptions recapMovie];

  v11 = [recapMovie trimmedFrom:startCropTimestamp to:v6];
  [(SSSRecapViewController *)self tapToRadarURL];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100038524;
  v14[3] = &unk_1000BA4D0;
  v15 = v14[4] = self;
  v16 = recapMovie;
  v12 = recapMovie;
  v13 = v15;
  [v11 writeToURL:v13 completion:v14];
}

- (id)tapToRadarURL
{
  v2 = objc_alloc_init(NSDateFormatter);
  [v2 setDateFormat:@"yyyy-MM-dd'T'HHmmss.SSS'Z"];
  v3 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v3];

  v4 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierISO8601];
  [v2 setCalendar:v4];

  v5 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v5];

  v6 = +[NSDate date];
  v7 = [v2 stringFromDate:v6];

  v8 = NSTemporaryDirectory();
  v9 = [NSString stringWithFormat:@"%@/%@.recapmov", v8, v7];

  v10 = [NSURL fileURLWithPath:v9];

  return v10;
}

- (void)tapToRadar:(id)radar screenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  radarCopy = radar;
  v7 = NSTemporaryDirectory();
  lastPathComponent = [radarCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  v10 = [NSString stringWithFormat:@"screenshot-%@.jpg", stringByDeletingPathExtension];
  v18 = [v7 stringByAppendingPathComponent:v10];

  v11 = UIImageJPEGRepresentation(screenshotCopy, 0.8);

  [v11 writeToFile:v18 atomically:0];
  v12 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v13 = [@"\n\nSee attached screenshot and recapmov file.\nhttps:{"stringByAddingPercentEncodingWithAllowedCharacters:", v12}//toolsweb.apple.com/apps/recapedit"];

  v14 = +[UIApplication sharedApplication];
  path = [radarCopy path];

  v16 = [NSString stringWithFormat:@"tap-to-radar://new?attachments=%@&autoDiagnostics=0&screenshot=%@&deleteOnAttach=1&description=%@", path, v18, v13];
  v17 = [NSURL URLWithString:v16];

  if (v17)
  {
    [v14 openURL:v17 options:&__NSDictionary0__struct completionHandler:0];
  }
}

@end
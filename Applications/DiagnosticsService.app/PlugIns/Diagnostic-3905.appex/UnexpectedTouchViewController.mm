@interface UnexpectedTouchViewController
- (id)localizedTimeRemaining:(int)remaining;
- (void)batteryStateChanged;
- (void)cleanUp;
- (void)endTest;
- (void)highlightView:(id)view touchEvent:(id)event;
- (void)initialViewSetup;
- (void)postSetupViewSetup;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)testFailedToExecuteWithStatusCode:(id)code;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)updateTimer:(id)timer;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation UnexpectedTouchViewController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  [(UnexpectedTouchViewController *)self setInputs:inputs, responder];
  v5 = objc_alloc_init(NSMutableArray);
  [(UnexpectedTouchViewController *)self setHitPixels:v5];

  v6 = objc_alloc_init(NSMutableArray);
  [(UnexpectedTouchViewController *)self setHitPixelTimes:v6];

  v7 = objc_alloc_init(NSMutableArray);
  [(UnexpectedTouchViewController *)self setTouchEvents:v7];

  v8 = objc_alloc_init(NSMutableArray);
  [(UnexpectedTouchViewController *)self setAllResults:v8];

  v9 = objc_alloc_init(MultiTouchHelper);
  [(UnexpectedTouchViewController *)self setMultiTouchHelper:v9];

  inputs = [(UnexpectedTouchViewController *)self inputs];
  connectedToPowerRequired = [inputs connectedToPowerRequired];

  if (connectedToPowerRequired)
  {
    v12 = +[UIDevice currentDevice];
    [(UnexpectedTouchViewController *)self setDevice:v12];

    device = [(UnexpectedTouchViewController *)self device];
    [device setBatteryMonitoringEnabled:1];
  }

  [(UnexpectedTouchViewController *)self setSecondsTicked:0];

  [(UnexpectedTouchViewController *)self postSetupViewSetup];
}

- (void)start
{
  inputs = [(UnexpectedTouchViewController *)self inputs];
  connectedToPowerRequired = [inputs connectedToPowerRequired];

  if (connectedToPowerRequired)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"batteryStateChanged" name:UIDeviceBatteryStateDidChangeNotification object:0];

    multiTouchHelper = [(UnexpectedTouchViewController *)self multiTouchHelper];
    isPowerConnected = [multiTouchHelper isPowerConnected];

    if ((isPowerConnected & 1) == 0)
    {

      [(UnexpectedTouchViewController *)self testFailedToExecuteWithStatusCode:&off_1000087A0];
    }
  }
}

- (void)initialViewSetup
{
  view = [(UnexpectedTouchViewController *)self view];
  v4 = +[UIColor whiteColor];
  [view setBackgroundColor:v4];

  v5 = [UIView alloc];
  view2 = [(UnexpectedTouchViewController *)self view];
  [view2 frame];
  v7 = [v5 initWithFrame:?];
  [(UnexpectedTouchViewController *)self setPixelContainerView:v7];

  pixelContainerView = [(UnexpectedTouchViewController *)self pixelContainerView];
  [pixelContainerView setMultipleTouchEnabled:1];

  view3 = [(UnexpectedTouchViewController *)self view];
  pixelContainerView2 = [(UnexpectedTouchViewController *)self pixelContainerView];
  [view3 addSubview:pixelContainerView2];

  view4 = [(UnexpectedTouchViewController *)self view];
  [view4 setMultipleTouchEnabled:1];

  v12 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v16 = [v12 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UnexpectedTouchViewController *)self setProgressView:v16];

  v17 = [UIColor colorWithHexValue:@"EEEEEE" error:0];
  progressView = [(UnexpectedTouchViewController *)self progressView];
  [progressView setBackgroundColor:v17];

  progressView2 = [(UnexpectedTouchViewController *)self progressView];
  [progressView2 setAlpha:0.75];

  progressView3 = [(UnexpectedTouchViewController *)self progressView];
  layer = [progressView3 layer];
  [layer setCornerRadius:8.0];

  progressView4 = [(UnexpectedTouchViewController *)self progressView];
  [progressView4 setUserInteractionEnabled:0];

  progressView5 = [(UnexpectedTouchViewController *)self progressView];
  [progressView5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UnexpectedTouchViewController *)self setProgressLabel:v24];

  v25 = +[UIColor darkTextColor];
  progressLabel = [(UnexpectedTouchViewController *)self progressLabel];
  [progressLabel setTextColor:v25];

  progressLabel2 = [(UnexpectedTouchViewController *)self progressLabel];
  [progressLabel2 setContentMode:7];

  progressLabel3 = [(UnexpectedTouchViewController *)self progressLabel];
  LODWORD(v29) = 1132134400;
  [progressLabel3 setContentHuggingPriority:0 forAxis:v29];

  progressLabel4 = [(UnexpectedTouchViewController *)self progressLabel];
  LODWORD(v31) = 1132134400;
  [progressLabel4 setContentHuggingPriority:1 forAxis:v31];

  progressLabel5 = [(UnexpectedTouchViewController *)self progressLabel];
  [progressLabel5 setTextAlignment:1];

  progressLabel6 = [(UnexpectedTouchViewController *)self progressLabel];
  [progressLabel6 setLineBreakMode:0];

  progressLabel7 = [(UnexpectedTouchViewController *)self progressLabel];
  [progressLabel7 setBaselineAdjustment:2];

  progressLabel8 = [(UnexpectedTouchViewController *)self progressLabel];
  [progressLabel8 setNumberOfLines:2];

  v36 = [UIFont systemFontOfSize:17.0];
  progressLabel9 = [(UnexpectedTouchViewController *)self progressLabel];
  [progressLabel9 setFont:v36];

  progressLabel10 = [(UnexpectedTouchViewController *)self progressLabel];
  [progressLabel10 setPreferredMaxLayoutWidth:240.0];

  progressLabel11 = [(UnexpectedTouchViewController *)self progressLabel];
  [progressLabel11 setUserInteractionEnabled:0];

  progressLabel12 = [(UnexpectedTouchViewController *)self progressLabel];
  [progressLabel12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v41 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UnexpectedTouchViewController *)self setDoNotDisturbLabel:v41];

  v42 = +[UIColor darkTextColor];
  doNotDisturbLabel = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [doNotDisturbLabel setTextColor:v42];

  doNotDisturbLabel2 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [doNotDisturbLabel2 setContentMode:7];

  doNotDisturbLabel3 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  LODWORD(v46) = 1132134400;
  [doNotDisturbLabel3 setContentHuggingPriority:0 forAxis:v46];

  doNotDisturbLabel4 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  LODWORD(v48) = 1132134400;
  [doNotDisturbLabel4 setContentHuggingPriority:1 forAxis:v48];

  doNotDisturbLabel5 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [doNotDisturbLabel5 setTextAlignment:1];

  doNotDisturbLabel6 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [doNotDisturbLabel6 setLineBreakMode:4];

  doNotDisturbLabel7 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [doNotDisturbLabel7 setBaselineAdjustment:2];

  doNotDisturbLabel8 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [doNotDisturbLabel8 setNumberOfLines:3];

  v53 = [UIFont systemFontOfSize:27.0];
  doNotDisturbLabel9 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [doNotDisturbLabel9 setFont:v53];

  doNotDisturbLabel10 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [doNotDisturbLabel10 setPreferredMaxLayoutWidth:240.0];

  v56 = +[NSBundle mainBundle];
  v57 = [v56 localizedStringForKey:@"DO_NOT_DISTURB_THE_DEVICE" value:&stru_1000086A0 table:0];
  doNotDisturbLabel11 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [doNotDisturbLabel11 setText:v57];

  doNotDisturbLabel12 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [doNotDisturbLabel12 setUserInteractionEnabled:0];

  doNotDisturbLabel13 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [doNotDisturbLabel13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v61 = [[UIProgressView alloc] initWithProgressViewStyle:0];
  [(UnexpectedTouchViewController *)self setProgressBar:v61];

  progressBar = [(UnexpectedTouchViewController *)self progressBar];
  [progressBar setProgress:0.0];

  progressBar2 = [(UnexpectedTouchViewController *)self progressBar];
  LODWORD(v64) = 1144750080;
  [progressBar2 setContentHuggingPriority:1 forAxis:v64];

  progressBar3 = [(UnexpectedTouchViewController *)self progressBar];
  [progressBar3 setUserInteractionEnabled:0];

  progressBar4 = [(UnexpectedTouchViewController *)self progressBar];
  [progressBar4 setTranslatesAutoresizingMaskIntoConstraints:0];

  view5 = [(UnexpectedTouchViewController *)self view];
  [view5 setNeedsUpdateConstraints];

  progressView6 = [(UnexpectedTouchViewController *)self progressView];
  doNotDisturbLabel14 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [progressView6 addSubview:doNotDisturbLabel14];

  progressView7 = [(UnexpectedTouchViewController *)self progressView];
  progressBar5 = [(UnexpectedTouchViewController *)self progressBar];
  [progressView7 addSubview:progressBar5];

  progressView8 = [(UnexpectedTouchViewController *)self progressView];
  progressLabel13 = [(UnexpectedTouchViewController *)self progressLabel];
  [progressView8 addSubview:progressLabel13];

  view6 = [(UnexpectedTouchViewController *)self view];
  progressView9 = [(UnexpectedTouchViewController *)self progressView];
  [view6 addSubview:progressView9];

  v76 = [NSTimer scheduledTimerWithTimeInterval:self target:"updateTimer:" selector:0 userInfo:1 repeats:1.0];
  [(UnexpectedTouchViewController *)self setProgressTimer:v76];
}

- (void)postSetupViewSetup
{
  view = [(UnexpectedTouchViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  [screen nativeScale];
  v8 = v7;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  inputs = [(UnexpectedTouchViewController *)self inputs];
  touchMap = [inputs touchMap];

  v11 = [touchMap countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      v14 = 0;
      do
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(touchMap);
        }

        v15 = *(*(&v30 + 1) + 8 * v14);
        v16 = [UIView alloc];
        [v15 x];
        v18 = v17 / v8;
        [v15 y];
        v20 = v19 / v8;
        [v15 width];
        v22 = v21 / v8;
        [v15 height];
        v24 = [v16 initWithFrame:{v18, v20, v22, v23 / v8}];
        [v24 setMultipleTouchEnabled:1];
        pixelContainerView = [(UnexpectedTouchViewController *)self pixelContainerView];
        [pixelContainerView addSubview:v24];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [touchMap countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v12);
  }

  inputs2 = [(UnexpectedTouchViewController *)self inputs];
  v27 = -[UnexpectedTouchViewController localizedTimeRemaining:](self, "localizedTimeRemaining:", [inputs2 minutesToRun]);
  progressLabel = [(UnexpectedTouchViewController *)self progressLabel];
  [progressLabel setText:v27];

  view2 = [(UnexpectedTouchViewController *)self view];
  [view2 setNeedsUpdateConstraints];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = UnexpectedTouchViewController;
  [(UnexpectedTouchViewController *)&v3 viewDidLoad];
  [(UnexpectedTouchViewController *)self initialViewSetup];
}

- (void)updateViewConstraints
{
  v152.receiver = self;
  v152.super_class = UnexpectedTouchViewController;
  [(UnexpectedTouchViewController *)&v152 updateViewConstraints];
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    progressView = [(UnexpectedTouchViewController *)self progressView];
    progressView2 = [(UnexpectedTouchViewController *)self progressView];
    v7 = [NSLayoutConstraint constraintWithItem:progressView2 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:280.0];
    [progressView addConstraint:v7];

    progressView3 = [(UnexpectedTouchViewController *)self progressView];
    v9 = [NSLayoutConstraint constraintWithItem:progressView3 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:150.0];

    LODWORD(v10) = 1144750080;
    [v9 setPriority:v10];
    progressView4 = [(UnexpectedTouchViewController *)self progressView];
    [progressView4 addConstraint:v9];

    view = [(UnexpectedTouchViewController *)self view];
    progressView5 = [(UnexpectedTouchViewController *)self progressView];
    view2 = [(UnexpectedTouchViewController *)self view];
    v15 = [NSLayoutConstraint constraintWithItem:progressView5 attribute:9 relatedBy:0 toItem:view2 attribute:9 multiplier:1.0 constant:0.0];
    [view addConstraint:v15];

    view3 = [(UnexpectedTouchViewController *)self view];
    progressView6 = [(UnexpectedTouchViewController *)self progressView];
    view4 = [(UnexpectedTouchViewController *)self view];
    v19 = [NSLayoutConstraint constraintWithItem:progressView6 attribute:10 relatedBy:0 toItem:view4 attribute:10 multiplier:1.0 constant:0.0];
    [view3 addConstraint:v19];

    progressView7 = [(UnexpectedTouchViewController *)self progressView];
    doNotDisturbLabel = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    progressView8 = [(UnexpectedTouchViewController *)self progressView];
    v23 = [NSLayoutConstraint constraintWithItem:doNotDisturbLabel attribute:5 relatedBy:0 toItem:progressView8 attribute:5 multiplier:1.0 constant:26.0];
    [progressView7 addConstraint:v23];

    progressView9 = [(UnexpectedTouchViewController *)self progressView];
    progressView10 = [(UnexpectedTouchViewController *)self progressView];
    doNotDisturbLabel2 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    v27 = [NSLayoutConstraint constraintWithItem:progressView10 attribute:6 relatedBy:0 toItem:doNotDisturbLabel2 attribute:6 multiplier:1.0 constant:26.0];
    [progressView9 addConstraint:v27];

    doNotDisturbLabel3 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    v29 = [NSLayoutConstraint constraintWithItem:doNotDisturbLabel3 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:65.0];

    LODWORD(v30) = 1144750080;
    [v29 setPriority:v30];
    doNotDisturbLabel4 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    [doNotDisturbLabel4 addConstraint:v29];

    progressView11 = [(UnexpectedTouchViewController *)self progressView];
    doNotDisturbLabel5 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    progressView12 = [(UnexpectedTouchViewController *)self progressView];
    v35 = [NSLayoutConstraint constraintWithItem:doNotDisturbLabel5 attribute:9 relatedBy:0 toItem:progressView12 attribute:9 multiplier:1.0 constant:0.0];
    [progressView11 addConstraint:v35];

    progressView13 = [(UnexpectedTouchViewController *)self progressView];
    doNotDisturbLabel6 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    progressView14 = [(UnexpectedTouchViewController *)self progressView];
    v39 = [NSLayoutConstraint constraintWithItem:doNotDisturbLabel6 attribute:11 relatedBy:0 toItem:progressView14 attribute:10 multiplier:1.0 constant:-13.0];
    [progressView13 addConstraint:v39];

    progressView15 = [(UnexpectedTouchViewController *)self progressView];
    doNotDisturbLabel7 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    progressView16 = [(UnexpectedTouchViewController *)self progressView];
    v43 = [NSLayoutConstraint constraintWithItem:doNotDisturbLabel7 attribute:3 relatedBy:0 toItem:progressView16 attribute:3 multiplier:1.0 constant:26.0];
    [progressView15 addConstraint:v43];

    progressBar = [(UnexpectedTouchViewController *)self progressBar];
    progressBar2 = [(UnexpectedTouchViewController *)self progressBar];
    v46 = [NSLayoutConstraint constraintWithItem:progressBar2 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:240.0];
    [progressBar addConstraint:v46];

    progressView17 = [(UnexpectedTouchViewController *)self progressView];
    progressBar3 = [(UnexpectedTouchViewController *)self progressBar];
    progressView18 = [(UnexpectedTouchViewController *)self progressView];
    v50 = [NSLayoutConstraint constraintWithItem:progressBar3 attribute:9 relatedBy:0 toItem:progressView18 attribute:9 multiplier:1.0 constant:0.0];
    [progressView17 addConstraint:v50];

    progressView19 = [(UnexpectedTouchViewController *)self progressView];
    progressBar4 = [(UnexpectedTouchViewController *)self progressBar];
    progressView20 = [(UnexpectedTouchViewController *)self progressView];
    v54 = [NSLayoutConstraint constraintWithItem:progressBar4 attribute:3 relatedBy:0 toItem:progressView20 attribute:10 multiplier:1.0 constant:13.0];
    [progressView19 addConstraint:v54];

    progressView21 = [(UnexpectedTouchViewController *)self progressView];
    progressLabel = [(UnexpectedTouchViewController *)self progressLabel];
    progressView22 = [(UnexpectedTouchViewController *)self progressView];
    v58 = [NSLayoutConstraint constraintWithItem:progressLabel attribute:5 relatedBy:0 toItem:progressView22 attribute:5 multiplier:1.0 constant:26.0];
    [progressView21 addConstraint:v58];

    progressView23 = [(UnexpectedTouchViewController *)self progressView];
    progressView24 = [(UnexpectedTouchViewController *)self progressView];
    progressLabel2 = [(UnexpectedTouchViewController *)self progressLabel];
    v62 = [NSLayoutConstraint constraintWithItem:progressView24 attribute:6 relatedBy:0 toItem:progressLabel2 attribute:6 multiplier:1.0 constant:26.0];
    [progressView23 addConstraint:v62];

    progressLabel3 = [(UnexpectedTouchViewController *)self progressLabel];
    v64 = [NSLayoutConstraint constraintWithItem:progressLabel3 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:21.0];

    LODWORD(v65) = 1144750080;
    [v64 setPriority:v65];
    progressLabel4 = [(UnexpectedTouchViewController *)self progressLabel];
    [progressLabel4 addConstraint:v64];

    progressView25 = [(UnexpectedTouchViewController *)self progressView];
    progressLabel5 = [(UnexpectedTouchViewController *)self progressLabel];
    progressView26 = [(UnexpectedTouchViewController *)self progressView];
    v70 = [NSLayoutConstraint constraintWithItem:progressLabel5 attribute:9 relatedBy:0 toItem:progressView26 attribute:9 multiplier:1.0 constant:0.0];
    [progressView25 addConstraint:v70];

    progressView27 = [(UnexpectedTouchViewController *)self progressView];
    progressLabel6 = [(UnexpectedTouchViewController *)self progressLabel];
    progressBar5 = [(UnexpectedTouchViewController *)self progressBar];
    v74 = [NSLayoutConstraint constraintWithItem:progressLabel6 attribute:3 relatedBy:0 toItem:progressBar5 attribute:4 multiplier:1.0 constant:16.0];
    [progressView27 addConstraint:v74];

    progressView28 = [(UnexpectedTouchViewController *)self progressView];
    progressView29 = [(UnexpectedTouchViewController *)self progressView];
    progressLabel7 = [(UnexpectedTouchViewController *)self progressLabel];
    v78 = 1.0;
    v79 = 26.0;
    v80 = progressView29;
    v81 = 4;
    v82 = progressLabel7;
    v83 = 11;
  }

  else
  {
    doNotDisturbLabel8 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    v9 = [NSLayoutConstraint constraintWithItem:doNotDisturbLabel8 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:65.0];

    LODWORD(v85) = 1144750080;
    [v9 setPriority:v85];
    doNotDisturbLabel9 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    [doNotDisturbLabel9 addConstraint:v9];

    progressBar6 = [(UnexpectedTouchViewController *)self progressBar];
    progressBar7 = [(UnexpectedTouchViewController *)self progressBar];
    v89 = [NSLayoutConstraint constraintWithItem:progressBar7 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:240.0];
    [progressBar6 addConstraint:v89];

    progressLabel8 = [(UnexpectedTouchViewController *)self progressLabel];
    v29 = [NSLayoutConstraint constraintWithItem:progressLabel8 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:21.0];

    LODWORD(v91) = 1144750080;
    [v29 setPriority:v91];
    progressLabel9 = [(UnexpectedTouchViewController *)self progressLabel];
    [progressLabel9 addConstraint:v29];

    progressView30 = [(UnexpectedTouchViewController *)self progressView];
    progressView31 = [(UnexpectedTouchViewController *)self progressView];
    progressLabel10 = [(UnexpectedTouchViewController *)self progressLabel];
    v96 = [NSLayoutConstraint constraintWithItem:progressView31 attribute:9 relatedBy:0 toItem:progressLabel10 attribute:9 multiplier:1.0 constant:0.0];
    [progressView30 addConstraint:v96];

    progressView32 = [(UnexpectedTouchViewController *)self progressView];
    doNotDisturbLabel10 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    progressView33 = [(UnexpectedTouchViewController *)self progressView];
    v100 = [NSLayoutConstraint constraintWithItem:doNotDisturbLabel10 attribute:5 relatedBy:0 toItem:progressView33 attribute:5 multiplier:1.0 constant:20.0];
    [progressView32 addConstraint:v100];

    progressView34 = [(UnexpectedTouchViewController *)self progressView];
    v64 = [NSLayoutConstraint constraintWithItem:progressView34 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:150.0];

    LODWORD(v102) = 1144750080;
    [v64 setPriority:v102];
    progressView35 = [(UnexpectedTouchViewController *)self progressView];
    [progressView35 addConstraint:v64];

    progressView36 = [(UnexpectedTouchViewController *)self progressView];
    progressView37 = [(UnexpectedTouchViewController *)self progressView];
    doNotDisturbLabel11 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    v107 = [NSLayoutConstraint constraintWithItem:progressView37 attribute:9 relatedBy:0 toItem:doNotDisturbLabel11 attribute:9 multiplier:1.0 constant:0.0];
    [progressView36 addConstraint:v107];

    progressView38 = [(UnexpectedTouchViewController *)self progressView];
    progressView39 = [(UnexpectedTouchViewController *)self progressView];
    v110 = [NSLayoutConstraint constraintWithItem:progressView39 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:280.0];
    [progressView38 addConstraint:v110];

    progressView40 = [(UnexpectedTouchViewController *)self progressView];
    progressBar8 = [(UnexpectedTouchViewController *)self progressBar];
    doNotDisturbLabel12 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    v114 = [NSLayoutConstraint constraintWithItem:progressBar8 attribute:3 relatedBy:0 toItem:doNotDisturbLabel12 attribute:4 multiplier:1.0 constant:15.0];
    [progressView40 addConstraint:v114];

    progressView41 = [(UnexpectedTouchViewController *)self progressView];
    progressView42 = [(UnexpectedTouchViewController *)self progressView];
    progressBar9 = [(UnexpectedTouchViewController *)self progressBar];
    v118 = [NSLayoutConstraint constraintWithItem:progressView42 attribute:9 relatedBy:0 toItem:progressBar9 attribute:9 multiplier:1.0 constant:0.0];
    [progressView41 addConstraint:v118];

    progressView43 = [(UnexpectedTouchViewController *)self progressView];
    progressLabel11 = [(UnexpectedTouchViewController *)self progressLabel];
    progressView44 = [(UnexpectedTouchViewController *)self progressView];
    v122 = [NSLayoutConstraint constraintWithItem:progressLabel11 attribute:5 relatedBy:0 toItem:progressView44 attribute:5 multiplier:1.0 constant:20.0];
    [progressView43 addConstraint:v122];

    progressView45 = [(UnexpectedTouchViewController *)self progressView];
    progressView46 = [(UnexpectedTouchViewController *)self progressView];
    doNotDisturbLabel13 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    v126 = [NSLayoutConstraint constraintWithItem:progressView46 attribute:6 relatedBy:0 toItem:doNotDisturbLabel13 attribute:6 multiplier:1.0 constant:20.0];
    [progressView45 addConstraint:v126];

    progressView47 = [(UnexpectedTouchViewController *)self progressView];
    progressView48 = [(UnexpectedTouchViewController *)self progressView];
    progressLabel12 = [(UnexpectedTouchViewController *)self progressLabel];
    v130 = [NSLayoutConstraint constraintWithItem:progressView48 attribute:6 relatedBy:0 toItem:progressLabel12 attribute:6 multiplier:1.0 constant:20.0];
    [progressView47 addConstraint:v130];

    progressView49 = [(UnexpectedTouchViewController *)self progressView];
    progressLabel13 = [(UnexpectedTouchViewController *)self progressLabel];
    progressBar10 = [(UnexpectedTouchViewController *)self progressBar];
    v134 = [NSLayoutConstraint constraintWithItem:progressLabel13 attribute:3 relatedBy:0 toItem:progressBar10 attribute:4 multiplier:1.0 constant:16.0];
    [progressView49 addConstraint:v134];

    progressView50 = [(UnexpectedTouchViewController *)self progressView];
    doNotDisturbLabel14 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    progressView51 = [(UnexpectedTouchViewController *)self progressView];
    v138 = [NSLayoutConstraint constraintWithItem:doNotDisturbLabel14 attribute:3 relatedBy:0 toItem:progressView51 attribute:3 multiplier:1.0 constant:15.0];
    [progressView50 addConstraint:v138];

    progressView52 = [(UnexpectedTouchViewController *)self progressView];
    progressView53 = [(UnexpectedTouchViewController *)self progressView];
    progressBar11 = [(UnexpectedTouchViewController *)self progressBar];
    v142 = [NSLayoutConstraint constraintWithItem:progressView53 attribute:10 relatedBy:0 toItem:progressBar11 attribute:10 multiplier:1.0 constant:-21.0];
    [progressView52 addConstraint:v142];

    progressView54 = [(UnexpectedTouchViewController *)self progressView];
    progressView55 = [(UnexpectedTouchViewController *)self progressView];
    progressLabel14 = [(UnexpectedTouchViewController *)self progressLabel];
    v146 = [NSLayoutConstraint constraintWithItem:progressView55 attribute:4 relatedBy:0 toItem:progressLabel14 attribute:4 multiplier:1.0 constant:16.0];
    [progressView54 addConstraint:v146];

    view5 = [(UnexpectedTouchViewController *)self view];
    progressView56 = [(UnexpectedTouchViewController *)self progressView];
    view6 = [(UnexpectedTouchViewController *)self view];
    v150 = [NSLayoutConstraint constraintWithItem:progressView56 attribute:9 relatedBy:0 toItem:view6 attribute:9 multiplier:1.0 constant:0.0];
    [view5 addConstraint:v150];

    progressView28 = [(UnexpectedTouchViewController *)self view];
    progressView29 = [(UnexpectedTouchViewController *)self progressView];
    progressLabel7 = [(UnexpectedTouchViewController *)self view];
    v78 = 1.0;
    v79 = 0.0;
    v80 = progressView29;
    v81 = 10;
    v82 = progressLabel7;
    v83 = 10;
  }

  v151 = [NSLayoutConstraint constraintWithItem:v80 attribute:v81 relatedBy:0 toItem:v82 attribute:v83 multiplier:v78 constant:v79];
  [progressView28 addConstraint:v151];
}

- (void)updateTimer:(id)timer
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000373C;
  v4[3] = &unk_100008290;
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000037E8;
  v3[3] = &unk_1000082B8;
  v3[4] = self;
  [UIView animateWithDuration:v4 animations:v3 completion:1.0];
}

- (void)cleanUp
{
  progressTimer = [(UnexpectedTouchViewController *)self progressTimer];

  if (progressTimer)
  {
    progressTimer2 = [(UnexpectedTouchViewController *)self progressTimer];
    [progressTimer2 invalidate];

    [(UnexpectedTouchViewController *)self setProgressTimer:0];
  }

  inputs = [(UnexpectedTouchViewController *)self inputs];
  connectedToPowerRequired = [inputs connectedToPowerRequired];

  if (connectedToPowerRequired)
  {
    device = [(UnexpectedTouchViewController *)self device];
    [device setBatteryMonitoringEnabled:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self];
  }
}

- (void)endTest
{
  [(UnexpectedTouchViewController *)self cleanUp];
  hitPixels = [(UnexpectedTouchViewController *)self hitPixels];
  v4 = [hitPixels count];

  result = [(UnexpectedTouchViewController *)self result];
  v6 = result;
  if (v4)
  {
    v7 = &off_1000087B8;
  }

  else
  {
    v7 = &off_1000087D0;
  }

  [result setStatusCode:v7];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  selfCopy = self;
  obj = [(UnexpectedTouchViewController *)self hitPixels];
  v44 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v44)
  {
    LODWORD(v8) = 0;
    v42 = *v51;
    do
    {
      v9 = 0;
      v8 = v8;
      do
      {
        if (*v51 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v50 + 1) + 8 * v9);
        allResults = [(UnexpectedTouchViewController *)selfCopy allResults];
        v56[0] = @"xPos";
        [v10 frame];
        v48 = [NSNumber numberWithDouble:?];
        v57[0] = v48;
        v56[1] = @"yPos";
        [v10 frame];
        v46 = [NSNumber numberWithDouble:v11];
        v57[1] = v46;
        v56[2] = @"width";
        [v10 bounds];
        v13 = [NSNumber numberWithDouble:v12];
        v57[2] = v13;
        v56[3] = @"height";
        [v10 bounds];
        v15 = [NSNumber numberWithDouble:v14];
        v57[3] = v15;
        v56[4] = @"timestamp";
        hitPixelTimes = [(UnexpectedTouchViewController *)selfCopy hitPixelTimes];
        v17 = [hitPixelTimes objectAtIndexedSubscript:v8];
        v57[4] = v17;
        v56[5] = @"touchEvent";
        [(UnexpectedTouchViewController *)selfCopy touchEvents];
        v19 = v18 = v8;
        v20 = [v19 objectAtIndexedSubscript:v18];
        v57[5] = v20;
        v21 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:6];
        [allResults addObject:v21];

        v8 = v18 + 1;
        v9 = v9 + 1;
      }

      while (v44 != v9);
      v44 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v44);
  }

  view = [(UnexpectedTouchViewController *)selfCopy view];
  window = [view window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  [screen bounds];
  v27 = v26;
  v29 = v28;

  v54[0] = @"displayResX";
  v49 = [NSNumber numberWithDouble:v27];
  v55[0] = v49;
  v54[1] = @"displayResY";
  v47 = [NSNumber numberWithDouble:v29];
  v55[1] = v47;
  v54[2] = @"touchesFound";
  allResults2 = [(UnexpectedTouchViewController *)selfCopy allResults];
  v55[2] = allResults2;
  v54[3] = @"isCharging";
  v31 = [NSNumber alloc];
  multiTouchHelper = [(UnexpectedTouchViewController *)selfCopy multiTouchHelper];
  v33 = [v31 initWithBool:{objc_msgSend(multiTouchHelper, "isBatteryCharging")}];
  v55[3] = v33;
  v54[4] = @"isPluggedIntoPower";
  v34 = [NSNumber alloc];
  multiTouchHelper2 = [(UnexpectedTouchViewController *)selfCopy multiTouchHelper];
  v36 = [v34 initWithBool:{objc_msgSend(multiTouchHelper2, "isPowerConnected")}];
  v55[4] = v36;
  v54[5] = @"temperatureData";
  multiTouchHelper3 = [(UnexpectedTouchViewController *)selfCopy multiTouchHelper];
  temperatureData = [multiTouchHelper3 temperatureData];
  v55[5] = temperatureData;
  v39 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:6];
  result2 = [(UnexpectedTouchViewController *)selfCopy result];
  [result2 setData:v39];

  [(UnexpectedTouchViewController *)selfCopy setFinished:1];
}

- (void)testFailedToExecuteWithStatusCode:(id)code
{
  codeCopy = code;
  [(UnexpectedTouchViewController *)self cleanUp];
  result = [(UnexpectedTouchViewController *)self result];
  [result setStatusCode:codeCopy];

  result2 = [(UnexpectedTouchViewController *)self result];
  [result2 setData:&__NSDictionary0__struct];

  [(UnexpectedTouchViewController *)self setFinished:1];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  view = [(UnexpectedTouchViewController *)self view];
  anyObject = [beganCopy anyObject];

  view2 = [(UnexpectedTouchViewController *)self view];
  [anyObject locationInView:view2];
  v10 = [view hitTest:0 withEvent:?];

  v9 = v10;
  if (v10)
  {
    [(UnexpectedTouchViewController *)self highlightView:v10 touchEvent:@"touchesBegan"];
    v9 = v10;
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  view = [(UnexpectedTouchViewController *)self view];
  anyObject = [movedCopy anyObject];

  view2 = [(UnexpectedTouchViewController *)self view];
  [anyObject locationInView:view2];
  v10 = [view hitTest:0 withEvent:?];

  v9 = v10;
  if (v10)
  {
    [(UnexpectedTouchViewController *)self highlightView:v10 touchEvent:@"touchesMoved"];
    v9 = v10;
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  view = [(UnexpectedTouchViewController *)self view];
  anyObject = [endedCopy anyObject];

  view2 = [(UnexpectedTouchViewController *)self view];
  [anyObject locationInView:view2];
  v10 = [view hitTest:0 withEvent:?];

  v9 = v10;
  if (v10)
  {
    [(UnexpectedTouchViewController *)self highlightView:v10 touchEvent:@"touchesEnded"];
    v9 = v10;
  }
}

- (void)highlightView:(id)view touchEvent:(id)event
{
  viewCopy = view;
  eventCopy = event;
  inputs = [(UnexpectedTouchViewController *)self inputs];
  touchColor = [inputs touchColor];
  [viewCopy setBackgroundColor:touchColor];

  hitPixels = [(UnexpectedTouchViewController *)self hitPixels];
  [hitPixels addObject:viewCopy];

  v11 = +[NSDate date];
  [v11 timeIntervalSince1970];
  v13 = [NSNumber numberWithUnsignedLongLong:(v12 * 1000.0)];

  hitPixelTimes = [(UnexpectedTouchViewController *)self hitPixelTimes];
  [hitPixelTimes addObject:v13];

  touchEvents = [(UnexpectedTouchViewController *)self touchEvents];
  [touchEvents addObject:eventCopy];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100004440;
  v17[3] = &unk_1000082E0;
  v18 = viewCopy;
  selfCopy = self;
  v16 = viewCopy;
  [UIView animateWithDuration:131074 delay:v17 options:0 animations:2.0 completion:0.5];
}

- (void)batteryStateChanged
{
  device = [(UnexpectedTouchViewController *)self device];
  if ([device batteryState] == 1)
  {
  }

  else
  {
    device2 = [(UnexpectedTouchViewController *)self device];
    batteryState = [device2 batteryState];

    if (batteryState)
    {
      return;
    }
  }

  [(UnexpectedTouchViewController *)self testFailedToExecuteWithStatusCode:&off_1000087A0];
}

- (id)localizedTimeRemaining:(int)remaining
{
  if (!qword_10000D030)
  {
    v4 = objc_opt_new();
    v5 = qword_10000D030;
    qword_10000D030 = v4;

    [qword_10000D030 setUnitsStyle:3];
    [qword_10000D030 setAllowedUnits:64];
    [qword_10000D030 setFormattingContext:5];
    [qword_10000D030 setMaximumUnitCount:1];
  }

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"ABOUT_REMAINING" value:&stru_1000086A0 table:0];
  v8 = [qword_10000D030 stringFromTimeInterval:(remaining * 60.0)];
  v9 = [NSString stringWithFormat:v7, v8];

  return v9;
}

@end
@interface UnexpectedTouchViewController
- (id)localizedTimeRemaining:(int)a3;
- (void)batteryStateChanged;
- (void)cleanUp;
- (void)endTest;
- (void)highlightView:(id)a3 touchEvent:(id)a4;
- (void)initialViewSetup;
- (void)postSetupViewSetup;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)testFailedToExecuteWithStatusCode:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)updateTimer:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation UnexpectedTouchViewController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  [(UnexpectedTouchViewController *)self setInputs:a3, a4];
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

  v10 = [(UnexpectedTouchViewController *)self inputs];
  v11 = [v10 connectedToPowerRequired];

  if (v11)
  {
    v12 = +[UIDevice currentDevice];
    [(UnexpectedTouchViewController *)self setDevice:v12];

    v13 = [(UnexpectedTouchViewController *)self device];
    [v13 setBatteryMonitoringEnabled:1];
  }

  [(UnexpectedTouchViewController *)self setSecondsTicked:0];

  [(UnexpectedTouchViewController *)self postSetupViewSetup];
}

- (void)start
{
  v3 = [(UnexpectedTouchViewController *)self inputs];
  v4 = [v3 connectedToPowerRequired];

  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"batteryStateChanged" name:UIDeviceBatteryStateDidChangeNotification object:0];

    v6 = [(UnexpectedTouchViewController *)self multiTouchHelper];
    v7 = [v6 isPowerConnected];

    if ((v7 & 1) == 0)
    {

      [(UnexpectedTouchViewController *)self testFailedToExecuteWithStatusCode:&off_1000087A0];
    }
  }
}

- (void)initialViewSetup
{
  v3 = [(UnexpectedTouchViewController *)self view];
  v4 = +[UIColor whiteColor];
  [v3 setBackgroundColor:v4];

  v5 = [UIView alloc];
  v6 = [(UnexpectedTouchViewController *)self view];
  [v6 frame];
  v7 = [v5 initWithFrame:?];
  [(UnexpectedTouchViewController *)self setPixelContainerView:v7];

  v8 = [(UnexpectedTouchViewController *)self pixelContainerView];
  [v8 setMultipleTouchEnabled:1];

  v9 = [(UnexpectedTouchViewController *)self view];
  v10 = [(UnexpectedTouchViewController *)self pixelContainerView];
  [v9 addSubview:v10];

  v11 = [(UnexpectedTouchViewController *)self view];
  [v11 setMultipleTouchEnabled:1];

  v12 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v16 = [v12 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UnexpectedTouchViewController *)self setProgressView:v16];

  v17 = [UIColor colorWithHexValue:@"EEEEEE" error:0];
  v18 = [(UnexpectedTouchViewController *)self progressView];
  [v18 setBackgroundColor:v17];

  v19 = [(UnexpectedTouchViewController *)self progressView];
  [v19 setAlpha:0.75];

  v20 = [(UnexpectedTouchViewController *)self progressView];
  v21 = [v20 layer];
  [v21 setCornerRadius:8.0];

  v22 = [(UnexpectedTouchViewController *)self progressView];
  [v22 setUserInteractionEnabled:0];

  v23 = [(UnexpectedTouchViewController *)self progressView];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UnexpectedTouchViewController *)self setProgressLabel:v24];

  v25 = +[UIColor darkTextColor];
  v26 = [(UnexpectedTouchViewController *)self progressLabel];
  [v26 setTextColor:v25];

  v27 = [(UnexpectedTouchViewController *)self progressLabel];
  [v27 setContentMode:7];

  v28 = [(UnexpectedTouchViewController *)self progressLabel];
  LODWORD(v29) = 1132134400;
  [v28 setContentHuggingPriority:0 forAxis:v29];

  v30 = [(UnexpectedTouchViewController *)self progressLabel];
  LODWORD(v31) = 1132134400;
  [v30 setContentHuggingPriority:1 forAxis:v31];

  v32 = [(UnexpectedTouchViewController *)self progressLabel];
  [v32 setTextAlignment:1];

  v33 = [(UnexpectedTouchViewController *)self progressLabel];
  [v33 setLineBreakMode:0];

  v34 = [(UnexpectedTouchViewController *)self progressLabel];
  [v34 setBaselineAdjustment:2];

  v35 = [(UnexpectedTouchViewController *)self progressLabel];
  [v35 setNumberOfLines:2];

  v36 = [UIFont systemFontOfSize:17.0];
  v37 = [(UnexpectedTouchViewController *)self progressLabel];
  [v37 setFont:v36];

  v38 = [(UnexpectedTouchViewController *)self progressLabel];
  [v38 setPreferredMaxLayoutWidth:240.0];

  v39 = [(UnexpectedTouchViewController *)self progressLabel];
  [v39 setUserInteractionEnabled:0];

  v40 = [(UnexpectedTouchViewController *)self progressLabel];
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

  v41 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UnexpectedTouchViewController *)self setDoNotDisturbLabel:v41];

  v42 = +[UIColor darkTextColor];
  v43 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [v43 setTextColor:v42];

  v44 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [v44 setContentMode:7];

  v45 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  LODWORD(v46) = 1132134400;
  [v45 setContentHuggingPriority:0 forAxis:v46];

  v47 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  LODWORD(v48) = 1132134400;
  [v47 setContentHuggingPriority:1 forAxis:v48];

  v49 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [v49 setTextAlignment:1];

  v50 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [v50 setLineBreakMode:4];

  v51 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [v51 setBaselineAdjustment:2];

  v52 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [v52 setNumberOfLines:3];

  v53 = [UIFont systemFontOfSize:27.0];
  v54 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [v54 setFont:v53];

  v55 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [v55 setPreferredMaxLayoutWidth:240.0];

  v56 = +[NSBundle mainBundle];
  v57 = [v56 localizedStringForKey:@"DO_NOT_DISTURB_THE_DEVICE" value:&stru_1000086A0 table:0];
  v58 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [v58 setText:v57];

  v59 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [v59 setUserInteractionEnabled:0];

  v60 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [v60 setTranslatesAutoresizingMaskIntoConstraints:0];

  v61 = [[UIProgressView alloc] initWithProgressViewStyle:0];
  [(UnexpectedTouchViewController *)self setProgressBar:v61];

  v62 = [(UnexpectedTouchViewController *)self progressBar];
  [v62 setProgress:0.0];

  v63 = [(UnexpectedTouchViewController *)self progressBar];
  LODWORD(v64) = 1144750080;
  [v63 setContentHuggingPriority:1 forAxis:v64];

  v65 = [(UnexpectedTouchViewController *)self progressBar];
  [v65 setUserInteractionEnabled:0];

  v66 = [(UnexpectedTouchViewController *)self progressBar];
  [v66 setTranslatesAutoresizingMaskIntoConstraints:0];

  v67 = [(UnexpectedTouchViewController *)self view];
  [v67 setNeedsUpdateConstraints];

  v68 = [(UnexpectedTouchViewController *)self progressView];
  v69 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
  [v68 addSubview:v69];

  v70 = [(UnexpectedTouchViewController *)self progressView];
  v71 = [(UnexpectedTouchViewController *)self progressBar];
  [v70 addSubview:v71];

  v72 = [(UnexpectedTouchViewController *)self progressView];
  v73 = [(UnexpectedTouchViewController *)self progressLabel];
  [v72 addSubview:v73];

  v74 = [(UnexpectedTouchViewController *)self view];
  v75 = [(UnexpectedTouchViewController *)self progressView];
  [v74 addSubview:v75];

  v76 = [NSTimer scheduledTimerWithTimeInterval:self target:"updateTimer:" selector:0 userInfo:1 repeats:1.0];
  [(UnexpectedTouchViewController *)self setProgressTimer:v76];
}

- (void)postSetupViewSetup
{
  v3 = [(UnexpectedTouchViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 screen];
  [v6 nativeScale];
  v8 = v7;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [(UnexpectedTouchViewController *)self inputs];
  v10 = [v9 touchMap];

  v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(v10);
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
        v25 = [(UnexpectedTouchViewController *)self pixelContainerView];
        [v25 addSubview:v24];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v12);
  }

  v26 = [(UnexpectedTouchViewController *)self inputs];
  v27 = -[UnexpectedTouchViewController localizedTimeRemaining:](self, "localizedTimeRemaining:", [v26 minutesToRun]);
  v28 = [(UnexpectedTouchViewController *)self progressLabel];
  [v28 setText:v27];

  v29 = [(UnexpectedTouchViewController *)self view];
  [v29 setNeedsUpdateConstraints];
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
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = [(UnexpectedTouchViewController *)self progressView];
    v6 = [(UnexpectedTouchViewController *)self progressView];
    v7 = [NSLayoutConstraint constraintWithItem:v6 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:280.0];
    [v5 addConstraint:v7];

    v8 = [(UnexpectedTouchViewController *)self progressView];
    v9 = [NSLayoutConstraint constraintWithItem:v8 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:150.0];

    LODWORD(v10) = 1144750080;
    [v9 setPriority:v10];
    v11 = [(UnexpectedTouchViewController *)self progressView];
    [v11 addConstraint:v9];

    v12 = [(UnexpectedTouchViewController *)self view];
    v13 = [(UnexpectedTouchViewController *)self progressView];
    v14 = [(UnexpectedTouchViewController *)self view];
    v15 = [NSLayoutConstraint constraintWithItem:v13 attribute:9 relatedBy:0 toItem:v14 attribute:9 multiplier:1.0 constant:0.0];
    [v12 addConstraint:v15];

    v16 = [(UnexpectedTouchViewController *)self view];
    v17 = [(UnexpectedTouchViewController *)self progressView];
    v18 = [(UnexpectedTouchViewController *)self view];
    v19 = [NSLayoutConstraint constraintWithItem:v17 attribute:10 relatedBy:0 toItem:v18 attribute:10 multiplier:1.0 constant:0.0];
    [v16 addConstraint:v19];

    v20 = [(UnexpectedTouchViewController *)self progressView];
    v21 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    v22 = [(UnexpectedTouchViewController *)self progressView];
    v23 = [NSLayoutConstraint constraintWithItem:v21 attribute:5 relatedBy:0 toItem:v22 attribute:5 multiplier:1.0 constant:26.0];
    [v20 addConstraint:v23];

    v24 = [(UnexpectedTouchViewController *)self progressView];
    v25 = [(UnexpectedTouchViewController *)self progressView];
    v26 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    v27 = [NSLayoutConstraint constraintWithItem:v25 attribute:6 relatedBy:0 toItem:v26 attribute:6 multiplier:1.0 constant:26.0];
    [v24 addConstraint:v27];

    v28 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    v29 = [NSLayoutConstraint constraintWithItem:v28 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:65.0];

    LODWORD(v30) = 1144750080;
    [v29 setPriority:v30];
    v31 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    [v31 addConstraint:v29];

    v32 = [(UnexpectedTouchViewController *)self progressView];
    v33 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    v34 = [(UnexpectedTouchViewController *)self progressView];
    v35 = [NSLayoutConstraint constraintWithItem:v33 attribute:9 relatedBy:0 toItem:v34 attribute:9 multiplier:1.0 constant:0.0];
    [v32 addConstraint:v35];

    v36 = [(UnexpectedTouchViewController *)self progressView];
    v37 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    v38 = [(UnexpectedTouchViewController *)self progressView];
    v39 = [NSLayoutConstraint constraintWithItem:v37 attribute:11 relatedBy:0 toItem:v38 attribute:10 multiplier:1.0 constant:-13.0];
    [v36 addConstraint:v39];

    v40 = [(UnexpectedTouchViewController *)self progressView];
    v41 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    v42 = [(UnexpectedTouchViewController *)self progressView];
    v43 = [NSLayoutConstraint constraintWithItem:v41 attribute:3 relatedBy:0 toItem:v42 attribute:3 multiplier:1.0 constant:26.0];
    [v40 addConstraint:v43];

    v44 = [(UnexpectedTouchViewController *)self progressBar];
    v45 = [(UnexpectedTouchViewController *)self progressBar];
    v46 = [NSLayoutConstraint constraintWithItem:v45 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:240.0];
    [v44 addConstraint:v46];

    v47 = [(UnexpectedTouchViewController *)self progressView];
    v48 = [(UnexpectedTouchViewController *)self progressBar];
    v49 = [(UnexpectedTouchViewController *)self progressView];
    v50 = [NSLayoutConstraint constraintWithItem:v48 attribute:9 relatedBy:0 toItem:v49 attribute:9 multiplier:1.0 constant:0.0];
    [v47 addConstraint:v50];

    v51 = [(UnexpectedTouchViewController *)self progressView];
    v52 = [(UnexpectedTouchViewController *)self progressBar];
    v53 = [(UnexpectedTouchViewController *)self progressView];
    v54 = [NSLayoutConstraint constraintWithItem:v52 attribute:3 relatedBy:0 toItem:v53 attribute:10 multiplier:1.0 constant:13.0];
    [v51 addConstraint:v54];

    v55 = [(UnexpectedTouchViewController *)self progressView];
    v56 = [(UnexpectedTouchViewController *)self progressLabel];
    v57 = [(UnexpectedTouchViewController *)self progressView];
    v58 = [NSLayoutConstraint constraintWithItem:v56 attribute:5 relatedBy:0 toItem:v57 attribute:5 multiplier:1.0 constant:26.0];
    [v55 addConstraint:v58];

    v59 = [(UnexpectedTouchViewController *)self progressView];
    v60 = [(UnexpectedTouchViewController *)self progressView];
    v61 = [(UnexpectedTouchViewController *)self progressLabel];
    v62 = [NSLayoutConstraint constraintWithItem:v60 attribute:6 relatedBy:0 toItem:v61 attribute:6 multiplier:1.0 constant:26.0];
    [v59 addConstraint:v62];

    v63 = [(UnexpectedTouchViewController *)self progressLabel];
    v64 = [NSLayoutConstraint constraintWithItem:v63 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:21.0];

    LODWORD(v65) = 1144750080;
    [v64 setPriority:v65];
    v66 = [(UnexpectedTouchViewController *)self progressLabel];
    [v66 addConstraint:v64];

    v67 = [(UnexpectedTouchViewController *)self progressView];
    v68 = [(UnexpectedTouchViewController *)self progressLabel];
    v69 = [(UnexpectedTouchViewController *)self progressView];
    v70 = [NSLayoutConstraint constraintWithItem:v68 attribute:9 relatedBy:0 toItem:v69 attribute:9 multiplier:1.0 constant:0.0];
    [v67 addConstraint:v70];

    v71 = [(UnexpectedTouchViewController *)self progressView];
    v72 = [(UnexpectedTouchViewController *)self progressLabel];
    v73 = [(UnexpectedTouchViewController *)self progressBar];
    v74 = [NSLayoutConstraint constraintWithItem:v72 attribute:3 relatedBy:0 toItem:v73 attribute:4 multiplier:1.0 constant:16.0];
    [v71 addConstraint:v74];

    v75 = [(UnexpectedTouchViewController *)self progressView];
    v76 = [(UnexpectedTouchViewController *)self progressView];
    v77 = [(UnexpectedTouchViewController *)self progressLabel];
    v78 = 1.0;
    v79 = 26.0;
    v80 = v76;
    v81 = 4;
    v82 = v77;
    v83 = 11;
  }

  else
  {
    v84 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    v9 = [NSLayoutConstraint constraintWithItem:v84 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:65.0];

    LODWORD(v85) = 1144750080;
    [v9 setPriority:v85];
    v86 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    [v86 addConstraint:v9];

    v87 = [(UnexpectedTouchViewController *)self progressBar];
    v88 = [(UnexpectedTouchViewController *)self progressBar];
    v89 = [NSLayoutConstraint constraintWithItem:v88 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:240.0];
    [v87 addConstraint:v89];

    v90 = [(UnexpectedTouchViewController *)self progressLabel];
    v29 = [NSLayoutConstraint constraintWithItem:v90 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:21.0];

    LODWORD(v91) = 1144750080;
    [v29 setPriority:v91];
    v92 = [(UnexpectedTouchViewController *)self progressLabel];
    [v92 addConstraint:v29];

    v93 = [(UnexpectedTouchViewController *)self progressView];
    v94 = [(UnexpectedTouchViewController *)self progressView];
    v95 = [(UnexpectedTouchViewController *)self progressLabel];
    v96 = [NSLayoutConstraint constraintWithItem:v94 attribute:9 relatedBy:0 toItem:v95 attribute:9 multiplier:1.0 constant:0.0];
    [v93 addConstraint:v96];

    v97 = [(UnexpectedTouchViewController *)self progressView];
    v98 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    v99 = [(UnexpectedTouchViewController *)self progressView];
    v100 = [NSLayoutConstraint constraintWithItem:v98 attribute:5 relatedBy:0 toItem:v99 attribute:5 multiplier:1.0 constant:20.0];
    [v97 addConstraint:v100];

    v101 = [(UnexpectedTouchViewController *)self progressView];
    v64 = [NSLayoutConstraint constraintWithItem:v101 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:150.0];

    LODWORD(v102) = 1144750080;
    [v64 setPriority:v102];
    v103 = [(UnexpectedTouchViewController *)self progressView];
    [v103 addConstraint:v64];

    v104 = [(UnexpectedTouchViewController *)self progressView];
    v105 = [(UnexpectedTouchViewController *)self progressView];
    v106 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    v107 = [NSLayoutConstraint constraintWithItem:v105 attribute:9 relatedBy:0 toItem:v106 attribute:9 multiplier:1.0 constant:0.0];
    [v104 addConstraint:v107];

    v108 = [(UnexpectedTouchViewController *)self progressView];
    v109 = [(UnexpectedTouchViewController *)self progressView];
    v110 = [NSLayoutConstraint constraintWithItem:v109 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:280.0];
    [v108 addConstraint:v110];

    v111 = [(UnexpectedTouchViewController *)self progressView];
    v112 = [(UnexpectedTouchViewController *)self progressBar];
    v113 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    v114 = [NSLayoutConstraint constraintWithItem:v112 attribute:3 relatedBy:0 toItem:v113 attribute:4 multiplier:1.0 constant:15.0];
    [v111 addConstraint:v114];

    v115 = [(UnexpectedTouchViewController *)self progressView];
    v116 = [(UnexpectedTouchViewController *)self progressView];
    v117 = [(UnexpectedTouchViewController *)self progressBar];
    v118 = [NSLayoutConstraint constraintWithItem:v116 attribute:9 relatedBy:0 toItem:v117 attribute:9 multiplier:1.0 constant:0.0];
    [v115 addConstraint:v118];

    v119 = [(UnexpectedTouchViewController *)self progressView];
    v120 = [(UnexpectedTouchViewController *)self progressLabel];
    v121 = [(UnexpectedTouchViewController *)self progressView];
    v122 = [NSLayoutConstraint constraintWithItem:v120 attribute:5 relatedBy:0 toItem:v121 attribute:5 multiplier:1.0 constant:20.0];
    [v119 addConstraint:v122];

    v123 = [(UnexpectedTouchViewController *)self progressView];
    v124 = [(UnexpectedTouchViewController *)self progressView];
    v125 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    v126 = [NSLayoutConstraint constraintWithItem:v124 attribute:6 relatedBy:0 toItem:v125 attribute:6 multiplier:1.0 constant:20.0];
    [v123 addConstraint:v126];

    v127 = [(UnexpectedTouchViewController *)self progressView];
    v128 = [(UnexpectedTouchViewController *)self progressView];
    v129 = [(UnexpectedTouchViewController *)self progressLabel];
    v130 = [NSLayoutConstraint constraintWithItem:v128 attribute:6 relatedBy:0 toItem:v129 attribute:6 multiplier:1.0 constant:20.0];
    [v127 addConstraint:v130];

    v131 = [(UnexpectedTouchViewController *)self progressView];
    v132 = [(UnexpectedTouchViewController *)self progressLabel];
    v133 = [(UnexpectedTouchViewController *)self progressBar];
    v134 = [NSLayoutConstraint constraintWithItem:v132 attribute:3 relatedBy:0 toItem:v133 attribute:4 multiplier:1.0 constant:16.0];
    [v131 addConstraint:v134];

    v135 = [(UnexpectedTouchViewController *)self progressView];
    v136 = [(UnexpectedTouchViewController *)self doNotDisturbLabel];
    v137 = [(UnexpectedTouchViewController *)self progressView];
    v138 = [NSLayoutConstraint constraintWithItem:v136 attribute:3 relatedBy:0 toItem:v137 attribute:3 multiplier:1.0 constant:15.0];
    [v135 addConstraint:v138];

    v139 = [(UnexpectedTouchViewController *)self progressView];
    v140 = [(UnexpectedTouchViewController *)self progressView];
    v141 = [(UnexpectedTouchViewController *)self progressBar];
    v142 = [NSLayoutConstraint constraintWithItem:v140 attribute:10 relatedBy:0 toItem:v141 attribute:10 multiplier:1.0 constant:-21.0];
    [v139 addConstraint:v142];

    v143 = [(UnexpectedTouchViewController *)self progressView];
    v144 = [(UnexpectedTouchViewController *)self progressView];
    v145 = [(UnexpectedTouchViewController *)self progressLabel];
    v146 = [NSLayoutConstraint constraintWithItem:v144 attribute:4 relatedBy:0 toItem:v145 attribute:4 multiplier:1.0 constant:16.0];
    [v143 addConstraint:v146];

    v147 = [(UnexpectedTouchViewController *)self view];
    v148 = [(UnexpectedTouchViewController *)self progressView];
    v149 = [(UnexpectedTouchViewController *)self view];
    v150 = [NSLayoutConstraint constraintWithItem:v148 attribute:9 relatedBy:0 toItem:v149 attribute:9 multiplier:1.0 constant:0.0];
    [v147 addConstraint:v150];

    v75 = [(UnexpectedTouchViewController *)self view];
    v76 = [(UnexpectedTouchViewController *)self progressView];
    v77 = [(UnexpectedTouchViewController *)self view];
    v78 = 1.0;
    v79 = 0.0;
    v80 = v76;
    v81 = 10;
    v82 = v77;
    v83 = 10;
  }

  v151 = [NSLayoutConstraint constraintWithItem:v80 attribute:v81 relatedBy:0 toItem:v82 attribute:v83 multiplier:v78 constant:v79];
  [v75 addConstraint:v151];
}

- (void)updateTimer:(id)a3
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
  v3 = [(UnexpectedTouchViewController *)self progressTimer];

  if (v3)
  {
    v4 = [(UnexpectedTouchViewController *)self progressTimer];
    [v4 invalidate];

    [(UnexpectedTouchViewController *)self setProgressTimer:0];
  }

  v5 = [(UnexpectedTouchViewController *)self inputs];
  v6 = [v5 connectedToPowerRequired];

  if (v6)
  {
    v7 = [(UnexpectedTouchViewController *)self device];
    [v7 setBatteryMonitoringEnabled:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self];
  }
}

- (void)endTest
{
  [(UnexpectedTouchViewController *)self cleanUp];
  v3 = [(UnexpectedTouchViewController *)self hitPixels];
  v4 = [v3 count];

  v5 = [(UnexpectedTouchViewController *)self result];
  v6 = v5;
  if (v4)
  {
    v7 = &off_1000087B8;
  }

  else
  {
    v7 = &off_1000087D0;
  }

  [v5 setStatusCode:v7];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v43 = self;
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
        v45 = [(UnexpectedTouchViewController *)v43 allResults];
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
        v16 = [(UnexpectedTouchViewController *)v43 hitPixelTimes];
        v17 = [v16 objectAtIndexedSubscript:v8];
        v57[4] = v17;
        v56[5] = @"touchEvent";
        [(UnexpectedTouchViewController *)v43 touchEvents];
        v19 = v18 = v8;
        v20 = [v19 objectAtIndexedSubscript:v18];
        v57[5] = v20;
        v21 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:6];
        [v45 addObject:v21];

        v8 = v18 + 1;
        v9 = v9 + 1;
      }

      while (v44 != v9);
      v44 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v44);
  }

  v22 = [(UnexpectedTouchViewController *)v43 view];
  v23 = [v22 window];
  v24 = [v23 windowScene];
  v25 = [v24 screen];
  [v25 bounds];
  v27 = v26;
  v29 = v28;

  v54[0] = @"displayResX";
  v49 = [NSNumber numberWithDouble:v27];
  v55[0] = v49;
  v54[1] = @"displayResY";
  v47 = [NSNumber numberWithDouble:v29];
  v55[1] = v47;
  v54[2] = @"touchesFound";
  v30 = [(UnexpectedTouchViewController *)v43 allResults];
  v55[2] = v30;
  v54[3] = @"isCharging";
  v31 = [NSNumber alloc];
  v32 = [(UnexpectedTouchViewController *)v43 multiTouchHelper];
  v33 = [v31 initWithBool:{objc_msgSend(v32, "isBatteryCharging")}];
  v55[3] = v33;
  v54[4] = @"isPluggedIntoPower";
  v34 = [NSNumber alloc];
  v35 = [(UnexpectedTouchViewController *)v43 multiTouchHelper];
  v36 = [v34 initWithBool:{objc_msgSend(v35, "isPowerConnected")}];
  v55[4] = v36;
  v54[5] = @"temperatureData";
  v37 = [(UnexpectedTouchViewController *)v43 multiTouchHelper];
  v38 = [v37 temperatureData];
  v55[5] = v38;
  v39 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:6];
  v40 = [(UnexpectedTouchViewController *)v43 result];
  [v40 setData:v39];

  [(UnexpectedTouchViewController *)v43 setFinished:1];
}

- (void)testFailedToExecuteWithStatusCode:(id)a3
{
  v4 = a3;
  [(UnexpectedTouchViewController *)self cleanUp];
  v5 = [(UnexpectedTouchViewController *)self result];
  [v5 setStatusCode:v4];

  v6 = [(UnexpectedTouchViewController *)self result];
  [v6 setData:&__NSDictionary0__struct];

  [(UnexpectedTouchViewController *)self setFinished:1];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(UnexpectedTouchViewController *)self view];
  v7 = [v5 anyObject];

  v8 = [(UnexpectedTouchViewController *)self view];
  [v7 locationInView:v8];
  v10 = [v6 hitTest:0 withEvent:?];

  v9 = v10;
  if (v10)
  {
    [(UnexpectedTouchViewController *)self highlightView:v10 touchEvent:@"touchesBegan"];
    v9 = v10;
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(UnexpectedTouchViewController *)self view];
  v7 = [v5 anyObject];

  v8 = [(UnexpectedTouchViewController *)self view];
  [v7 locationInView:v8];
  v10 = [v6 hitTest:0 withEvent:?];

  v9 = v10;
  if (v10)
  {
    [(UnexpectedTouchViewController *)self highlightView:v10 touchEvent:@"touchesMoved"];
    v9 = v10;
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(UnexpectedTouchViewController *)self view];
  v7 = [v5 anyObject];

  v8 = [(UnexpectedTouchViewController *)self view];
  [v7 locationInView:v8];
  v10 = [v6 hitTest:0 withEvent:?];

  v9 = v10;
  if (v10)
  {
    [(UnexpectedTouchViewController *)self highlightView:v10 touchEvent:@"touchesEnded"];
    v9 = v10;
  }
}

- (void)highlightView:(id)a3 touchEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UnexpectedTouchViewController *)self inputs];
  v9 = [v8 touchColor];
  [v6 setBackgroundColor:v9];

  v10 = [(UnexpectedTouchViewController *)self hitPixels];
  [v10 addObject:v6];

  v11 = +[NSDate date];
  [v11 timeIntervalSince1970];
  v13 = [NSNumber numberWithUnsignedLongLong:(v12 * 1000.0)];

  v14 = [(UnexpectedTouchViewController *)self hitPixelTimes];
  [v14 addObject:v13];

  v15 = [(UnexpectedTouchViewController *)self touchEvents];
  [v15 addObject:v7];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100004440;
  v17[3] = &unk_1000082E0;
  v18 = v6;
  v19 = self;
  v16 = v6;
  [UIView animateWithDuration:131074 delay:v17 options:0 animations:2.0 completion:0.5];
}

- (void)batteryStateChanged
{
  v3 = [(UnexpectedTouchViewController *)self device];
  if ([v3 batteryState] == 1)
  {
  }

  else
  {
    v4 = [(UnexpectedTouchViewController *)self device];
    v5 = [v4 batteryState];

    if (v5)
    {
      return;
    }
  }

  [(UnexpectedTouchViewController *)self testFailedToExecuteWithStatusCode:&off_1000087A0];
}

- (id)localizedTimeRemaining:(int)a3
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
  v8 = [qword_10000D030 stringFromTimeInterval:(a3 * 60.0)];
  v9 = [NSString stringWithFormat:v7, v8];

  return v9;
}

@end
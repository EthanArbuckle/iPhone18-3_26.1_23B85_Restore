@interface MSDViewServiceRootViewController
- (MSDViewServiceRootViewController)initWithScene:(id)a3;
- (void)doCancelInstall;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)operationFailed:(id)a3;
- (void)presentConfirmationAlert;
- (void)quit;
- (void)respondToGesture:(id)a3;
- (void)respondToShowErrorGesture:(id)a3;
- (void)restartTimerWithTimeInterval:(double)a3;
- (void)showErrorTimeout:(id)a3;
- (void)timeout:(id)a3;
- (void)updateErrorState;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MSDViewServiceRootViewController

- (MSDViewServiceRootViewController)initWithScene:(id)a3
{
  v4 = a3;
  v5 = sub_1000015E4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[MSDViewServiceRootViewController initWithScene:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s called", buf, 0xCu);
  }

  v14.receiver = self;
  v14.super_class = MSDViewServiceRootViewController;
  v6 = [(MSDViewServiceRootViewController *)&v14 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"IN_PROGRESS" value:&stru_10000C608 table:0];
    displayString = v6->_displayString;
    v6->_displayString = v8;

    v10 = sub_1000015E4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v6->_displayString;
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Display string: %@", buf, 0xCu);
    }

    [(MSDViewServiceRootViewController *)v6 setObserverAdded:0];
    v12 = [v4 configurationContext];
    [(MSDViewServiceRootViewController *)v6 setConfigurationContext:v12];

    [(MSDViewServiceRootViewController *)v6 setScene:v4];
  }

  return v6;
}

- (void)loadView
{
  v3 = sub_1000015E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v223 = "[MSDViewServiceRootViewController loadView]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s called", buf, 0xCu);
  }

  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [[UIView alloc] initWithFrame:{v6, v8, v10, v12}];
  v14 = +[UIColor clearColor];
  [v13 setBackgroundColor:v14];

  [v13 setOpaque:0];
  [(MSDViewServiceRootViewController *)self setView:v13];
  v15 = [UIBlurEffect effectWithStyle:2];
  v16 = [[UIVisualEffectView alloc] initWithEffect:v15];
  v17 = [(MSDViewServiceRootViewController *)self view];
  [v17 bounds];
  [v16 setFrame:?];

  [v16 setAutoresizingMask:18];
  v219 = v15;
  v217 = [UIVibrancyEffect effectForBlurEffect:v15];
  v18 = [[UIVisualEffectView alloc] initWithEffect:v217];
  [v13 bounds];
  [v18 setFrame:?];
  v19 = [v16 contentView];
  v216 = v18;
  [v19 addSubview:v18];

  v20 = [(MSDViewServiceRootViewController *)self view];
  v218 = v16;
  [v20 insertSubview:v16 atIndex:0];

  v21 = [(MSDViewServiceRootViewController *)self configurationContext];
  v22 = [v21 userInfo];

  v23 = +[NSBundle mainBundle];
  v24 = [v22 objectForKeyedSubscript:@"DisplayString"];
  v25 = [v23 localizedStringForKey:v24 value:&stru_10000C608 table:0];
  [(MSDViewServiceRootViewController *)self setDisplayString:v25];

  v215 = v22;
  v214 = [v22 objectForKeyedSubscript:@"CancelButton"];
  v26 = [v214 BOOLValue];
  v27 = +[MSDViewServiceModel sharedInstance];
  [v27 setShowCancelButton:v26];

  v28 = sub_1000015E4();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [(MSDViewServiceRootViewController *)self displayString];
    *buf = 138543362;
    v223 = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "StoreDemoViewService DisplayString = %{public}@", buf, 0xCu);
  }

  v30 = objc_alloc_init(UILabel);
  [(MSDViewServiceRootViewController *)self setMainLabel:v30];

  v31 = objc_alloc_init(NSMutableParagraphStyle);
  v32 = +[UIDevice currentDevice];
  v33 = [v32 userInterfaceIdiom];

  v34 = 25.0;
  if (v33 == 1)
  {
    v34 = 40.0;
    v35 = 40.0;
  }

  else
  {
    v35 = 30.0;
  }

  if (v33 == 1)
  {
    v36 = 50.0;
  }

  else
  {
    v36 = 30.0;
  }

  if (v33 == 1)
  {
    v37 = 15.0;
  }

  else
  {
    v37 = 5.0;
  }

  v38 = [UIFont fontWithName:@"HelveticaNeue-Thin" size:v34];
  v39 = [(MSDViewServiceRootViewController *)self mainLabel];
  [v39 setFont:v38];

  [v31 setMinimumLineHeight:v35];
  [v31 setMaximumLineHeight:v36];
  [v31 setLineSpacing:v37];

  v40 = [(MSDViewServiceRootViewController *)self mainLabel];
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

  v41 = [(MSDViewServiceRootViewController *)self mainLabel];
  [v41 setNumberOfLines:0];

  v42 = [(MSDViewServiceRootViewController *)self mainLabel];
  [v42 setAdjustsFontSizeToFitWidth:1];

  v43 = +[UIColor clearColor];
  v44 = [(MSDViewServiceRootViewController *)self mainLabel];
  [v44 setBackgroundColor:v43];

  v45 = +[UIColor whiteColor];
  v46 = [(MSDViewServiceRootViewController *)self mainLabel];
  [v46 setTextColor:v45];

  [v31 setAlignment:1];
  v220 = NSParagraphStyleAttributeName;
  v221 = v31;
  v212 = [NSDictionary dictionaryWithObjects:&v221 forKeys:&v220 count:1];
  v47 = [NSAttributedString alloc];
  v48 = [(MSDViewServiceRootViewController *)self displayString];
  v49 = [v47 initWithString:v48 attributes:v212];
  v50 = [(MSDViewServiceRootViewController *)self mainLabel];
  [v50 setAttributedText:v49];

  v51 = [(MSDViewServiceRootViewController *)self mainLabel];
  [v51 sizeToFit];

  v52 = [(MSDViewServiceRootViewController *)self view];
  v53 = [(MSDViewServiceRootViewController *)self mainLabel];
  [v52 addSubview:v53];

  v54 = objc_alloc_init(UIButton);
  [(MSDViewServiceRootViewController *)self setCancelButton:v54];

  v55 = [(MSDViewServiceRootViewController *)self cancelButton];
  [v55 setHidden:1];

  v56 = [(MSDViewServiceRootViewController *)self cancelButton];
  [v56 setTranslatesAutoresizingMaskIntoConstraints:0];

  v57 = [(MSDViewServiceRootViewController *)self cancelButton];
  v58 = +[NSBundle mainBundle];
  v59 = [v58 localizedStringForKey:@"STOP_INSTALL" value:&stru_10000C608 table:0];
  [v57 setTitle:v59 forState:0];

  v60 = [(MSDViewServiceRootViewController *)self cancelButton];
  [v60 sizeToFit];

  v61 = [(MSDViewServiceRootViewController *)self cancelButton];
  [v61 addTarget:self action:"presentConfirmationAlert" forControlEvents:64];

  v62 = [(MSDViewServiceRootViewController *)self view];
  v63 = [(MSDViewServiceRootViewController *)self cancelButton];
  [v62 addSubview:v63];

  v64 = objc_alloc_init(UILabel);
  [(MSDViewServiceRootViewController *)self setStatusLabel:v64];

  v65 = [(MSDViewServiceRootViewController *)self statusLabel];
  [v65 setTranslatesAutoresizingMaskIntoConstraints:0];

  v66 = +[NSBundle mainBundle];
  v67 = [v66 localizedStringForKey:@"ITEM_FAILED" value:&stru_10000C608 table:0];
  v68 = [(MSDViewServiceRootViewController *)self statusLabel];
  [v68 setText:v67];

  v69 = [(MSDViewServiceRootViewController *)self statusLabel];
  [v69 setLineBreakMode:0];

  v70 = [(MSDViewServiceRootViewController *)self statusLabel];
  [v70 setNumberOfLines:0];

  v71 = [(MSDViewServiceRootViewController *)self statusLabel];
  v72 = +[UIColor whiteColor];
  [v71 setTextColor:v72];

  v73 = [(MSDViewServiceRootViewController *)self statusLabel];
  v74 = [UIFont systemFontOfSize:14.0];
  [v73 setFont:v74];

  v75 = [(MSDViewServiceRootViewController *)self statusLabel];
  [v75 setTextAlignment:2];

  v76 = [(MSDViewServiceRootViewController *)self statusLabel];
  [v76 sizeToFit];

  v77 = [(MSDViewServiceRootViewController *)self view];
  v78 = [(MSDViewServiceRootViewController *)self statusLabel];
  [v77 addSubview:v78];

  v79 = objc_alloc_init(UITextView);
  [(MSDViewServiceRootViewController *)self setErrorView:v79];

  v80 = [(MSDViewServiceRootViewController *)self errorView];
  [v80 setHidden:1];

  v81 = [(MSDViewServiceRootViewController *)self errorView];
  [v81 setUserInteractionEnabled:0];

  v82 = [(MSDViewServiceRootViewController *)self errorView];
  [v82 setTranslatesAutoresizingMaskIntoConstraints:0];

  v83 = [(MSDViewServiceRootViewController *)self errorView];
  v84 = +[UIColor whiteColor];
  [v83 setTextColor:v84];

  v85 = [(MSDViewServiceRootViewController *)self errorView];
  v86 = [UIFont systemFontOfSize:14.0];
  [v85 setFont:v86];

  v87 = +[UIColor clearColor];
  v88 = [(MSDViewServiceRootViewController *)self errorView];
  [v88 setBackgroundColor:v87];

  v89 = [(MSDViewServiceRootViewController *)self errorView];
  [v89 setTextAlignment:0];

  v90 = [(MSDViewServiceRootViewController *)self view];
  v91 = [(MSDViewServiceRootViewController *)self errorView];
  [v90 addSubview:v91];

  v92 = [[UIProgressView alloc] initWithProgressViewStyle:0];
  [(MSDViewServiceRootViewController *)self setProgressBar:v92];

  v93 = [(MSDViewServiceRootViewController *)self progressBar];
  [v93 setTranslatesAutoresizingMaskIntoConstraints:0];

  v94 = [(MSDViewServiceRootViewController *)self progressBar];
  [v94 setHidden:1];

  v95 = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:0.5];
  v96 = [(MSDViewServiceRootViewController *)self progressBar];
  [v96 setTrackTintColor:v95];

  v97 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
  v98 = [(MSDViewServiceRootViewController *)self progressBar];
  [v98 setTintColor:v97];

  v99 = [(MSDViewServiceRootViewController *)self view];
  v100 = [(MSDViewServiceRootViewController *)self progressBar];
  [v99 addSubview:v100];

  v101 = [(MSDViewServiceRootViewController *)self view];
  v102 = [(MSDViewServiceRootViewController *)self mainLabel];
  v103 = [(MSDViewServiceRootViewController *)self view];
  v104 = [NSLayoutConstraint constraintWithItem:v102 attribute:9 relatedBy:0 toItem:v103 attribute:9 multiplier:1.0 constant:0.0];
  [v101 addConstraint:v104];

  v105 = [(MSDViewServiceRootViewController *)self view];
  v106 = [(MSDViewServiceRootViewController *)self mainLabel];
  v107 = [(MSDViewServiceRootViewController *)self view];
  v108 = [NSLayoutConstraint constraintWithItem:v106 attribute:10 relatedBy:0 toItem:v107 attribute:10 multiplier:1.0 constant:0.0];
  [v105 addConstraint:v108];

  v109 = +[UIDevice currentDevice];
  v110 = [v109 userInterfaceIdiom];

  if (v110 == 1)
  {
    v111 = 50.0;
  }

  else
  {
    v111 = 10.0;
  }

  v112 = [(MSDViewServiceRootViewController *)self view];
  v113 = [(MSDViewServiceRootViewController *)self mainLabel];
  v114 = [(MSDViewServiceRootViewController *)self view];
  v115 = [NSLayoutConstraint constraintWithItem:v113 attribute:5 relatedBy:0 toItem:v114 attribute:5 multiplier:1.0 constant:v111];
  [v112 addConstraint:v115];

  v116 = [(MSDViewServiceRootViewController *)self view];
  v117 = [(MSDViewServiceRootViewController *)self mainLabel];
  v118 = [(MSDViewServiceRootViewController *)self view];
  v119 = [NSLayoutConstraint constraintWithItem:v117 attribute:5 relatedBy:0 toItem:v118 attribute:5 multiplier:1.0 constant:v111];
  [v116 addConstraint:v119];

  v120 = [(MSDViewServiceRootViewController *)self view];
  v121 = [(MSDViewServiceRootViewController *)self cancelButton];
  v122 = [(MSDViewServiceRootViewController *)self view];
  v123 = [NSLayoutConstraint constraintWithItem:v121 attribute:9 relatedBy:0 toItem:v122 attribute:9 multiplier:1.0 constant:0.0];
  [v120 addConstraint:v123];

  v124 = [(MSDViewServiceRootViewController *)self view];
  v125 = [(MSDViewServiceRootViewController *)self cancelButton];
  v126 = [(MSDViewServiceRootViewController *)self view];
  v127 = [NSLayoutConstraint constraintWithItem:v125 attribute:10 relatedBy:0 toItem:v126 attribute:10 multiplier:1.7 constant:0.0];
  [v124 addConstraint:v127];

  v128 = [(MSDViewServiceRootViewController *)self view];
  v129 = [(MSDViewServiceRootViewController *)self errorView];
  v130 = [v129 centerXAnchor];
  v131 = [(MSDViewServiceRootViewController *)self view];
  v132 = [v131 safeAreaLayoutGuide];
  v133 = [v132 centerXAnchor];
  v134 = [v130 constraintEqualToAnchor:v133];
  [v128 addConstraint:v134];

  v135 = [(MSDViewServiceRootViewController *)self view];
  v136 = [(MSDViewServiceRootViewController *)self errorView];
  v137 = [v136 centerYAnchor];
  v138 = [(MSDViewServiceRootViewController *)self view];
  v139 = [v138 safeAreaLayoutGuide];
  v140 = [v139 centerYAnchor];
  v141 = [v137 constraintEqualToAnchor:v140];
  [v135 addConstraint:v141];

  v142 = [(MSDViewServiceRootViewController *)self view];
  v143 = [(MSDViewServiceRootViewController *)self errorView];
  v144 = [v143 leadingAnchor];
  v145 = [(MSDViewServiceRootViewController *)self view];
  v146 = [v145 safeAreaLayoutGuide];
  v147 = [v146 leadingAnchor];
  v148 = [v144 constraintEqualToAnchor:v147 constant:20.0];
  [v142 addConstraint:v148];

  v149 = [(MSDViewServiceRootViewController *)self view];
  v150 = [(MSDViewServiceRootViewController *)self errorView];
  v151 = [v150 trailingAnchor];
  v152 = [(MSDViewServiceRootViewController *)self view];
  v153 = [v152 safeAreaLayoutGuide];
  v154 = [v153 trailingAnchor];
  v155 = [v151 constraintEqualToAnchor:v154 constant:-20.0];
  [v149 addConstraint:v155];

  v156 = [(MSDViewServiceRootViewController *)self view];
  v157 = [(MSDViewServiceRootViewController *)self errorView];
  v158 = [v157 topAnchor];
  v159 = [(MSDViewServiceRootViewController *)self view];
  v160 = [v159 safeAreaLayoutGuide];
  v161 = [v160 topAnchor];
  v162 = [v158 constraintEqualToAnchor:v161 constant:20.0];
  [v156 addConstraint:v162];

  v163 = [(MSDViewServiceRootViewController *)self view];
  v164 = [(MSDViewServiceRootViewController *)self errorView];
  v165 = [v164 bottomAnchor];
  v166 = [(MSDViewServiceRootViewController *)self view];
  v167 = [v166 safeAreaLayoutGuide];
  v168 = [v167 bottomAnchor];
  v169 = [v165 constraintEqualToAnchor:v168 constant:-20.0];
  [v163 addConstraint:v169];

  v170 = [(MSDViewServiceRootViewController *)self view];
  v171 = [(MSDViewServiceRootViewController *)self statusLabel];
  v172 = [v171 trailingAnchor];
  v173 = [(MSDViewServiceRootViewController *)self view];
  v174 = [v173 safeAreaLayoutGuide];
  v175 = [v174 trailingAnchor];
  v176 = [v172 constraintEqualToAnchor:v175 constant:-20.0];
  [v170 addConstraint:v176];

  v177 = [(MSDViewServiceRootViewController *)self view];
  v178 = [(MSDViewServiceRootViewController *)self statusLabel];
  v179 = [v178 leadingAnchor];
  v180 = [(MSDViewServiceRootViewController *)self view];
  v181 = [v180 safeAreaLayoutGuide];
  v182 = [v181 leadingAnchor];
  v183 = [v179 constraintEqualToAnchor:v182 constant:20.0];
  [v177 addConstraint:v183];

  v184 = [(MSDViewServiceRootViewController *)self view];
  v185 = [(MSDViewServiceRootViewController *)self statusLabel];
  v186 = [v185 bottomAnchor];
  v187 = [(MSDViewServiceRootViewController *)self view];
  v188 = [v187 safeAreaLayoutGuide];
  v189 = [v188 bottomAnchor];
  v190 = [v186 constraintEqualToAnchor:v189 constant:-20.0];
  [v184 addConstraint:v190];

  v191 = [(MSDViewServiceRootViewController *)self view];
  v192 = [(MSDViewServiceRootViewController *)self progressBar];
  v193 = [v192 centerXAnchor];
  v194 = [(MSDViewServiceRootViewController *)self view];
  v195 = [v194 safeAreaLayoutGuide];
  v196 = [v195 centerXAnchor];
  v197 = [v193 constraintEqualToAnchor:v196];
  [v191 addConstraint:v197];

  v198 = [(MSDViewServiceRootViewController *)self view];
  v199 = [(MSDViewServiceRootViewController *)self progressBar];
  v200 = [v199 widthAnchor];
  v201 = [(MSDViewServiceRootViewController *)self view];
  v202 = [v201 safeAreaLayoutGuide];
  v203 = [v202 widthAnchor];
  v204 = [v200 constraintEqualToAnchor:v203];
  [v198 addConstraint:v204];

  v205 = [(MSDViewServiceRootViewController *)self view];
  v206 = [(MSDViewServiceRootViewController *)self progressBar];
  v207 = [v206 bottomAnchor];
  v208 = [(MSDViewServiceRootViewController *)self view];
  v209 = [v208 safeAreaLayoutGuide];
  v210 = [v209 bottomAnchor];
  v211 = [v207 constraintEqualToAnchor:v210];
  [v205 addConstraint:v211];

  [(MSDViewServiceRootViewController *)self updateErrorState];
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = MSDViewServiceRootViewController;
  [(MSDViewServiceRootViewController *)&v28 viewDidLoad];
  v3 = sub_1000015E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v30 = "[MSDViewServiceRootViewController viewDidLoad]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s called", buf, 0xCu);
  }

  v4 = objc_alloc_init(UIView);
  v5 = [(MSDViewServiceRootViewController *)self view];
  [v5 size];
  v7 = v6 * 0.5;
  v8 = [(MSDViewServiceRootViewController *)self view];
  [v8 size];
  v10 = v9 * 0.5;
  v11 = [(MSDViewServiceRootViewController *)self view];
  [v11 size];
  v13 = v12 * 0.5;

  [v4 setFrame:{v7, 0.0, v10, v13}];
  v14 = [(MSDViewServiceRootViewController *)self view];
  [v14 addSubview:v4];

  v15 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"respondToGesture:"];
  [v15 setDelegate:self];
  [v15 setMinimumPressDuration:5.0];
  [v15 setNumberOfTouchesRequired:3];
  [v4 addGestureRecognizer:v15];
  if (os_variant_has_internal_content())
  {
    v16 = objc_alloc_init(UIView);

    v17 = [(MSDViewServiceRootViewController *)self view];
    [v17 size];
    v19 = v18 * 0.5;
    v20 = [(MSDViewServiceRootViewController *)self view];
    [v20 size];
    v22 = v21 * 0.5;
    v23 = [(MSDViewServiceRootViewController *)self view];
    [v23 size];
    v25 = v24 * 0.5;

    [v16 setFrame:{0.0, v19, v22, v25}];
    v26 = [(MSDViewServiceRootViewController *)self view];
    [v26 addSubview:v16];

    v27 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"respondToShowErrorGesture:"];
    [v27 setDelegate:self];
    [v27 setMinimumPressDuration:5.0];
    [v27 setNumberOfTouchesRequired:3];
    [v16 addGestureRecognizer:v27];
    v15 = v27;
    v4 = v16;
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = sub_1000015E4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "StoreDemoViewService disappeared.", v9, 2u);
  }

  if ([(MSDViewServiceRootViewController *)self observerAdded])
  {
    v5 = +[MSDViewServiceModel sharedInstance];
    [v5 removeObserver:self forKeyPath:@"errorMessage"];

    v6 = +[MSDViewServiceModel sharedInstance];
    [v6 removeObserver:self forKeyPath:@"errorToReport"];

    v7 = +[MSDViewServiceModel sharedInstance];
    [v7 removeObserver:self forKeyPath:@"progress"];

    v8 = +[MSDViewServiceModel sharedInstance];
    [v8 removeObserver:self forKeyPath:@"disableIdleTimer"];

    [(MSDViewServiceRootViewController *)self setObserverAdded:0];
  }
}

- (void)doCancelInstall
{
  v3 = +[MSDKManagedDevice sharedInstance];
  [v3 cancelOperation];

  [(MSDViewServiceRootViewController *)self quit];
}

- (void)timeout:(id)a3
{
  [(MSDViewServiceRootViewController *)self dismissViewControllerAnimated:1 completion:0];
  v4 = [(MSDViewServiceRootViewController *)self cancelButton];
  [v4 setHidden:1];
}

- (void)showErrorTimeout:(id)a3
{
  v4 = [(MSDViewServiceRootViewController *)self errorView];
  [v4 setHidden:1];

  v5 = [(MSDViewServiceRootViewController *)self mainLabel];
  [v5 setHidden:0];

  v6 = +[MSDViewServiceModel sharedInstance];
  v7 = [v6 errorMessage];

  if (v7)
  {
    v8 = [(MSDViewServiceRootViewController *)self statusLabel];
    [v8 setHidden:0];
  }
}

- (void)respondToGesture:(id)a3
{
  v7 = a3;
  if ([v7 state] == 3 || objc_msgSend(v7, "state") == 4)
  {
    v4 = +[MSDViewServiceModel sharedInstance];
    if ([v4 showCancelButton])
    {
      v5 = [(MSDViewServiceRootViewController *)self cancelButton];
      v6 = [v5 isHidden];

      if (!v6)
      {
        goto LABEL_7;
      }

      [(MSDViewServiceRootViewController *)self restartTimerWithTimeInterval:10.0];
      v4 = [(MSDViewServiceRootViewController *)self cancelButton];
      [v4 setHidden:0];
    }
  }

LABEL_7:
}

- (void)restartTimerWithTimeInterval:(double)a3
{
  v5 = [(MSDViewServiceRootViewController *)self timer];

  if (v5)
  {
    v6 = [(MSDViewServiceRootViewController *)self timer];
    [v6 invalidate];

    [(MSDViewServiceRootViewController *)self setTimer:0];
  }

  v7 = [NSTimer scheduledTimerWithTimeInterval:self target:"timeout:" selector:0 userInfo:0 repeats:a3];
  [(MSDViewServiceRootViewController *)self setTimer:v7];
}

- (void)presentConfirmationAlert
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"CONFIRMATION_ALERT_TITLE" value:&stru_10000C608 table:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"CONFIRMATION_ALERT_MESSAGE" value:&stru_10000C608 table:0];
  v7 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"STOP" value:&stru_10000C608 table:0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000042DC;
  v15[3] = &unk_10000C460;
  v15[4] = self;
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:v15];
  [v7 addAction:v10];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_10000C608 table:0];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000042E4;
  v14[3] = &unk_10000C460;
  v14[4] = self;
  v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:v14];
  [v7 addAction:v13];

  [(MSDViewServiceRootViewController *)self presentViewController:v7 animated:1 completion:0];
  [(MSDViewServiceRootViewController *)self restartTimerWithTimeInterval:30.0];
}

- (void)respondToShowErrorGesture:(id)a3
{
  v13 = a3;
  if ([v13 state] == 3 || objc_msgSend(v13, "state") == 4)
  {
    v4 = [(MSDViewServiceRootViewController *)self errorView];
    v5 = [v4 isHidden];

    if (v5)
    {
      v6 = [(MSDViewServiceRootViewController *)self showErrorTimer];

      if (v6)
      {
        v7 = [(MSDViewServiceRootViewController *)self showErrorTimer];
        [v7 invalidate];

        [(MSDViewServiceRootViewController *)self setShowErrorTimer:0];
      }

      v8 = [NSTimer scheduledTimerWithTimeInterval:self target:"showErrorTimeout:" selector:0 userInfo:0 repeats:30.0];
      [(MSDViewServiceRootViewController *)self setShowErrorTimer:v8];

      v9 = [(MSDViewServiceRootViewController *)self errorView];
      [v9 setHidden:0];

      v10 = [(MSDViewServiceRootViewController *)self mainLabel];
      [v10 setHidden:1];

      v11 = [(MSDViewServiceRootViewController *)self cancelButton];
      [v11 setHidden:1];

      v12 = [(MSDViewServiceRootViewController *)self statusLabel];
      [v12 setHidden:1];
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_initWeak(&location, self);
  if ([v9 isEqualToString:@"errorToReport"])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000479C;
    block[3] = &unk_10000C488;
    objc_copyWeak(&v21, &location);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v21);
  }

  else if ([v9 isEqualToString:@"errorMessage"])
  {
    v12 = sub_1000015E4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received an error message change: %{public}@", buf, 0xCu);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100004898;
    v18[3] = &unk_10000C488;
    objc_copyWeak(&v19, &location);
    dispatch_async(&_dispatch_main_q, v18);
    objc_destroyWeak(&v19);
  }

  else if ([v9 isEqualToString:@"progress"])
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000048D8;
    v16[3] = &unk_10000C488;
    objc_copyWeak(&v17, &location);
    dispatch_async(&_dispatch_main_q, v16);
    objc_destroyWeak(&v17);
  }

  else if ([v9 isEqualToString:@"disableIdleTimer"])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000049A4;
    v14[3] = &unk_10000C488;
    objc_copyWeak(&v15, &location);
    dispatch_async(&_dispatch_main_q, v14);
    objc_destroyWeak(&v15);
  }

  else
  {
    v13 = sub_1000015E4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100005A78(v13);
    }
  }

  objc_destroyWeak(&location);
}

- (void)updateErrorState
{
  v3 = +[MSDViewServiceModel sharedInstance];
  v7 = [v3 errorMessage];

  v4 = [(MSDViewServiceRootViewController *)self statusLabel];
  if (v7)
  {
    v5 = v7;
  }

  else
  {
    v5 = @"<no error>";
  }

  [v4 setHidden:v7 == 0];

  v6 = [(MSDViewServiceRootViewController *)self errorView];
  [v6 setText:v5];
}

- (void)operationFailed:(id)a3
{
  v4 = a3;
  v5 = +[MSDKManagedDevice sharedInstance];
  v6 = [v5 typeOfDemoDevice];

  if (v6 == 5)
  {
    [(MSDViewServiceRootViewController *)self quit];
  }

  else
  {
    if ([v4 code] == 3727741088)
    {
      v7 = @"CONNECTION_FAILED";
    }

    else
    {
      v7 = @"GENERIC_FAILUARE";
    }

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Demo Setup" value:&stru_10000C608 table:0];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:v7 value:&stru_10000C608 table:0];

    v12 = [UIAlertController alertControllerWithTitle:v9 message:v11 preferredStyle:1];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"OK" value:&stru_10000C608 table:0];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100004CEC;
    v16[3] = &unk_10000C460;
    v16[4] = self;
    v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:v16];
    [v12 addAction:v15];

    [(MSDViewServiceRootViewController *)self presentViewController:v12 animated:1 completion:0];
  }
}

- (void)quit
{
  v2 = [(MSDViewServiceRootViewController *)self scene];
  [v2 deactivate];
}

@end
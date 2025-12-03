@interface PHSOSAlertRestingView
- (PHSOSAlertRestingView)initWithFrame:(CGRect)frame;
- (double)sliderDistanceFromBottom;
- (double)titleDistanceFromTop;
- (void)commonInit;
- (void)didFinishSlideForSlidingButton:(id)button;
- (void)setHasMedicalIDSlider:(BOOL)slider;
- (void)setUpConstraints;
- (void)setViewModel:(id)model;
- (void)showMessagesButtonPressed;
@end

@implementation PHSOSAlertRestingView

- (PHSOSAlertRestingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PHSOSAlertRestingView;
  v3 = [(PHSOSAlertRestingView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHSOSAlertRestingView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = objc_alloc_init(UILabel);
  [(PHSOSAlertRestingView *)self setTitleLabel:v3];

  titleLabel = [(PHSOSAlertRestingView *)self titleLabel];
  [titleLabel setTextAlignment:1];

  titleLabel2 = [(PHSOSAlertRestingView *)self titleLabel];
  [titleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [UIFont boldSystemFontOfSize:34.0];
  titleLabel3 = [(PHSOSAlertRestingView *)self titleLabel];
  [titleLabel3 setFont:v6];

  v8 = +[UIColor whiteColor];
  titleLabel4 = [(PHSOSAlertRestingView *)self titleLabel];
  [titleLabel4 setTextColor:v8];

  titleLabel5 = [(PHSOSAlertRestingView *)self titleLabel];
  [titleLabel5 setNumberOfLines:0];

  titleLabel6 = [(PHSOSAlertRestingView *)self titleLabel];
  [(PHSOSAlertRestingView *)self addSubview:titleLabel6];

  v12 = objc_alloc_init(UILabel);
  [(PHSOSAlertRestingView *)self setFirstSubtitleLabel:v12];

  firstSubtitleLabel = [(PHSOSAlertRestingView *)self firstSubtitleLabel];
  [firstSubtitleLabel setTextAlignment:1];

  firstSubtitleLabel2 = [(PHSOSAlertRestingView *)self firstSubtitleLabel];
  [firstSubtitleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  firstSubtitleLabel3 = [(PHSOSAlertRestingView *)self firstSubtitleLabel];
  [firstSubtitleLabel3 setNumberOfLines:0];

  v16 = [[NSMutableAttributedString alloc] initWithString:&stru_100361FD0];
  v66 = objc_alloc_init(NSTextAttachment);
  v17 = [UIFont systemFontOfSize:20.0 weight:UIFontWeightSemibold];
  v67 = [UIImageSymbolConfiguration configurationWithFont:v17];

  v18 = [UIImage systemImageNamed:@"exclamationmark.circle.fill" withConfiguration:v67];
  v19 = +[UIColor systemRedColor];
  v20 = [v18 imageWithTintColor:v19];
  [v66 setImage:v20];

  v65 = [NSAttributedString attributedStringWithAttachment:v66];
  [v16 appendAttributedString:v65];
  v75 = NSFontAttributeName;
  v21 = [UIFont systemFontOfSize:20.0 weight:UIFontWeightSemibold];
  v76 = v21;
  v64 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];

  v63 = [[NSAttributedString alloc] initWithString:@" " attributes:v64];
  [v16 appendAttributedString:v63];
  v73[0] = NSFontAttributeName;
  v22 = [UIFont systemFontOfSize:20.0 weight:UIFontWeightSemibold];
  v74[0] = v22;
  v73[1] = NSForegroundColorAttributeName;
  v23 = +[UIColor systemRedColor];
  v74[1] = v23;
  v62 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:2];

  v24 = [NSAttributedString alloc];
  v25 = +[NSBundle mainBundle];
  v26 = [v25 localizedStringForKey:@"SOS_ALERT_RESTING_VIEW_FIRST_SUBTITLE" value:&stru_100361FD0 table:@"Localizable-Stewie"];
  v61 = [v24 initWithString:v26 attributes:v62];

  [v16 appendAttributedString:v61];
  firstSubtitleLabel4 = [(PHSOSAlertRestingView *)self firstSubtitleLabel];
  [firstSubtitleLabel4 setAttributedText:v16];

  firstSubtitleLabel5 = [(PHSOSAlertRestingView *)self firstSubtitleLabel];
  [(PHSOSAlertRestingView *)self addSubview:firstSubtitleLabel5];

  v29 = objc_alloc_init(UILabel);
  [(PHSOSAlertRestingView *)self setSecondSubtitleLabel:v29];

  secondSubtitleLabel = [(PHSOSAlertRestingView *)self secondSubtitleLabel];
  [secondSubtitleLabel setTextAlignment:1];

  secondSubtitleLabel2 = [(PHSOSAlertRestingView *)self secondSubtitleLabel];
  [secondSubtitleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v32 = [UIFont systemFontOfSize:20.0];
  secondSubtitleLabel3 = [(PHSOSAlertRestingView *)self secondSubtitleLabel];
  [secondSubtitleLabel3 setFont:v32];

  v34 = +[UIColor whiteColor];
  secondSubtitleLabel4 = [(PHSOSAlertRestingView *)self secondSubtitleLabel];
  [secondSubtitleLabel4 setTextColor:v34];

  secondSubtitleLabel5 = [(PHSOSAlertRestingView *)self secondSubtitleLabel];
  [secondSubtitleLabel5 setNumberOfLines:0];

  v37 = +[NSBundle mainBundle];
  v38 = [v37 localizedStringForKey:@"SOS_ALERT_RESTING_VIEW_SECOND_SUBTITLE" value:&stru_100361FD0 table:@"Localizable-Stewie"];
  secondSubtitleLabel6 = [(PHSOSAlertRestingView *)self secondSubtitleLabel];
  [secondSubtitleLabel6 setText:v38];

  secondSubtitleLabel7 = [(PHSOSAlertRestingView *)self secondSubtitleLabel];
  [(PHSOSAlertRestingView *)self addSubview:secondSubtitleLabel7];

  v41 = +[NSBundle mainBundle];
  v42 = [v41 localizedStringForKey:@"SOS_ALERT_RESTING_VIEW_BUTTON_LABEL" value:&stru_100361FD0 table:@"Localizable-Stewie"];

  v71[0] = NSFontAttributeName;
  v43 = [UIFont systemFontOfSize:20.0 weight:UIFontWeightSemibold];
  v71[1] = NSForegroundColorAttributeName;
  v72[0] = v43;
  v44 = +[UIColor systemGreenColor];
  v72[1] = v44;
  v45 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];

  v46 = [[NSAttributedString alloc] initWithString:v42 attributes:v45];
  objc_initWeak(&location, self);
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_10010E604;
  v68[3] = &unk_100357018;
  objc_copyWeak(&v69, &location);
  v47 = [UIAction actionWithTitle:v42 image:0 identifier:0 handler:v68];
  v48 = [UIButton buttonWithType:0 primaryAction:v47];
  [(PHSOSAlertRestingView *)self setShowMessagesButton:v48];

  showMessagesButton = [(PHSOSAlertRestingView *)self showMessagesButton];
  [showMessagesButton setTranslatesAutoresizingMaskIntoConstraints:0];

  showMessagesButton2 = [(PHSOSAlertRestingView *)self showMessagesButton];
  layer = [showMessagesButton2 layer];
  [layer setCornerRadius:36.0];

  v52 = +[UIColor systemGreenColor];
  v53 = [v52 colorWithAlphaComponent:0.150000006];
  showMessagesButton3 = [(PHSOSAlertRestingView *)self showMessagesButton];
  [showMessagesButton3 setBackgroundColor:v53];

  showMessagesButton4 = [(PHSOSAlertRestingView *)self showMessagesButton];
  [showMessagesButton4 setAttributedTitle:v46 forState:0];

  showMessagesButton5 = [(PHSOSAlertRestingView *)self showMessagesButton];
  [(PHSOSAlertRestingView *)self addSubview:showMessagesButton5];

  v57 = [[PHSlidingButton alloc] initWithSlidingButtonType:9 appearanceType:0 callState:2];
  [(PHSOSAlertRestingView *)self setMedicalIDSlidingButton:v57];

  medicalIDSlidingButton = [(PHSOSAlertRestingView *)self medicalIDSlidingButton];
  [medicalIDSlidingButton setTranslatesAutoresizingMaskIntoConstraints:0];

  medicalIDSlidingButton2 = [(PHSOSAlertRestingView *)self medicalIDSlidingButton];
  [medicalIDSlidingButton2 setDelegate:self];

  medicalIDSlidingButton3 = [(PHSOSAlertRestingView *)self medicalIDSlidingButton];
  [(PHSOSAlertRestingView *)self addSubview:medicalIDSlidingButton3];

  [(PHSOSAlertRestingView *)self setUpConstraints];
  [(PHSOSAlertRestingView *)self setHasMedicalIDSlider:0];

  objc_destroyWeak(&v69);
  objc_destroyWeak(&location);
}

- (void)setUpConstraints
{
  v76 = objc_alloc_init(NSMutableArray);
  titleLabel = [(PHSOSAlertRestingView *)self titleLabel];
  leadingAnchor = [titleLabel leadingAnchor];
  leadingAnchor2 = [(PHSOSAlertRestingView *)self leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v76 addObject:v6];

  titleLabel2 = [(PHSOSAlertRestingView *)self titleLabel];
  trailingAnchor = [titleLabel2 trailingAnchor];
  trailingAnchor2 = [(PHSOSAlertRestingView *)self trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v76 addObject:v10];

  titleLabel3 = [(PHSOSAlertRestingView *)self titleLabel];
  topAnchor = [titleLabel3 topAnchor];
  safeAreaLayoutGuide = [(PHSOSAlertRestingView *)self safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  [(PHSOSAlertRestingView *)self titleDistanceFromTop];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  [v76 addObject:v15];

  titleLabel4 = [(PHSOSAlertRestingView *)self titleLabel];
  centerXAnchor = [titleLabel4 centerXAnchor];
  centerXAnchor2 = [(PHSOSAlertRestingView *)self centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v76 addObject:v19];

  firstSubtitleLabel = [(PHSOSAlertRestingView *)self firstSubtitleLabel];
  leadingAnchor3 = [firstSubtitleLabel leadingAnchor];
  leadingAnchor4 = [(PHSOSAlertRestingView *)self leadingAnchor];
  v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v76 addObject:v23];

  firstSubtitleLabel2 = [(PHSOSAlertRestingView *)self firstSubtitleLabel];
  trailingAnchor3 = [firstSubtitleLabel2 trailingAnchor];
  trailingAnchor4 = [(PHSOSAlertRestingView *)self trailingAnchor];
  v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v76 addObject:v27];

  firstSubtitleLabel3 = [(PHSOSAlertRestingView *)self firstSubtitleLabel];
  bottomAnchor = [firstSubtitleLabel3 bottomAnchor];
  secondSubtitleLabel = [(PHSOSAlertRestingView *)self secondSubtitleLabel];
  topAnchor3 = [secondSubtitleLabel topAnchor];
  v32 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  [v76 addObject:v32];

  firstSubtitleLabel4 = [(PHSOSAlertRestingView *)self firstSubtitleLabel];
  centerXAnchor3 = [firstSubtitleLabel4 centerXAnchor];
  centerXAnchor4 = [(PHSOSAlertRestingView *)self centerXAnchor];
  v36 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v76 addObject:v36];

  secondSubtitleLabel2 = [(PHSOSAlertRestingView *)self secondSubtitleLabel];
  leadingAnchor5 = [secondSubtitleLabel2 leadingAnchor];
  leadingAnchor6 = [(PHSOSAlertRestingView *)self leadingAnchor];
  v40 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v76 addObject:v40];

  secondSubtitleLabel3 = [(PHSOSAlertRestingView *)self secondSubtitleLabel];
  trailingAnchor5 = [secondSubtitleLabel3 trailingAnchor];
  trailingAnchor6 = [(PHSOSAlertRestingView *)self trailingAnchor];
  v44 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v76 addObject:v44];

  secondSubtitleLabel4 = [(PHSOSAlertRestingView *)self secondSubtitleLabel];
  bottomAnchor2 = [secondSubtitleLabel4 bottomAnchor];
  centerYAnchor = [(PHSOSAlertRestingView *)self centerYAnchor];
  v48 = [bottomAnchor2 constraintEqualToAnchor:centerYAnchor constant:-8.0];
  [v76 addObject:v48];

  secondSubtitleLabel5 = [(PHSOSAlertRestingView *)self secondSubtitleLabel];
  centerXAnchor5 = [secondSubtitleLabel5 centerXAnchor];
  centerXAnchor6 = [(PHSOSAlertRestingView *)self centerXAnchor];
  v52 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  [v76 addObject:v52];

  showMessagesButton = [(PHSOSAlertRestingView *)self showMessagesButton];
  widthAnchor = [showMessagesButton widthAnchor];
  v55 = [widthAnchor constraintEqualToConstant:300.0];
  [v76 addObject:v55];

  showMessagesButton2 = [(PHSOSAlertRestingView *)self showMessagesButton];
  heightAnchor = [showMessagesButton2 heightAnchor];
  v58 = [heightAnchor constraintEqualToConstant:72.0];
  [v76 addObject:v58];

  showMessagesButton3 = [(PHSOSAlertRestingView *)self showMessagesButton];
  centerXAnchor7 = [showMessagesButton3 centerXAnchor];
  centerXAnchor8 = [(PHSOSAlertRestingView *)self centerXAnchor];
  v62 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  [v76 addObject:v62];

  showMessagesButton4 = [(PHSOSAlertRestingView *)self showMessagesButton];
  topAnchor4 = [showMessagesButton4 topAnchor];
  centerYAnchor2 = [(PHSOSAlertRestingView *)self centerYAnchor];
  v66 = [topAnchor4 constraintEqualToAnchor:centerYAnchor2 constant:8.0];
  [v76 addObject:v66];

  medicalIDSlidingButton = [(PHSOSAlertRestingView *)self medicalIDSlidingButton];
  centerXAnchor9 = [medicalIDSlidingButton centerXAnchor];
  centerXAnchor10 = [(PHSOSAlertRestingView *)self centerXAnchor];
  v70 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
  [v76 addObject:v70];

  medicalIDSlidingButton2 = [(PHSOSAlertRestingView *)self medicalIDSlidingButton];
  bottomAnchor3 = [medicalIDSlidingButton2 bottomAnchor];
  bottomAnchor4 = [(PHSOSAlertRestingView *)self bottomAnchor];
  [(PHSOSAlertRestingView *)self sliderDistanceFromBottom];
  v75 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-v74];
  [v76 addObject:v75];

  [NSLayoutConstraint activateConstraints:v76];
}

- (double)titleDistanceFromTop
{
  v2 = 27.0;
  if ((+[PHUIConfiguration shouldUseSOSTightSpacing]& 1) == 0)
  {
    v3 = +[UIScreen mainScreen];
    [v3 bounds];
    v2 = v4 * 0.0599999987;
  }

  return v2;
}

- (double)sliderDistanceFromBottom
{
  v2 = 30.0;
  if ((+[PHUIConfiguration shouldUseSOSTightSpacing]& 1) == 0)
  {
    v3 = +[UIScreen mainScreen];
    [v3 bounds];
    v2 = v4 * 0.0500000007;
  }

  return v2;
}

- (void)setHasMedicalIDSlider:(BOOL)slider
{
  sliderCopy = slider;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = sliderCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHSOSAlertRestingView,showing medical ID slider,%d", v7, 8u);
  }

  self->_hasMedicalIDSlider = sliderCopy;
  medicalIDSlidingButton = [(PHSOSAlertRestingView *)self medicalIDSlidingButton];
  [medicalIDSlidingButton setAlpha:sliderCopy];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  objc_storeStrong(&self->_viewModel, model);
  viewModel = self->_viewModel;
  if (viewModel)
  {
    titleString = [(PHSOSAlertRestingViewModel *)viewModel titleString];
    titleLabel = [(PHSOSAlertRestingView *)self titleLabel];
    [titleLabel setText:titleString];
  }
}

- (void)showMessagesButtonPressed
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PHSOSAlertRestingView,user pressed show messages button", v6, 2u);
  }

  completionHandler = [(PHSOSAlertRestingView *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(PHSOSAlertRestingView *)self completionHandler];
    completionHandler2[2](completionHandler2, 0);
  }
}

- (void)didFinishSlideForSlidingButton:(id)button
{
  buttonCopy = button;
  medicalIDSlidingButton = [(PHSOSAlertRestingView *)self medicalIDSlidingButton];

  if (medicalIDSlidingButton == buttonCopy)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHSOSAlertRestingView,user slid medical ID slider", v9, 2u);
    }

    completionHandler = [(PHSOSAlertRestingView *)self completionHandler];

    if (completionHandler)
    {
      completionHandler2 = [(PHSOSAlertRestingView *)self completionHandler];
      completionHandler2[2](completionHandler2, 1);
    }
  }
}

@end
@interface PHSOSRestingView
- (PHSOSRestingView)initWithFrame:(CGRect)frame;
- (double)medicalIdSliderDistanceFromBottom;
- (double)sosSliderDistanceFromMedicalId;
- (double)titleDistanceFromTop;
- (void)commonInit;
- (void)didFinishSlideForSlidingButton:(id)button;
- (void)setHasMedicalIDSlider:(BOOL)slider;
- (void)setTitleAndSubtitle;
- (void)setUpConstraints;
- (void)setViewModel:(id)model;
- (void)setdateOfSOSEvent:(id)event;
@end

@implementation PHSOSRestingView

- (PHSOSRestingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PHSOSRestingView;
  v3 = [(PHSOSRestingView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHSOSRestingView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = objc_alloc_init(UILabel);
  [(PHSOSRestingView *)self setTitleLabel:v3];

  titleLabel = [(PHSOSRestingView *)self titleLabel];
  [titleLabel setTextAlignment:1];

  titleLabel2 = [(PHSOSRestingView *)self titleLabel];
  [titleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [UIFont boldSystemFontOfSize:34.0];
  titleLabel3 = [(PHSOSRestingView *)self titleLabel];
  [titleLabel3 setFont:v6];

  v8 = +[UIColor whiteColor];
  titleLabel4 = [(PHSOSRestingView *)self titleLabel];
  [titleLabel4 setTextColor:v8];

  titleLabel5 = [(PHSOSRestingView *)self titleLabel];
  [titleLabel5 setNumberOfLines:0];

  titleLabel6 = [(PHSOSRestingView *)self titleLabel];
  [(PHSOSRestingView *)self addSubview:titleLabel6];

  v12 = objc_alloc_init(UILabel);
  [(PHSOSRestingView *)self setSubtitleLabel:v12];

  subtitleLabel = [(PHSOSRestingView *)self subtitleLabel];
  [subtitleLabel setTextAlignment:1];

  subtitleLabel2 = [(PHSOSRestingView *)self subtitleLabel];
  [subtitleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [UIFont systemFontOfSize:22.0];
  subtitleLabel3 = [(PHSOSRestingView *)self subtitleLabel];
  [subtitleLabel3 setFont:v15];

  v17 = +[UIColor whiteColor];
  subtitleLabel4 = [(PHSOSRestingView *)self subtitleLabel];
  [subtitleLabel4 setTextColor:v17];

  subtitleLabel5 = [(PHSOSRestingView *)self subtitleLabel];
  [subtitleLabel5 setNumberOfLines:0];

  subtitleLabel6 = [(PHSOSRestingView *)self subtitleLabel];
  [(PHSOSRestingView *)self addSubview:subtitleLabel6];

  v21 = [[PHSlidingButton alloc] initWithSlidingButtonType:9 appearanceType:0 callState:2];
  [(PHSOSRestingView *)self setMedicalIDSlidingButton:v21];

  medicalIDSlidingButton = [(PHSOSRestingView *)self medicalIDSlidingButton];
  [medicalIDSlidingButton setTranslatesAutoresizingMaskIntoConstraints:0];

  medicalIDSlidingButton2 = [(PHSOSRestingView *)self medicalIDSlidingButton];
  [medicalIDSlidingButton2 setDelegate:self];

  medicalIDSlidingButton3 = [(PHSOSRestingView *)self medicalIDSlidingButton];
  [(PHSOSRestingView *)self addSubview:medicalIDSlidingButton3];

  v25 = [[PHSlidingButton alloc] initWithSlidingButtonType:7 appearanceType:0 callState:2];
  [(PHSOSRestingView *)self setSosCallSlidingButton:v25];

  sosCallSlidingButton = [(PHSOSRestingView *)self sosCallSlidingButton];
  [sosCallSlidingButton setTranslatesAutoresizingMaskIntoConstraints:0];

  sosCallSlidingButton2 = [(PHSOSRestingView *)self sosCallSlidingButton];
  [sosCallSlidingButton2 setDelegate:self];

  sosCallSlidingButton3 = [(PHSOSRestingView *)self sosCallSlidingButton];
  [(PHSOSRestingView *)self addSubview:sosCallSlidingButton3];

  [(PHSOSRestingView *)self setUpConstraints];

  [(PHSOSRestingView *)self setHasMedicalIDSlider:0];
}

- (void)setUpConstraints
{
  v56 = objc_alloc_init(NSMutableArray);
  titleLabel = [(PHSOSRestingView *)self titleLabel];
  leadingAnchor = [titleLabel leadingAnchor];
  leadingAnchor2 = [(PHSOSRestingView *)self leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v56 addObject:v6];

  titleLabel2 = [(PHSOSRestingView *)self titleLabel];
  trailingAnchor = [titleLabel2 trailingAnchor];
  trailingAnchor2 = [(PHSOSRestingView *)self trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v56 addObject:v10];

  titleLabel3 = [(PHSOSRestingView *)self titleLabel];
  topAnchor = [titleLabel3 topAnchor];
  safeAreaLayoutGuide = [(PHSOSRestingView *)self safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  [(PHSOSRestingView *)self titleDistanceFromTop];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  [v56 addObject:v15];

  titleLabel4 = [(PHSOSRestingView *)self titleLabel];
  centerXAnchor = [titleLabel4 centerXAnchor];
  centerXAnchor2 = [(PHSOSRestingView *)self centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v56 addObject:v19];

  subtitleLabel = [(PHSOSRestingView *)self subtitleLabel];
  leadingAnchor3 = [subtitleLabel leadingAnchor];
  leadingAnchor4 = [(PHSOSRestingView *)self leadingAnchor];
  v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v56 addObject:v23];

  subtitleLabel2 = [(PHSOSRestingView *)self subtitleLabel];
  trailingAnchor3 = [subtitleLabel2 trailingAnchor];
  trailingAnchor4 = [(PHSOSRestingView *)self trailingAnchor];
  v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v56 addObject:v27];

  subtitleLabel3 = [(PHSOSRestingView *)self subtitleLabel];
  topAnchor3 = [subtitleLabel3 topAnchor];
  titleLabel5 = [(PHSOSRestingView *)self titleLabel];
  bottomAnchor = [titleLabel5 bottomAnchor];
  v32 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:22.0];
  [v56 addObject:v32];

  subtitleLabel4 = [(PHSOSRestingView *)self subtitleLabel];
  centerXAnchor3 = [subtitleLabel4 centerXAnchor];
  centerXAnchor4 = [(PHSOSRestingView *)self centerXAnchor];
  v36 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v56 addObject:v36];

  sosCallSlidingButton = [(PHSOSRestingView *)self sosCallSlidingButton];
  bottomAnchor2 = [sosCallSlidingButton bottomAnchor];
  medicalIDSlidingButton = [(PHSOSRestingView *)self medicalIDSlidingButton];
  topAnchor4 = [medicalIDSlidingButton topAnchor];
  [(PHSOSRestingView *)self sosSliderDistanceFromMedicalId];
  v42 = [bottomAnchor2 constraintEqualToAnchor:topAnchor4 constant:-v41];
  [v56 addObject:v42];

  sosCallSlidingButton2 = [(PHSOSRestingView *)self sosCallSlidingButton];
  centerXAnchor5 = [sosCallSlidingButton2 centerXAnchor];
  centerXAnchor6 = [(PHSOSRestingView *)self centerXAnchor];
  v46 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  [v56 addObject:v46];

  medicalIDSlidingButton2 = [(PHSOSRestingView *)self medicalIDSlidingButton];
  bottomAnchor3 = [medicalIDSlidingButton2 bottomAnchor];
  bottomAnchor4 = [(PHSOSRestingView *)self bottomAnchor];
  [(PHSOSRestingView *)self medicalIdSliderDistanceFromBottom];
  v51 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-v50];
  [v56 addObject:v51];

  medicalIDSlidingButton3 = [(PHSOSRestingView *)self medicalIDSlidingButton];
  centerXAnchor7 = [medicalIDSlidingButton3 centerXAnchor];
  centerXAnchor8 = [(PHSOSRestingView *)self centerXAnchor];
  v55 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  [v56 addObject:v55];

  [NSLayoutConstraint activateConstraints:v56];
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

- (double)sosSliderDistanceFromMedicalId
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

- (double)medicalIdSliderDistanceFromBottom
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

- (void)setdateOfSOSEvent:(id)event
{
  eventCopy = event;
  objc_storeStrong(&self->_dateOfSOSEvent, event);
  viewModel = self->_viewModel;
  if (viewModel)
  {
    [(PHSOSRestingViewModel *)viewModel setDateOfSOSEvent:eventCopy];
    [(PHSOSRestingView *)self setTitleAndSubtitle];
  }
}

- (void)setHasMedicalIDSlider:(BOOL)slider
{
  sliderCopy = slider;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = sliderCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHSOSRestingView,showing medical ID slider,%d", v7, 8u);
  }

  self->_hasMedicalIDSlider = sliderCopy;
  medicalIDSlidingButton = [(PHSOSRestingView *)self medicalIDSlidingButton];
  [medicalIDSlidingButton setAlpha:sliderCopy];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  objc_storeStrong(&self->_viewModel, model);
  if (self->_dateOfSOSEvent)
  {
    [(PHSOSRestingViewModel *)self->_viewModel setDateOfSOSEvent:?];
  }

  [(PHSOSRestingView *)self setTitleAndSubtitle];
}

- (void)setTitleAndSubtitle
{
  viewModel = self->_viewModel;
  if (viewModel)
  {
    titleString = [(PHSOSRestingViewModel *)viewModel titleString];
    titleLabel = [(PHSOSRestingView *)self titleLabel];
    [titleLabel setText:titleString];

    subtitleString = [(PHSOSRestingViewModel *)self->_viewModel subtitleString];
    subtitleLabel = [(PHSOSRestingView *)self subtitleLabel];
    [subtitleLabel setText:subtitleString];
  }
}

- (void)didFinishSlideForSlidingButton:(id)button
{
  buttonCopy = button;
  sosCallSlidingButton = [(PHSOSRestingView *)self sosCallSlidingButton];

  if (sosCallSlidingButton == buttonCopy)
  {
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PHSOSRestingView,user slid SOS slider", buf, 2u);
    }

    completionHandler = [(PHSOSRestingView *)self completionHandler];

    if (completionHandler)
    {
      v9 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    medicalIDSlidingButton = [(PHSOSRestingView *)self medicalIDSlidingButton];

    if (medicalIDSlidingButton == buttonCopy)
    {
      v7 = sub_100004F84();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHSOSRestingView,user slid medical ID slider", v13, 2u);
      }

      completionHandler2 = [(PHSOSRestingView *)self completionHandler];

      if (completionHandler2)
      {
        v9 = 1;
LABEL_11:
        completionHandler3 = [(PHSOSRestingView *)self completionHandler];
        completionHandler3[2](completionHandler3, v9);
      }
    }
  }
}

@end
@interface PHSOSRestingView
- (PHSOSRestingView)initWithFrame:(CGRect)a3;
- (double)medicalIdSliderDistanceFromBottom;
- (double)sosSliderDistanceFromMedicalId;
- (double)titleDistanceFromTop;
- (void)commonInit;
- (void)didFinishSlideForSlidingButton:(id)a3;
- (void)setHasMedicalIDSlider:(BOOL)a3;
- (void)setTitleAndSubtitle;
- (void)setUpConstraints;
- (void)setViewModel:(id)a3;
- (void)setdateOfSOSEvent:(id)a3;
@end

@implementation PHSOSRestingView

- (PHSOSRestingView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PHSOSRestingView;
  v3 = [(PHSOSRestingView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v4 = [(PHSOSRestingView *)self titleLabel];
  [v4 setTextAlignment:1];

  v5 = [(PHSOSRestingView *)self titleLabel];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [UIFont boldSystemFontOfSize:34.0];
  v7 = [(PHSOSRestingView *)self titleLabel];
  [v7 setFont:v6];

  v8 = +[UIColor whiteColor];
  v9 = [(PHSOSRestingView *)self titleLabel];
  [v9 setTextColor:v8];

  v10 = [(PHSOSRestingView *)self titleLabel];
  [v10 setNumberOfLines:0];

  v11 = [(PHSOSRestingView *)self titleLabel];
  [(PHSOSRestingView *)self addSubview:v11];

  v12 = objc_alloc_init(UILabel);
  [(PHSOSRestingView *)self setSubtitleLabel:v12];

  v13 = [(PHSOSRestingView *)self subtitleLabel];
  [v13 setTextAlignment:1];

  v14 = [(PHSOSRestingView *)self subtitleLabel];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [UIFont systemFontOfSize:22.0];
  v16 = [(PHSOSRestingView *)self subtitleLabel];
  [v16 setFont:v15];

  v17 = +[UIColor whiteColor];
  v18 = [(PHSOSRestingView *)self subtitleLabel];
  [v18 setTextColor:v17];

  v19 = [(PHSOSRestingView *)self subtitleLabel];
  [v19 setNumberOfLines:0];

  v20 = [(PHSOSRestingView *)self subtitleLabel];
  [(PHSOSRestingView *)self addSubview:v20];

  v21 = [[PHSlidingButton alloc] initWithSlidingButtonType:9 appearanceType:0 callState:2];
  [(PHSOSRestingView *)self setMedicalIDSlidingButton:v21];

  v22 = [(PHSOSRestingView *)self medicalIDSlidingButton];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = [(PHSOSRestingView *)self medicalIDSlidingButton];
  [v23 setDelegate:self];

  v24 = [(PHSOSRestingView *)self medicalIDSlidingButton];
  [(PHSOSRestingView *)self addSubview:v24];

  v25 = [[PHSlidingButton alloc] initWithSlidingButtonType:7 appearanceType:0 callState:2];
  [(PHSOSRestingView *)self setSosCallSlidingButton:v25];

  v26 = [(PHSOSRestingView *)self sosCallSlidingButton];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = [(PHSOSRestingView *)self sosCallSlidingButton];
  [v27 setDelegate:self];

  v28 = [(PHSOSRestingView *)self sosCallSlidingButton];
  [(PHSOSRestingView *)self addSubview:v28];

  [(PHSOSRestingView *)self setUpConstraints];

  [(PHSOSRestingView *)self setHasMedicalIDSlider:0];
}

- (void)setUpConstraints
{
  v56 = objc_alloc_init(NSMutableArray);
  v3 = [(PHSOSRestingView *)self titleLabel];
  v4 = [v3 leadingAnchor];
  v5 = [(PHSOSRestingView *)self leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [v56 addObject:v6];

  v7 = [(PHSOSRestingView *)self titleLabel];
  v8 = [v7 trailingAnchor];
  v9 = [(PHSOSRestingView *)self trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v56 addObject:v10];

  v11 = [(PHSOSRestingView *)self titleLabel];
  v12 = [v11 topAnchor];
  v13 = [(PHSOSRestingView *)self safeAreaLayoutGuide];
  v14 = [v13 topAnchor];
  [(PHSOSRestingView *)self titleDistanceFromTop];
  v15 = [v12 constraintEqualToAnchor:v14 constant:?];
  [v56 addObject:v15];

  v16 = [(PHSOSRestingView *)self titleLabel];
  v17 = [v16 centerXAnchor];
  v18 = [(PHSOSRestingView *)self centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  [v56 addObject:v19];

  v20 = [(PHSOSRestingView *)self subtitleLabel];
  v21 = [v20 leadingAnchor];
  v22 = [(PHSOSRestingView *)self leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  [v56 addObject:v23];

  v24 = [(PHSOSRestingView *)self subtitleLabel];
  v25 = [v24 trailingAnchor];
  v26 = [(PHSOSRestingView *)self trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  [v56 addObject:v27];

  v28 = [(PHSOSRestingView *)self subtitleLabel];
  v29 = [v28 topAnchor];
  v30 = [(PHSOSRestingView *)self titleLabel];
  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31 constant:22.0];
  [v56 addObject:v32];

  v33 = [(PHSOSRestingView *)self subtitleLabel];
  v34 = [v33 centerXAnchor];
  v35 = [(PHSOSRestingView *)self centerXAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  [v56 addObject:v36];

  v37 = [(PHSOSRestingView *)self sosCallSlidingButton];
  v38 = [v37 bottomAnchor];
  v39 = [(PHSOSRestingView *)self medicalIDSlidingButton];
  v40 = [v39 topAnchor];
  [(PHSOSRestingView *)self sosSliderDistanceFromMedicalId];
  v42 = [v38 constraintEqualToAnchor:v40 constant:-v41];
  [v56 addObject:v42];

  v43 = [(PHSOSRestingView *)self sosCallSlidingButton];
  v44 = [v43 centerXAnchor];
  v45 = [(PHSOSRestingView *)self centerXAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  [v56 addObject:v46];

  v47 = [(PHSOSRestingView *)self medicalIDSlidingButton];
  v48 = [v47 bottomAnchor];
  v49 = [(PHSOSRestingView *)self bottomAnchor];
  [(PHSOSRestingView *)self medicalIdSliderDistanceFromBottom];
  v51 = [v48 constraintEqualToAnchor:v49 constant:-v50];
  [v56 addObject:v51];

  v52 = [(PHSOSRestingView *)self medicalIDSlidingButton];
  v53 = [v52 centerXAnchor];
  v54 = [(PHSOSRestingView *)self centerXAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];
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

- (void)setdateOfSOSEvent:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_dateOfSOSEvent, a3);
  viewModel = self->_viewModel;
  if (viewModel)
  {
    [(PHSOSRestingViewModel *)viewModel setDateOfSOSEvent:v6];
    [(PHSOSRestingView *)self setTitleAndSubtitle];
  }
}

- (void)setHasMedicalIDSlider:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHSOSRestingView,showing medical ID slider,%d", v7, 8u);
  }

  self->_hasMedicalIDSlider = v3;
  v6 = [(PHSOSRestingView *)self medicalIDSlidingButton];
  [v6 setAlpha:v3];
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_viewModel, a3);
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
    v4 = [(PHSOSRestingViewModel *)viewModel titleString];
    v5 = [(PHSOSRestingView *)self titleLabel];
    [v5 setText:v4];

    v7 = [(PHSOSRestingViewModel *)self->_viewModel subtitleString];
    v6 = [(PHSOSRestingView *)self subtitleLabel];
    [v6 setText:v7];
  }
}

- (void)didFinishSlideForSlidingButton:(id)a3
{
  v4 = a3;
  v5 = [(PHSOSRestingView *)self sosCallSlidingButton];

  if (v5 == v4)
  {
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PHSOSRestingView,user slid SOS slider", buf, 2u);
    }

    v11 = [(PHSOSRestingView *)self completionHandler];

    if (v11)
    {
      v9 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v6 = [(PHSOSRestingView *)self medicalIDSlidingButton];

    if (v6 == v4)
    {
      v7 = sub_100004F84();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PHSOSRestingView,user slid medical ID slider", v13, 2u);
      }

      v8 = [(PHSOSRestingView *)self completionHandler];

      if (v8)
      {
        v9 = 1;
LABEL_11:
        v12 = [(PHSOSRestingView *)self completionHandler];
        v12[2](v12, v9);
      }
    }
  }
}

@end
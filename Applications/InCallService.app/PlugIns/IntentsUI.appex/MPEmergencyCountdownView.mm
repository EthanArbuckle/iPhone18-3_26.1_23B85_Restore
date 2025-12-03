@interface MPEmergencyCountdownView
- (MPEmergencyCountdownView)init;
- (MPEmergencyCountdownView)initWithCoder:(id)coder;
- (MPEmergencyCountdownView)initWithDiameter:(float)diameter;
- (MPEmergencyCountdownView)initWithFrame:(CGRect)frame;
- (void)cancel;
- (void)commonInit;
- (void)setupConstraints;
- (void)startCountdownFromNumber:(unint64_t)number withTimeInterval:(float)interval completion:(id)completion;
@end

@implementation MPEmergencyCountdownView

- (MPEmergencyCountdownView)initWithDiameter:(float)diameter
{
  v7.receiver = self;
  v7.super_class = MPEmergencyCountdownView;
  v4 = [(MPEmergencyCountdownView *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v5 = v4;
  if (v4)
  {
    v4->_circleDiameter = diameter;
    [(MPEmergencyCountdownView *)v4 commonInit];
  }

  return v5;
}

- (MPEmergencyCountdownView)init
{
  [(MPEmergencyCountdownView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (MPEmergencyCountdownView)initWithFrame:(CGRect)frame
{
  [(MPEmergencyCountdownView *)self doesNotRecognizeSelector:a2, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  return 0;
}

- (MPEmergencyCountdownView)initWithCoder:(id)coder
{
  [(MPEmergencyCountdownView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)commonInit
{
  v3 = [UIView alloc];
  [(MPEmergencyCountdownView *)self circleDiameter];
  v5 = v4;
  [(MPEmergencyCountdownView *)self circleDiameter];
  v7 = [v3 initWithFrame:{0.0, 0.0, v5, v6}];
  circleView = self->_circleView;
  self->_circleView = v7;

  [(MPEmergencyCountdownView *)self circleDiameter];
  v10 = (v9 * 0.5);
  layer = [(UIView *)self->_circleView layer];
  [layer setCornerRadius:v10];

  v12 = +[UIColor redColor];
  [(UIView *)self->_circleView setBackgroundColor:v12];

  [(UIView *)self->_circleView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MPEmergencyCountdownView *)self addSubview:self->_circleView];
  v13 = objc_alloc_init(UILabel);
  countdownLabel = self->_countdownLabel;
  self->_countdownLabel = v13;

  [(UILabel *)self->_countdownLabel setTextAlignment:1];
  [(UILabel *)self->_countdownLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = +[UIColor whiteColor];
  [(UILabel *)self->_countdownLabel setTextColor:v15];

  v16 = [UIFont systemFontOfSize:70.0 weight:UIFontWeightSemibold];
  [(UILabel *)self->_countdownLabel setFont:v16];

  [(MPEmergencyCountdownView *)self addSubview:self->_countdownLabel];

  [(MPEmergencyCountdownView *)self setupConstraints];
}

- (void)startCountdownFromNumber:(unint64_t)number withTimeInterval:(float)interval completion:(id)completion
{
  completionCopy = completion;
  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = number;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "count down from number: %ld", &buf, 0xCu);
  }

  number = [NSString stringWithFormat:@"%ld", number];
  countdownLabel = [(MPEmergencyCountdownView *)self countdownLabel];
  [countdownLabel setText:number];

  [(MPEmergencyCountdownView *)self cancel];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x2020000000;
  numberCopy = number;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000B874;
  v14[3] = &unk_1000B1D98;
  p_buf = &buf;
  numberCopy2 = number;
  v14[4] = self;
  v12 = completionCopy;
  v15 = v12;
  v13 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v14 block:interval];
  [(MPEmergencyCountdownView *)self setCountdownTimer:v13];

  _Block_object_dispose(&buf, 8);
}

- (void)cancel
{
  countdownTimer = [(MPEmergencyCountdownView *)self countdownTimer];
  isValid = [countdownTimer isValid];

  if (isValid)
  {
    countdownTimer2 = [(MPEmergencyCountdownView *)self countdownTimer];
    [countdownTimer2 invalidate];

    [(MPEmergencyCountdownView *)self setCountdownTimer:0];
  }
}

- (void)setupConstraints
{
  countdownLabel = [(MPEmergencyCountdownView *)self countdownLabel];
  centerXAnchor = [countdownLabel centerXAnchor];
  circleView = [(MPEmergencyCountdownView *)self circleView];
  centerXAnchor2 = [circleView centerXAnchor];
  v37 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  countdownLabel2 = [(MPEmergencyCountdownView *)self countdownLabel];
  centerYAnchor = [countdownLabel2 centerYAnchor];
  circleView2 = [(MPEmergencyCountdownView *)self circleView];
  centerYAnchor2 = [circleView2 centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  circleView3 = [(MPEmergencyCountdownView *)self circleView];
  widthAnchor = [circleView3 widthAnchor];
  [(MPEmergencyCountdownView *)self circleDiameter];
  v15 = [widthAnchor constraintEqualToConstant:v14];

  circleView4 = [(MPEmergencyCountdownView *)self circleView];
  heightAnchor = [circleView4 heightAnchor];
  [(MPEmergencyCountdownView *)self circleDiameter];
  v19 = [heightAnchor constraintEqualToConstant:v18];

  topAnchor = [(MPEmergencyCountdownView *)self topAnchor];
  circleView5 = [(MPEmergencyCountdownView *)self circleView];
  topAnchor2 = [circleView5 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];

  bottomAnchor = [(MPEmergencyCountdownView *)self bottomAnchor];
  circleView6 = [(MPEmergencyCountdownView *)self circleView];
  bottomAnchor2 = [circleView6 bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  leftAnchor = [(MPEmergencyCountdownView *)self leftAnchor];
  circleView7 = [(MPEmergencyCountdownView *)self circleView];
  leftAnchor2 = [circleView7 leftAnchor];
  v31 = [leftAnchor constraintEqualToAnchor:leftAnchor2];

  rightAnchor = [(MPEmergencyCountdownView *)self rightAnchor];
  circleView8 = [(MPEmergencyCountdownView *)self circleView];
  rightAnchor2 = [circleView8 rightAnchor];
  v35 = [rightAnchor constraintEqualToAnchor:rightAnchor2];

  v38[0] = v37;
  v38[1] = v11;
  v38[2] = v15;
  v38[3] = v19;
  v38[4] = v23;
  v38[5] = v27;
  v38[6] = v31;
  v38[7] = v35;
  v36 = [NSArray arrayWithObjects:v38 count:8];
  [NSLayoutConstraint activateConstraints:v36];
}

@end
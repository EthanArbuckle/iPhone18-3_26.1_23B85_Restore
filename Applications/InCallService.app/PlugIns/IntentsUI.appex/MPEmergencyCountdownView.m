@interface MPEmergencyCountdownView
- (MPEmergencyCountdownView)init;
- (MPEmergencyCountdownView)initWithCoder:(id)a3;
- (MPEmergencyCountdownView)initWithDiameter:(float)a3;
- (MPEmergencyCountdownView)initWithFrame:(CGRect)a3;
- (void)cancel;
- (void)commonInit;
- (void)setupConstraints;
- (void)startCountdownFromNumber:(unint64_t)a3 withTimeInterval:(float)a4 completion:(id)a5;
@end

@implementation MPEmergencyCountdownView

- (MPEmergencyCountdownView)initWithDiameter:(float)a3
{
  v7.receiver = self;
  v7.super_class = MPEmergencyCountdownView;
  v4 = [(MPEmergencyCountdownView *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v5 = v4;
  if (v4)
  {
    v4->_circleDiameter = a3;
    [(MPEmergencyCountdownView *)v4 commonInit];
  }

  return v5;
}

- (MPEmergencyCountdownView)init
{
  [(MPEmergencyCountdownView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (MPEmergencyCountdownView)initWithFrame:(CGRect)a3
{
  [(MPEmergencyCountdownView *)self doesNotRecognizeSelector:a2, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  return 0;
}

- (MPEmergencyCountdownView)initWithCoder:(id)a3
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
  v11 = [(UIView *)self->_circleView layer];
  [v11 setCornerRadius:v10];

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

- (void)startCountdownFromNumber:(unint64_t)a3 withTimeInterval:(float)a4 completion:(id)a5
{
  v8 = a5;
  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "count down from number: %ld", &buf, 0xCu);
  }

  v10 = [NSString stringWithFormat:@"%ld", a3];
  v11 = [(MPEmergencyCountdownView *)self countdownLabel];
  [v11 setText:v10];

  [(MPEmergencyCountdownView *)self cancel];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v19 = 0x2020000000;
  v20 = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000B874;
  v14[3] = &unk_1000B1D98;
  p_buf = &buf;
  v17 = a3;
  v14[4] = self;
  v12 = v8;
  v15 = v12;
  v13 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v14 block:a4];
  [(MPEmergencyCountdownView *)self setCountdownTimer:v13];

  _Block_object_dispose(&buf, 8);
}

- (void)cancel
{
  v3 = [(MPEmergencyCountdownView *)self countdownTimer];
  v4 = [v3 isValid];

  if (v4)
  {
    v5 = [(MPEmergencyCountdownView *)self countdownTimer];
    [v5 invalidate];

    [(MPEmergencyCountdownView *)self setCountdownTimer:0];
  }
}

- (void)setupConstraints
{
  v3 = [(MPEmergencyCountdownView *)self countdownLabel];
  v4 = [v3 centerXAnchor];
  v5 = [(MPEmergencyCountdownView *)self circleView];
  v6 = [v5 centerXAnchor];
  v37 = [v4 constraintEqualToAnchor:v6];

  v7 = [(MPEmergencyCountdownView *)self countdownLabel];
  v8 = [v7 centerYAnchor];
  v9 = [(MPEmergencyCountdownView *)self circleView];
  v10 = [v9 centerYAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];

  v12 = [(MPEmergencyCountdownView *)self circleView];
  v13 = [v12 widthAnchor];
  [(MPEmergencyCountdownView *)self circleDiameter];
  v15 = [v13 constraintEqualToConstant:v14];

  v16 = [(MPEmergencyCountdownView *)self circleView];
  v17 = [v16 heightAnchor];
  [(MPEmergencyCountdownView *)self circleDiameter];
  v19 = [v17 constraintEqualToConstant:v18];

  v20 = [(MPEmergencyCountdownView *)self topAnchor];
  v21 = [(MPEmergencyCountdownView *)self circleView];
  v22 = [v21 topAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];

  v24 = [(MPEmergencyCountdownView *)self bottomAnchor];
  v25 = [(MPEmergencyCountdownView *)self circleView];
  v26 = [v25 bottomAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];

  v28 = [(MPEmergencyCountdownView *)self leftAnchor];
  v29 = [(MPEmergencyCountdownView *)self circleView];
  v30 = [v29 leftAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];

  v32 = [(MPEmergencyCountdownView *)self rightAnchor];
  v33 = [(MPEmergencyCountdownView *)self circleView];
  v34 = [v33 rightAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];

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
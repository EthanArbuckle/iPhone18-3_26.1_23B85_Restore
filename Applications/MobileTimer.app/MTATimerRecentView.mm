@interface MTATimerRecentView
- (MTARecentCellViewDelegate)delegate;
- (MTATimerRecentView)initWithFrame:(CGRect)frame;
- (void)didTapStartButton:(id)button;
- (void)localSetup;
- (void)setDelegate:(id)delegate duration:(id)duration;
- (void)setEditing:(BOOL)editing;
- (void)setupControlButton;
- (void)setupCountdownLabel;
- (void)setupDateFormatters;
- (void)setupDurationLabel;
- (void)setupLayoutConstraints;
- (void)updateDuration:(id)duration;
@end

@implementation MTATimerRecentView

- (void)setDelegate:(id)delegate duration:(id)duration
{
  durationCopy = duration;
  [(MTATimerRecentView *)self setDelegate:delegate];
  [(MTATimerRecentView *)self setDuration:durationCopy];

  duration = [(MTATimerRecentView *)self duration];
  [(MTATimerRecentView *)self updateDuration:duration];
}

- (MTATimerRecentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MTATimerRecentView;
  v3 = [(MTATimerRecentView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MTATimerRecentView *)v3 localSetup];
  }

  return v4;
}

- (void)localSetup
{
  [(MTATimerRecentView *)self setupCountdownLabel];
  [(MTATimerRecentView *)self setupDurationLabel];
  [(MTATimerRecentView *)self setupControlButton];
  [(MTATimerRecentView *)self setupLayoutConstraints];
  [(MTATimerRecentView *)self setupDateFormatters];
  countDownLabel = [(MTATimerRecentView *)self countDownLabel];
  [countDownLabel setText:@"5:00"];

  durationLabel = [(MTATimerRecentView *)self durationLabel];
  [durationLabel setText:@"15:00"];
}

- (void)setupCountdownLabel
{
  v3 = objc_opt_new();
  [(MTATimerRecentView *)self setCountDownLabel:v3];

  countDownLabel = [(MTATimerRecentView *)self countDownLabel];
  [countDownLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor secondaryLabelColor];
  countDownLabel2 = [(MTATimerRecentView *)self countDownLabel];
  [countDownLabel2 setTextColor:v5];

  countDownLabel3 = [(MTATimerRecentView *)self countDownLabel];
  [countDownLabel3 setAdjustsFontSizeToFitWidth:1];

  v8 = +[UIFont mtui_thinTimeFont];
  countDownLabel4 = [(MTATimerRecentView *)self countDownLabel];
  [countDownLabel4 setFont:v8];

  countDownLabel5 = [(MTATimerRecentView *)self countDownLabel];
  [(MTATimerRecentView *)self addSubview:countDownLabel5];
}

- (void)setupDurationLabel
{
  v3 = objc_opt_new();
  [(MTATimerRecentView *)self setDurationLabel:v3];

  durationLabel = [(MTATimerRecentView *)self durationLabel];
  [durationLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor secondaryLabelColor];
  durationLabel2 = [(MTATimerRecentView *)self durationLabel];
  [durationLabel2 setTextColor:v5];

  durationLabel3 = [(MTATimerRecentView *)self durationLabel];
  [durationLabel3 setNumberOfLines:0];

  durationLabel4 = [(MTATimerRecentView *)self durationLabel];
  [durationLabel4 setLineBreakMode:0];

  durationLabel5 = [(MTATimerRecentView *)self durationLabel];
  [durationLabel5 setAdjustsFontSizeToFitWidth:0];

  durationLabel6 = [(MTATimerRecentView *)self durationLabel];
  [(MTATimerRecentView *)self addSubview:durationLabel6];
}

- (void)setupControlButton
{
  v3 = [[MTATimerRecentStartButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MTATimerRecentView *)self setControlButton:v3];

  controlButton = [(MTATimerRecentView *)self controlButton];
  [controlButton setTranslatesAutoresizingMaskIntoConstraints:0];

  controlButton2 = [(MTATimerRecentView *)self controlButton];
  layer = [controlButton2 layer];
  [layer setCornerRadius:33.0];

  controlButton3 = [(MTATimerRecentView *)self controlButton];
  [controlButton3 setClipsToBounds:1];

  controlButton4 = [(MTATimerRecentView *)self controlButton];
  v9 = +[UIColor systemGreenColor];
  v10 = [UIImage mtui_imageWithSymbolName:@"play.fill" pointSize:v9 color:24.0];
  [controlButton4 setImage:v10 forState:0];

  controlButton5 = [(MTATimerRecentView *)self controlButton];
  [controlButton5 addTarget:self action:"didTapStartButton:" forControlEvents:64];

  controlButton6 = [(MTATimerRecentView *)self controlButton];
  [(MTATimerRecentView *)self addSubview:controlButton6];
}

- (void)setupDateFormatters
{
  v3 = objc_opt_new();
  [(MTATimerRecentView *)self setDurationFormatter:v3];

  durationFormatter = [(MTATimerRecentView *)self durationFormatter];
  [durationFormatter setAllowedUnits:224];

  durationFormatter2 = [(MTATimerRecentView *)self durationFormatter];
  [durationFormatter2 setUnitsStyle:2];

  v6 = objc_opt_new();
  [(MTATimerRecentView *)self setTitleFormatter:v6];

  titleFormatter = [(MTATimerRecentView *)self titleFormatter];
  [titleFormatter setAllowedUnits:224];

  titleFormatter2 = [(MTATimerRecentView *)self titleFormatter];
  [titleFormatter2 setUnitsStyle:0];
}

- (void)setupLayoutConstraints
{
  v65 = objc_opt_new();
  v3 = objc_opt_new();
  [v3 setIdentifier:@"cellContentLayoutGuide"];
  [(MTATimerRecentView *)self addLayoutGuide:v3];
  leadingAnchor = [v3 leadingAnchor];
  leadingAnchor2 = [(MTATimerRecentView *)self leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v65 addObject:v6];

  trailingAnchor = [v3 trailingAnchor];
  trailingAnchor2 = [(MTATimerRecentView *)self trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  [v65 addObject:v9];

  topAnchor = [v3 topAnchor];
  topAnchor2 = [(MTATimerRecentView *)self topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  [v65 addObject:v12];

  bottomAnchor = [v3 bottomAnchor];
  bottomAnchor2 = [(MTATimerRecentView *)self bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
  [v65 addObject:v15];

  countDownLabel = [(MTATimerRecentView *)self countDownLabel];
  leadingAnchor3 = [countDownLabel leadingAnchor];
  leadingAnchor4 = [v3 leadingAnchor];
  v19 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v65 addObject:v19];

  countDownLabel2 = [(MTATimerRecentView *)self countDownLabel];
  trailingAnchor3 = [countDownLabel2 trailingAnchor];
  controlButton = [(MTATimerRecentView *)self controlButton];
  leadingAnchor5 = [controlButton leadingAnchor];
  v24 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5 constant:16.0 * -0.5];
  [v65 addObject:v24];

  countDownLabel3 = [(MTATimerRecentView *)self countDownLabel];
  topAnchor3 = [countDownLabel3 topAnchor];
  topAnchor4 = [v3 topAnchor];
  v28 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v65 addObject:v28];

  countDownLabel4 = [(MTATimerRecentView *)self countDownLabel];
  bottomAnchor3 = [countDownLabel4 bottomAnchor];
  durationLabel = [(MTATimerRecentView *)self durationLabel];
  topAnchor5 = [durationLabel topAnchor];
  v33 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5];
  [v65 addObject:v33];

  durationLabel2 = [(MTATimerRecentView *)self durationLabel];
  leadingAnchor6 = [durationLabel2 leadingAnchor];
  leadingAnchor7 = [v3 leadingAnchor];
  v37 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  [v65 addObject:v37];

  durationLabel3 = [(MTATimerRecentView *)self durationLabel];
  trailingAnchor4 = [durationLabel3 trailingAnchor];
  countDownLabel5 = [(MTATimerRecentView *)self countDownLabel];
  trailingAnchor5 = [countDownLabel5 trailingAnchor];
  v42 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  [v65 addObject:v42];

  durationLabel4 = [(MTATimerRecentView *)self durationLabel];
  bottomAnchor4 = [durationLabel4 bottomAnchor];
  bottomAnchor5 = [v3 bottomAnchor];
  v46 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  [v65 addObject:v46];

  controlButton2 = [(MTATimerRecentView *)self controlButton];
  heightAnchor = [controlButton2 heightAnchor];
  v49 = [heightAnchor constraintEqualToConstant:66.0];
  [v65 addObject:v49];

  controlButton3 = [(MTATimerRecentView *)self controlButton];
  widthAnchor = [controlButton3 widthAnchor];
  v52 = [widthAnchor constraintEqualToConstant:66.0];
  [v65 addObject:v52];

  controlButton4 = [(MTATimerRecentView *)self controlButton];
  topAnchor6 = [controlButton4 topAnchor];
  countDownLabel6 = [(MTATimerRecentView *)self countDownLabel];
  firstBaselineAnchor = [countDownLabel6 firstBaselineAnchor];
  countDownLabel7 = [(MTATimerRecentView *)self countDownLabel];
  font = [countDownLabel7 font];
  [font capHeight];
  v60 = [topAnchor6 constraintEqualToAnchor:firstBaselineAnchor constant:-(v59 + 2.0)];
  [v65 addObject:v60];

  controlButton5 = [(MTATimerRecentView *)self controlButton];
  trailingAnchor6 = [controlButton5 trailingAnchor];
  trailingAnchor7 = [v3 trailingAnchor];
  v64 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:(84.0 + -66.0) * -0.5];
  [v65 addObject:v64];

  [NSLayoutConstraint activateConstraints:v65];
}

- (void)setEditing:(BOOL)editing
{
  if (editing)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  controlButton = [(MTATimerRecentView *)self controlButton];
  [controlButton setAlpha:v3];
}

- (void)updateDuration:(id)duration
{
  durationCopy = duration;
  titleFormatter = [(MTATimerRecentView *)self titleFormatter];
  [durationCopy duration];
  v5 = [titleFormatter stringFromTimeInterval:?];

  countDownLabel = [(MTATimerRecentView *)self countDownLabel];
  [countDownLabel setText:v5];

  title = [durationCopy title];
  v8 = [title length];

  if (v8)
  {
    title2 = [durationCopy title];
    durationLabel = [(MTATimerRecentView *)self durationLabel];
    [durationLabel setText:title2];
  }

  else
  {
    title2 = [(MTATimerRecentView *)self durationFormatter];
    [durationCopy duration];
    durationLabel = [title2 stringFromTimeInterval:?];
    durationLabel2 = [(MTATimerRecentView *)self durationLabel];
    [durationLabel2 setText:durationLabel];
  }
}

- (void)didTapStartButton:(id)button
{
  delegate = [(MTATimerRecentView *)self delegate];
  duration = [(MTATimerRecentView *)self duration];
  [delegate didSelectRecentDuration:duration];
}

- (MTARecentCellViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
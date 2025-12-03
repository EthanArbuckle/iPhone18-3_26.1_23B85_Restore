@interface MTATimerCellView
+ (double)estimatedHeightForTimerWithTitle:(id)title;
- (MTATimerCellView)initWithDelegate:(id)delegate;
- (MTATimerCellView)initWithFrame:(CGRect)frame;
- (MTATimerCellViewDelegate)delegate;
- (void)didTapPauseResumeButton:(id)button;
- (void)localSetup;
- (void)processCountdownState:(unint64_t)state previousState:(unint64_t)previousState remainingTime:(double)time duration:(double)duration forceRefresh:(BOOL)refresh;
- (void)setDurationWithInterval:(double)interval;
- (void)setEditing:(BOOL)editing;
- (void)setRemainingTime:(double)time duration:(double)duration state:(unint64_t)state title:(id)title forceRefresh:(BOOL)refresh;
- (void)setState:(unint64_t)state animate:(BOOL)animate;
- (void)setupControlButton;
- (void)setupCountdownLabel;
- (void)setupCountdownView;
- (void)setupDurationLabel;
- (void)setupLayoutConstraints;
- (void)tickWithTimer:(id)timer;
- (void)updateControlButtonWithState:(unint64_t)state;
- (void)updateLabelColorForState:(unint64_t)state;
@end

@implementation MTATimerCellView

+ (double)estimatedHeightForTimerWithTitle:(id)title
{
  v20 = NSFontAttributeName;
  titleCopy = title;
  v4 = +[UIFont mtui_thinTimeFont];
  v21 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [@"09:58" sizeWithAttributes:v5];
  v7 = v6;

  v8 = +[UIScreen mainScreen];
  [v8 bounds];
  v10 = v9 + 16.0 * -2.0 - 64.0 + 16.0 * -0.5;

  v18 = NSFontAttributeName;
  v11 = [UIFont systemFontOfSize:17.0];
  v19 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v13 = objc_opt_new();
  [titleCopy boundingRectWithSize:1 options:v12 attributes:v13 context:{v10, 1.79769313e308}];
  v15 = v14;

  v16 = v7 + v15 + 8.0 * 2.0;
  return ceilf(v16);
}

- (MTATimerCellView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = MTATimerCellView;
  v5 = [(MTATimerCellView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTATimerCellView *)v5 setDelegate:delegateCopy];
  }

  return v6;
}

- (MTATimerCellView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MTATimerCellView;
  v3 = [(MTATimerCellView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MTATimerCellView *)v3 localSetup];
  }

  return v4;
}

- (void)localSetup
{
  [(MTATimerCellView *)self setupCountdownLabel];
  [(MTATimerCellView *)self setupDurationLabel];
  [(MTATimerCellView *)self setupCountdownView];
  [(MTATimerCellView *)self setupControlButton];
  [(MTATimerCellView *)self setupLayoutConstraints];
  countDownLabel = [(MTATimerCellView *)self countDownLabel];
  [countDownLabel setText:@"5:00"];

  durationLabel = [(MTATimerCellView *)self durationLabel];
  [durationLabel setText:@"15:00"];
}

- (void)setupCountdownLabel
{
  v3 = objc_opt_new();
  [(MTATimerCellView *)self setCountDownLabel:v3];

  countDownLabel = [(MTATimerCellView *)self countDownLabel];
  [countDownLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor whiteColor];
  countDownLabel2 = [(MTATimerCellView *)self countDownLabel];
  [countDownLabel2 setTextColor:v5];

  v7 = +[UIFont mtui_thinTimeFont];
  countDownLabel3 = [(MTATimerCellView *)self countDownLabel];
  [countDownLabel3 setFont:v7];

  countDownLabel4 = [(MTATimerCellView *)self countDownLabel];
  [countDownLabel4 setAdjustsFontSizeToFitWidth:1];

  countDownLabel5 = [(MTATimerCellView *)self countDownLabel];
  [(MTATimerCellView *)self addSubview:countDownLabel5];
}

- (void)setupDurationLabel
{
  v3 = objc_opt_new();
  [(MTATimerCellView *)self setDurationLabel:v3];

  durationLabel = [(MTATimerCellView *)self durationLabel];
  [durationLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor secondaryLabelColor];
  durationLabel2 = [(MTATimerCellView *)self durationLabel];
  [durationLabel2 setTextColor:v5];

  durationLabel3 = [(MTATimerCellView *)self durationLabel];
  [durationLabel3 setNumberOfLines:0];

  durationLabel4 = [(MTATimerCellView *)self durationLabel];
  [durationLabel4 setLineBreakMode:0];

  durationLabel5 = [(MTATimerCellView *)self durationLabel];
  [durationLabel5 setAdjustsFontSizeToFitWidth:0];

  durationLabel6 = [(MTATimerCellView *)self durationLabel];
  [(MTATimerCellView *)self addSubview:durationLabel6];
}

- (void)setupCountdownView
{
  v8 = [UIColor colorWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:0.32];
  v3 = [MTUITimerCountdownView alloc];
  v4 = +[UIColor systemOrangeColor];
  v5 = [v3 initWithBarColor:v4 backgroundBarColor:v8 barWidth:4.0];
  [(MTATimerCellView *)self setCountDownView:v5];

  countDownView = [(MTATimerCellView *)self countDownView];
  [countDownView setTranslatesAutoresizingMaskIntoConstraints:0];

  countDownView2 = [(MTATimerCellView *)self countDownView];
  [(MTATimerCellView *)self addSubview:countDownView2];
}

- (void)setupControlButton
{
  v3 = [UIButton buttonWithType:0];
  [(MTATimerCellView *)self setControlButton:v3];

  controlButton = [(MTATimerCellView *)self controlButton];
  [controlButton _setTouchInsets:{-30.0, -30.0, -30.0, -30.0}];

  controlButton2 = [(MTATimerCellView *)self controlButton];
  [controlButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(MTATimerCellView *)self updateControlButtonWithState:3];
  controlButton3 = [(MTATimerCellView *)self controlButton];
  [controlButton3 addTarget:self action:"didTapPauseResumeButton:" forControlEvents:64];

  controlButton4 = [(MTATimerCellView *)self controlButton];
  [(MTATimerCellView *)self addSubview:controlButton4];
}

- (void)setupLayoutConstraints
{
  v111 = objc_opt_new();
  v3 = objc_opt_new();
  [v3 setIdentifier:@"leftLayoutGuide"];
  [(MTATimerCellView *)self addLayoutGuide:v3];
  v4 = objc_opt_new();
  [v4 setIdentifier:@"rightLayoutGuide"];
  v5 = v4;
  [(MTATimerCellView *)self addLayoutGuide:v4];
  v6 = objc_opt_new();
  [v6 setIdentifier:@"cellContentLayoutGuide"];
  [(MTATimerCellView *)self addLayoutGuide:v6];
  leadingAnchor = [v6 leadingAnchor];
  leadingAnchor2 = [(MTATimerCellView *)self leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v111 addObject:v9];

  trailingAnchor = [v6 trailingAnchor];
  trailingAnchor2 = [(MTATimerCellView *)self trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-((84.0 - 64.0) * 0.5 + 16.0)];
  [v111 addObject:v12];

  topAnchor = [v6 topAnchor];
  topAnchor2 = [(MTATimerCellView *)self topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  [v111 addObject:v15];

  bottomAnchor = [v6 bottomAnchor];
  bottomAnchor2 = [(MTATimerCellView *)self bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
  [v111 addObject:v18];

  leadingAnchor3 = [v3 leadingAnchor];
  leadingAnchor4 = [v6 leadingAnchor];
  v21 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v111 addObject:v21];

  centerYAnchor = [v3 centerYAnchor];
  centerYAnchor2 = [v6 centerYAnchor];
  v24 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v111 addObject:v24];

  trailingAnchor3 = [v3 trailingAnchor];
  v26 = v5;
  leadingAnchor5 = [v5 leadingAnchor];
  v28 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5 constant:16.0 * -0.5];
  [v111 addObject:v28];

  centerYAnchor3 = [v5 centerYAnchor];
  centerYAnchor4 = [v6 centerYAnchor];
  v31 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v111 addObject:v31];

  trailingAnchor4 = [v5 trailingAnchor];
  trailingAnchor5 = [v6 trailingAnchor];
  v34 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  [v111 addObject:v34];

  countDownLabel = [(MTATimerCellView *)self countDownLabel];
  leadingAnchor6 = [countDownLabel leadingAnchor];
  leadingAnchor7 = [v3 leadingAnchor];
  v38 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  [v111 addObject:v38];

  countDownLabel2 = [(MTATimerCellView *)self countDownLabel];
  trailingAnchor6 = [countDownLabel2 trailingAnchor];
  controlButton = [(MTATimerCellView *)self controlButton];
  leadingAnchor8 = [controlButton leadingAnchor];
  v43 = [trailingAnchor6 constraintEqualToAnchor:leadingAnchor8 constant:-30.0];
  [v111 addObject:v43];

  countDownLabel3 = [(MTATimerCellView *)self countDownLabel];
  topAnchor3 = [countDownLabel3 topAnchor];
  topAnchor4 = [v3 topAnchor];
  v47 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v111 addObject:v47];

  countDownLabel4 = [(MTATimerCellView *)self countDownLabel];
  bottomAnchor3 = [countDownLabel4 bottomAnchor];
  durationLabel = [(MTATimerCellView *)self durationLabel];
  topAnchor5 = [durationLabel topAnchor];
  v52 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5];
  [v111 addObject:v52];

  durationLabel2 = [(MTATimerCellView *)self durationLabel];
  leadingAnchor9 = [durationLabel2 leadingAnchor];
  leadingAnchor10 = [v3 leadingAnchor];
  v56 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  [v111 addObject:v56];

  durationLabel3 = [(MTATimerCellView *)self durationLabel];
  trailingAnchor7 = [durationLabel3 trailingAnchor];
  v110 = v3;
  trailingAnchor8 = [v3 trailingAnchor];
  v60 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [v111 addObject:v60];

  durationLabel4 = [(MTATimerCellView *)self durationLabel];
  bottomAnchor4 = [durationLabel4 bottomAnchor];
  bottomAnchor5 = [v3 bottomAnchor];
  v64 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  [v111 addObject:v64];

  countDownView = [(MTATimerCellView *)self countDownView];
  heightAnchor = [countDownView heightAnchor];
  v67 = [heightAnchor constraintEqualToConstant:64.0];
  [v111 addObject:v67];

  countDownView2 = [(MTATimerCellView *)self countDownView];
  widthAnchor = [countDownView2 widthAnchor];
  countDownView3 = [(MTATimerCellView *)self countDownView];
  heightAnchor2 = [countDownView3 heightAnchor];
  v72 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
  [v111 addObject:v72];

  countDownView4 = [(MTATimerCellView *)self countDownView];
  leadingAnchor11 = [countDownView4 leadingAnchor];
  v75 = v26;
  leadingAnchor12 = [v26 leadingAnchor];
  v77 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  [v111 addObject:v77];

  countDownView5 = [(MTATimerCellView *)self countDownView];
  trailingAnchor9 = [countDownView5 trailingAnchor];
  trailingAnchor10 = [v26 trailingAnchor];
  v81 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  [v111 addObject:v81];

  countDownView6 = [(MTATimerCellView *)self countDownView];
  topAnchor6 = [countDownView6 topAnchor];
  countDownLabel5 = [(MTATimerCellView *)self countDownLabel];
  firstBaselineAnchor = [countDownLabel5 firstBaselineAnchor];
  countDownLabel6 = [(MTATimerCellView *)self countDownLabel];
  font = [countDownLabel6 font];
  [font capHeight];
  v89 = [topAnchor6 constraintEqualToAnchor:firstBaselineAnchor constant:-(v88 + 2.0)];
  [v111 addObject:v89];

  countDownView7 = [(MTATimerCellView *)self countDownView];
  bottomAnchor6 = [countDownView7 bottomAnchor];
  bottomAnchor7 = [v75 bottomAnchor];
  v93 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  [v111 addObject:v93];

  controlButton2 = [(MTATimerCellView *)self controlButton];
  heightAnchor3 = [controlButton2 heightAnchor];
  v96 = [heightAnchor3 constraintEqualToConstant:30.0];
  [v111 addObject:v96];

  controlButton3 = [(MTATimerCellView *)self controlButton];
  widthAnchor2 = [controlButton3 widthAnchor];
  v99 = [widthAnchor2 constraintEqualToConstant:30.0];
  [v111 addObject:v99];

  controlButton4 = [(MTATimerCellView *)self controlButton];
  centerXAnchor = [controlButton4 centerXAnchor];
  countDownView8 = [(MTATimerCellView *)self countDownView];
  centerXAnchor2 = [countDownView8 centerXAnchor];
  v104 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v111 addObject:v104];

  controlButton5 = [(MTATimerCellView *)self controlButton];
  centerYAnchor5 = [controlButton5 centerYAnchor];
  countDownView9 = [(MTATimerCellView *)self countDownView];
  centerYAnchor6 = [countDownView9 centerYAnchor];
  v109 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  [v111 addObject:v109];

  [NSLayoutConstraint activateConstraints:v111];
}

- (void)setEditing:(BOOL)editing
{
  if (editing)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  countDownView = [(MTATimerCellView *)self countDownView];
  [countDownView setAlpha:v4];

  controlButton = [(MTATimerCellView *)self controlButton];
  [controlButton setAlpha:v4];
}

- (void)tickWithTimer:(id)timer
{
  timerCopy = timer;
  [timerCopy remainingTime];
  [timerCopy state];

  v6 = FormatTime();
  countDownLabel = [(MTATimerCellView *)self countDownLabel];
  [countDownLabel setText:v6];
}

- (void)setRemainingTime:(double)time duration:(double)duration state:(unint64_t)state title:(id)title forceRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  titleCopy = title;
  v13 = MTLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138544898;
    selfCopy = self;
    v20 = 2048;
    timeCopy = time;
    v22 = 2048;
    durationCopy = duration;
    v24 = 2048;
    stateCopy = state;
    v26 = 2048;
    state = [(MTATimerCellView *)self state];
    v28 = 2114;
    v29 = titleCopy;
    v30 = 1024;
    v31 = refreshCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ setRemainingTime: %f, duration: %f, new state: %li, currentState: %li, title: %{public}@, forceRefresh: %i", &v18, 0x44u);
  }

  [(MTATimerCellView *)self processCountdownState:state previousState:[(MTATimerCellView *)self state] remainingTime:refreshCopy duration:time forceRefresh:duration];
  countDownView = [(MTATimerCellView *)self countDownView];
  [countDownView setNeedsLayout];

  [(MTATimerCellView *)self setState:state];
  [(MTATimerCellView *)self updateControlButtonWithState:state];
  [(MTATimerCellView *)self updateLabelColorForState:state];
  if ([titleCopy length])
  {
    durationLabel = [(MTATimerCellView *)self durationLabel];
    [durationLabel setText:titleCopy];
  }

  else
  {
    [(MTATimerCellView *)self setDurationWithInterval:duration];
  }

  v16 = FormatTime();
  countDownLabel = [(MTATimerCellView *)self countDownLabel];
  [countDownLabel setText:v16];
}

- (void)setDurationWithInterval:(double)interval
{
  v5 = [MTAUtilities durationStringFromInterval:interval];
  durationLabel = [(MTATimerCellView *)self durationLabel];
  [durationLabel setText:v5];
}

- (void)processCountdownState:(unint64_t)state previousState:(unint64_t)previousState remainingTime:(double)time duration:(double)duration forceRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  countDownView = [(MTATimerCellView *)self countDownView];
  [countDownView duration];
  v15 = v14;

  if (state != previousState || (v15 == duration ? (v16 = !refreshCopy) : (v16 = 0), !v16))
  {
    switch(state)
    {
      case 1uLL:
        countDownView2 = [(MTATimerCellView *)self countDownView];
        [countDownView2 stop];
        break;
      case 3uLL:
        if (previousState == 3 && !refreshCopy)
        {
          if (v15 == duration)
          {
            return;
          }

          goto LABEL_23;
        }

        if (previousState < 2 || previousState == 3)
        {
LABEL_23:
          countDownView3 = [(MTATimerCellView *)self countDownView];
          [countDownView3 setAnimationRemainingTime:time totalTime:duration];

          countDownView4 = [(MTATimerCellView *)self countDownView];
          countDownView2 = countDownView4;
LABEL_24:
          [countDownView4 start];
          break;
        }

        if (previousState != 2)
        {
          return;
        }

        countDownView5 = [(MTATimerCellView *)self countDownView];
        [countDownView5 setAnimationRemainingTime:time totalTime:duration];

        countDownView6 = [(MTATimerCellView *)self countDownView];
        isStarted = [countDownView6 isStarted];

        countDownView4 = [(MTATimerCellView *)self countDownView];
        countDownView2 = countDownView4;
        if (!isStarted)
        {
          goto LABEL_24;
        }

        [countDownView4 resume];
        break;
      case 2uLL:
        if (previousState >= 3)
        {
          if (previousState != 3)
          {
            return;
          }

          countDownView7 = [(MTATimerCellView *)self countDownView];
          [countDownView7 setAnimationRemainingTime:time totalTime:duration];

          countDownView2 = [(MTATimerCellView *)self countDownView];
          [countDownView2 pause];
        }

        else
        {
          countDownView2 = [(MTATimerCellView *)self countDownView];
          [countDownView2 setAnimationRemainingTime:time totalTime:duration];
        }

        break;
      default:
        return;
    }
  }
}

- (void)updateControlButtonWithState:(unint64_t)state
{
  if (state == 3)
  {
    v3 = @"pause.fill";
  }

  else
  {
    v3 = @"play.fill";
  }

  controlButton = [(MTATimerCellView *)self controlButton];
  v4 = +[UIColor systemOrangeColor];
  v5 = [UIImage mtui_imageWithSymbolName:v3 pointSize:v4 color:24.0];
  [controlButton setImage:v5 forState:0];
}

- (void)setState:(unint64_t)state animate:(BOOL)animate
{
  self->_state = state;
  if (animate)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100022CDC;
    v9[3] = &unk_1000AE068;
    v10 = state == 1;
    v9[4] = self;
    v9[5] = state;
    [UIView animateWithDuration:v9 animations:0.2];
  }

  else
  {
    countDownView = [(MTATimerCellView *)self countDownView];
    v7 = countDownView;
    v8 = 1.0;
    if (state == 1)
    {
      v8 = 0.0;
    }

    [countDownView setAlpha:v8];

    [(MTATimerCellView *)self updateLabelColorForState:state];
  }
}

- (void)updateLabelColorForState:(unint64_t)state
{
  if (state == 2)
  {
    +[UIColor mtui_disabledTextColor];
  }

  else
  {
    +[UIColor mtui_primaryTextColor];
  }
  v5 = ;
  countDownLabel = [(MTATimerCellView *)self countDownLabel];
  [countDownLabel setTextColor:v5];

  if (state == 2)
  {
    +[UIColor mtui_disabledTextColor];
  }

  else
  {
    +[UIColor mtui_primaryTextColor];
  }
  v8 = ;
  durationLabel = [(MTATimerCellView *)self durationLabel];
  [durationLabel setTextColor:v8];
}

- (void)didTapPauseResumeButton:(id)button
{
  state = self->_state;
  delegate = [(MTATimerCellView *)self delegate];
  v5 = delegate;
  if (state == 3)
  {
    [delegate didSendPauseAction];
  }

  else
  {
    [delegate didSendResumeAction];
  }
}

- (MTATimerCellViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
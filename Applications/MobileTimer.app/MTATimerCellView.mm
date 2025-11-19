@interface MTATimerCellView
+ (double)estimatedHeightForTimerWithTitle:(id)a3;
- (MTATimerCellView)initWithDelegate:(id)a3;
- (MTATimerCellView)initWithFrame:(CGRect)a3;
- (MTATimerCellViewDelegate)delegate;
- (void)didTapPauseResumeButton:(id)a3;
- (void)localSetup;
- (void)processCountdownState:(unint64_t)a3 previousState:(unint64_t)a4 remainingTime:(double)a5 duration:(double)a6 forceRefresh:(BOOL)a7;
- (void)setDurationWithInterval:(double)a3;
- (void)setEditing:(BOOL)a3;
- (void)setRemainingTime:(double)a3 duration:(double)a4 state:(unint64_t)a5 title:(id)a6 forceRefresh:(BOOL)a7;
- (void)setState:(unint64_t)a3 animate:(BOOL)a4;
- (void)setupControlButton;
- (void)setupCountdownLabel;
- (void)setupCountdownView;
- (void)setupDurationLabel;
- (void)setupLayoutConstraints;
- (void)tickWithTimer:(id)a3;
- (void)updateControlButtonWithState:(unint64_t)a3;
- (void)updateLabelColorForState:(unint64_t)a3;
@end

@implementation MTATimerCellView

+ (double)estimatedHeightForTimerWithTitle:(id)a3
{
  v20 = NSFontAttributeName;
  v3 = a3;
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
  [v3 boundingRectWithSize:1 options:v12 attributes:v13 context:{v10, 1.79769313e308}];
  v15 = v14;

  v16 = v7 + v15 + 8.0 * 2.0;
  return ceilf(v16);
}

- (MTATimerCellView)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MTATimerCellView;
  v5 = [(MTATimerCellView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTATimerCellView *)v5 setDelegate:v4];
  }

  return v6;
}

- (MTATimerCellView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MTATimerCellView;
  v3 = [(MTATimerCellView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(MTATimerCellView *)self countDownLabel];
  [v3 setText:@"5:00"];

  v4 = [(MTATimerCellView *)self durationLabel];
  [v4 setText:@"15:00"];
}

- (void)setupCountdownLabel
{
  v3 = objc_opt_new();
  [(MTATimerCellView *)self setCountDownLabel:v3];

  v4 = [(MTATimerCellView *)self countDownLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor whiteColor];
  v6 = [(MTATimerCellView *)self countDownLabel];
  [v6 setTextColor:v5];

  v7 = +[UIFont mtui_thinTimeFont];
  v8 = [(MTATimerCellView *)self countDownLabel];
  [v8 setFont:v7];

  v9 = [(MTATimerCellView *)self countDownLabel];
  [v9 setAdjustsFontSizeToFitWidth:1];

  v10 = [(MTATimerCellView *)self countDownLabel];
  [(MTATimerCellView *)self addSubview:v10];
}

- (void)setupDurationLabel
{
  v3 = objc_opt_new();
  [(MTATimerCellView *)self setDurationLabel:v3];

  v4 = [(MTATimerCellView *)self durationLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = +[UIColor secondaryLabelColor];
  v6 = [(MTATimerCellView *)self durationLabel];
  [v6 setTextColor:v5];

  v7 = [(MTATimerCellView *)self durationLabel];
  [v7 setNumberOfLines:0];

  v8 = [(MTATimerCellView *)self durationLabel];
  [v8 setLineBreakMode:0];

  v9 = [(MTATimerCellView *)self durationLabel];
  [v9 setAdjustsFontSizeToFitWidth:0];

  v10 = [(MTATimerCellView *)self durationLabel];
  [(MTATimerCellView *)self addSubview:v10];
}

- (void)setupCountdownView
{
  v8 = [UIColor colorWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:0.32];
  v3 = [MTUITimerCountdownView alloc];
  v4 = +[UIColor systemOrangeColor];
  v5 = [v3 initWithBarColor:v4 backgroundBarColor:v8 barWidth:4.0];
  [(MTATimerCellView *)self setCountDownView:v5];

  v6 = [(MTATimerCellView *)self countDownView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(MTATimerCellView *)self countDownView];
  [(MTATimerCellView *)self addSubview:v7];
}

- (void)setupControlButton
{
  v3 = [UIButton buttonWithType:0];
  [(MTATimerCellView *)self setControlButton:v3];

  v4 = [(MTATimerCellView *)self controlButton];
  [v4 _setTouchInsets:{-30.0, -30.0, -30.0, -30.0}];

  v5 = [(MTATimerCellView *)self controlButton];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(MTATimerCellView *)self updateControlButtonWithState:3];
  v6 = [(MTATimerCellView *)self controlButton];
  [v6 addTarget:self action:"didTapPauseResumeButton:" forControlEvents:64];

  v7 = [(MTATimerCellView *)self controlButton];
  [(MTATimerCellView *)self addSubview:v7];
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
  v7 = [v6 leadingAnchor];
  v8 = [(MTATimerCellView *)self leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:16.0];
  [v111 addObject:v9];

  v10 = [v6 trailingAnchor];
  v11 = [(MTATimerCellView *)self trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:-((84.0 - 64.0) * 0.5 + 16.0)];
  [v111 addObject:v12];

  v13 = [v6 topAnchor];
  v14 = [(MTATimerCellView *)self topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:8.0];
  [v111 addObject:v15];

  v16 = [v6 bottomAnchor];
  v17 = [(MTATimerCellView *)self bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-8.0];
  [v111 addObject:v18];

  v19 = [v3 leadingAnchor];
  v20 = [v6 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v111 addObject:v21];

  v22 = [v3 centerYAnchor];
  v23 = [v6 centerYAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [v111 addObject:v24];

  v25 = [v3 trailingAnchor];
  v26 = v5;
  v27 = [v5 leadingAnchor];
  v28 = [v25 constraintEqualToAnchor:v27 constant:16.0 * -0.5];
  [v111 addObject:v28];

  v29 = [v5 centerYAnchor];
  v30 = [v6 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  [v111 addObject:v31];

  v32 = [v5 trailingAnchor];
  v33 = [v6 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  [v111 addObject:v34];

  v35 = [(MTATimerCellView *)self countDownLabel];
  v36 = [v35 leadingAnchor];
  v37 = [v3 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  [v111 addObject:v38];

  v39 = [(MTATimerCellView *)self countDownLabel];
  v40 = [v39 trailingAnchor];
  v41 = [(MTATimerCellView *)self controlButton];
  v42 = [v41 leadingAnchor];
  v43 = [v40 constraintEqualToAnchor:v42 constant:-30.0];
  [v111 addObject:v43];

  v44 = [(MTATimerCellView *)self countDownLabel];
  v45 = [v44 topAnchor];
  v46 = [v3 topAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  [v111 addObject:v47];

  v48 = [(MTATimerCellView *)self countDownLabel];
  v49 = [v48 bottomAnchor];
  v50 = [(MTATimerCellView *)self durationLabel];
  v51 = [v50 topAnchor];
  v52 = [v49 constraintEqualToAnchor:v51];
  [v111 addObject:v52];

  v53 = [(MTATimerCellView *)self durationLabel];
  v54 = [v53 leadingAnchor];
  v55 = [v3 leadingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];
  [v111 addObject:v56];

  v57 = [(MTATimerCellView *)self durationLabel];
  v58 = [v57 trailingAnchor];
  v110 = v3;
  v59 = [v3 trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];
  [v111 addObject:v60];

  v61 = [(MTATimerCellView *)self durationLabel];
  v62 = [v61 bottomAnchor];
  v63 = [v3 bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];
  [v111 addObject:v64];

  v65 = [(MTATimerCellView *)self countDownView];
  v66 = [v65 heightAnchor];
  v67 = [v66 constraintEqualToConstant:64.0];
  [v111 addObject:v67];

  v68 = [(MTATimerCellView *)self countDownView];
  v69 = [v68 widthAnchor];
  v70 = [(MTATimerCellView *)self countDownView];
  v71 = [v70 heightAnchor];
  v72 = [v69 constraintEqualToAnchor:v71];
  [v111 addObject:v72];

  v73 = [(MTATimerCellView *)self countDownView];
  v74 = [v73 leadingAnchor];
  v75 = v26;
  v76 = [v26 leadingAnchor];
  v77 = [v74 constraintEqualToAnchor:v76];
  [v111 addObject:v77];

  v78 = [(MTATimerCellView *)self countDownView];
  v79 = [v78 trailingAnchor];
  v80 = [v26 trailingAnchor];
  v81 = [v79 constraintEqualToAnchor:v80];
  [v111 addObject:v81];

  v82 = [(MTATimerCellView *)self countDownView];
  v83 = [v82 topAnchor];
  v84 = [(MTATimerCellView *)self countDownLabel];
  v85 = [v84 firstBaselineAnchor];
  v86 = [(MTATimerCellView *)self countDownLabel];
  v87 = [v86 font];
  [v87 capHeight];
  v89 = [v83 constraintEqualToAnchor:v85 constant:-(v88 + 2.0)];
  [v111 addObject:v89];

  v90 = [(MTATimerCellView *)self countDownView];
  v91 = [v90 bottomAnchor];
  v92 = [v75 bottomAnchor];
  v93 = [v91 constraintEqualToAnchor:v92];
  [v111 addObject:v93];

  v94 = [(MTATimerCellView *)self controlButton];
  v95 = [v94 heightAnchor];
  v96 = [v95 constraintEqualToConstant:30.0];
  [v111 addObject:v96];

  v97 = [(MTATimerCellView *)self controlButton];
  v98 = [v97 widthAnchor];
  v99 = [v98 constraintEqualToConstant:30.0];
  [v111 addObject:v99];

  v100 = [(MTATimerCellView *)self controlButton];
  v101 = [v100 centerXAnchor];
  v102 = [(MTATimerCellView *)self countDownView];
  v103 = [v102 centerXAnchor];
  v104 = [v101 constraintEqualToAnchor:v103];
  [v111 addObject:v104];

  v105 = [(MTATimerCellView *)self controlButton];
  v106 = [v105 centerYAnchor];
  v107 = [(MTATimerCellView *)self countDownView];
  v108 = [v107 centerYAnchor];
  v109 = [v106 constraintEqualToAnchor:v108];
  [v111 addObject:v109];

  [NSLayoutConstraint activateConstraints:v111];
}

- (void)setEditing:(BOOL)a3
{
  if (a3)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = [(MTATimerCellView *)self countDownView];
  [v5 setAlpha:v4];

  v6 = [(MTATimerCellView *)self controlButton];
  [v6 setAlpha:v4];
}

- (void)tickWithTimer:(id)a3
{
  v4 = a3;
  [v4 remainingTime];
  [v4 state];

  v6 = FormatTime();
  v5 = [(MTATimerCellView *)self countDownLabel];
  [v5 setText:v6];
}

- (void)setRemainingTime:(double)a3 duration:(double)a4 state:(unint64_t)a5 title:(id)a6 forceRefresh:(BOOL)a7
{
  v7 = a7;
  v12 = a6;
  v13 = MTLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138544898;
    v19 = self;
    v20 = 2048;
    v21 = a3;
    v22 = 2048;
    v23 = a4;
    v24 = 2048;
    v25 = a5;
    v26 = 2048;
    v27 = [(MTATimerCellView *)self state];
    v28 = 2114;
    v29 = v12;
    v30 = 1024;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ setRemainingTime: %f, duration: %f, new state: %li, currentState: %li, title: %{public}@, forceRefresh: %i", &v18, 0x44u);
  }

  [(MTATimerCellView *)self processCountdownState:a5 previousState:[(MTATimerCellView *)self state] remainingTime:v7 duration:a3 forceRefresh:a4];
  v14 = [(MTATimerCellView *)self countDownView];
  [v14 setNeedsLayout];

  [(MTATimerCellView *)self setState:a5];
  [(MTATimerCellView *)self updateControlButtonWithState:a5];
  [(MTATimerCellView *)self updateLabelColorForState:a5];
  if ([v12 length])
  {
    v15 = [(MTATimerCellView *)self durationLabel];
    [v15 setText:v12];
  }

  else
  {
    [(MTATimerCellView *)self setDurationWithInterval:a4];
  }

  v16 = FormatTime();
  v17 = [(MTATimerCellView *)self countDownLabel];
  [v17 setText:v16];
}

- (void)setDurationWithInterval:(double)a3
{
  v5 = [MTAUtilities durationStringFromInterval:a3];
  v4 = [(MTATimerCellView *)self durationLabel];
  [v4 setText:v5];
}

- (void)processCountdownState:(unint64_t)a3 previousState:(unint64_t)a4 remainingTime:(double)a5 duration:(double)a6 forceRefresh:(BOOL)a7
{
  v7 = a7;
  v13 = [(MTATimerCellView *)self countDownView];
  [v13 duration];
  v15 = v14;

  if (a3 != a4 || (v15 == a6 ? (v16 = !v7) : (v16 = 0), !v16))
  {
    switch(a3)
    {
      case 1uLL:
        v23 = [(MTATimerCellView *)self countDownView];
        [v23 stop];
        break;
      case 3uLL:
        if (a4 == 3 && !v7)
        {
          if (v15 == a6)
          {
            return;
          }

          goto LABEL_23;
        }

        if (a4 < 2 || a4 == 3)
        {
LABEL_23:
          v21 = [(MTATimerCellView *)self countDownView];
          [v21 setAnimationRemainingTime:a5 totalTime:a6];

          v20 = [(MTATimerCellView *)self countDownView];
          v23 = v20;
LABEL_24:
          [v20 start];
          break;
        }

        if (a4 != 2)
        {
          return;
        }

        v17 = [(MTATimerCellView *)self countDownView];
        [v17 setAnimationRemainingTime:a5 totalTime:a6];

        v18 = [(MTATimerCellView *)self countDownView];
        v19 = [v18 isStarted];

        v20 = [(MTATimerCellView *)self countDownView];
        v23 = v20;
        if (!v19)
        {
          goto LABEL_24;
        }

        [v20 resume];
        break;
      case 2uLL:
        if (a4 >= 3)
        {
          if (a4 != 3)
          {
            return;
          }

          v22 = [(MTATimerCellView *)self countDownView];
          [v22 setAnimationRemainingTime:a5 totalTime:a6];

          v23 = [(MTATimerCellView *)self countDownView];
          [v23 pause];
        }

        else
        {
          v23 = [(MTATimerCellView *)self countDownView];
          [v23 setAnimationRemainingTime:a5 totalTime:a6];
        }

        break;
      default:
        return;
    }
  }
}

- (void)updateControlButtonWithState:(unint64_t)a3
{
  if (a3 == 3)
  {
    v3 = @"pause.fill";
  }

  else
  {
    v3 = @"play.fill";
  }

  v6 = [(MTATimerCellView *)self controlButton];
  v4 = +[UIColor systemOrangeColor];
  v5 = [UIImage mtui_imageWithSymbolName:v3 pointSize:v4 color:24.0];
  [v6 setImage:v5 forState:0];
}

- (void)setState:(unint64_t)a3 animate:(BOOL)a4
{
  self->_state = a3;
  if (a4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100022CDC;
    v9[3] = &unk_1000AE068;
    v10 = a3 == 1;
    v9[4] = self;
    v9[5] = a3;
    [UIView animateWithDuration:v9 animations:0.2];
  }

  else
  {
    v6 = [(MTATimerCellView *)self countDownView];
    v7 = v6;
    v8 = 1.0;
    if (a3 == 1)
    {
      v8 = 0.0;
    }

    [v6 setAlpha:v8];

    [(MTATimerCellView *)self updateLabelColorForState:a3];
  }
}

- (void)updateLabelColorForState:(unint64_t)a3
{
  if (a3 == 2)
  {
    +[UIColor mtui_disabledTextColor];
  }

  else
  {
    +[UIColor mtui_primaryTextColor];
  }
  v5 = ;
  v6 = [(MTATimerCellView *)self countDownLabel];
  [v6 setTextColor:v5];

  if (a3 == 2)
  {
    +[UIColor mtui_disabledTextColor];
  }

  else
  {
    +[UIColor mtui_primaryTextColor];
  }
  v8 = ;
  v7 = [(MTATimerCellView *)self durationLabel];
  [v7 setTextColor:v8];
}

- (void)didTapPauseResumeButton:(id)a3
{
  state = self->_state;
  v4 = [(MTATimerCellView *)self delegate];
  v5 = v4;
  if (state == 3)
  {
    [v4 didSendPauseAction];
  }

  else
  {
    [v4 didSendResumeAction];
  }
}

- (MTATimerCellViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
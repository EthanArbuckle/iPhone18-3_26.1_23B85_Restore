@interface PHAudioCallVoiceLoopView
- (PHAudioCallVoiceLoopView)initWithFrame:(CGRect)frame;
- (PHAudioCallVoiceLoopViewDelegate)delegate;
- (void)commonInit;
- (void)stopVoiceLoopButtonPressed;
@end

@implementation PHAudioCallVoiceLoopView

- (PHAudioCallVoiceLoopView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PHAudioCallVoiceLoopView;
  v3 = [(PHAudioCallVoiceLoopView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHAudioCallVoiceLoopView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = +[UIColor clearColor];
  [(PHAudioCallVoiceLoopView *)self setBackgroundColor:v3];

  v4 = +[NSBundle mainBundle];
  v62 = [v4 localizedStringForKey:@"SOS_KAPPA_VOICE_LOOP_VIEW_DESCRIPTION" value:&stru_100361FD0 table:@"Localizable-kappa"];

  v5 = +[NSBundle mainBundle];
  v64 = [v5 localizedStringForKey:@"SOS_KAPPA_VOICE_LOOP_VIEW_BUTTON_LABEL" value:&stru_100361FD0 table:@"Localizable-kappa"];

  v69[0] = NSFontAttributeName;
  v6 = [UIFont systemFontOfSize:20.0 weight:UIFontWeightSemibold];
  v70[0] = v6;
  v69[1] = NSForegroundColorAttributeName;
  v7 = +[UIColor systemRedColor];
  v70[1] = v7;
  v63 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:2];

  v61 = [[NSAttributedString alloc] initWithString:v64 attributes:v63];
  v8 = objc_alloc_init(UILabel);
  [(PHAudioCallVoiceLoopView *)self setDescriptionText:v8];

  descriptionText = [(PHAudioCallVoiceLoopView *)self descriptionText];
  [descriptionText setTranslatesAutoresizingMaskIntoConstraints:0];

  descriptionText2 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  [descriptionText2 setText:v62];

  v11 = [UIFont boldSystemFontOfSize:34.0];
  descriptionText3 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  [descriptionText3 setFont:v11];

  descriptionText4 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  [descriptionText4 setTextAlignment:1];

  v14 = +[UIColor whiteColor];
  descriptionText5 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  [descriptionText5 setTextColor:v14];

  descriptionText6 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  [descriptionText6 setNumberOfLines:0];

  descriptionText7 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  [(PHAudioCallVoiceLoopView *)self addSubview:descriptionText7];

  objc_initWeak(&location, self);
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_1001485D0;
  v65[3] = &unk_100357018;
  objc_copyWeak(&v66, &location);
  v60 = [UIAction actionWithTitle:v64 image:0 identifier:0 handler:v65];
  if (_UISolariumEnabled())
  {
    stopVoiceLoopButton7 = +[UIButtonConfiguration _tintedGlassButtonConfiguration];
    v19 = +[UIColor systemRedColor];
    [stopVoiceLoopButton7 setBaseForegroundColor:v19];

    [stopVoiceLoopButton7 setAttributedTitle:v61];
    v20 = [UIButton buttonWithConfiguration:stopVoiceLoopButton7 primaryAction:v60];
    [(PHAudioCallVoiceLoopView *)self setStopVoiceLoopButton:v20];

    v21 = +[UIColor clearColor];
    stopVoiceLoopButton = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
    [stopVoiceLoopButton setBackgroundColor:v21];

    v23 = +[UIColor clearColor];
    stopVoiceLoopButton2 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
    [stopVoiceLoopButton2 setTintColor:v23];

    stopVoiceLoopButton3 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
    [stopVoiceLoopButton3 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    v26 = [UIButton buttonWithType:0 primaryAction:v60];
    [(PHAudioCallVoiceLoopView *)self setStopVoiceLoopButton:v26];

    stopVoiceLoopButton4 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
    [stopVoiceLoopButton4 setTranslatesAutoresizingMaskIntoConstraints:0];

    stopVoiceLoopButton5 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
    layer = [stopVoiceLoopButton5 layer];
    [layer setCornerRadius:36.0];

    v30 = +[UIColor whiteColor];
    stopVoiceLoopButton6 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
    [stopVoiceLoopButton6 setBackgroundColor:v30];

    stopVoiceLoopButton7 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
    [stopVoiceLoopButton7 setAttributedTitle:v61 forState:0];
  }

  stopVoiceLoopButton8 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
  [(PHAudioCallVoiceLoopView *)self addSubview:stopVoiceLoopButton8];

  descriptionText8 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  leadingAnchor = [descriptionText8 leadingAnchor];
  leadingAnchor2 = [(PHAudioCallVoiceLoopView *)self leadingAnchor];
  v56 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
  v68[0] = v56;
  descriptionText9 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  trailingAnchor = [descriptionText9 trailingAnchor];
  trailingAnchor2 = [(PHAudioCallVoiceLoopView *)self trailingAnchor];
  v52 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-30.0];
  v68[1] = v52;
  descriptionText10 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  bottomAnchor = [descriptionText10 bottomAnchor];
  centerYAnchor = [(PHAudioCallVoiceLoopView *)self centerYAnchor];
  v48 = [bottomAnchor constraintEqualToAnchor:centerYAnchor constant:-11.0];
  v68[2] = v48;
  stopVoiceLoopButton9 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
  widthAnchor = [stopVoiceLoopButton9 widthAnchor];
  v45 = [widthAnchor constraintEqualToConstant:300.0];
  v68[3] = v45;
  stopVoiceLoopButton10 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
  heightAnchor = [stopVoiceLoopButton10 heightAnchor];
  v33 = [heightAnchor constraintEqualToConstant:72.0];
  v68[4] = v33;
  stopVoiceLoopButton11 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
  centerXAnchor = [stopVoiceLoopButton11 centerXAnchor];
  centerXAnchor2 = [(PHAudioCallVoiceLoopView *)self centerXAnchor];
  v37 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v68[5] = v37;
  stopVoiceLoopButton12 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
  topAnchor = [stopVoiceLoopButton12 topAnchor];
  centerYAnchor2 = [(PHAudioCallVoiceLoopView *)self centerYAnchor];
  v41 = [topAnchor constraintEqualToAnchor:centerYAnchor2 constant:11.0];
  v68[6] = v41;
  v42 = [NSArray arrayWithObjects:v68 count:7];
  [NSLayoutConstraint activateConstraints:v42];

  objc_destroyWeak(&v66);
  objc_destroyWeak(&location);
}

- (void)stopVoiceLoopButtonPressed
{
  delegate = [(PHAudioCallVoiceLoopView *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    delegate2 = [(PHAudioCallVoiceLoopView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate3 = [(PHAudioCallVoiceLoopView *)self delegate];
      [delegate3 stopVoiceLoopButtonPressed];
    }
  }
}

- (PHAudioCallVoiceLoopViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
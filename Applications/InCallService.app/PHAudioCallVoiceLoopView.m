@interface PHAudioCallVoiceLoopView
- (PHAudioCallVoiceLoopView)initWithFrame:(CGRect)a3;
- (PHAudioCallVoiceLoopViewDelegate)delegate;
- (void)commonInit;
- (void)stopVoiceLoopButtonPressed;
@end

@implementation PHAudioCallVoiceLoopView

- (PHAudioCallVoiceLoopView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PHAudioCallVoiceLoopView;
  v3 = [(PHAudioCallVoiceLoopView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v9 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  [v10 setText:v62];

  v11 = [UIFont boldSystemFontOfSize:34.0];
  v12 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  [v12 setFont:v11];

  v13 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  [v13 setTextAlignment:1];

  v14 = +[UIColor whiteColor];
  v15 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  [v15 setTextColor:v14];

  v16 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  [v16 setNumberOfLines:0];

  v17 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  [(PHAudioCallVoiceLoopView *)self addSubview:v17];

  objc_initWeak(&location, self);
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_1001485D0;
  v65[3] = &unk_100357018;
  objc_copyWeak(&v66, &location);
  v60 = [UIAction actionWithTitle:v64 image:0 identifier:0 handler:v65];
  if (_UISolariumEnabled())
  {
    v18 = +[UIButtonConfiguration _tintedGlassButtonConfiguration];
    v19 = +[UIColor systemRedColor];
    [v18 setBaseForegroundColor:v19];

    [v18 setAttributedTitle:v61];
    v20 = [UIButton buttonWithConfiguration:v18 primaryAction:v60];
    [(PHAudioCallVoiceLoopView *)self setStopVoiceLoopButton:v20];

    v21 = +[UIColor clearColor];
    v22 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
    [v22 setBackgroundColor:v21];

    v23 = +[UIColor clearColor];
    v24 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
    [v24 setTintColor:v23];

    v25 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    v26 = [UIButton buttonWithType:0 primaryAction:v60];
    [(PHAudioCallVoiceLoopView *)self setStopVoiceLoopButton:v26];

    v27 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

    v28 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
    v29 = [v28 layer];
    [v29 setCornerRadius:36.0];

    v30 = +[UIColor whiteColor];
    v31 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
    [v31 setBackgroundColor:v30];

    v18 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
    [v18 setAttributedTitle:v61 forState:0];
  }

  v32 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
  [(PHAudioCallVoiceLoopView *)self addSubview:v32];

  v59 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  v58 = [v59 leadingAnchor];
  v57 = [(PHAudioCallVoiceLoopView *)self leadingAnchor];
  v56 = [v58 constraintEqualToAnchor:v57 constant:30.0];
  v68[0] = v56;
  v55 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  v54 = [v55 trailingAnchor];
  v53 = [(PHAudioCallVoiceLoopView *)self trailingAnchor];
  v52 = [v54 constraintEqualToAnchor:v53 constant:-30.0];
  v68[1] = v52;
  v51 = [(PHAudioCallVoiceLoopView *)self descriptionText];
  v50 = [v51 bottomAnchor];
  v49 = [(PHAudioCallVoiceLoopView *)self centerYAnchor];
  v48 = [v50 constraintEqualToAnchor:v49 constant:-11.0];
  v68[2] = v48;
  v47 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
  v46 = [v47 widthAnchor];
  v45 = [v46 constraintEqualToConstant:300.0];
  v68[3] = v45;
  v44 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
  v43 = [v44 heightAnchor];
  v33 = [v43 constraintEqualToConstant:72.0];
  v68[4] = v33;
  v34 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
  v35 = [v34 centerXAnchor];
  v36 = [(PHAudioCallVoiceLoopView *)self centerXAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  v68[5] = v37;
  v38 = [(PHAudioCallVoiceLoopView *)self stopVoiceLoopButton];
  v39 = [v38 topAnchor];
  v40 = [(PHAudioCallVoiceLoopView *)self centerYAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:11.0];
  v68[6] = v41;
  v42 = [NSArray arrayWithObjects:v68 count:7];
  [NSLayoutConstraint activateConstraints:v42];

  objc_destroyWeak(&v66);
  objc_destroyWeak(&location);
}

- (void)stopVoiceLoopButtonPressed
{
  v3 = [(PHAudioCallVoiceLoopView *)self delegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(PHAudioCallVoiceLoopView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(PHAudioCallVoiceLoopView *)self delegate];
      [v7 stopVoiceLoopButtonPressed];
    }
  }
}

- (PHAudioCallVoiceLoopViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
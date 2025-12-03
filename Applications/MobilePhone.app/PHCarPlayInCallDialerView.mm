@interface PHCarPlayInCallDialerView
- (PHCarPlayInCallDialerView)initWithFrame:(CGRect)frame;
@end

@implementation PHCarPlayInCallDialerView

- (PHCarPlayInCallDialerView)initWithFrame:(CGRect)frame
{
  v51.receiver = self;
  v51.super_class = PHCarPlayInCallDialerView;
  v3 = [(PHCarPlayInCallDialerView *)&v51 initWithFrame:0.0, 0.0, 147.0, 180.0];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(PHCarPlayInCallDialerView *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(PHCarPlayInCallDialerLCDView);
    [(PHCarPlayInCallDialerView *)v3 setLcdView:v5];

    lcdView = [(PHCarPlayInCallDialerView *)v3 lcdView];
    [lcdView setDelegate:v3];

    lcdView2 = [(PHCarPlayInCallDialerView *)v3 lcdView];
    [lcdView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [PHCarPlayNumberPad alloc];
    traitCollection = [(PHCarPlayInCallDialerView *)v3 traitCollection];
    v10 = -[PHCarPlayNumberPad initWithUserInterfaceStyle:](v8, "initWithUserInterfaceStyle:", [traitCollection userInterfaceStyle]);
    [(PHCarPlayInCallDialerView *)v3 setPhonePadView:v10];

    phonePadView = [(PHCarPlayInCallDialerView *)v3 phonePadView];
    [phonePadView frame];
    v13 = v12;
    phonePadView2 = [(PHCarPlayInCallDialerView *)v3 phonePadView];
    [phonePadView2 frame];
    v16 = v15;
    phonePadView3 = [(PHCarPlayInCallDialerView *)v3 phonePadView];
    [phonePadView3 setFrame:{0.0, 52.0, v13, v16}];

    phonePadView4 = [(PHCarPlayInCallDialerView *)v3 phonePadView];
    [phonePadView4 setTranslatesAutoresizingMaskIntoConstraints:0];

    phonePadView5 = [(PHCarPlayInCallDialerView *)v3 phonePadView];
    [phonePadView5 setPlaysSounds:1];

    v20 = +[UIColor clearColor];
    phonePadView6 = [(PHCarPlayInCallDialerView *)v3 phonePadView];
    [phonePadView6 setBackgroundColor:v20];

    phonePadView7 = [(PHCarPlayInCallDialerView *)v3 phonePadView];
    [phonePadView7 setOpaque:0];

    phonePadView8 = [(PHCarPlayInCallDialerView *)v3 phonePadView];
    [phonePadView8 setAccessibilityIdentifier:@"PHCarPlayNumberPad"];

    v24 = objc_opt_new();
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v24 setAlignment:1];
    [v24 setAxis:0];
    [v24 setSpacing:20.0];
    [(PHCarPlayInCallDialerView *)v3 addSubview:v24];
    phonePadView9 = [(PHCarPlayInCallDialerView *)v3 phonePadView];
    [v24 addArrangedSubview:phonePadView9];

    lcdView3 = [(PHCarPlayInCallDialerView *)v3 lcdView];
    [v24 addArrangedSubview:lcdView3];

    safeAreaLayoutGuide = [(PHCarPlayInCallDialerView *)v3 safeAreaLayoutGuide];
    topAnchor = [v24 topAnchor];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v48 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v52[0] = v48;
    bottomAnchor = [v24 bottomAnchor];
    bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
    v45 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v52[1] = v45;
    leadingAnchor = [v24 leadingAnchor];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v42 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v52[2] = v42;
    trailingAnchor = [v24 trailingAnchor];
    trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
    v39 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v52[3] = v39;
    centerXAnchor = [v24 centerXAnchor];
    centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
    v36 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v52[4] = v36;
    centerYAnchor = [v24 centerYAnchor];
    centerYAnchor2 = [safeAreaLayoutGuide centerYAnchor];
    v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v52[5] = v30;
    lcdView4 = [(PHCarPlayInCallDialerView *)v3 lcdView];
    widthAnchor = [lcdView4 widthAnchor];
    v33 = [widthAnchor constraintEqualToConstant:147.0];
    v52[6] = v33;
    v34 = [NSArray arrayWithObjects:v52 count:7];
    [(PHCarPlayInCallDialerView *)v3 addConstraints:v34];
  }

  return v3;
}

@end
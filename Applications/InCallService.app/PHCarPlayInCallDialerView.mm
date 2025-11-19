@interface PHCarPlayInCallDialerView
- (PHCarPlayInCallDialerView)initWithFrame:(CGRect)a3;
@end

@implementation PHCarPlayInCallDialerView

- (PHCarPlayInCallDialerView)initWithFrame:(CGRect)a3
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

    v6 = [(PHCarPlayInCallDialerView *)v3 lcdView];
    [v6 setDelegate:v3];

    v7 = [(PHCarPlayInCallDialerView *)v3 lcdView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [PHCarPlayNumberPad alloc];
    v9 = [(PHCarPlayInCallDialerView *)v3 traitCollection];
    v10 = -[PHCarPlayNumberPad initWithUserInterfaceStyle:](v8, "initWithUserInterfaceStyle:", [v9 userInterfaceStyle]);
    [(PHCarPlayInCallDialerView *)v3 setPhonePadView:v10];

    v11 = [(PHCarPlayInCallDialerView *)v3 phonePadView];
    [v11 frame];
    v13 = v12;
    v14 = [(PHCarPlayInCallDialerView *)v3 phonePadView];
    [v14 frame];
    v16 = v15;
    v17 = [(PHCarPlayInCallDialerView *)v3 phonePadView];
    [v17 setFrame:{0.0, 52.0, v13, v16}];

    v18 = [(PHCarPlayInCallDialerView *)v3 phonePadView];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = [(PHCarPlayInCallDialerView *)v3 phonePadView];
    [v19 setPlaysSounds:1];

    v20 = +[UIColor clearColor];
    v21 = [(PHCarPlayInCallDialerView *)v3 phonePadView];
    [v21 setBackgroundColor:v20];

    v22 = [(PHCarPlayInCallDialerView *)v3 phonePadView];
    [v22 setOpaque:0];

    v23 = [(PHCarPlayInCallDialerView *)v3 phonePadView];
    [v23 setAccessibilityIdentifier:@"PHCarPlayNumberPad"];

    v24 = objc_opt_new();
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v24 setAlignment:1];
    [v24 setAxis:0];
    [v24 setSpacing:20.0];
    [(PHCarPlayInCallDialerView *)v3 addSubview:v24];
    v25 = [(PHCarPlayInCallDialerView *)v3 phonePadView];
    [v24 addArrangedSubview:v25];

    v26 = [(PHCarPlayInCallDialerView *)v3 lcdView];
    [v24 addArrangedSubview:v26];

    v27 = [(PHCarPlayInCallDialerView *)v3 safeAreaLayoutGuide];
    v50 = [v24 topAnchor];
    v49 = [v27 topAnchor];
    v48 = [v50 constraintGreaterThanOrEqualToAnchor:v49];
    v52[0] = v48;
    v47 = [v24 bottomAnchor];
    v46 = [v27 bottomAnchor];
    v45 = [v47 constraintLessThanOrEqualToAnchor:v46];
    v52[1] = v45;
    v44 = [v24 leadingAnchor];
    v43 = [v27 leadingAnchor];
    v42 = [v44 constraintGreaterThanOrEqualToAnchor:v43];
    v52[2] = v42;
    v41 = [v24 trailingAnchor];
    v40 = [v27 trailingAnchor];
    v39 = [v41 constraintLessThanOrEqualToAnchor:v40];
    v52[3] = v39;
    v38 = [v24 centerXAnchor];
    v37 = [v27 centerXAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v52[4] = v36;
    v28 = [v24 centerYAnchor];
    v29 = [v27 centerYAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v52[5] = v30;
    v31 = [(PHCarPlayInCallDialerView *)v3 lcdView];
    v32 = [v31 widthAnchor];
    v33 = [v32 constraintEqualToConstant:147.0];
    v52[6] = v33;
    v34 = [NSArray arrayWithObjects:v52 count:7];
    [(PHCarPlayInCallDialerView *)v3 addConstraints:v34];
  }

  return v3;
}

@end
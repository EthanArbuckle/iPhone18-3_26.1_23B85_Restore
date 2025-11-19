@interface VOTEnabledBannerView
- (VOTEnabledBannerView)initWithFrame:(CGRect)a3;
@end

@implementation VOTEnabledBannerView

- (VOTEnabledBannerView)initWithFrame:(CGRect)a3
{
  v40.receiver = self;
  v40.super_class = VOTEnabledBannerView;
  v3 = [(VOTEnabledBannerView *)&v40 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(VOTEnabledBannerView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [UIVisualEffectView alloc];
    v6 = [UIBlurEffect effectWithStyle:4005];
    v7 = [v5 initWithEffect:v6];

    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v7 layer];
    [v8 setCornerRadius:5.0];

    [v7 setClipsToBounds:1];
    [(VOTEnabledBannerView *)v4 addSubview:v7];
    [(VOTEnabledBannerView *)v4 setEffectView:v7];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"voiceover.instructions.text" value:&stru_3F518 table:@"VoiceOverUIServiceATV~appletv"];
    v11 = objc_alloc_init(UILabel);
    [v11 setIsAccessibilityElement:0];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 setNumberOfLines:0];
    [v11 setTextAlignment:1];
    v12 = +[UIColor whiteColor];
    [v11 setTextColor:v12];

    v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    [v11 setFont:v13];

    [v11 setText:v10];
    [v11 sizeToFit];
    [(VOTEnabledBannerView *)v4 addSubview:v11];
    [(VOTEnabledBannerView *)v4 setBannerLabelView:v11];
    v14 = +[NSMutableArray array];
    v15 = [(VOTEnabledBannerView *)v4 topAnchor];
    v16 = [v7 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [v14 addObject:v17];

    v18 = [(VOTEnabledBannerView *)v4 rightAnchor];
    v19 = [v7 rightAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v14 addObject:v20];

    v21 = [(VOTEnabledBannerView *)v4 bottomAnchor];
    v22 = [v7 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [v14 addObject:v23];

    v24 = [(VOTEnabledBannerView *)v4 leftAnchor];
    v25 = [v7 leftAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [v14 addObject:v26];

    v27 = [(VOTEnabledBannerView *)v4 topAnchor];
    v28 = [v11 topAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:-20.0];
    [v14 addObject:v29];

    v30 = [(VOTEnabledBannerView *)v4 rightAnchor];
    v31 = [v11 rightAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:60.0];
    [v14 addObject:v32];

    v33 = [(VOTEnabledBannerView *)v4 bottomAnchor];
    v34 = [v11 bottomAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:20.0];
    [v14 addObject:v35];

    v36 = [(VOTEnabledBannerView *)v4 leftAnchor];
    v37 = [v11 leftAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:-60.0];
    [v14 addObject:v38];

    [NSLayoutConstraint activateConstraints:v14];
  }

  return v4;
}

@end
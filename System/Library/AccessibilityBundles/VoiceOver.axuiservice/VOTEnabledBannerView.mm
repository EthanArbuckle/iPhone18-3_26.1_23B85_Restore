@interface VOTEnabledBannerView
- (VOTEnabledBannerView)initWithFrame:(CGRect)frame;
@end

@implementation VOTEnabledBannerView

- (VOTEnabledBannerView)initWithFrame:(CGRect)frame
{
  v40.receiver = self;
  v40.super_class = VOTEnabledBannerView;
  v3 = [(VOTEnabledBannerView *)&v40 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VOTEnabledBannerView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [UIVisualEffectView alloc];
    v6 = [UIBlurEffect effectWithStyle:4005];
    v7 = [v5 initWithEffect:v6];

    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [v7 layer];
    [layer setCornerRadius:5.0];

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
    topAnchor = [(VOTEnabledBannerView *)v4 topAnchor];
    topAnchor2 = [v7 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v14 addObject:v17];

    rightAnchor = [(VOTEnabledBannerView *)v4 rightAnchor];
    rightAnchor2 = [v7 rightAnchor];
    v20 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [v14 addObject:v20];

    bottomAnchor = [(VOTEnabledBannerView *)v4 bottomAnchor];
    bottomAnchor2 = [v7 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v14 addObject:v23];

    leftAnchor = [(VOTEnabledBannerView *)v4 leftAnchor];
    leftAnchor2 = [v7 leftAnchor];
    v26 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v14 addObject:v26];

    topAnchor3 = [(VOTEnabledBannerView *)v4 topAnchor];
    topAnchor4 = [v11 topAnchor];
    v29 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:-20.0];
    [v14 addObject:v29];

    rightAnchor3 = [(VOTEnabledBannerView *)v4 rightAnchor];
    rightAnchor4 = [v11 rightAnchor];
    v32 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:60.0];
    [v14 addObject:v32];

    bottomAnchor3 = [(VOTEnabledBannerView *)v4 bottomAnchor];
    bottomAnchor4 = [v11 bottomAnchor];
    v35 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:20.0];
    [v14 addObject:v35];

    leftAnchor3 = [(VOTEnabledBannerView *)v4 leftAnchor];
    leftAnchor4 = [v11 leftAnchor];
    v38 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:-60.0];
    [v14 addObject:v38];

    [NSLayoutConstraint activateConstraints:v14];
  }

  return v4;
}

@end
@interface PHAudioCallControlsSupplementalButton
- (PHAudioCallControlsSupplementalButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)updateRoundViewColor;
@end

@implementation PHAudioCallControlsSupplementalButton

- (PHAudioCallControlsSupplementalButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v31.receiver = self;
  v31.super_class = PHAudioCallControlsSupplementalButton;
  v5 = [(PHAudioCallControlsSupplementalButton *)&v31 initWithFrame:a3.origin.x, a3.origin.y];
  v6 = v5;
  if (v5)
  {
    [(PHAudioCallControlsSupplementalButton *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = +[UIColor whiteColor];
    [(PHAudioCallControlsSupplementalButton *)v6 setTintColor:v7];

    v8 = +[UIButtonConfiguration plainButtonConfiguration];
    [v8 setCornerStyle:4];
    [v8 setButtonSize:1];
    [v8 setImagePadding:4.0];
    v9 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleFootnote];
    [v8 setPreferredSymbolConfigurationForImage:v9];

    [(PHAudioCallControlsSupplementalButton *)v6 setConfiguration:v8];
    v10 = [(PHAudioCallControlsSupplementalButton *)v6 titleLabel];
    [v10 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];

    v11 = [(PHAudioCallControlsSupplementalButton *)v6 imageView];
    [v11 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];

    v12 = [PHRoundView alloc];
    *&v13 = height * 0.5;
    v14 = [v12 initWithFrame:CGRectZero.origin.x cornerRadius:{CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, v13}];
    roundView = v6->_roundView;
    v6->_roundView = v14;

    if (_UISolariumEnabled())
    {
      [(PHAudioCallControlsSupplementalButton *)v6 setOverrideUserInterfaceStyle:1];
      [(PHRoundView *)v6->_roundView applyClearGlassBackground];
    }

    else
    {
      v16 = v6->_roundView;
      v17 = [UIColor colorWithWhite:1.0 alpha:0.100000001];
      [(PHRoundView *)v16 setBackgroundColor:v17];
    }

    [(PHRoundView *)v6->_roundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHRoundView *)v6->_roundView setUserInteractionEnabled:0];
    [(PHAudioCallControlsSupplementalButton *)v6 addSubview:v6->_roundView];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v18 = +[UIColorEffect inCallControls];
      v19 = [UIBlurEffect effectWithBlurRadius:40.0];
      v20 = [[UIVisualEffectView alloc] initWithEffect:v19];
      v32[0] = v18;
      v32[1] = v19;
      v21 = [NSArray arrayWithObjects:v32 count:2];
      [(UIView *)v20 setBackgroundEffects:v21];

      [(UIView *)v20 setFrame:0.0, 0.0, width, height];
      [(UIView *)v20 _setCornerRadius:height * 0.5];
      [(UIView *)v20 setUserInteractionEnabled:0];
      [(PHAudioCallControlsSupplementalButton *)v6 addSubview:v20];
      backdropEffectView = v6->_backdropEffectView;
      v6->_backdropEffectView = v20;
    }

    v23 = [NSLayoutConstraint constraintWithItem:v6->_roundView attribute:5 relatedBy:0 toItem:v6 attribute:5 multiplier:1.0 constant:0.0];
    [(PHAudioCallControlsSupplementalButton *)v6 addConstraint:v23];

    v24 = [NSLayoutConstraint constraintWithItem:v6->_roundView attribute:6 relatedBy:0 toItem:v6 attribute:6 multiplier:1.0 constant:0.0];
    [(PHAudioCallControlsSupplementalButton *)v6 addConstraint:v24];

    v25 = [NSLayoutConstraint constraintWithItem:v6->_roundView attribute:3 relatedBy:0 toItem:v6 attribute:3 multiplier:1.0 constant:0.0];
    [(PHAudioCallControlsSupplementalButton *)v6 addConstraint:v25];

    v26 = [NSLayoutConstraint constraintWithItem:v6->_roundView attribute:4 relatedBy:0 toItem:v6 attribute:4 multiplier:1.0 constant:0.0];
    [(PHAudioCallControlsSupplementalButton *)v6 addConstraint:v26];

    [(PHAudioCallControlsSupplementalButton *)v6 sendSubviewToBack:v6->_roundView];
    v27 = +[UIColor whiteColor];
    [(PHAudioCallControlsSupplementalButton *)v6 setTitleColor:v27 forState:0];

    [(PHAudioCallControlsSupplementalButton *)v6 setAdjustsImageWhenHighlighted:0];
    v28 = [(PHAudioCallControlsSupplementalButton *)v6 layer];
    [v28 setAllowsGroupBlending:0];

    v29 = [(PHAudioCallControlsSupplementalButton *)v6 layer];
    [v29 setAllowsGroupOpacity:0];
  }

  return v6;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = PHAudioCallControlsSupplementalButton;
  [(PHAudioCallControlsSupplementalButton *)&v15 layoutSubviews];
  [(PHAudioCallControlsSupplementalButton *)self frame];
  v4 = v3 * 0.5;
  v5 = [(PHAudioCallControlsSupplementalButton *)self roundView];
  v6 = [v5 layer];
  [v6 setCornerRadius:v4];

  [(PHAudioCallControlsSupplementalButton *)self frame];
  v8 = v7;
  [(PHAudioCallControlsSupplementalButton *)self frame];
  v10 = v9;
  v11 = [(PHAudioCallControlsSupplementalButton *)self backdropEffectView];
  [v11 setFrame:{0.0, 0.0, v8, v10}];

  [(PHAudioCallControlsSupplementalButton *)self frame];
  v13 = v12 * 0.5;
  v14 = [(PHAudioCallControlsSupplementalButton *)self backdropEffectView];
  [v14 _setCornerRadius:v13];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PHAudioCallControlsSupplementalButton;
  [(PHAudioCallControlsSupplementalButton *)&v4 setHighlighted:a3];
  [(PHAudioCallControlsSupplementalButton *)self updateRoundViewColor];
  [(PHAudioCallControlsSupplementalButton *)self sendSubviewToBack:self->_roundView];
}

- (void)updateRoundViewColor
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10005C45C;
  v2[3] = &unk_100356988;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:0.170000002];
}

@end
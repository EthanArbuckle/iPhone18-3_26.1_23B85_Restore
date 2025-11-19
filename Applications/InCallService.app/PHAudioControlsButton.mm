@interface PHAudioControlsButton
- (BOOL)isIPad;
- (BOOL)isiPadPostersEnabled;
- (CGRect)imageRectForContentRect:(CGRect)a3;
- (CGRect)titleRectForContentRect:(CGRect)a3;
- (CGSize)_buttonSize;
- (CGSize)sizeOverride;
- (NSArray)ambientButtonParts;
- (PHAudioControlsButton)initWithFrame:(CGRect)a3;
- (PHAudioControlsButtonMenuDataSource)menuDataSource;
- (UIEdgeInsets)contentInsets;
- (double)_titleOffset;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)defaultIconTintColor;
- (void)adjustImageColors;
- (void)applyDisabledState;
- (void)applyHighlightedState;
- (void)applyNormalState;
- (void)applySelectedState;
- (void)layoutSubviews;
- (void)setCaptureView:(id)a3;
- (void)setContentRect:(CGRect)a3;
- (void)setControlImage:(id)a3;
- (void)setControlType:(unint64_t)a3;
- (void)setControlView:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setMenuDataSource:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setupBackdropView;
- (void)setupConstraints;
- (void)setupLabel;
- (void)setupRoundview;
- (void)setupTitleColors;
- (void)updateBackgroundMaterial:(unint64_t)a3;
- (void)updateImageColor;
- (void)updateMaterialAndAlpha;
- (void)updateRoundViewColorAnimated:(BOOL)a3;
- (void)updateViewsAnimated:(BOOL)a3;
@end

@implementation PHAudioControlsButton

- (BOOL)isIPad
{
  v2 = +[PHInCallUtilities sharedInstance];
  v3 = [v2 isIPadIdiom];

  return v3;
}

- (void)updateImageColor
{
  if ([(PHAudioControlsButton *)self controlType])
  {
    +[UIColor blackColor];
  }

  else
  {
    +[UIColor systemRedColor];
  }
  v4 = ;
  if ([(PHAudioControlsButton *)self isSelected])
  {
    [(PHAudioControlsButton *)self setTintColor:v4];
  }

  else
  {
    v3 = +[UIColor systemWhiteColor];
    [(PHAudioControlsButton *)self setTintColor:v3];
  }
}

- (void)updateMaterialAndAlpha
{
  v3 = [(PHAudioControlsButton *)self backdropEffectView];

  if (v3 && ![(PHAudioControlsButton *)self isIPad])
  {
    v4 = [(PHAudioControlsButton *)self isSelected];
    v5 = [(PHAudioControlsButton *)self backdropEffectView];
    v7 = v5;
    v6 = 1.0;
    if (v4)
    {
      v6 = 0.0;
    }

    [v5 setAlpha:v6];
  }
}

- (double)_titleOffset
{
  v2 = [(PHAudioControlsButton *)self isIPad];
  result = 6.0;
  if (v2)
  {
    v4 = +[PHUIConfiguration inCallControlSize];
    result = 0.0;
    if ((v4 - 1) <= 3)
    {
      return dbl_1002F90E0[(v4 - 1)];
    }
  }

  return result;
}

- (PHAudioControlsButton)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = PHAudioControlsButton;
  v3 = [(PHAudioControlsButton *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    uuid = v3->_uuid;
    v3->_uuid = v4;

    v3->_usesGlass = _UISolariumEnabled();
    v6 = +[UIColor clearColor];
    [(PHAudioControlsButton *)v3 setBackgroundColor:v6];

    [(PHAudioControlsButton *)v3 setupLabel];
    [(PHAudioControlsButton *)v3 setupBackdropView];
    [(PHAudioControlsButton *)v3 setupRoundview];
    [(PHAudioControlsButton *)v3 setupConstraints];
    if (v3->_roundView)
    {
      [(PHAudioControlsButton *)v3 sendSubviewToBack:?];
    }

    if (![(PHAudioControlsButton *)v3 isIPad])
    {
      [(PHAudioControlsButton *)v3 sendSubviewToBack:v3->_backdropEffectView];
    }

    v7 = [(PHAudioControlsButton *)v3 imageView];
    [(PHAudioControlsButton *)v3 bringSubviewToFront:v7];

    [(PHAudioControlsButton *)v3 setupTitleColors];
    [(PHAudioControlsButton *)v3 adjustImageColors];
    v8 = [(PHAudioControlsButton *)v3 layer];
    [v8 setAllowsGroupBlending:0];

    v9 = [(PHAudioControlsButton *)v3 layer];
    [v9 setAllowsGroupOpacity:0];

    [(PHAudioControlsButton *)v3 _titleOffset];
    [(PHAudioControlsButton *)v3 setTitleEdgeInsets:?];
    [(PHAudioControlsButton *)v3 updateViewsAnimated:0];
  }

  return v3;
}

- (BOOL)isiPadPostersEnabled
{
  v3 = [(PHAudioControlsButton *)self _currentUserInterfaceIdiom];
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  return v3 == ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1) && self->_usesLargeFormatUI;
}

- (void)setupLabel
{
  v7 = [(PHAudioControlsButton *)self titleLabel];
  if ([(PHAudioControlsButton *)self isiPadPostersEnabled])
  {
    v3 = [UIFont ib_preferredFontForTextStyle:UIFontTextStyleBody];
  }

  else
  {
    v4 = +[PHUIConfiguration inCallControlSize];
    v5 = 15.0;
    if (v4 == 1)
    {
      v5 = 13.0;
    }

    v3 = [UIFont systemFontOfSize:v5];
  }

  v6 = v3;
  [v7 setFont:v3];

  [v7 setLineBreakMode:0];
  [v7 setTextAlignment:1];
  if ([(PHAudioControlsButton *)self isiPadPostersEnabled])
  {
    [v7 setAdjustsFontForContentSizeCategory:1];
    [v7 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
    [v7 setNumberOfLines:2];
  }
}

- (void)setupRoundview
{
  if ([(PHAudioControlsButton *)self controlType]!= 16 || ![(PHAudioControlsButton *)self usesGlass])
  {
    [(PHAudioControlsButton *)self _buttonSize];
    v4 = v3;
    v6 = v5;
    if ([(PHAudioControlsButton *)self usesGlass])
    {
      [(PHAudioControlsButton *)self setOverrideUserInterfaceStyle:1];
      v7 = [(PHAudioControlsButton *)self layer];
      [v7 setCornerRadius:v6 * 0.5];

      [(PHAudioControlsButton *)self applySmallClearGlassBackground];
    }

    else
    {
      v8 = [PHRoundView alloc];
      *&v9 = v6 * 0.5;
      v10 = [v8 initWithFrame:CGRectZero.origin.x cornerRadius:{CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, v9}];
      roundView = self->_roundView;
      self->_roundView = v10;

      [(PHRoundView *)self->_roundView setTranslatesAutoresizingMaskIntoConstraints:0];
      v12 = [(PHRoundView *)self->_roundView widthAnchor];
      v13 = [v12 constraintEqualToConstant:v4];
      [v13 setActive:1];

      v14 = [(PHRoundView *)self->_roundView heightAnchor];
      v15 = [v14 constraintEqualToConstant:v6];
      [v15 setActive:1];

      [(PHRoundView *)self->_roundView setUserInteractionEnabled:0];
      v16 = self->_roundView;

      [(PHAudioControlsButton *)self addSubview:v16];
    }
  }
}

- (void)setupBackdropView
{
  if (![(PHAudioControlsButton *)self usesGlass])
  {
    [(PHAudioControlsButton *)self _buttonSize];
    v4 = v3;
    v6 = v5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006A0F8;
    v12[3] = &unk_1003574B0;
    v12[5] = v3;
    v12[6] = v5;
    v12[4] = self;
    v7 = objc_retainBlock(v12);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006A2A0;
    v11[3] = &unk_1003574B0;
    v11[5] = v4;
    v11[6] = v6;
    v11[4] = self;
    v8 = objc_retainBlock(v11);
    v9 = [(PHAudioControlsButton *)self isiPadPostersEnabled];
    v10 = v8;
    if ((v9 & 1) == 0)
    {
      if ([(PHAudioControlsButton *)self isIPad])
      {
        v10 = v7;
      }

      else
      {
        v10 = v8;
      }
    }

    (v10[2])();
  }
}

- (void)updateBackgroundMaterial:(unint64_t)a3
{
  if ([(PHAudioControlsButton *)self usesGlass])
  {
    return;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v12 = [(PHAudioControlsButton *)self backdropEffectView];

      if (!v12)
      {
        return;
      }

      v6 = +[UIColorEffect inCallControlsButtonNoPhotoNoAvatar];
      v7 = [UIBlurEffect effectWithBlurRadius:30.0];
      v18 = v6;
      v19 = v7;
      v10 = &v18;
    }

    else
    {
      if (a3 != 3)
      {
        return;
      }

      v9 = [(PHAudioControlsButton *)self backdropEffectView];

      if (!v9)
      {
        return;
      }

      v6 = +[UIColorEffect inCallControlsEmergencyCallButton];
      v7 = [UIBlurEffect effectWithBlurRadius:100.0];
      v14 = v6;
      v15 = v7;
      v10 = &v14;
    }

LABEL_15:
    v8 = [NSArray arrayWithObjects:v10 count:2, v14, v15, v16, v17, v18, v19];
    v13 = [(PHAudioControlsButton *)self backdropEffectView];
    [v13 setBackgroundEffects:v8];

    goto LABEL_16;
  }

  if (!a3)
  {
    v11 = [(PHAudioControlsButton *)self backdropEffectView];

    if (!v11)
    {
      return;
    }

    v6 = +[UIColorEffect inCallControls];
    v7 = [UIBlurEffect effectWithBlurRadius:40.0];
    v16 = v6;
    v17 = v7;
    v10 = &v16;
    goto LABEL_15;
  }

  if (a3 == 1)
  {
    v5 = [(PHAudioControlsButton *)self backdropEffectView];

    if (v5)
    {
      v6 = +[UIColorEffect inCallControlsButtonAvatarOnly];
      v20 = v6;
      v7 = [NSArray arrayWithObjects:&v20 count:1];
      v8 = [(PHAudioControlsButton *)self backdropEffectView];
      [v8 setBackgroundEffects:v7];
LABEL_16:
    }
  }
}

- (void)setupTitleColors
{
  v3 = [UIColor colorWithWhite:1.0 alpha:1.0];
  [(PHAudioControlsButton *)self setTitleColor:v3 forState:0];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PHAudioControlsButton;
  [(PHAudioControlsButton *)&v4 layoutSubviews];
  v3 = +[UIColor clearColor];
  [(PHAudioControlsButton *)self setBackgroundColor:v3];
}

- (void)setupConstraints
{
  roundView = self->_roundView;
  if (roundView)
  {
    v4 = [NSLayoutConstraint constraintWithItem:roundView attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
    [(PHAudioControlsButton *)self addConstraint:v4];

    v5 = [NSLayoutConstraint constraintWithItem:self->_roundView attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
    [(PHAudioControlsButton *)self addConstraint:v5];
  }

  if (![(PHAudioControlsButton *)self usesGlass]&& [(PHAudioControlsButton *)self isiPadPostersEnabled])
  {
    [(UIVisualEffectView *)self->_backdropEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(UIVisualEffectView *)self->_backdropEffectView widthAnchor];
    [(PHAudioControlsButton *)self _buttonSize];
    v7 = [v6 constraintEqualToConstant:?];
    [v7 setActive:1];

    v8 = [(UIVisualEffectView *)self->_backdropEffectView heightAnchor];
    [(PHAudioControlsButton *)self _buttonSize];
    v10 = [v8 constraintEqualToConstant:v9];
    [v10 setActive:1];

    v11 = [(UIVisualEffectView *)self->_backdropEffectView centerXAnchor];
    v12 = [(UIVisualEffectView *)self->_backdropEffectView superview];
    v13 = [v12 centerXAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    [v14 setActive:1];

    v18 = [(UIVisualEffectView *)self->_backdropEffectView centerYAnchor];
    v15 = [(UIVisualEffectView *)self->_backdropEffectView superview];
    v16 = [v15 centerYAnchor];
    v17 = [v18 constraintEqualToAnchor:v16];
    [v17 setActive:1];
  }
}

- (void)setControlType:(unint64_t)a3
{
  self->_controlType = a3;
  if (a3 == 16)
  {
    [(PHAudioControlsButton *)self removeBackground];
  }
}

- (void)adjustImageColors
{
  if ([(PHAudioControlsButton *)self isIPad]|| [(PHAudioControlsButton *)self usesGlass])
  {
    [(PHAudioControlsButton *)self setAdjustsImageWhenDisabled:1];
  }

  [(PHAudioControlsButton *)self setAdjustsImageWhenHighlighted:0];
}

- (CGRect)titleRectForContentRect:(CGRect)a3
{
  width = a3.size.width;
  x = a3.origin.x;
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  right = self->_contentInsets.right;
  v9 = a3.origin.y + top;
  v10 = a3.size.height - (top + self->_contentInsets.bottom);
  v11 = [(PHAudioControlsButton *)self controlType];
  v12 = [(PHAudioControlsButton *)self currentTitle];
  [(PHAudioControlsButton *)self bounds];
  v17 = -12.0;
  if (v11 == 17)
  {
    v17 = -15.0;
  }

  v35 = CGRectInset(*&v13, v17, 0.0);
  v18 = v35.size.width;
  height = v35.size.height;
  v33 = NSFontAttributeName;
  v20 = [(PHAudioControlsButton *)self _font:v35.origin.x];
  v34 = v20;
  v21 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  [v12 boundingRectWithSize:1 options:v21 attributes:0 context:{v18, height}];
  v23 = v22;
  v25 = v24;

  v26 = ceil(v25);
  v27 = [(PHAudioControlsButton *)self isIPad];
  [(PHAudioControlsButton *)self _titleOffset];
  v29 = v9 + v10 + v28;
  if (v27)
  {
    v29 = v29 - floor(v26 / 2.4000001);
  }

  v30 = ceil(v23);
  v31 = x + left + (width - (left + right) - v30) * 0.5;
  v32 = v26;
  result.size.height = v32;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v31;
  return result;
}

- (CGRect)imageRectForContentRect:(CGRect)a3
{
  left = self->_contentInsets.left;
  v5 = a3.origin.x + left;
  v6 = a3.size.width - (left + self->_contentInsets.right);
  v7 = a3.size.height - (self->_contentInsets.top + self->_contentInsets.bottom);
  v8 = [(PHAudioControlsButton *)self currentImage];
  if (v8)
  {
    v9 = [(PHAudioControlsButton *)self currentImage];
    [v9 size];
    width = v10;
    height = v12;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  [(PHAudioControlsButton *)self imageEdgeInsets];
  v15 = width - v14;
  [(PHAudioControlsButton *)self imageEdgeInsets];
  v17 = v15 - v16;
  [(PHAudioControlsButton *)self imageEdgeInsets];
  v19 = height - v18;
  [(PHAudioControlsButton *)self imageEdgeInsets];
  v21 = v19 - v20;
  x = v5 + (v6 - v17) * 0.5;
  y = v7 * 0.5 - ceil(v21 * 0.5);
  if (![(PHAudioControlsButton *)self isIPad]&& [(PHAudioControlsButton *)self controlType]== 4)
  {
    v24 = -2.0;
    v25 = 0.0;
LABEL_9:
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = v17;
    v30.size.height = v21;
    v31 = CGRectOffset(v30, v24, v25);
    x = v31.origin.x;
    y = v31.origin.y;
    v17 = v31.size.width;
    v21 = v31.size.height;
    goto LABEL_10;
  }

  if ([(PHAudioControlsButton *)self controlType]== 19)
  {
    v24 = 2.0;
    v25 = 2.0;
    goto LABEL_9;
  }

LABEL_10:
  v26 = x;
  v27 = y;
  v28 = v17;
  v29 = v21;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)setContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_contentInsets = &self->_contentInsets;
  [(PHAudioControlsButton *)self bounds];
  v10 = v9 - height - y;
  [(PHAudioControlsButton *)self bounds];
  p_contentInsets->top = y;
  p_contentInsets->left = x;
  p_contentInsets->bottom = v10;
  p_contentInsets->right = v11 - x - width;
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PHAudioControlsButton;
  [(PHAudioControlsButton *)&v4 setHighlighted:a3];
  [(PHAudioControlsButton *)self updateViewsAnimated:1];
  if (self->_roundView)
  {
    [(PHAudioControlsButton *)self sendSubviewToBack:?];
  }

  if (![(PHAudioControlsButton *)self isIPad])
  {
    [(PHAudioControlsButton *)self sendSubviewToBack:self->_backdropEffectView];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHAudioControlsButton *)self isSelected];
  v6.receiver = self;
  v6.super_class = PHAudioControlsButton;
  [(PHAudioControlsButton *)&v6 setSelected:v3];
  if (v5 != v3)
  {
    [(PHAudioControlsButton *)self updateViewsAnimated:1];
  }

  if (self->_roundView)
  {
    [(PHAudioControlsButton *)self sendSubviewToBack:?];
  }

  if (![(PHAudioControlsButton *)self isIPad])
  {
    [(PHAudioControlsButton *)self sendSubviewToBack:self->_backdropEffectView];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHAudioControlsButton *)self isEnabled];
  v6.receiver = self;
  v6.super_class = PHAudioControlsButton;
  [(PHAudioControlsButton *)&v6 setEnabled:v3];
  if (v5 != v3)
  {
    [(PHAudioControlsButton *)self updateViewsAnimated:1];
  }

  if (self->_roundView)
  {
    [(PHAudioControlsButton *)self sendSubviewToBack:?];
  }

  if (![(PHAudioControlsButton *)self isIPad]&& ![(PHAudioControlsButton *)self usesGlass])
  {
    [(PHAudioControlsButton *)self sendSubviewToBack:self->_backdropEffectView];
  }
}

- (void)setControlImage:(id)a3
{
  v5 = a3;
  if (self->_controlImage != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_controlImage, a3);
    v6 = [(PHAudioControlsButton *)self controlImage];
    [(PHAudioControlsButton *)self setImage:v6 forStates:0];

    [(PHAudioControlsButton *)self updateViewsAnimated:0];
    v5 = v7;
  }
}

- (void)setControlView:(id)a3
{
  v5 = a3;
  if (!self->_controlView)
  {
    v15 = v5;
    objc_storeStrong(&self->_controlView, a3);
    [(PHAudioControlsButton *)self insertSubview:self->_controlView atIndex:0];
    [(UIView *)self->_controlView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(UIView *)self->_controlView heightAnchor];
    [(PHAudioControlsButton *)self _buttonSize];
    v8 = [v6 constraintEqualToConstant:v7];
    [v8 setActive:1];

    v9 = [(UIView *)self->_controlView topAnchor];
    v10 = [(PHAudioControlsButton *)self topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    [v11 setActive:1];

    v12 = [(UIView *)self->_controlView centerXAnchor];
    v13 = [(PHAudioControlsButton *)self centerXAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    [v14 setActive:1];

    [(UIView *)self->_controlView setAutoresizingMask:18];
    [(UIView *)self->_controlView setUserInteractionEnabled:0];
    v5 = v15;
  }
}

- (void)updateViewsAnimated:(BOOL)a3
{
  [(PHAudioControlsButton *)self updateRoundViewColorAnimated:a3];
  [(PHAudioControlsButton *)self updateImageColor];
  [(PHAudioControlsButton *)self updateMaterialAndAlpha];
  [(PHAudioControlsButton *)self setNeedsDisplay];
  [(PHAudioControlsButton *)self forceDisplayIfNeeded];
  v4 = [(PHAudioControlsButton *)self roundView];
  if (v4 || ([(PHAudioControlsButton *)self backdropView], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v9 = [(PHAudioControlsButton *)self backdropEffectView];

    if (!v9)
    {
      return;
    }
  }

  if (![(PHAudioControlsButton *)self isIPad]&& [(PHAudioControlsButton *)self controlType]== 16)
  {
    v5 = [(PHAudioControlsButton *)self roundView];

    if (v5)
    {
      v6 = [(PHAudioControlsButton *)self roundView];
      [v6 setAlpha:0.0];
    }

    v7 = [(PHAudioControlsButton *)self backdropEffectView];
    [v7 setAlpha:0.0];
  }

  if ([(PHAudioControlsButton *)self controlType]== 15)
  {
    v8 = [(PHAudioControlsButton *)self backdropView];
    [v8 setAlpha:0.0];

    v10 = [(PHAudioControlsButton *)self backdropEffectView];
    [v10 setAlpha:0.0];
  }
}

- (void)applyDisabledState
{
  if (![(PHAudioControlsButton *)self isIPad]|| [(PHAudioControlsButton *)self isiPadPostersEnabled]|| [(PHAudioControlsButton *)self controlType]== 16)
  {
    return;
  }

  v3 = [(PHAudioControlsButton *)self controlType];
  v4 = [(PHAudioControlsButton *)self usesGlass];
  if (v3 != 15)
  {
    if (v4)
    {
      v8 = [UIColor colorWithWhite:1.0 alpha:0.0500000007];
      [(PHAudioControlsButton *)self applySmallClearGlassBackgroundWithTintColor:?];
      goto LABEL_13;
    }

    v8 = [(PHAudioControlsButton *)self roundView];
    v6 = [UIColor colorWithWhite:1.0 alpha:0.0500000007];
    [v8 setBackgroundColor:v6];
LABEL_12:

    goto LABEL_13;
  }

  if (!v4)
  {
    v8 = [(PHAudioControlsButton *)self roundView];
    v6 = +[UIColor systemRedColor];
    v7 = [v6 colorWithAlphaComponent:0.0500000007];
    [v8 setBackgroundColor:v7];

    goto LABEL_12;
  }

  v8 = +[UIColor systemRedColor];
  v5 = [v8 colorWithAlphaComponent:0.0500000007];
  [(PHAudioControlsButton *)self applySmallClearGlassBackgroundWithTintColor:v5];

LABEL_13:
}

- (id)defaultIconTintColor
{
  if ([(PHAudioControlsButton *)self controlType])
  {
    if ([(PHAudioControlsButton *)self controlType]!= 15)
    {
      v5 = [(PHAudioControlsButton *)self traitCollection];
      if ([v5 userInterfaceStyle] == 1)
      {
        +[UIColor systemBlackColor];
      }

      else
      {
        +[UIColor systemWhiteColor];
      }
      v4 = ;

      goto LABEL_10;
    }

    v3 = +[UIColor systemWhiteColor];
  }

  else
  {
    v3 = +[UIColor systemBlackColor];
  }

  v4 = v3;
LABEL_10:

  return v4;
}

- (void)applySelectedState
{
  if ([(PHAudioControlsButton *)self usesGlass])
  {
    v4 = [UIColor colorWithWhite:1.0 alpha:1.0];
    [(PHAudioControlsButton *)self applySmallClearGlassBackgroundWithTintColor:?];
  }

  else
  {
    v4 = [(PHAudioControlsButton *)self roundView];
    v3 = [UIColor colorWithWhite:1.0 alpha:1.0];
    [v4 setBackgroundColor:v3];
  }
}

- (void)applyHighlightedState
{
  if ([(PHAudioControlsButton *)self controlType]!= 16)
  {
    if ([(PHAudioControlsButton *)self usesGlass])
    {
      if ([(PHAudioControlsButton *)self controlType]== 15)
      {
        v5 = +[UIColor systemRedColor];
        v3 = [v5 colorWithAlphaComponent:0.649999976];
        [(PHAudioControlsButton *)self applySmallClearGlassBackgroundWithTintColor:v3];
      }

      else
      {
        v5 = [UIColor colorWithWhite:1.0 alpha:0.649999976];
        [(PHAudioControlsButton *)self applySmallClearGlassBackgroundWithTintColor:?];
      }
    }

    else
    {
      v5 = [(PHAudioControlsButton *)self roundView];
      v4 = [UIColor colorWithWhite:1.0 alpha:0.649999976];
      [v5 setBackgroundColor:v4];
    }
  }
}

- (void)applyNormalState
{
  if ([(PHAudioControlsButton *)self controlType]== 16)
  {
    return;
  }

  v3 = [(PHAudioControlsButton *)self controlType];
  v4 = [(PHAudioControlsButton *)self usesGlass];
  if (v3 == 15)
  {
    if (v4)
    {
      v7 = +[UIColor systemRedColor];
      [(PHAudioControlsButton *)self applySmallClearGlassBackgroundWithTintColor:v7];
LABEL_12:

      return;
    }

    v7 = [(PHAudioControlsButton *)self roundView];
    v5 = +[UIColor systemRedColor];
LABEL_11:
    v6 = v5;
    [v7 setBackgroundColor:v5];

    goto LABEL_12;
  }

  if (!v4)
  {
    v7 = [(PHAudioControlsButton *)self roundView];
    v5 = +[UIColor clearColor];
    goto LABEL_11;
  }

  [(PHAudioControlsButton *)self applySmallClearGlassBackground];
}

- (void)updateRoundViewColorAnimated:(BOOL)a3
{
  v3 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006B858;
  v6[3] = &unk_100356988;
  v6[4] = self;
  v4 = objc_retainBlock(v6);
  v5 = v4;
  if (v3)
  {
    [UIView animateWithDuration:v4 animations:0.170000002];
  }

  else
  {
    (v4[2])(v4);
  }
}

- (CGSize)_buttonSize
{
  if ([(PHAudioControlsButton *)self isiPadPostersEnabled])
  {
    v3 = +[UIScreen mainScreen];
    [v3 bounds];
    v5 = v4;
    v7 = v6;

    if (v5 >= v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    v9 = v8 * 0.065;
    goto LABEL_6;
  }

  [(PHAudioControlsButton *)self sizeOverride];
  if (CGSizeZero.width == v12 && CGSizeZero.height == v11)
  {
    if (![(PHAudioControlsButton *)self isIPad])
    {
      v15 = +[UIScreen mainScreen];
      [v15 bounds];
      v17 = v16;
      v19 = v18;

      if (v17 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v17;
      }

      v21 = v20 * 0.1976;
      v9 = roundf(v21);
      goto LABEL_6;
    }

    v14 = +[PHUIConfiguration inCallControlSize];
    if (v14 > 2)
    {
      if (v14 == 4)
      {
        v9 = 85.0;
LABEL_6:
        v10 = v9;
        goto LABEL_26;
      }
    }

    else if (v14 == 1)
    {
      v9 = 65.0;
      goto LABEL_6;
    }

    v9 = 75.0;
    goto LABEL_6;
  }

  [(PHAudioControlsButton *)self sizeOverride];
LABEL_26:
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setCaptureView:(id)a3
{
  v6 = a3;
  if (![(PHAudioControlsButton *)self isIPad]&& ![(PHAudioControlsButton *)self usesGlass])
  {
    v4 = [(PHAudioControlsButton *)self backdropEffectView];
    [v4 _setGroupName:@"InCallButtonsCaptureGroup"];

    v5 = [(PHAudioControlsButton *)self backdropEffectView];
    [v5 _setCaptureView:v6];
  }
}

- (void)setMenuDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_menuDataSource);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_menuDataSource, obj);
    [(PHAudioControlsButton *)self setContextMenuEnabled:obj != 0];
    [(PHAudioControlsButton *)self setContextMenuIsPrimary:obj != 0];
  }
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006BC48;
  v6[3] = &unk_1003574D8;
  v7 = a4;
  v6[4] = self;
  v4 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v6];

  return v4;
}

- (NSArray)ambientButtonParts
{
  v3 = objc_alloc_init(NSMutableArray);
  roundView = self->_roundView;
  if (roundView)
  {
    v5 = [PHAmbientButtonPart partWithView:roundView type:0];
    [v3 addObject:v5];
  }

  backdropView = self->_backdropView;
  if (backdropView)
  {
    v7 = [PHAmbientButtonPart partWithView:backdropView type:0];
    [v3 addObject:v7];
  }

  if (self->_backdropEffectView && [(PHAudioControlsButton *)self ambientButtonType]!= 2)
  {
    v8 = [PHAmbientButtonPart partWithView:self->_backdropEffectView type:0];
    [v3 addObject:v8];
  }

  v9 = [(PHAudioControlsButton *)self imageView];

  if (v9)
  {
    v10 = [(PHAudioControlsButton *)self imageView];
    v11 = [PHAmbientButtonPart partWithView:v10 type:1];
    [v3 addObject:v11];
  }

  v12 = [(PHAudioControlsButton *)self titleLabel];

  if (v12)
  {
    v13 = [(PHAudioControlsButton *)self titleLabel];
    v14 = [PHAmbientButtonPart partWithView:v13 type:2];
    [v3 addObject:v14];
  }

  return v3;
}

- (PHAudioControlsButtonMenuDataSource)menuDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_menuDataSource);

  return WeakRetained;
}

- (CGSize)sizeOverride
{
  objc_copyStruct(v4, &self->_sizeOverride, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  objc_copyStruct(v6, &self->_contentInsets, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end
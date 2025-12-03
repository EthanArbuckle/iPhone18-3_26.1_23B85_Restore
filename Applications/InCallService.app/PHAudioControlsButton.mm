@interface PHAudioControlsButton
- (BOOL)isIPad;
- (BOOL)isiPadPostersEnabled;
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (CGRect)titleRectForContentRect:(CGRect)rect;
- (CGSize)_buttonSize;
- (CGSize)sizeOverride;
- (NSArray)ambientButtonParts;
- (PHAudioControlsButton)initWithFrame:(CGRect)frame;
- (PHAudioControlsButtonMenuDataSource)menuDataSource;
- (UIEdgeInsets)contentInsets;
- (double)_titleOffset;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)defaultIconTintColor;
- (void)adjustImageColors;
- (void)applyDisabledState;
- (void)applyHighlightedState;
- (void)applyNormalState;
- (void)applySelectedState;
- (void)layoutSubviews;
- (void)setCaptureView:(id)view;
- (void)setContentRect:(CGRect)rect;
- (void)setControlImage:(id)image;
- (void)setControlType:(unint64_t)type;
- (void)setControlView:(id)view;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setMenuDataSource:(id)source;
- (void)setSelected:(BOOL)selected;
- (void)setupBackdropView;
- (void)setupConstraints;
- (void)setupLabel;
- (void)setupRoundview;
- (void)setupTitleColors;
- (void)updateBackgroundMaterial:(unint64_t)material;
- (void)updateImageColor;
- (void)updateMaterialAndAlpha;
- (void)updateRoundViewColorAnimated:(BOOL)animated;
- (void)updateViewsAnimated:(BOOL)animated;
@end

@implementation PHAudioControlsButton

- (BOOL)isIPad
{
  v2 = +[PHInCallUtilities sharedInstance];
  isIPadIdiom = [v2 isIPadIdiom];

  return isIPadIdiom;
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
  backdropEffectView = [(PHAudioControlsButton *)self backdropEffectView];

  if (backdropEffectView && ![(PHAudioControlsButton *)self isIPad])
  {
    isSelected = [(PHAudioControlsButton *)self isSelected];
    backdropEffectView2 = [(PHAudioControlsButton *)self backdropEffectView];
    v7 = backdropEffectView2;
    v6 = 1.0;
    if (isSelected)
    {
      v6 = 0.0;
    }

    [backdropEffectView2 setAlpha:v6];
  }
}

- (double)_titleOffset
{
  isIPad = [(PHAudioControlsButton *)self isIPad];
  result = 6.0;
  if (isIPad)
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

- (PHAudioControlsButton)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = PHAudioControlsButton;
  v3 = [(PHAudioControlsButton *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    imageView = [(PHAudioControlsButton *)v3 imageView];
    [(PHAudioControlsButton *)v3 bringSubviewToFront:imageView];

    [(PHAudioControlsButton *)v3 setupTitleColors];
    [(PHAudioControlsButton *)v3 adjustImageColors];
    layer = [(PHAudioControlsButton *)v3 layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [(PHAudioControlsButton *)v3 layer];
    [layer2 setAllowsGroupOpacity:0];

    [(PHAudioControlsButton *)v3 _titleOffset];
    [(PHAudioControlsButton *)v3 setTitleEdgeInsets:?];
    [(PHAudioControlsButton *)v3 updateViewsAnimated:0];
  }

  return v3;
}

- (BOOL)isiPadPostersEnabled
{
  _currentUserInterfaceIdiom = [(PHAudioControlsButton *)self _currentUserInterfaceIdiom];
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  return _currentUserInterfaceIdiom == ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1) && self->_usesLargeFormatUI;
}

- (void)setupLabel
{
  titleLabel = [(PHAudioControlsButton *)self titleLabel];
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
  [titleLabel setFont:v3];

  [titleLabel setLineBreakMode:0];
  [titleLabel setTextAlignment:1];
  if ([(PHAudioControlsButton *)self isiPadPostersEnabled])
  {
    [titleLabel setAdjustsFontForContentSizeCategory:1];
    [titleLabel setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
    [titleLabel setNumberOfLines:2];
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
      layer = [(PHAudioControlsButton *)self layer];
      [layer setCornerRadius:v6 * 0.5];

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
      widthAnchor = [(PHRoundView *)self->_roundView widthAnchor];
      v13 = [widthAnchor constraintEqualToConstant:v4];
      [v13 setActive:1];

      heightAnchor = [(PHRoundView *)self->_roundView heightAnchor];
      v15 = [heightAnchor constraintEqualToConstant:v6];
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
    isiPadPostersEnabled = [(PHAudioControlsButton *)self isiPadPostersEnabled];
    v10 = v8;
    if ((isiPadPostersEnabled & 1) == 0)
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

- (void)updateBackgroundMaterial:(unint64_t)material
{
  if ([(PHAudioControlsButton *)self usesGlass])
  {
    return;
  }

  if (material > 1)
  {
    if (material == 2)
    {
      backdropEffectView = [(PHAudioControlsButton *)self backdropEffectView];

      if (!backdropEffectView)
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
      if (material != 3)
      {
        return;
      }

      backdropEffectView2 = [(PHAudioControlsButton *)self backdropEffectView];

      if (!backdropEffectView2)
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
    backdropEffectView6 = [NSArray arrayWithObjects:v10 count:2, v14, v15, v16, v17, v18, v19];
    backdropEffectView3 = [(PHAudioControlsButton *)self backdropEffectView];
    [backdropEffectView3 setBackgroundEffects:backdropEffectView6];

    goto LABEL_16;
  }

  if (!material)
  {
    backdropEffectView4 = [(PHAudioControlsButton *)self backdropEffectView];

    if (!backdropEffectView4)
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

  if (material == 1)
  {
    backdropEffectView5 = [(PHAudioControlsButton *)self backdropEffectView];

    if (backdropEffectView5)
    {
      v6 = +[UIColorEffect inCallControlsButtonAvatarOnly];
      v20 = v6;
      v7 = [NSArray arrayWithObjects:&v20 count:1];
      backdropEffectView6 = [(PHAudioControlsButton *)self backdropEffectView];
      [backdropEffectView6 setBackgroundEffects:v7];
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
    widthAnchor = [(UIVisualEffectView *)self->_backdropEffectView widthAnchor];
    [(PHAudioControlsButton *)self _buttonSize];
    v7 = [widthAnchor constraintEqualToConstant:?];
    [v7 setActive:1];

    heightAnchor = [(UIVisualEffectView *)self->_backdropEffectView heightAnchor];
    [(PHAudioControlsButton *)self _buttonSize];
    v10 = [heightAnchor constraintEqualToConstant:v9];
    [v10 setActive:1];

    centerXAnchor = [(UIVisualEffectView *)self->_backdropEffectView centerXAnchor];
    superview = [(UIVisualEffectView *)self->_backdropEffectView superview];
    centerXAnchor2 = [superview centerXAnchor];
    v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v14 setActive:1];

    centerYAnchor = [(UIVisualEffectView *)self->_backdropEffectView centerYAnchor];
    superview2 = [(UIVisualEffectView *)self->_backdropEffectView superview];
    centerYAnchor2 = [superview2 centerYAnchor];
    v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v17 setActive:1];
  }
}

- (void)setControlType:(unint64_t)type
{
  self->_controlType = type;
  if (type == 16)
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

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  width = rect.size.width;
  x = rect.origin.x;
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  right = self->_contentInsets.right;
  v9 = rect.origin.y + top;
  v10 = rect.size.height - (top + self->_contentInsets.bottom);
  controlType = [(PHAudioControlsButton *)self controlType];
  currentTitle = [(PHAudioControlsButton *)self currentTitle];
  [(PHAudioControlsButton *)self bounds];
  v17 = -12.0;
  if (controlType == 17)
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
  [currentTitle boundingRectWithSize:1 options:v21 attributes:0 context:{v18, height}];
  v23 = v22;
  v25 = v24;

  v26 = ceil(v25);
  isIPad = [(PHAudioControlsButton *)self isIPad];
  [(PHAudioControlsButton *)self _titleOffset];
  v29 = v9 + v10 + v28;
  if (isIPad)
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

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  left = self->_contentInsets.left;
  v5 = rect.origin.x + left;
  v6 = rect.size.width - (left + self->_contentInsets.right);
  v7 = rect.size.height - (self->_contentInsets.top + self->_contentInsets.bottom);
  currentImage = [(PHAudioControlsButton *)self currentImage];
  if (currentImage)
  {
    currentImage2 = [(PHAudioControlsButton *)self currentImage];
    [currentImage2 size];
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

- (void)setContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_contentInsets = &self->_contentInsets;
  [(PHAudioControlsButton *)self bounds];
  v10 = v9 - height - y;
  [(PHAudioControlsButton *)self bounds];
  p_contentInsets->top = y;
  p_contentInsets->left = x;
  p_contentInsets->bottom = v10;
  p_contentInsets->right = v11 - x - width;
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = PHAudioControlsButton;
  [(PHAudioControlsButton *)&v4 setHighlighted:highlighted];
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

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  isSelected = [(PHAudioControlsButton *)self isSelected];
  v6.receiver = self;
  v6.super_class = PHAudioControlsButton;
  [(PHAudioControlsButton *)&v6 setSelected:selectedCopy];
  if (isSelected != selectedCopy)
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

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  isEnabled = [(PHAudioControlsButton *)self isEnabled];
  v6.receiver = self;
  v6.super_class = PHAudioControlsButton;
  [(PHAudioControlsButton *)&v6 setEnabled:enabledCopy];
  if (isEnabled != enabledCopy)
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

- (void)setControlImage:(id)image
{
  imageCopy = image;
  if (self->_controlImage != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_controlImage, image);
    controlImage = [(PHAudioControlsButton *)self controlImage];
    [(PHAudioControlsButton *)self setImage:controlImage forStates:0];

    [(PHAudioControlsButton *)self updateViewsAnimated:0];
    imageCopy = v7;
  }
}

- (void)setControlView:(id)view
{
  viewCopy = view;
  if (!self->_controlView)
  {
    v15 = viewCopy;
    objc_storeStrong(&self->_controlView, view);
    [(PHAudioControlsButton *)self insertSubview:self->_controlView atIndex:0];
    [(UIView *)self->_controlView setTranslatesAutoresizingMaskIntoConstraints:0];
    heightAnchor = [(UIView *)self->_controlView heightAnchor];
    [(PHAudioControlsButton *)self _buttonSize];
    v8 = [heightAnchor constraintEqualToConstant:v7];
    [v8 setActive:1];

    topAnchor = [(UIView *)self->_controlView topAnchor];
    topAnchor2 = [(PHAudioControlsButton *)self topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v11 setActive:1];

    centerXAnchor = [(UIView *)self->_controlView centerXAnchor];
    centerXAnchor2 = [(PHAudioControlsButton *)self centerXAnchor];
    v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v14 setActive:1];

    [(UIView *)self->_controlView setAutoresizingMask:18];
    [(UIView *)self->_controlView setUserInteractionEnabled:0];
    viewCopy = v15;
  }
}

- (void)updateViewsAnimated:(BOOL)animated
{
  [(PHAudioControlsButton *)self updateRoundViewColorAnimated:animated];
  [(PHAudioControlsButton *)self updateImageColor];
  [(PHAudioControlsButton *)self updateMaterialAndAlpha];
  [(PHAudioControlsButton *)self setNeedsDisplay];
  [(PHAudioControlsButton *)self forceDisplayIfNeeded];
  roundView = [(PHAudioControlsButton *)self roundView];
  if (roundView || ([(PHAudioControlsButton *)self backdropView], (roundView = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    backdropEffectView = [(PHAudioControlsButton *)self backdropEffectView];

    if (!backdropEffectView)
    {
      return;
    }
  }

  if (![(PHAudioControlsButton *)self isIPad]&& [(PHAudioControlsButton *)self controlType]== 16)
  {
    roundView2 = [(PHAudioControlsButton *)self roundView];

    if (roundView2)
    {
      roundView3 = [(PHAudioControlsButton *)self roundView];
      [roundView3 setAlpha:0.0];
    }

    backdropEffectView2 = [(PHAudioControlsButton *)self backdropEffectView];
    [backdropEffectView2 setAlpha:0.0];
  }

  if ([(PHAudioControlsButton *)self controlType]== 15)
  {
    backdropView = [(PHAudioControlsButton *)self backdropView];
    [backdropView setAlpha:0.0];

    backdropEffectView3 = [(PHAudioControlsButton *)self backdropEffectView];
    [backdropEffectView3 setAlpha:0.0];
  }
}

- (void)applyDisabledState
{
  if (![(PHAudioControlsButton *)self isIPad]|| [(PHAudioControlsButton *)self isiPadPostersEnabled]|| [(PHAudioControlsButton *)self controlType]== 16)
  {
    return;
  }

  controlType = [(PHAudioControlsButton *)self controlType];
  usesGlass = [(PHAudioControlsButton *)self usesGlass];
  if (controlType != 15)
  {
    if (usesGlass)
    {
      roundView = [UIColor colorWithWhite:1.0 alpha:0.0500000007];
      [(PHAudioControlsButton *)self applySmallClearGlassBackgroundWithTintColor:?];
      goto LABEL_13;
    }

    roundView = [(PHAudioControlsButton *)self roundView];
    v6 = [UIColor colorWithWhite:1.0 alpha:0.0500000007];
    [roundView setBackgroundColor:v6];
LABEL_12:

    goto LABEL_13;
  }

  if (!usesGlass)
  {
    roundView = [(PHAudioControlsButton *)self roundView];
    v6 = +[UIColor systemRedColor];
    v7 = [v6 colorWithAlphaComponent:0.0500000007];
    [roundView setBackgroundColor:v7];

    goto LABEL_12;
  }

  roundView = +[UIColor systemRedColor];
  v5 = [roundView colorWithAlphaComponent:0.0500000007];
  [(PHAudioControlsButton *)self applySmallClearGlassBackgroundWithTintColor:v5];

LABEL_13:
}

- (id)defaultIconTintColor
{
  if ([(PHAudioControlsButton *)self controlType])
  {
    if ([(PHAudioControlsButton *)self controlType]!= 15)
    {
      traitCollection = [(PHAudioControlsButton *)self traitCollection];
      if ([traitCollection userInterfaceStyle] == 1)
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
    roundView = [UIColor colorWithWhite:1.0 alpha:1.0];
    [(PHAudioControlsButton *)self applySmallClearGlassBackgroundWithTintColor:?];
  }

  else
  {
    roundView = [(PHAudioControlsButton *)self roundView];
    v3 = [UIColor colorWithWhite:1.0 alpha:1.0];
    [roundView setBackgroundColor:v3];
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
        roundView = +[UIColor systemRedColor];
        v3 = [roundView colorWithAlphaComponent:0.649999976];
        [(PHAudioControlsButton *)self applySmallClearGlassBackgroundWithTintColor:v3];
      }

      else
      {
        roundView = [UIColor colorWithWhite:1.0 alpha:0.649999976];
        [(PHAudioControlsButton *)self applySmallClearGlassBackgroundWithTintColor:?];
      }
    }

    else
    {
      roundView = [(PHAudioControlsButton *)self roundView];
      v4 = [UIColor colorWithWhite:1.0 alpha:0.649999976];
      [roundView setBackgroundColor:v4];
    }
  }
}

- (void)applyNormalState
{
  if ([(PHAudioControlsButton *)self controlType]== 16)
  {
    return;
  }

  controlType = [(PHAudioControlsButton *)self controlType];
  usesGlass = [(PHAudioControlsButton *)self usesGlass];
  if (controlType == 15)
  {
    if (usesGlass)
    {
      roundView = +[UIColor systemRedColor];
      [(PHAudioControlsButton *)self applySmallClearGlassBackgroundWithTintColor:roundView];
LABEL_12:

      return;
    }

    roundView = [(PHAudioControlsButton *)self roundView];
    v5 = +[UIColor systemRedColor];
LABEL_11:
    v6 = v5;
    [roundView setBackgroundColor:v5];

    goto LABEL_12;
  }

  if (!usesGlass)
  {
    roundView = [(PHAudioControlsButton *)self roundView];
    v5 = +[UIColor clearColor];
    goto LABEL_11;
  }

  [(PHAudioControlsButton *)self applySmallClearGlassBackground];
}

- (void)updateRoundViewColorAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006B858;
  v6[3] = &unk_100356988;
  v6[4] = self;
  v4 = objc_retainBlock(v6);
  v5 = v4;
  if (animatedCopy)
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

- (void)setCaptureView:(id)view
{
  viewCopy = view;
  if (![(PHAudioControlsButton *)self isIPad]&& ![(PHAudioControlsButton *)self usesGlass])
  {
    backdropEffectView = [(PHAudioControlsButton *)self backdropEffectView];
    [backdropEffectView _setGroupName:@"InCallButtonsCaptureGroup"];

    backdropEffectView2 = [(PHAudioControlsButton *)self backdropEffectView];
    [backdropEffectView2 _setCaptureView:viewCopy];
  }
}

- (void)setMenuDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_menuDataSource);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_menuDataSource, obj);
    [(PHAudioControlsButton *)self setContextMenuEnabled:obj != 0];
    [(PHAudioControlsButton *)self setContextMenuIsPrimary:obj != 0];
  }
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006BC48;
  v6[3] = &unk_1003574D8;
  locationCopy = location;
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

  imageView = [(PHAudioControlsButton *)self imageView];

  if (imageView)
  {
    imageView2 = [(PHAudioControlsButton *)self imageView];
    v11 = [PHAmbientButtonPart partWithView:imageView2 type:1];
    [v3 addObject:v11];
  }

  titleLabel = [(PHAudioControlsButton *)self titleLabel];

  if (titleLabel)
  {
    titleLabel2 = [(PHAudioControlsButton *)self titleLabel];
    v14 = [PHAmbientButtonPart partWithView:titleLabel2 type:2];
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
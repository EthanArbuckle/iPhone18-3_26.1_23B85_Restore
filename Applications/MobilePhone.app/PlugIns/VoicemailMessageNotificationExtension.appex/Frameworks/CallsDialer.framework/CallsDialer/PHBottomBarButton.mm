@interface PHBottomBarButton
+ (UIFont)defaultFont;
- (BOOL)canBeEnabled;
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (CGRect)titleRectForContentRect:(CGRect)rect;
- (CGSize)buttonSize;
- (CGSize)intrinsicContentSize;
- (NSArray)ambientButtonParts;
- (PHBottomBarButton)initWithConfiguration:(id)configuration appType:(int64_t)type;
- (double)titleRectYOffset;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)newOverlayView;
- (id)overlayViewForConfiguration:(id)configuration;
- (void)_performSetDisabled;
- (void)_performSetEnabled:(BOOL)enabled;
- (void)_performSetHighlighted:(BOOL)highlighted;
- (void)_performSetSelected:(BOOL)selected;
- (void)layoutSubviews;
- (void)refreshForCallState:(int64_t)state;
- (void)setBackgroundColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setOrientation:(int64_t)orientation;
- (void)setUsesSmallerFontSize:(BOOL)size;
@end

@implementation PHBottomBarButton

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PHBottomBarButton;
  [(PHBottomBarButton *)&v5 layoutSubviews];
  effectView = [(PHBottomBarButton *)self effectView];

  if (effectView)
  {
    effectView2 = [(PHBottomBarButton *)self effectView];
    [(PHBottomBarButton *)self sendSubviewToBack:effectView2];
  }
}

+ (UIFont)defaultFont
{
  if (defaultFont_onceToken != -1)
  {
    +[PHBottomBarButton defaultFont];
  }

  v3 = *&defaultFont_defaultFontSize;

  return [UIFont systemFontOfSize:v3 weight:UIFontWeightRegular];
}

- (CGSize)intrinsicContentSize
{
  [(PHBottomBarButton *)self iconSizeRatio];
  v4 = v3;
  [(PHBottomBarButton *)self diameter];
  v6 = v5;
  if (v4 != 0.0)
  {
    [(PHBottomBarButton *)self iconSizeRatio];
    v6 = v6 * v7;
  }

  [(PHBottomBarButton *)self diameter];
  v9 = v8;
  v10 = v6;
  result.height = v9;
  result.width = v10;
  return result;
}

- (double)titleRectYOffset
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  result = 6.0;
  if (userInterfaceIdiom == &dword_0 + 1)
  {
    if (titleRectYOffset_onceToken != -1)
    {
      [PHBottomBarButton titleRectYOffset];
    }

    return *&titleRectYOffset_yOffset;
  }

  return result;
}

void __32__PHBottomBarButton_defaultFont__block_invoke(id a1)
{
  v1 = +[UIScreen mainScreen];
  v2 = [v1 currentMode];
  [v2 size];
  v4 = v3;

  v5 = v4 > 2207 || v4 == 1334;
  v6 = 13.0;
  if (v5)
  {
    v6 = 15.0;
  }

  defaultFont_defaultFontSize = *&v6;
}

- (PHBottomBarButton)initWithConfiguration:(id)configuration appType:(int64_t)type
{
  configurationCopy = configuration;
  v123.receiver = self;
  v123.super_class = PHBottomBarButton;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(PHBottomBarButton *)&v123 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (!height)
  {
    goto LABEL_36;
  }

  [configurationCopy diameter];
  height->_diameter = v11;
  height->_accessoryDiameter = v11 / 3.0;
  [(PHBottomBarButton *)height setAppType:type];
  v12 = [PHRoundView alloc];
  *&v13 = height->_diameter * 0.5;
  v14 = [(PHRoundView *)v12 initWithFrame:CGRectZero.origin.x cornerRadius:y, width, height, v13];
  roundView = height->_roundView;
  height->_roundView = &v14->super;

  [(UIView *)height->_roundView setTranslatesAutoresizingMaskIntoConstraints:0];
  widthAnchor = [(UIView *)height->_roundView widthAnchor];
  v17 = [widthAnchor constraintEqualToConstant:height->_diameter];
  [v17 setActive:1];

  heightAnchor = [(UIView *)height->_roundView heightAnchor];
  v19 = [heightAnchor constraintEqualToConstant:height->_diameter];
  [v19 setActive:1];

  [(UIView *)height->_roundView setUserInteractionEnabled:0];
  v20 = height->_roundView;
  imageView = [(PHBottomBarButton *)height imageView];
  [(PHBottomBarButton *)height insertSubview:v20 below:imageView];

  action = [configurationCopy action];
  if (action <= 0x26 && ((1 << action) & 0x4000000070) != 0)
  {
    if (+[PHBottomBarButtonConfiguration usesGlass])
    {
      v23 = [(PHBottomBarButton *)height overlayViewForConfiguration:configurationCopy];
      iconView = height->_iconView;
      height->_iconView = v23;

      [(UIView *)height->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)height->_iconView setAutoresizingMask:18];
      widthAnchor2 = [(UIView *)height->_iconView widthAnchor];
      v26 = [widthAnchor2 constraintEqualToConstant:height->_diameter];
      [v26 setActive:1];

      heightAnchor2 = [(UIView *)height->_iconView heightAnchor];
      v28 = [heightAnchor2 constraintEqualToConstant:height->_diameter];
      [v28 setActive:1];

      v29 = 1;
      [(UIView *)height->_roundView addSubview:height->_iconView];
    }

    else
    {
      v29 = 1;
    }
  }

  else
  {
    if (+[PHBottomBarButtonConfiguration usesGlass])
    {
      [(PHBottomBarButton *)height setOverrideUserInterfaceStyle:1];
      backgroundColor = [configurationCopy backgroundColor];
      v31 = +[UIColor clearColor];

      v32 = height->_roundView;
      if (backgroundColor == v31)
      {
        [(UIView *)height->_roundView dialer_applySmallClearGlassBackground];
      }

      else
      {
        backgroundColor2 = [configurationCopy backgroundColor];
        [(UIView *)v32 dialer_applySmallClearGlassBackgroundWithTintColor:backgroundColor2];
      }
    }

    v29 = 0;
  }

  accessoryIcon = [configurationCopy accessoryIcon];

  if (accessoryIcon)
  {
    v35 = [PHRoundView alloc];
    *&v36 = height->_accessoryDiameter * 0.5;
    v37 = [(PHRoundView *)v35 initWithFrame:CGRectZero.origin.x cornerRadius:y, width, height, v36];
    accessoryBackgroundView = height->_accessoryBackgroundView;
    height->_accessoryBackgroundView = &v37->super;

    v39 = +[UIColor systemWhiteColor];
    [(UIView *)height->_accessoryBackgroundView setBackgroundColor:v39];

    [(UIView *)height->_accessoryBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    widthAnchor3 = [(UIView *)height->_accessoryBackgroundView widthAnchor];
    v41 = [widthAnchor3 constraintEqualToConstant:height->_accessoryDiameter];
    [v41 setActive:1];

    heightAnchor3 = [(UIView *)height->_accessoryBackgroundView heightAnchor];
    v43 = [heightAnchor3 constraintEqualToConstant:height->_accessoryDiameter];
    [v43 setActive:1];

    [(UIView *)height->_accessoryBackgroundView setUserInteractionEnabled:0];
    v44 = height->_accessoryBackgroundView;
    imageView2 = [(PHBottomBarButton *)height imageView];
    [(PHBottomBarButton *)height insertSubview:v44 above:imageView2];

    trailingAnchor = [(UIView *)height->_accessoryBackgroundView trailingAnchor];
    trailingAnchor2 = [(PHBottomBarButton *)height trailingAnchor];
    v48 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v48 setActive:1];

    bottomAnchor = [(UIView *)height->_accessoryBackgroundView bottomAnchor];
    bottomAnchor2 = [(PHBottomBarButton *)height bottomAnchor];
    v51 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v51 setActive:1];

    accessoryDiameter = height->_accessoryDiameter;
    v53 = fmax(accessoryDiameter * 0.1, 2.0);
    if (accessoryDiameter > v53)
    {
      v54 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      accessoryView = height->_accessoryView;
      height->_accessoryView = v54;

      accessoryIcon2 = [configurationCopy accessoryIcon];
      v57 = +[UIColor blackColor];
      v58 = [accessoryIcon2 _flatImageWithColor:v57];
      [(UIImageView *)height->_accessoryView setImage:v58];

      v59 = +[UIColor blackColor];
      [(UIImageView *)height->_accessoryView setTintColor:v59];

      v60 = +[UIColor clearColor];
      [(UIImageView *)height->_accessoryView setBackgroundColor:v60];

      [(UIImageView *)height->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
      widthAnchor4 = [(UIImageView *)height->_accessoryView widthAnchor];
      v62 = [widthAnchor4 constraintEqualToConstant:height->_accessoryDiameter + v53 * -2.0];
      [v62 setActive:1];

      heightAnchor4 = [(UIImageView *)height->_accessoryView heightAnchor];
      v64 = [heightAnchor4 constraintEqualToConstant:height->_accessoryDiameter + v53 * -2.0];
      [v64 setActive:1];

      [(UIImageView *)height->_accessoryView setUserInteractionEnabled:0];
      [(PHBottomBarButton *)height insertSubview:height->_accessoryView above:height->_accessoryBackgroundView];
      trailingAnchor3 = [(UIImageView *)height->_accessoryView trailingAnchor];
      trailingAnchor4 = [(PHBottomBarButton *)height trailingAnchor];
      v67 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v53];
      [v67 setActive:1];

      bottomAnchor3 = [(UIImageView *)height->_accessoryView bottomAnchor];
      bottomAnchor4 = [(PHBottomBarButton *)height bottomAnchor];
      v70 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-v53];
      [v70 setActive:1];
    }
  }

  titleLabel = [(PHBottomBarButton *)height titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:0];

  titleLabel2 = [(PHBottomBarButton *)height titleLabel];
  [titleLabel2 setTextAlignment:1];

  defaultFont = [objc_opt_class() defaultFont];
  titleLabel3 = [(PHBottomBarButton *)height titleLabel];
  [titleLabel3 setFont:defaultFont];

  titleLabel4 = [(PHBottomBarButton *)height titleLabel];
  [titleLabel4 setLineBreakMode:4];

  if (+[PHUIConfiguration inCallBottomBarMaxTitleSize]== &dword_0 + 1)
  {
    v76 = 100.0;
  }

  else
  {
    v76 = 105.0;
  }

  titleLabel5 = [(PHBottomBarButton *)height titleLabel];
  [titleLabel5 setPreferredMaxLayoutWidth:v76];

  v78 = height->_diameter * 0.5;
  layer = [(PHBottomBarButton *)height layer];
  [layer setCornerRadius:v78];

  [(PHBottomBarButton *)height setClipsToBounds:0];
  [(PHBottomBarButton *)height setAdjustsImageWhenHighlighted:0];
  title = [configurationCopy title];
  [(PHBottomBarButton *)height setTitle:title forState:0];

  if (!v29 || !+[PHBottomBarButtonConfiguration usesGlass])
  {
    icon = [configurationCopy icon];
    [(PHBottomBarButton *)height setImage:icon forState:0];
  }

  titleLabel6 = [(PHBottomBarButton *)height titleLabel];
  [titleLabel6 setNumberOfLines:0];

  backgroundColor3 = [configurationCopy backgroundColor];
  [(PHBottomBarButton *)height setBackgroundColor:backgroundColor3];

  v84 = +[UIColor whiteColor];
  [(PHBottomBarButton *)height setTintColor:v84];

  accessibilityIdentifier = [configurationCopy accessibilityIdentifier];
  [(PHBottomBarButton *)height setAccessibilityIdentifier:accessibilityIdentifier];

  selectedIcon = [configurationCopy selectedIcon];

  if (selectedIcon)
  {
    selectedIcon2 = [configurationCopy selectedIcon];
    [(PHBottomBarButton *)height setImage:selectedIcon2 forState:4];
  }

  if ([configurationCopy action] == &dword_C || objc_msgSend(configurationCopy, "action") == &dword_18 + 1 || objc_msgSend(configurationCopy, "action") == &dword_18 + 2 || objc_msgSend(configurationCopy, "action") == &dword_18 + 3 || objc_msgSend(configurationCopy, "action") == &dword_C + 1 || objc_msgSend(configurationCopy, "action") == &dword_8 + 3 || objc_msgSend(configurationCopy, "action") == &dword_8 + 2)
  {
    colorEffect = [configurationCopy colorEffect];

    if (colorEffect)
    {
      colorEffect2 = [configurationCopy colorEffect];
      v90 = [UIBlurEffect effectWithBlurRadius:40.0];
      v91 = [[UIVisualEffectView alloc] initWithEffect:0];
      [(PHBottomBarButton *)height setEffectView:v91];

      v124[0] = colorEffect2;
      v124[1] = v90;
      v92 = [NSArray arrayWithObjects:v124 count:2];
      effectView = [(PHBottomBarButton *)height effectView];
      [effectView setBackgroundEffects:v92];

      effectView2 = [(PHBottomBarButton *)height effectView];
      [effectView2 _setGroupName:@"PHBottomBarButtonCaptureGroup"];

      captureView = [configurationCopy captureView];
      effectView3 = [(PHBottomBarButton *)height effectView];
      [effectView3 _setCaptureView:captureView];
    }

    effectView4 = [(PHBottomBarButton *)height effectView];
    [effectView4 setAutoresizingMask:18];

    layer2 = [(PHBottomBarButton *)height layer];
    [layer2 cornerRadius];
    v100 = v99;
    effectView5 = [(PHBottomBarButton *)height effectView];
    layer3 = [effectView5 layer];
    [layer3 setCornerRadius:v100];

    effectView6 = [(PHBottomBarButton *)height effectView];
    [effectView6 setClipsToBounds:1];

    effectView7 = [(PHBottomBarButton *)height effectView];
    imageView3 = [(PHBottomBarButton *)height imageView];
    [(PHBottomBarButton *)height insertSubview:effectView7 belowSubview:imageView3];
    goto LABEL_33;
  }

  backgroundMaterial = [configurationCopy backgroundMaterial];

  if (backgroundMaterial)
  {
    v113 = [UIVisualEffectView alloc];
    backgroundMaterial2 = [configurationCopy backgroundMaterial];
    v115 = [v113 initWithEffect:backgroundMaterial2];
    [(PHBottomBarButton *)height setEffectView:v115];

    effectView8 = [(PHBottomBarButton *)height effectView];
    [effectView8 setAutoresizingMask:18];

    layer4 = [(PHBottomBarButton *)height layer];
    [layer4 cornerRadius];
    v119 = v118;
    effectView9 = [(PHBottomBarButton *)height effectView];
    layer5 = [effectView9 layer];
    [layer5 setCornerRadius:v119];

    effectView10 = [(PHBottomBarButton *)height effectView];
    [effectView10 setClipsToBounds:1];

    effectView7 = [(PHBottomBarButton *)height effectView];
    imageView3 = [(PHBottomBarButton *)height imageView];
    [(PHBottomBarButton *)height insertSubview:effectView7 below:imageView3];
LABEL_33:
  }

  -[PHBottomBarButton setAction:](height, "setAction:", [configurationCopy action]);
  if ([configurationCopy action] == &stru_20.cmdsize + 2)
  {
    icon2 = [configurationCopy icon];
    [icon2 size];
    v108 = v107;
    icon3 = [configurationCopy icon];
    [icon3 size];
    [(PHBottomBarButton *)height setIconSizeRatio:v108 / v110];

    -[PHBottomBarButton setActionType:](height, "setActionType:", [configurationCopy action]);
  }

LABEL_36:

  return height;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  selfCopy = self;
  v11.receiver = self;
  v11.super_class = PHBottomBarButton;
  v5 = [(PHBottomBarButton *)&v11 hitTest:event withEvent:test.x, test.y];
  if ([(PHBottomBarButton *)selfCopy appType]!= &dword_0 + 2 || !v5 || ([(PHBottomBarButton *)selfCopy effectView], (v6 = objc_claimAutoreleasedReturnValue()) == 0) || (v7 = v6, [(PHBottomBarButton *)selfCopy effectView], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v5 != v8))
  {
    selfCopy = v5;
  }

  v9 = selfCopy;

  return selfCopy;
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    v5 = *&CGAffineTransformIdentity.c;
    *&v9.a = *&CGAffineTransformIdentity.a;
    *&v9.c = v5;
    *&v9.tx = *&CGAffineTransformIdentity.tx;
    if ((orientation - 2) <= 2)
    {
      CGAffineTransformMakeRotation(&v9, dbl_31110[orientation - 2]);
    }

    self->_orientation = orientation;
    v8 = v9;
    imageView = [(PHBottomBarButton *)self imageView];
    v7 = v8;
    [imageView setTransform:&v7];
  }
}

- (void)setUsesSmallerFontSize:(BOOL)size
{
  self->_usesSmallerFontSize = size;
  v5 = [UIFont systemFontOfSize:10.0];
  titleLabel = [(PHBottomBarButton *)self titleLabel];
  [titleLabel setFont:v5];
}

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  v20.receiver = self;
  v20.super_class = PHBottomBarButton;
  [(PHBottomBarButton *)&v20 imageRectForContentRect:rect.origin.x, rect.origin.y];
  v7 = v6;
  v9 = v8;
  orientation = [(PHBottomBarButton *)self orientation];
  if ((orientation - 3) >= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if ((orientation - 3) < 2)
  {
    v7 = v9;
  }

  x = width * 0.5 - v7 * 0.5;
  y = height * 0.5 - v11 * 0.5;
  v14 = +[UIScreen mainScreen];
  [v14 scale];
  if (v15 == 1.0)
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = v7;
    v21.size.height = v11;
    v22 = CGRectIntegral(v21);
    x = v22.origin.x;
    y = v22.origin.y;
    v7 = v22.size.width;
    v11 = v22.size.height;
  }

  v16 = x;
  v17 = y;
  v18 = v7;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  v8 = CGRectZero.size.width;
  v9 = CGRectZero.size.height;
  v10 = [(PHBottomBarButton *)self currentTitle:rect.origin.x];
  if (v10)
  {
    v11 = v10;
    currentTitle = [(PHBottomBarButton *)self currentTitle];
    v13 = [currentTitle length];

    if (v13)
    {
      titleLabel = [(PHBottomBarButton *)self titleLabel];
      [titleLabel preferredMaxLayoutWidth];
      v16 = v15;
      if ([(PHBottomBarButton *)self actionType]== &stru_20.cmdsize + 2)
      {
        v17 = v16 + -15.0;
      }

      else
      {
        v17 = v16;
      }

      font = [titleLabel font];
      v19 = font;
      if (font)
      {
        defaultFont = font;
      }

      else
      {
        defaultFont = [objc_opt_class() defaultFont];
      }

      v21 = defaultFont;

      v42 = NSFontAttributeName;
      v43 = v21;
      v22 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      currentTitle2 = [(PHBottomBarButton *)self currentTitle];
      [currentTitle2 boundingRectWithSize:1 options:v22 attributes:0 context:{3.40282347e38, 3.40282347e38}];
      v25 = v24;
      v27 = v26;

      v28 = ceil(v25);
      if (v17 >= v28)
      {
        v8 = v28;
      }

      else
      {
        v8 = v17;
      }

      if (v8 == v17)
      {
        currentTitle3 = [(PHBottomBarButton *)self currentTitle];
        [currentTitle3 boundingRectWithSize:1 options:v22 attributes:0 context:{v17, 3.40282347e38}];
        v31 = v30;

        v32 = ceil(v31);
        if (v32 <= 45.0)
        {
          v9 = v32;
        }

        else
        {
          v9 = 45.0;
        }
      }

      else
      {
        v9 = ceil(v27);
      }

      v33 = ceil(width * 0.5 - v8 * 0.5);
      actionType = [(PHBottomBarButton *)self actionType];
      v35 = ceil((width + -15.0) * 0.5 - v8 * 0.5);
      if (actionType == 38)
      {
        x = v35;
      }

      else
      {
        x = v33;
      }

      [(PHBottomBarButton *)self titleRectYOffset];
      v37 = height + v36;
      if (v8 == v17 && v9 == 45.0)
      {
        [titleLabel setAdjustsFontSizeToFitWidth:1];
      }

      y = ceil(v37);
    }
  }

  v38 = x;
  v39 = y;
  v40 = v8;
  v41 = v9;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

void __37__PHBottomBarButton_titleRectYOffset__block_invoke(id a1)
{
  v1 = +[PHUIConfiguration inCallBottomBarSpacing];
  v2 = 8.0;
  if (v1 == &dword_4 + 2)
  {
    v2 = 11.0;
  }

  titleRectYOffset_yOffset = *&v2;
}

- (id)newOverlayView
{
  if ([(PHBottomBarButton *)self action]== &dword_4 || [(PHBottomBarButton *)self action]== &dword_4 + 1 || [(PHBottomBarButton *)self action]== &dword_4 + 2 || [(PHBottomBarButton *)self action]== &stru_20.cmdsize + 2)
  {
    v3 = [UIImageView alloc];
    imageView = [(PHBottomBarButton *)self imageView];
    image = [imageView image];
    v6 = +[UIColor blackColor];
    v7 = [image _flatImageWithColor:v6];
    v8 = [v3 initWithImage:v7];

    v9 = +[UIColor clearColor];
    [v8 setBackgroundColor:v9];

    [(PHBottomBarButton *)self frame];
    [(PHBottomBarButton *)self imageRectForContentRect:?];
    [v8 setFrame:?];
  }

  else
  {
    v11 = [UIView alloc];
    [(PHBottomBarButton *)self bounds];
    v8 = [v11 initWithFrame:?];
    v12 = +[UIColor blackColor];
    [v8 setBackgroundColor:v12];

    [(PHBottomBarButton *)self frame];
    v14 = v13 * 0.5;
    layer = [v8 layer];
    [layer setCornerRadius:v14];
  }

  [v8 setAlpha:0.400000006];
  [v8 setUserInteractionEnabled:0];
  return v8;
}

- (void)_performSetEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(PHBottomBarButton *)self action]== &dword_8 + 1 || [(PHBottomBarButton *)self action]== &dword_C)
  {
    if (enabledCopy)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.3;
    }

    v6 = +[UIColor whiteColor];
    v7 = [v6 colorWithAlphaComponent:v5];
    [(PHBottomBarButton *)self setTintColor:v7];
  }

  if (enabledCopy)
  {
    if ([(PHBottomBarButton *)self canBeEnabled])
    {
      [(PHBottomBarButton *)self setAlpha:1.0];
      if ([(PHBottomBarButton *)self action]== &dword_0 + 1 || [(PHBottomBarButton *)self action]== &dword_0 + 3)
      {
        v8 = +[UIColor systemGreenColor];
      }

      else
      {
        v8 = +[UIColor systemRedColor];
      }

      v9 = v8;
      [(PHBottomBarButton *)self setBackgroundColor:v8];

      layer = [(PHBottomBarButton *)self layer];
      [layer setCompositingFilter:0];

      imageView = [(PHBottomBarButton *)self imageView];
      image = [imageView image];
      v13 = +[UIColor whiteColor];
      v14 = [image _flatImageWithColor:v13];

      [(PHBottomBarButton *)self setImage:v14 forState:0];
    }
  }

  else if ([(PHBottomBarButton *)self action]== &dword_8 + 3 || [(PHBottomBarButton *)self action]== &dword_8 + 2 || [(PHBottomBarButton *)self canBeEnabled])
  {

    [(PHBottomBarButton *)self _performSetDisabled];
  }
}

- (void)_performSetDisabled
{
  [(PHBottomBarButton *)self setAlpha:0.0500000007];
  imageView = [(PHBottomBarButton *)self imageView];
  image = [imageView image];
  v5 = +[UIColor blackColor];
  v8 = [image _flatImageWithColor:v5];

  [(PHBottomBarButton *)self setImage:v8 forState:0];
  [(PHBottomBarButton *)self setImage:v8 forState:2];
  layer = [(PHBottomBarButton *)self layer];
  [layer setAllowsGroupBlending:0];

  layer2 = [(PHBottomBarButton *)self layer];
  [layer2 setAllowsGroupOpacity:0];
}

- (BOOL)canBeEnabled
{
  if ([(PHBottomBarButton *)self action]== &dword_C + 3 || [(PHBottomBarButton *)self action]== &dword_10)
  {
    goto LABEL_3;
  }

  action = [(PHBottomBarButton *)self action];
  if (action == &dword_0 + 1)
  {
    return action;
  }

  if ([(PHBottomBarButton *)self action]== &dword_4 + 3 || [(PHBottomBarButton *)self action]== &dword_0 + 3)
  {
LABEL_3:
    LOBYTE(action) = 1;
  }

  else
  {
    LOBYTE(action) = [(PHBottomBarButton *)self action]== &dword_8;
  }

  return action;
}

- (void)setHighlighted:(BOOL)highlighted
{
  if ((((self->_overlayView == 0) ^ highlighted) & 1) == 0)
  {
    [(PHBottomBarButton *)self _performSetHighlighted:?];
  }
}

- (void)_performSetHighlighted:(BOOL)highlighted
{
  if (highlighted)
  {
    newOverlayView = [(PHBottomBarButton *)self newOverlayView];
    overlayView = self->_overlayView;
    self->_overlayView = newOverlayView;

    v6 = self->_overlayView;

    [(PHBottomBarButton *)self addSubview:v6];
  }

  else if ([(PHBottomBarButton *)self isSelected])
  {
    [(UIView *)self->_overlayView removeFromSuperview];
    v7 = self->_overlayView;
    self->_overlayView = 0;
  }

  else
  {
    v8 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    v9 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
    [v8 setTimingFunction:v9];

    [v8 setToValue:&off_55E80];
    [v8 setDuration:0.5];
    [v8 setFillMode:kCAFillModeForwards];
    [v8 setRemovedOnCompletion:0];
    +[CATransaction begin];
    v10 = self->_overlayView;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __44__PHBottomBarButton__performSetHighlighted___block_invoke;
    v13[3] = &unk_4C668;
    v14 = v10;
    v11 = v10;
    [CATransaction setCompletionBlock:v13];
    layer = [(UIView *)self->_overlayView layer];
    [layer addAnimation:v8 forKey:@"opacityAnimation"];

    +[CATransaction commit];
  }
}

- (void)_performSetSelected:(BOOL)selected
{
  if (selected)
  {
    backgroundColor = [(PHBottomBarButton *)self backgroundColor];
    [(PHBottomBarButton *)self setOriginalBackgroundColor:backgroundColor];

    backgroundColor2 = [(PHBottomBarButton *)self backgroundColor];
    v5 = [backgroundColor2 colorWithAlphaComponent:1.0];
    [(PHBottomBarButton *)self setBackgroundColor:v5];
  }

  else
  {
    backgroundColor2 = [(PHBottomBarButton *)self originalBackgroundColor];
    [(PHBottomBarButton *)self setBackgroundColor:?];
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (+[PHBottomBarButtonConfiguration usesGlass])
  {
    if (!self->_iconView)
    {
      v4 = +[UIColor clearColor];

      roundView = self->_roundView;
      if (v4 == colorCopy)
      {
        [(UIView *)roundView dialer_applySmallClearGlassBackground];
      }

      else
      {
        [(UIView *)roundView dialer_applySmallClearGlassBackgroundWithTintColor:colorCopy];
      }
    }
  }

  else
  {
    [(UIView *)self->_roundView setBackgroundColor:colorCopy];
  }
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

  effectView = self->_effectView;
  if (effectView)
  {
    v7 = [PHAmbientButtonPart partWithView:effectView type:0];
    [v3 addObject:v7];
  }

  overlayView = self->_overlayView;
  if (overlayView)
  {
    v9 = [PHAmbientButtonPart partWithView:overlayView type:0];
    [v3 addObject:v9];
  }

  imageView = [(PHBottomBarButton *)self imageView];

  if (imageView)
  {
    imageView2 = [(PHBottomBarButton *)self imageView];
    v12 = [PHAmbientButtonPart partWithView:imageView2 type:1];
    [v3 addObject:v12];
  }

  titleLabel = [(PHBottomBarButton *)self titleLabel];

  if (titleLabel)
  {
    titleLabel2 = [(PHBottomBarButton *)self titleLabel];
    v15 = [PHAmbientButtonPart partWithView:titleLabel2 type:2];
    [v3 addObject:v15];
  }

  accessoryBackgroundView = self->_accessoryBackgroundView;
  if (accessoryBackgroundView)
  {
    v17 = [PHAmbientButtonPart partWithView:accessoryBackgroundView type:3];
    [v3 addObject:v17];
  }

  accessoryView = self->_accessoryView;
  if (accessoryView)
  {
    v19 = [PHAmbientButtonPart partWithView:accessoryView type:3];
    [v3 addObject:v19];
  }

  return v3;
}

- (id)overlayViewForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  callState = [configurationCopy callState];
  action = [configurationCopy action];

  v6 = 0;
  if (action > 5)
  {
    if (action != (&dword_4 + 2))
    {
      if (action != (&stru_20.cmdsize + 2))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (callState > 2)
    {
      if (callState == &dword_4)
      {
LABEL_32:
        v6 = +[PHGlassCutoutCirclesOverlayViewController makeHoldAndAcceptButtonCircleView];
        goto LABEL_11;
      }

      if (callState != (&dword_0 + 3))
      {
        goto LABEL_10;
      }
    }

    else if (callState != (&dword_0 + 1))
    {
      if (callState != (&dword_0 + 2))
      {
        goto LABEL_10;
      }

      goto LABEL_32;
    }

    v6 = +[PHGlassCutoutCirclesOverlayViewController makeHoldAcceptVoipButtonCircleView];
    goto LABEL_11;
  }

  if (action != &dword_4)
  {
    if (action != (&dword_4 + 1))
    {
      goto LABEL_11;
    }

    if (callState <= 2)
    {
      if (callState != (&dword_0 + 1))
      {
        if (callState != (&dword_0 + 2))
        {
          goto LABEL_10;
        }

        goto LABEL_31;
      }

      goto LABEL_24;
    }

    if (callState == &dword_4)
    {
LABEL_31:
      v6 = +[PHGlassCutoutCirclesOverlayViewController makeEndHoldAndAcceptButtonCircleView];
      goto LABEL_11;
    }

    if (callState == (&dword_0 + 3))
    {
LABEL_24:
      v6 = +[PHGlassCutoutCirclesOverlayViewController makeEndHoldAcceptVoipButtonCircleView];
      goto LABEL_11;
    }

LABEL_10:
    v6 = +[PHGlassCutoutCirclesOverlayViewController makeTextSOSButtonCircleView];
    goto LABEL_11;
  }

  if (callState > 2)
  {
    if (callState != (&dword_0 + 3))
    {
      if (callState == &dword_4)
      {
        v6 = +[PHGlassCutoutCirclesOverlayViewController makeEndVoipAcceptButtonCircleView];
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v6 = +[PHGlassCutoutCirclesOverlayViewController makeEndAcceptVoipButtonCircleView];
  }

  else
  {
    if (callState != (&dword_0 + 1))
    {
      if (callState == (&dword_0 + 2))
      {
        v6 = +[PHGlassCutoutCirclesOverlayViewController makeEndAndAcceptButtonCircleView];
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v6 = +[PHGlassCutoutCirclesOverlayViewController makeEndVoipAcceptVoipButtonCircleView];
  }

LABEL_11:

  return v6;
}

- (void)refreshForCallState:(int64_t)state
{
  v5 = [PHBottomBarButtonConfiguration alloc];
  action = [(PHBottomBarButton *)self action];
  [(PHBottomBarButton *)self diameter];
  v7 = [(PHBottomBarButtonConfiguration *)v5 initWithAction:action diameter:state callState:?];
  icon = [(PHBottomBarButtonConfiguration *)v7 icon];
  [(PHBottomBarButton *)self setImage:icon forState:0];

  backgroundColor = [(PHBottomBarButtonConfiguration *)v7 backgroundColor];
  [(PHBottomBarButton *)self setBackgroundColor:backgroundColor];

  selectedIcon = [(PHBottomBarButtonConfiguration *)v7 selectedIcon];

  if (selectedIcon)
  {
    selectedIcon2 = [(PHBottomBarButtonConfiguration *)v7 selectedIcon];
    [(PHBottomBarButton *)self setImage:selectedIcon2 forState:4];
  }

  imageView = [(PHBottomBarButton *)self imageView];
  layer = [imageView layer];
  v14 = *&CATransform3DIdentity.m33;
  v18[4] = *&CATransform3DIdentity.m31;
  v18[5] = v14;
  v15 = *&CATransform3DIdentity.m43;
  v18[6] = *&CATransform3DIdentity.m41;
  v18[7] = v15;
  v16 = *&CATransform3DIdentity.m13;
  v18[0] = *&CATransform3DIdentity.m11;
  v18[1] = v16;
  v17 = *&CATransform3DIdentity.m23;
  v18[2] = *&CATransform3DIdentity.m21;
  v18[3] = v17;
  [layer setTransform:v18];
}

- (CGSize)buttonSize
{
  width = self->_buttonSize.width;
  height = self->_buttonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
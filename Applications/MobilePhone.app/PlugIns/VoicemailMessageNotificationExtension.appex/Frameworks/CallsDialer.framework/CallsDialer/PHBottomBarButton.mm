@interface PHBottomBarButton
+ (UIFont)defaultFont;
- (BOOL)canBeEnabled;
- (CGRect)imageRectForContentRect:(CGRect)a3;
- (CGRect)titleRectForContentRect:(CGRect)a3;
- (CGSize)buttonSize;
- (CGSize)intrinsicContentSize;
- (NSArray)ambientButtonParts;
- (PHBottomBarButton)initWithConfiguration:(id)a3 appType:(int64_t)a4;
- (double)titleRectYOffset;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)newOverlayView;
- (id)overlayViewForConfiguration:(id)a3;
- (void)_performSetDisabled;
- (void)_performSetEnabled:(BOOL)a3;
- (void)_performSetHighlighted:(BOOL)a3;
- (void)_performSetSelected:(BOOL)a3;
- (void)layoutSubviews;
- (void)refreshForCallState:(int64_t)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setUsesSmallerFontSize:(BOOL)a3;
@end

@implementation PHBottomBarButton

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PHBottomBarButton;
  [(PHBottomBarButton *)&v5 layoutSubviews];
  v3 = [(PHBottomBarButton *)self effectView];

  if (v3)
  {
    v4 = [(PHBottomBarButton *)self effectView];
    [(PHBottomBarButton *)self sendSubviewToBack:v4];
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
  v3 = [v2 userInterfaceIdiom];

  result = 6.0;
  if (v3 == &dword_0 + 1)
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

- (PHBottomBarButton)initWithConfiguration:(id)a3 appType:(int64_t)a4
{
  v6 = a3;
  v123.receiver = self;
  v123.super_class = PHBottomBarButton;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10 = [(PHBottomBarButton *)&v123 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (!v10)
  {
    goto LABEL_36;
  }

  [v6 diameter];
  v10->_diameter = v11;
  v10->_accessoryDiameter = v11 / 3.0;
  [(PHBottomBarButton *)v10 setAppType:a4];
  v12 = [PHRoundView alloc];
  *&v13 = v10->_diameter * 0.5;
  v14 = [(PHRoundView *)v12 initWithFrame:CGRectZero.origin.x cornerRadius:y, width, height, v13];
  roundView = v10->_roundView;
  v10->_roundView = &v14->super;

  [(UIView *)v10->_roundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [(UIView *)v10->_roundView widthAnchor];
  v17 = [v16 constraintEqualToConstant:v10->_diameter];
  [v17 setActive:1];

  v18 = [(UIView *)v10->_roundView heightAnchor];
  v19 = [v18 constraintEqualToConstant:v10->_diameter];
  [v19 setActive:1];

  [(UIView *)v10->_roundView setUserInteractionEnabled:0];
  v20 = v10->_roundView;
  v21 = [(PHBottomBarButton *)v10 imageView];
  [(PHBottomBarButton *)v10 insertSubview:v20 below:v21];

  v22 = [v6 action];
  if (v22 <= 0x26 && ((1 << v22) & 0x4000000070) != 0)
  {
    if (+[PHBottomBarButtonConfiguration usesGlass])
    {
      v23 = [(PHBottomBarButton *)v10 overlayViewForConfiguration:v6];
      iconView = v10->_iconView;
      v10->_iconView = v23;

      [(UIView *)v10->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)v10->_iconView setAutoresizingMask:18];
      v25 = [(UIView *)v10->_iconView widthAnchor];
      v26 = [v25 constraintEqualToConstant:v10->_diameter];
      [v26 setActive:1];

      v27 = [(UIView *)v10->_iconView heightAnchor];
      v28 = [v27 constraintEqualToConstant:v10->_diameter];
      [v28 setActive:1];

      v29 = 1;
      [(UIView *)v10->_roundView addSubview:v10->_iconView];
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
      [(PHBottomBarButton *)v10 setOverrideUserInterfaceStyle:1];
      v30 = [v6 backgroundColor];
      v31 = +[UIColor clearColor];

      v32 = v10->_roundView;
      if (v30 == v31)
      {
        [(UIView *)v10->_roundView dialer_applySmallClearGlassBackground];
      }

      else
      {
        v33 = [v6 backgroundColor];
        [(UIView *)v32 dialer_applySmallClearGlassBackgroundWithTintColor:v33];
      }
    }

    v29 = 0;
  }

  v34 = [v6 accessoryIcon];

  if (v34)
  {
    v35 = [PHRoundView alloc];
    *&v36 = v10->_accessoryDiameter * 0.5;
    v37 = [(PHRoundView *)v35 initWithFrame:CGRectZero.origin.x cornerRadius:y, width, height, v36];
    accessoryBackgroundView = v10->_accessoryBackgroundView;
    v10->_accessoryBackgroundView = &v37->super;

    v39 = +[UIColor systemWhiteColor];
    [(UIView *)v10->_accessoryBackgroundView setBackgroundColor:v39];

    [(UIView *)v10->_accessoryBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [(UIView *)v10->_accessoryBackgroundView widthAnchor];
    v41 = [v40 constraintEqualToConstant:v10->_accessoryDiameter];
    [v41 setActive:1];

    v42 = [(UIView *)v10->_accessoryBackgroundView heightAnchor];
    v43 = [v42 constraintEqualToConstant:v10->_accessoryDiameter];
    [v43 setActive:1];

    [(UIView *)v10->_accessoryBackgroundView setUserInteractionEnabled:0];
    v44 = v10->_accessoryBackgroundView;
    v45 = [(PHBottomBarButton *)v10 imageView];
    [(PHBottomBarButton *)v10 insertSubview:v44 above:v45];

    v46 = [(UIView *)v10->_accessoryBackgroundView trailingAnchor];
    v47 = [(PHBottomBarButton *)v10 trailingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    [v48 setActive:1];

    v49 = [(UIView *)v10->_accessoryBackgroundView bottomAnchor];
    v50 = [(PHBottomBarButton *)v10 bottomAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    [v51 setActive:1];

    accessoryDiameter = v10->_accessoryDiameter;
    v53 = fmax(accessoryDiameter * 0.1, 2.0);
    if (accessoryDiameter > v53)
    {
      v54 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      accessoryView = v10->_accessoryView;
      v10->_accessoryView = v54;

      v56 = [v6 accessoryIcon];
      v57 = +[UIColor blackColor];
      v58 = [v56 _flatImageWithColor:v57];
      [(UIImageView *)v10->_accessoryView setImage:v58];

      v59 = +[UIColor blackColor];
      [(UIImageView *)v10->_accessoryView setTintColor:v59];

      v60 = +[UIColor clearColor];
      [(UIImageView *)v10->_accessoryView setBackgroundColor:v60];

      [(UIImageView *)v10->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
      v61 = [(UIImageView *)v10->_accessoryView widthAnchor];
      v62 = [v61 constraintEqualToConstant:v10->_accessoryDiameter + v53 * -2.0];
      [v62 setActive:1];

      v63 = [(UIImageView *)v10->_accessoryView heightAnchor];
      v64 = [v63 constraintEqualToConstant:v10->_accessoryDiameter + v53 * -2.0];
      [v64 setActive:1];

      [(UIImageView *)v10->_accessoryView setUserInteractionEnabled:0];
      [(PHBottomBarButton *)v10 insertSubview:v10->_accessoryView above:v10->_accessoryBackgroundView];
      v65 = [(UIImageView *)v10->_accessoryView trailingAnchor];
      v66 = [(PHBottomBarButton *)v10 trailingAnchor];
      v67 = [v65 constraintEqualToAnchor:v66 constant:-v53];
      [v67 setActive:1];

      v68 = [(UIImageView *)v10->_accessoryView bottomAnchor];
      v69 = [(PHBottomBarButton *)v10 bottomAnchor];
      v70 = [v68 constraintEqualToAnchor:v69 constant:-v53];
      [v70 setActive:1];
    }
  }

  v71 = [(PHBottomBarButton *)v10 titleLabel];
  [v71 setAdjustsFontSizeToFitWidth:0];

  v72 = [(PHBottomBarButton *)v10 titleLabel];
  [v72 setTextAlignment:1];

  v73 = [objc_opt_class() defaultFont];
  v74 = [(PHBottomBarButton *)v10 titleLabel];
  [v74 setFont:v73];

  v75 = [(PHBottomBarButton *)v10 titleLabel];
  [v75 setLineBreakMode:4];

  if (+[PHUIConfiguration inCallBottomBarMaxTitleSize]== &dword_0 + 1)
  {
    v76 = 100.0;
  }

  else
  {
    v76 = 105.0;
  }

  v77 = [(PHBottomBarButton *)v10 titleLabel];
  [v77 setPreferredMaxLayoutWidth:v76];

  v78 = v10->_diameter * 0.5;
  v79 = [(PHBottomBarButton *)v10 layer];
  [v79 setCornerRadius:v78];

  [(PHBottomBarButton *)v10 setClipsToBounds:0];
  [(PHBottomBarButton *)v10 setAdjustsImageWhenHighlighted:0];
  v80 = [v6 title];
  [(PHBottomBarButton *)v10 setTitle:v80 forState:0];

  if (!v29 || !+[PHBottomBarButtonConfiguration usesGlass])
  {
    v81 = [v6 icon];
    [(PHBottomBarButton *)v10 setImage:v81 forState:0];
  }

  v82 = [(PHBottomBarButton *)v10 titleLabel];
  [v82 setNumberOfLines:0];

  v83 = [v6 backgroundColor];
  [(PHBottomBarButton *)v10 setBackgroundColor:v83];

  v84 = +[UIColor whiteColor];
  [(PHBottomBarButton *)v10 setTintColor:v84];

  v85 = [v6 accessibilityIdentifier];
  [(PHBottomBarButton *)v10 setAccessibilityIdentifier:v85];

  v86 = [v6 selectedIcon];

  if (v86)
  {
    v87 = [v6 selectedIcon];
    [(PHBottomBarButton *)v10 setImage:v87 forState:4];
  }

  if ([v6 action] == &dword_C || objc_msgSend(v6, "action") == &dword_18 + 1 || objc_msgSend(v6, "action") == &dword_18 + 2 || objc_msgSend(v6, "action") == &dword_18 + 3 || objc_msgSend(v6, "action") == &dword_C + 1 || objc_msgSend(v6, "action") == &dword_8 + 3 || objc_msgSend(v6, "action") == &dword_8 + 2)
  {
    v88 = [v6 colorEffect];

    if (v88)
    {
      v89 = [v6 colorEffect];
      v90 = [UIBlurEffect effectWithBlurRadius:40.0];
      v91 = [[UIVisualEffectView alloc] initWithEffect:0];
      [(PHBottomBarButton *)v10 setEffectView:v91];

      v124[0] = v89;
      v124[1] = v90;
      v92 = [NSArray arrayWithObjects:v124 count:2];
      v93 = [(PHBottomBarButton *)v10 effectView];
      [v93 setBackgroundEffects:v92];

      v94 = [(PHBottomBarButton *)v10 effectView];
      [v94 _setGroupName:@"PHBottomBarButtonCaptureGroup"];

      v95 = [v6 captureView];
      v96 = [(PHBottomBarButton *)v10 effectView];
      [v96 _setCaptureView:v95];
    }

    v97 = [(PHBottomBarButton *)v10 effectView];
    [v97 setAutoresizingMask:18];

    v98 = [(PHBottomBarButton *)v10 layer];
    [v98 cornerRadius];
    v100 = v99;
    v101 = [(PHBottomBarButton *)v10 effectView];
    v102 = [v101 layer];
    [v102 setCornerRadius:v100];

    v103 = [(PHBottomBarButton *)v10 effectView];
    [v103 setClipsToBounds:1];

    v104 = [(PHBottomBarButton *)v10 effectView];
    v105 = [(PHBottomBarButton *)v10 imageView];
    [(PHBottomBarButton *)v10 insertSubview:v104 belowSubview:v105];
    goto LABEL_33;
  }

  v112 = [v6 backgroundMaterial];

  if (v112)
  {
    v113 = [UIVisualEffectView alloc];
    v114 = [v6 backgroundMaterial];
    v115 = [v113 initWithEffect:v114];
    [(PHBottomBarButton *)v10 setEffectView:v115];

    v116 = [(PHBottomBarButton *)v10 effectView];
    [v116 setAutoresizingMask:18];

    v117 = [(PHBottomBarButton *)v10 layer];
    [v117 cornerRadius];
    v119 = v118;
    v120 = [(PHBottomBarButton *)v10 effectView];
    v121 = [v120 layer];
    [v121 setCornerRadius:v119];

    v122 = [(PHBottomBarButton *)v10 effectView];
    [v122 setClipsToBounds:1];

    v104 = [(PHBottomBarButton *)v10 effectView];
    v105 = [(PHBottomBarButton *)v10 imageView];
    [(PHBottomBarButton *)v10 insertSubview:v104 below:v105];
LABEL_33:
  }

  -[PHBottomBarButton setAction:](v10, "setAction:", [v6 action]);
  if ([v6 action] == &stru_20.cmdsize + 2)
  {
    v106 = [v6 icon];
    [v106 size];
    v108 = v107;
    v109 = [v6 icon];
    [v109 size];
    [(PHBottomBarButton *)v10 setIconSizeRatio:v108 / v110];

    -[PHBottomBarButton setActionType:](v10, "setActionType:", [v6 action]);
  }

LABEL_36:

  return v10;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v4 = self;
  v11.receiver = self;
  v11.super_class = PHBottomBarButton;
  v5 = [(PHBottomBarButton *)&v11 hitTest:a4 withEvent:a3.x, a3.y];
  if ([(PHBottomBarButton *)v4 appType]!= &dword_0 + 2 || !v5 || ([(PHBottomBarButton *)v4 effectView], (v6 = objc_claimAutoreleasedReturnValue()) == 0) || (v7 = v6, [(PHBottomBarButton *)v4 effectView], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v5 != v8))
  {
    v4 = v5;
  }

  v9 = v4;

  return v4;
}

- (void)setOrientation:(int64_t)a3
{
  if (self->_orientation != a3)
  {
    v5 = *&CGAffineTransformIdentity.c;
    *&v9.a = *&CGAffineTransformIdentity.a;
    *&v9.c = v5;
    *&v9.tx = *&CGAffineTransformIdentity.tx;
    if ((a3 - 2) <= 2)
    {
      CGAffineTransformMakeRotation(&v9, dbl_31110[a3 - 2]);
    }

    self->_orientation = a3;
    v8 = v9;
    v6 = [(PHBottomBarButton *)self imageView];
    v7 = v8;
    [v6 setTransform:&v7];
  }
}

- (void)setUsesSmallerFontSize:(BOOL)a3
{
  self->_usesSmallerFontSize = a3;
  v5 = [UIFont systemFontOfSize:10.0];
  v4 = [(PHBottomBarButton *)self titleLabel];
  [v4 setFont:v5];
}

- (CGRect)imageRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v20.receiver = self;
  v20.super_class = PHBottomBarButton;
  [(PHBottomBarButton *)&v20 imageRectForContentRect:a3.origin.x, a3.origin.y];
  v7 = v6;
  v9 = v8;
  v10 = [(PHBottomBarButton *)self orientation];
  if ((v10 - 3) >= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if ((v10 - 3) < 2)
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

- (CGRect)titleRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  v8 = CGRectZero.size.width;
  v9 = CGRectZero.size.height;
  v10 = [(PHBottomBarButton *)self currentTitle:a3.origin.x];
  if (v10)
  {
    v11 = v10;
    v12 = [(PHBottomBarButton *)self currentTitle];
    v13 = [v12 length];

    if (v13)
    {
      v14 = [(PHBottomBarButton *)self titleLabel];
      [v14 preferredMaxLayoutWidth];
      v16 = v15;
      if ([(PHBottomBarButton *)self actionType]== &stru_20.cmdsize + 2)
      {
        v17 = v16 + -15.0;
      }

      else
      {
        v17 = v16;
      }

      v18 = [v14 font];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = [objc_opt_class() defaultFont];
      }

      v21 = v20;

      v42 = NSFontAttributeName;
      v43 = v21;
      v22 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v23 = [(PHBottomBarButton *)self currentTitle];
      [v23 boundingRectWithSize:1 options:v22 attributes:0 context:{3.40282347e38, 3.40282347e38}];
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
        v29 = [(PHBottomBarButton *)self currentTitle];
        [v29 boundingRectWithSize:1 options:v22 attributes:0 context:{v17, 3.40282347e38}];
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
      v34 = [(PHBottomBarButton *)self actionType];
      v35 = ceil((width + -15.0) * 0.5 - v8 * 0.5);
      if (v34 == 38)
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
        [v14 setAdjustsFontSizeToFitWidth:1];
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
    v4 = [(PHBottomBarButton *)self imageView];
    v5 = [v4 image];
    v6 = +[UIColor blackColor];
    v7 = [v5 _flatImageWithColor:v6];
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
    v15 = [v8 layer];
    [v15 setCornerRadius:v14];
  }

  [v8 setAlpha:0.400000006];
  [v8 setUserInteractionEnabled:0];
  return v8;
}

- (void)_performSetEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(PHBottomBarButton *)self action]== &dword_8 + 1 || [(PHBottomBarButton *)self action]== &dword_C)
  {
    if (v3)
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

  if (v3)
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

      v10 = [(PHBottomBarButton *)self layer];
      [v10 setCompositingFilter:0];

      v11 = [(PHBottomBarButton *)self imageView];
      v12 = [v11 image];
      v13 = +[UIColor whiteColor];
      v14 = [v12 _flatImageWithColor:v13];

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
  v3 = [(PHBottomBarButton *)self imageView];
  v4 = [v3 image];
  v5 = +[UIColor blackColor];
  v8 = [v4 _flatImageWithColor:v5];

  [(PHBottomBarButton *)self setImage:v8 forState:0];
  [(PHBottomBarButton *)self setImage:v8 forState:2];
  v6 = [(PHBottomBarButton *)self layer];
  [v6 setAllowsGroupBlending:0];

  v7 = [(PHBottomBarButton *)self layer];
  [v7 setAllowsGroupOpacity:0];
}

- (BOOL)canBeEnabled
{
  if ([(PHBottomBarButton *)self action]== &dword_C + 3 || [(PHBottomBarButton *)self action]== &dword_10)
  {
    goto LABEL_3;
  }

  v3 = [(PHBottomBarButton *)self action];
  if (v3 == &dword_0 + 1)
  {
    return v3;
  }

  if ([(PHBottomBarButton *)self action]== &dword_4 + 3 || [(PHBottomBarButton *)self action]== &dword_0 + 3)
  {
LABEL_3:
    LOBYTE(v3) = 1;
  }

  else
  {
    LOBYTE(v3) = [(PHBottomBarButton *)self action]== &dword_8;
  }

  return v3;
}

- (void)setHighlighted:(BOOL)a3
{
  if ((((self->_overlayView == 0) ^ a3) & 1) == 0)
  {
    [(PHBottomBarButton *)self _performSetHighlighted:?];
  }
}

- (void)_performSetHighlighted:(BOOL)a3
{
  if (a3)
  {
    v4 = [(PHBottomBarButton *)self newOverlayView];
    overlayView = self->_overlayView;
    self->_overlayView = v4;

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
    v12 = [(UIView *)self->_overlayView layer];
    [v12 addAnimation:v8 forKey:@"opacityAnimation"];

    +[CATransaction commit];
  }
}

- (void)_performSetSelected:(BOOL)a3
{
  if (a3)
  {
    v4 = [(PHBottomBarButton *)self backgroundColor];
    [(PHBottomBarButton *)self setOriginalBackgroundColor:v4];

    v6 = [(PHBottomBarButton *)self backgroundColor];
    v5 = [v6 colorWithAlphaComponent:1.0];
    [(PHBottomBarButton *)self setBackgroundColor:v5];
  }

  else
  {
    v6 = [(PHBottomBarButton *)self originalBackgroundColor];
    [(PHBottomBarButton *)self setBackgroundColor:?];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v6 = a3;
  if (+[PHBottomBarButtonConfiguration usesGlass])
  {
    if (!self->_iconView)
    {
      v4 = +[UIColor clearColor];

      roundView = self->_roundView;
      if (v4 == v6)
      {
        [(UIView *)roundView dialer_applySmallClearGlassBackground];
      }

      else
      {
        [(UIView *)roundView dialer_applySmallClearGlassBackgroundWithTintColor:v6];
      }
    }
  }

  else
  {
    [(UIView *)self->_roundView setBackgroundColor:v6];
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

  v10 = [(PHBottomBarButton *)self imageView];

  if (v10)
  {
    v11 = [(PHBottomBarButton *)self imageView];
    v12 = [PHAmbientButtonPart partWithView:v11 type:1];
    [v3 addObject:v12];
  }

  v13 = [(PHBottomBarButton *)self titleLabel];

  if (v13)
  {
    v14 = [(PHBottomBarButton *)self titleLabel];
    v15 = [PHAmbientButtonPart partWithView:v14 type:2];
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

- (id)overlayViewForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 callState];
  v5 = [v3 action];

  v6 = 0;
  if (v5 > 5)
  {
    if (v5 != (&dword_4 + 2))
    {
      if (v5 != (&stru_20.cmdsize + 2))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (v4 > 2)
    {
      if (v4 == &dword_4)
      {
LABEL_32:
        v6 = +[PHGlassCutoutCirclesOverlayViewController makeHoldAndAcceptButtonCircleView];
        goto LABEL_11;
      }

      if (v4 != (&dword_0 + 3))
      {
        goto LABEL_10;
      }
    }

    else if (v4 != (&dword_0 + 1))
    {
      if (v4 != (&dword_0 + 2))
      {
        goto LABEL_10;
      }

      goto LABEL_32;
    }

    v6 = +[PHGlassCutoutCirclesOverlayViewController makeHoldAcceptVoipButtonCircleView];
    goto LABEL_11;
  }

  if (v5 != &dword_4)
  {
    if (v5 != (&dword_4 + 1))
    {
      goto LABEL_11;
    }

    if (v4 <= 2)
    {
      if (v4 != (&dword_0 + 1))
      {
        if (v4 != (&dword_0 + 2))
        {
          goto LABEL_10;
        }

        goto LABEL_31;
      }

      goto LABEL_24;
    }

    if (v4 == &dword_4)
    {
LABEL_31:
      v6 = +[PHGlassCutoutCirclesOverlayViewController makeEndHoldAndAcceptButtonCircleView];
      goto LABEL_11;
    }

    if (v4 == (&dword_0 + 3))
    {
LABEL_24:
      v6 = +[PHGlassCutoutCirclesOverlayViewController makeEndHoldAcceptVoipButtonCircleView];
      goto LABEL_11;
    }

LABEL_10:
    v6 = +[PHGlassCutoutCirclesOverlayViewController makeTextSOSButtonCircleView];
    goto LABEL_11;
  }

  if (v4 > 2)
  {
    if (v4 != (&dword_0 + 3))
    {
      if (v4 == &dword_4)
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
    if (v4 != (&dword_0 + 1))
    {
      if (v4 == (&dword_0 + 2))
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

- (void)refreshForCallState:(int64_t)a3
{
  v5 = [PHBottomBarButtonConfiguration alloc];
  v6 = [(PHBottomBarButton *)self action];
  [(PHBottomBarButton *)self diameter];
  v7 = [(PHBottomBarButtonConfiguration *)v5 initWithAction:v6 diameter:a3 callState:?];
  v8 = [(PHBottomBarButtonConfiguration *)v7 icon];
  [(PHBottomBarButton *)self setImage:v8 forState:0];

  v9 = [(PHBottomBarButtonConfiguration *)v7 backgroundColor];
  [(PHBottomBarButton *)self setBackgroundColor:v9];

  v10 = [(PHBottomBarButtonConfiguration *)v7 selectedIcon];

  if (v10)
  {
    v11 = [(PHBottomBarButtonConfiguration *)v7 selectedIcon];
    [(PHBottomBarButton *)self setImage:v11 forState:4];
  }

  v12 = [(PHBottomBarButton *)self imageView];
  v13 = [v12 layer];
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
  [v13 setTransform:v18];
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
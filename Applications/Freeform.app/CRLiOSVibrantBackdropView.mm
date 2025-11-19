@interface CRLiOSVibrantBackdropView
+ (id)backdropViewForSoloButton:(id)a3 active:(BOOL)a4;
+ (id)backdropViewForTieredButton:(id)a3 withPosition:(int64_t)a4;
- (CRLiOSVibrantBackdropView)initWithCoder:(id)a3;
- (CRLiOSVibrantBackdropView)initWithCorners:(int64_t)a3 radius:(double)a4 style:(int64_t)a5;
- (CRLiOSVibrantBackdropView)initWithFrame:(CGRect)a3;
- (UIButton)touchedButton;
- (int64_t)p_alternateStyleForStyle:(int64_t)a3;
- (int64_t)p_effectiveStyleForStyle:(int64_t)a3;
- (int64_t)p_presetColorPairForStyle:(int64_t)a3;
- (int64_t)p_selectedStyleForStyle:(int64_t)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)linkStyleWithHighlightedStateOfButton:(id)a3;
- (void)p_buttonDragEnter:(id)a3;
- (void)p_buttonDragExit:(id)a3;
- (void)p_buttonTouchCancel:(id)a3;
- (void)p_buttonTouchDown:(id)a3;
- (void)p_commonInit;
- (void)p_configureBackdropsForCurrentEffectiveStyle;
- (void)p_configureBackdropsWithCorners:(int64_t)a3 radius:(double)a4 presetPair:(int64_t)a5;
- (void)p_constrainToSuperview:(id)a3;
- (void)p_didChangeColorPresets;
- (void)p_resetSubviewHierarchy;
- (void)p_setupSubviewHierarchy;
- (void)setActiveStylePresetPair:(int64_t)a3;
- (void)setAlwaysUsesBoldActiveStyle:(BOOL)a3;
- (void)setBoldActiveStylePresetPair:(int64_t)a3;
- (void)setCornerRadius:(double)a3;
- (void)setHighContrastStylePresetPair:(int64_t)a3;
- (void)setNoneStylePresetPair:(int64_t)a3;
- (void)setNormalStylePresetPair:(int64_t)a3;
- (void)setRoundedCorners:(int64_t)a3;
- (void)setSelected:(BOOL)a3;
- (void)setStyle:(int64_t)a3;
- (void)setTouchOverlayRoundsAllCorners:(BOOL)a3;
- (void)unlinkStyleWithHighlightedStateOfButton:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation CRLiOSVibrantBackdropView

- (CRLiOSVibrantBackdropView)initWithCorners:(int64_t)a3 radius:(double)a4 style:(int64_t)a5
{
  v11.receiver = self;
  v11.super_class = CRLiOSVibrantBackdropView;
  v8 = [(CRLiOSVibrantBackdropView *)&v11 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v9 = v8;
  if (v8)
  {
    v8->_roundedCorners = a3;
    v8->_cornerRadius = a4;
    v8->_style = a5;
    v8->_selected = 0;
    [(CRLiOSVibrantBackdropView *)v8 p_commonInit];
  }

  return v9;
}

- (CRLiOSVibrantBackdropView)initWithFrame:(CGRect)a3
{
  v3 = [(CRLiOSVibrantBackdropView *)self initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CRLiOSVibrantBackdropView *)v3 p_commonInit];
  }

  return v4;
}

- (CRLiOSVibrantBackdropView)initWithCoder:(id)a3
{
  v3 = [(CRLiOSVibrantBackdropView *)self initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(CRLiOSVibrantBackdropView *)v3 p_commonInit];
  }

  return v4;
}

- (void)p_commonInit
{
  self->_normalStylePresetPair = 21;
  self->_highContrastStylePresetPair = 22;
  self->_activeStylePresetPair = 917525;
  self->_boldActiveStylePresetPair = 12;
  v6 = objc_alloc_init(UIView);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setUserInteractionEnabled:0];
  v3 = objc_alloc_init(UIView);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setUserInteractionEnabled:0];
  v4 = objc_alloc_init(UIView);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setUserInteractionEnabled:0];
  [v4 setAlpha:0.0];
  [(CRLiOSVibrantBackdropView *)self setBaseBackdrop:v6];
  [(CRLiOSVibrantBackdropView *)self setOverlayBackdrop:v3];
  [(CRLiOSVibrantBackdropView *)self setScrimBackdrop:v4];
  [(CRLiOSVibrantBackdropView *)self setUserInteractionEnabled:0];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"p_configureBackdropsForCurrentEffectiveStyle" name:UIAccessibilityDarkerSystemColorsStatusDidChangeNotification object:0];
}

+ (id)backdropViewForSoloButton:(id)a3 active:(BOOL)a4
{
  if (a4)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v7 = [[a1 alloc] initWithCorners:5 radius:v5 style:7.5];
  [v7 linkStyleWithHighlightedStateOfButton:v6];

  return v7;
}

+ (id)backdropViewForTieredButton:(id)a3 withPosition:(int64_t)a4
{
  if (a4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_101466400[a4];
  }

  v6 = a3;
  v7 = [[a1 alloc] initWithCorners:v5 radius:0 style:7.5];
  [v7 linkStyleWithHighlightedStateOfButton:v6];

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CRLiOSVibrantBackdropView;
  [(CRLiOSVibrantBackdropView *)&v4 dealloc];
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [(CRLiOSVibrantBackdropView *)self p_resetSubviewHierarchy];
  }

  [(CRLiOSVibrantBackdropView *)self setIsMovingToWindow:1];
  v5.receiver = self;
  v5.super_class = CRLiOSVibrantBackdropView;
  [(CRLiOSVibrantBackdropView *)&v5 willMoveToWindow:v4];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CRLiOSVibrantBackdropView;
  [(CRLiOSVibrantBackdropView *)&v4 didMoveToWindow];
  [(CRLiOSVibrantBackdropView *)self setIsMovingToWindow:0];
  v3 = [(CRLiOSVibrantBackdropView *)self window];

  if (v3)
  {
    [(CRLiOSVibrantBackdropView *)self p_setupSubviewHierarchy];
  }
}

- (void)p_resetSubviewHierarchy
{
  [(CRLiOSVibrantBackdropView *)self setUnableToFindBlurEffect:0];
  v3 = [(CRLiOSVibrantBackdropView *)self baseBackdrop];
  [v3 removeFromSuperview];

  v4 = [(CRLiOSVibrantBackdropView *)self overlayBackdrop];
  [v4 removeFromSuperview];

  v5 = [(CRLiOSVibrantBackdropView *)self visualEffectView];

  if (v5)
  {
    v6 = [(CRLiOSVibrantBackdropView *)self visualEffectView];
    [v6 removeFromSuperview];

    [(CRLiOSVibrantBackdropView *)self setVisualEffectView:0];
  }
}

- (void)p_setupSubviewHierarchy
{
  v3 = [(CRLiOSVibrantBackdropView *)self p_presetColorPairForStyle:[(CRLiOSVibrantBackdropView *)self p_effectiveStyleForStyle:self->_style]];
  if (v3 == 2 && ([(CRLiOSVibrantBackdropView *)self superview], v4 = objc_claimAutoreleasedReturnValue(), [CRLiOSVisualEffectHelper blurEffectProvidedByHierarchyOfView:v4], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    v6 = [UIVibrancyEffect effectForBlurEffect:v5 style:6];
    v7 = [[UIVisualEffectView alloc] initWithEffect:v6];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CRLiOSVibrantBackdropView *)self addSubview:v7];
    [(CRLiOSVibrantBackdropView *)self p_constrainToSuperview:v7];
    v8 = [v7 contentView];
    v9 = [(CRLiOSVibrantBackdropView *)self baseBackdrop];
    [v8 addSubview:v9];

    v10 = [(CRLiOSVibrantBackdropView *)self baseBackdrop];
    [(CRLiOSVibrantBackdropView *)self p_constrainToSuperview:v10];

    v11 = [(CRLiOSVibrantBackdropView *)self overlayBackdrop];
    [(CRLiOSVibrantBackdropView *)self addSubview:v11];

    v12 = [(CRLiOSVibrantBackdropView *)self overlayBackdrop];
    [(CRLiOSVibrantBackdropView *)self p_constrainToSuperview:v12];

    v13 = [(CRLiOSVibrantBackdropView *)self scrimBackdrop];
    [(CRLiOSVibrantBackdropView *)self addSubview:v13];

    v14 = [(CRLiOSVibrantBackdropView *)self scrimBackdrop];
    [(CRLiOSVibrantBackdropView *)self p_constrainToSuperview:v14];

    [(CRLiOSVibrantBackdropView *)self setVisualEffectView:v7];
  }

  else
  {
    [(CRLiOSVibrantBackdropView *)self setUnableToFindBlurEffect:v3 == 2];
    v15 = [(CRLiOSVibrantBackdropView *)self baseBackdrop];
    [(CRLiOSVibrantBackdropView *)self addSubview:v15];

    v16 = [(CRLiOSVibrantBackdropView *)self baseBackdrop];
    [(CRLiOSVibrantBackdropView *)self p_constrainToSuperview:v16];

    v17 = [(CRLiOSVibrantBackdropView *)self overlayBackdrop];
    [(CRLiOSVibrantBackdropView *)self addSubview:v17];

    v18 = [(CRLiOSVibrantBackdropView *)self overlayBackdrop];
    [(CRLiOSVibrantBackdropView *)self p_constrainToSuperview:v18];

    v19 = [(CRLiOSVibrantBackdropView *)self scrimBackdrop];
    [(CRLiOSVibrantBackdropView *)self addSubview:v19];

    v5 = [(CRLiOSVibrantBackdropView *)self scrimBackdrop];
    [(CRLiOSVibrantBackdropView *)self p_constrainToSuperview:v5];
  }

  [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
}

- (int64_t)p_alternateStyleForStyle:(int64_t)a3
{
  result = a3;
  if (a3 <= 9)
  {
    return qword_101466428[a3];
  }

  return result;
}

- (int64_t)p_selectedStyleForStyle:(int64_t)a3
{
  result = a3;
  if (a3 <= 9)
  {
    return qword_101466478[a3];
  }

  return result;
}

- (int64_t)p_effectiveStyleForStyle:(int64_t)a3
{
  v5 = [(CRLiOSVibrantBackdropView *)self touchedButton];
  if (v5)
  {
    v6 = v5;
    v7 = [(CRLiOSVibrantBackdropView *)self isInsideTouchedButton];

    if (v7)
    {
      a3 = [(CRLiOSVibrantBackdropView *)self p_alternateStyleForStyle:a3];
    }
  }

  if (self->_selected)
  {
    a3 = [(CRLiOSVibrantBackdropView *)self p_selectedStyleForStyle:a3];
  }

  if (self->_alwaysUsesBoldActiveStyle || UIAccessibilityDarkerSystemColorsEnabled())
  {
    v8 = 6;
    if (a3 != 4)
    {
      v8 = a3;
    }

    if (a3 == 5)
    {
      return 7;
    }

    else
    {
      return v8;
    }
  }

  return a3;
}

- (int64_t)p_presetColorPairForStyle:(int64_t)a3
{
  if (a3 <= 9)
  {
    if (((1 << a3) & 0x30) != 0)
    {
      v4 = [(CRLiOSVibrantBackdropView *)self activeStylePresetPair];
      goto LABEL_12;
    }

    if (((1 << a3) & 0xC0) != 0)
    {
      v4 = [(CRLiOSVibrantBackdropView *)self boldActiveStylePresetPair];
      goto LABEL_12;
    }

    if (((1 << a3) & 0x300) != 0)
    {
      v4 = [(CRLiOSVibrantBackdropView *)self noneStylePresetPair];
LABEL_12:
      v5 = v4;
      goto LABEL_13;
    }
  }

  if ((a3 - 2) < 2)
  {
    v4 = [(CRLiOSVibrantBackdropView *)self highContrastStylePresetPair];
    goto LABEL_12;
  }

  if (a3 <= 1)
  {
    v4 = [(CRLiOSVibrantBackdropView *)self normalStylePresetPair];
    goto LABEL_12;
  }

  v5 = 0;
LABEL_13:
  if ([(CRLiOSVibrantBackdropView *)self unableToFindBlurEffect]&& v5 == 2)
  {
    return v5 & 0xFFFFFFFFFFFF0000 | 5;
  }

  else
  {
    return v5;
  }
}

- (void)p_configureBackdropsWithCorners:(int64_t)a3 radius:(double)a4 presetPair:(int64_t)a5
{
  v9 = a5;
  v10 = a5 == 2;
  v11 = [(CRLiOSVibrantBackdropView *)self visualEffectView];

  if (((v10 ^ (v11 == 0)) & 1) == 0)
  {
    [(CRLiOSVibrantBackdropView *)self p_resetSubviewHierarchy];
    [(CRLiOSVibrantBackdropView *)self p_setupSubviewHierarchy];
  }

  v12 = [(CRLiOSVibrantBackdropView *)self baseBackdrop];
  v13 = v12;
  if (v9)
  {
    [v12 setHidden:0];

    v13 = +[CRLiOSVisualEffectHelper sharedHelper];
    v14 = [(CRLiOSVibrantBackdropView *)self baseBackdrop];
    v15 = [v14 layer];
    v16 = [(CRLiOSVibrantBackdropView *)self traitCollection];
    [v13 configureBackdropLayer:v15 radius:a3 corners:v9 colorPreset:v16 forTraitCollection:a4];
  }

  else
  {
    [v12 setHidden:1];
  }

  v17 = [(CRLiOSVibrantBackdropView *)self overlayBackdrop];
  v18 = v17;
  if (a5 >= 0x10000)
  {
    [v17 setHidden:0];

    v18 = +[CRLiOSVisualEffectHelper sharedHelper];
    v19 = [(CRLiOSVibrantBackdropView *)self overlayBackdrop];
    v20 = [v19 layer];
    v21 = [(CRLiOSVibrantBackdropView *)self traitCollection];
    [v18 configureBackdropLayer:v20 radius:a3 corners:a5 >> 16 colorPreset:v21 forTraitCollection:a4];
  }

  else
  {
    [v17 setHidden:1];
  }

  v25 = +[CRLiOSVisualEffectHelper sharedHelper];
  v22 = [(CRLiOSVibrantBackdropView *)self scrimBackdrop];
  v23 = [v22 layer];
  if (self->_touchOverlayRoundsAllCorners)
  {
    a3 = 5;
  }

  v24 = [(CRLiOSVibrantBackdropView *)self traitCollection];
  [v25 configureBackdropLayer:v23 radius:a3 corners:7 colorPreset:v24 forTraitCollection:a4];
}

- (void)p_configureBackdropsForCurrentEffectiveStyle
{
  v3 = [(CRLiOSVibrantBackdropView *)self p_presetColorPairForStyle:[(CRLiOSVibrantBackdropView *)self p_effectiveStyleForStyle:[(CRLiOSVibrantBackdropView *)self style]]];
  v4 = [(CRLiOSVibrantBackdropView *)self roundedCorners];
  [(CRLiOSVibrantBackdropView *)self cornerRadius];

  [(CRLiOSVibrantBackdropView *)self p_configureBackdropsWithCorners:v4 radius:v3 presetPair:?];
}

- (void)p_didChangeColorPresets
{
  if (![(CRLiOSVibrantBackdropView *)self isMovingToWindow])
  {

    [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
  }
}

- (void)p_constrainToSuperview:(id)a3
{
  v16 = a3;
  v3 = [v16 superview];
  if (v3)
  {
    v4 = [v16 leadingAnchor];
    v5 = [v3 leadingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];
    [v6 setActive:1];

    v7 = [v16 topAnchor];
    v8 = [v3 topAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    [v9 setActive:1];

    v10 = [v16 trailingAnchor];
    v11 = [v3 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v12 setActive:1];

    v13 = [v16 bottomAnchor];
    v14 = [v3 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    [v15 setActive:1];
  }
}

- (void)p_buttonTouchDown:(id)a3
{
  [(CRLiOSVibrantBackdropView *)self setTouchedButton:a3];
  [(CRLiOSVibrantBackdropView *)self setIsInsideTouchedButton:1];

  [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
}

- (void)p_buttonDragEnter:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSVibrantBackdropView *)self touchedButton];

  if (v5 == v4)
  {
    [(CRLiOSVibrantBackdropView *)self setIsInsideTouchedButton:1];

    [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
  }
}

- (void)p_buttonDragExit:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSVibrantBackdropView *)self touchedButton];

  if (v5 == v4)
  {
    [(CRLiOSVibrantBackdropView *)self setIsInsideTouchedButton:0];

    [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
  }
}

- (void)p_buttonTouchCancel:(id)a3
{
  [(CRLiOSVibrantBackdropView *)self setTouchedButton:0];
  [(CRLiOSVibrantBackdropView *)self setIsInsideTouchedButton:0];

  [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
}

- (void)setRoundedCorners:(int64_t)a3
{
  if (self->_roundedCorners != a3)
  {
    self->_roundedCorners = a3;
    [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
  }
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
  }
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
  }
}

- (void)setAlwaysUsesBoldActiveStyle:(BOOL)a3
{
  if (self->_alwaysUsesBoldActiveStyle != a3)
  {
    self->_alwaysUsesBoldActiveStyle = a3;
    [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
  }
}

- (void)setTouchOverlayRoundsAllCorners:(BOOL)a3
{
  if (self->_touchOverlayRoundsAllCorners != a3)
  {
    self->_touchOverlayRoundsAllCorners = a3;
  }

  [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
}

- (void)linkStyleWithHighlightedStateOfButton:(id)a3
{
  v4 = a3;
  [v4 addTarget:self action:"p_buttonTouchDown:" forControlEvents:1];
  [v4 addTarget:self action:"p_buttonDragEnter:" forControlEvents:16];
  [v4 addTarget:self action:"p_buttonDragExit:" forControlEvents:32];
  [v4 addTarget:self action:"p_buttonTouchCancel:" forControlEvents:256];
  [v4 addTarget:self action:"p_buttonTouchCancel:" forControlEvents:64];
  [v4 addTarget:self action:"p_buttonTouchCancel:" forControlEvents:128];
}

- (void)unlinkStyleWithHighlightedStateOfButton:(id)a3
{
  v4 = a3;
  [v4 removeTarget:self action:"p_buttonTouchDown:" forControlEvents:1];
  [v4 removeTarget:self action:"p_buttonDragEnter:" forControlEvents:16];
  [v4 removeTarget:self action:"p_buttonDragExit:" forControlEvents:32];
  [v4 removeTarget:self action:"p_buttonTouchCancel:" forControlEvents:256];
  [v4 removeTarget:self action:"p_buttonTouchCancel:" forControlEvents:64];
  [v4 removeTarget:self action:"p_buttonTouchCancel:" forControlEvents:128];
}

- (void)setNormalStylePresetPair:(int64_t)a3
{
  if (self->_normalStylePresetPair != a3)
  {
    self->_normalStylePresetPair = a3;
    [(CRLiOSVibrantBackdropView *)self p_didChangeColorPresets];
  }
}

- (void)setHighContrastStylePresetPair:(int64_t)a3
{
  if (self->_highContrastStylePresetPair != a3)
  {
    self->_highContrastStylePresetPair = a3;
    [(CRLiOSVibrantBackdropView *)self p_didChangeColorPresets];
  }
}

- (void)setActiveStylePresetPair:(int64_t)a3
{
  if (self->_activeStylePresetPair != a3)
  {
    self->_activeStylePresetPair = a3;
    [(CRLiOSVibrantBackdropView *)self p_didChangeColorPresets];
  }
}

- (void)setBoldActiveStylePresetPair:(int64_t)a3
{
  if (self->_boldActiveStylePresetPair != a3)
  {
    self->_boldActiveStylePresetPair = a3;
    [(CRLiOSVibrantBackdropView *)self p_didChangeColorPresets];
  }
}

- (void)setNoneStylePresetPair:(int64_t)a3
{
  if (self->_noneStylePresetPair != a3)
  {
    self->_noneStylePresetPair = a3;
    [(CRLiOSVibrantBackdropView *)self p_didChangeColorPresets];
  }
}

- (UIButton)touchedButton
{
  WeakRetained = objc_loadWeakRetained(&self->_touchedButton);

  return WeakRetained;
}

@end
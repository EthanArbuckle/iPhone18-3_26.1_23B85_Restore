@interface CRLiOSVibrantBackdropView
+ (id)backdropViewForSoloButton:(id)button active:(BOOL)active;
+ (id)backdropViewForTieredButton:(id)button withPosition:(int64_t)position;
- (CRLiOSVibrantBackdropView)initWithCoder:(id)coder;
- (CRLiOSVibrantBackdropView)initWithCorners:(int64_t)corners radius:(double)radius style:(int64_t)style;
- (CRLiOSVibrantBackdropView)initWithFrame:(CGRect)frame;
- (UIButton)touchedButton;
- (int64_t)p_alternateStyleForStyle:(int64_t)style;
- (int64_t)p_effectiveStyleForStyle:(int64_t)style;
- (int64_t)p_presetColorPairForStyle:(int64_t)style;
- (int64_t)p_selectedStyleForStyle:(int64_t)style;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)linkStyleWithHighlightedStateOfButton:(id)button;
- (void)p_buttonDragEnter:(id)enter;
- (void)p_buttonDragExit:(id)exit;
- (void)p_buttonTouchCancel:(id)cancel;
- (void)p_buttonTouchDown:(id)down;
- (void)p_commonInit;
- (void)p_configureBackdropsForCurrentEffectiveStyle;
- (void)p_configureBackdropsWithCorners:(int64_t)corners radius:(double)radius presetPair:(int64_t)pair;
- (void)p_constrainToSuperview:(id)superview;
- (void)p_didChangeColorPresets;
- (void)p_resetSubviewHierarchy;
- (void)p_setupSubviewHierarchy;
- (void)setActiveStylePresetPair:(int64_t)pair;
- (void)setAlwaysUsesBoldActiveStyle:(BOOL)style;
- (void)setBoldActiveStylePresetPair:(int64_t)pair;
- (void)setCornerRadius:(double)radius;
- (void)setHighContrastStylePresetPair:(int64_t)pair;
- (void)setNoneStylePresetPair:(int64_t)pair;
- (void)setNormalStylePresetPair:(int64_t)pair;
- (void)setRoundedCorners:(int64_t)corners;
- (void)setSelected:(BOOL)selected;
- (void)setStyle:(int64_t)style;
- (void)setTouchOverlayRoundsAllCorners:(BOOL)corners;
- (void)unlinkStyleWithHighlightedStateOfButton:(id)button;
- (void)willMoveToWindow:(id)window;
@end

@implementation CRLiOSVibrantBackdropView

- (CRLiOSVibrantBackdropView)initWithCorners:(int64_t)corners radius:(double)radius style:(int64_t)style
{
  v11.receiver = self;
  v11.super_class = CRLiOSVibrantBackdropView;
  v8 = [(CRLiOSVibrantBackdropView *)&v11 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v9 = v8;
  if (v8)
  {
    v8->_roundedCorners = corners;
    v8->_cornerRadius = radius;
    v8->_style = style;
    v8->_selected = 0;
    [(CRLiOSVibrantBackdropView *)v8 p_commonInit];
  }

  return v9;
}

- (CRLiOSVibrantBackdropView)initWithFrame:(CGRect)frame
{
  v3 = [(CRLiOSVibrantBackdropView *)self initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CRLiOSVibrantBackdropView *)v3 p_commonInit];
  }

  return v4;
}

- (CRLiOSVibrantBackdropView)initWithCoder:(id)coder
{
  v3 = [(CRLiOSVibrantBackdropView *)self initWithCoder:coder];
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

+ (id)backdropViewForSoloButton:(id)button active:(BOOL)active
{
  if (active)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  buttonCopy = button;
  v7 = [[self alloc] initWithCorners:5 radius:v5 style:7.5];
  [v7 linkStyleWithHighlightedStateOfButton:buttonCopy];

  return v7;
}

+ (id)backdropViewForTieredButton:(id)button withPosition:(int64_t)position
{
  if (position > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_101466400[position];
  }

  buttonCopy = button;
  v7 = [[self alloc] initWithCorners:v5 radius:0 style:7.5];
  [v7 linkStyleWithHighlightedStateOfButton:buttonCopy];

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

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  if (!windowCopy)
  {
    [(CRLiOSVibrantBackdropView *)self p_resetSubviewHierarchy];
  }

  [(CRLiOSVibrantBackdropView *)self setIsMovingToWindow:1];
  v5.receiver = self;
  v5.super_class = CRLiOSVibrantBackdropView;
  [(CRLiOSVibrantBackdropView *)&v5 willMoveToWindow:windowCopy];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CRLiOSVibrantBackdropView;
  [(CRLiOSVibrantBackdropView *)&v4 didMoveToWindow];
  [(CRLiOSVibrantBackdropView *)self setIsMovingToWindow:0];
  window = [(CRLiOSVibrantBackdropView *)self window];

  if (window)
  {
    [(CRLiOSVibrantBackdropView *)self p_setupSubviewHierarchy];
  }
}

- (void)p_resetSubviewHierarchy
{
  [(CRLiOSVibrantBackdropView *)self setUnableToFindBlurEffect:0];
  baseBackdrop = [(CRLiOSVibrantBackdropView *)self baseBackdrop];
  [baseBackdrop removeFromSuperview];

  overlayBackdrop = [(CRLiOSVibrantBackdropView *)self overlayBackdrop];
  [overlayBackdrop removeFromSuperview];

  visualEffectView = [(CRLiOSVibrantBackdropView *)self visualEffectView];

  if (visualEffectView)
  {
    visualEffectView2 = [(CRLiOSVibrantBackdropView *)self visualEffectView];
    [visualEffectView2 removeFromSuperview];

    [(CRLiOSVibrantBackdropView *)self setVisualEffectView:0];
  }
}

- (void)p_setupSubviewHierarchy
{
  v3 = [(CRLiOSVibrantBackdropView *)self p_presetColorPairForStyle:[(CRLiOSVibrantBackdropView *)self p_effectiveStyleForStyle:self->_style]];
  if (v3 == 2 && ([(CRLiOSVibrantBackdropView *)self superview], v4 = objc_claimAutoreleasedReturnValue(), [CRLiOSVisualEffectHelper blurEffectProvidedByHierarchyOfView:v4], scrimBackdrop4 = objc_claimAutoreleasedReturnValue(), v4, scrimBackdrop4))
  {
    v6 = [UIVibrancyEffect effectForBlurEffect:scrimBackdrop4 style:6];
    v7 = [[UIVisualEffectView alloc] initWithEffect:v6];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CRLiOSVibrantBackdropView *)self addSubview:v7];
    [(CRLiOSVibrantBackdropView *)self p_constrainToSuperview:v7];
    contentView = [v7 contentView];
    baseBackdrop = [(CRLiOSVibrantBackdropView *)self baseBackdrop];
    [contentView addSubview:baseBackdrop];

    baseBackdrop2 = [(CRLiOSVibrantBackdropView *)self baseBackdrop];
    [(CRLiOSVibrantBackdropView *)self p_constrainToSuperview:baseBackdrop2];

    overlayBackdrop = [(CRLiOSVibrantBackdropView *)self overlayBackdrop];
    [(CRLiOSVibrantBackdropView *)self addSubview:overlayBackdrop];

    overlayBackdrop2 = [(CRLiOSVibrantBackdropView *)self overlayBackdrop];
    [(CRLiOSVibrantBackdropView *)self p_constrainToSuperview:overlayBackdrop2];

    scrimBackdrop = [(CRLiOSVibrantBackdropView *)self scrimBackdrop];
    [(CRLiOSVibrantBackdropView *)self addSubview:scrimBackdrop];

    scrimBackdrop2 = [(CRLiOSVibrantBackdropView *)self scrimBackdrop];
    [(CRLiOSVibrantBackdropView *)self p_constrainToSuperview:scrimBackdrop2];

    [(CRLiOSVibrantBackdropView *)self setVisualEffectView:v7];
  }

  else
  {
    [(CRLiOSVibrantBackdropView *)self setUnableToFindBlurEffect:v3 == 2];
    baseBackdrop3 = [(CRLiOSVibrantBackdropView *)self baseBackdrop];
    [(CRLiOSVibrantBackdropView *)self addSubview:baseBackdrop3];

    baseBackdrop4 = [(CRLiOSVibrantBackdropView *)self baseBackdrop];
    [(CRLiOSVibrantBackdropView *)self p_constrainToSuperview:baseBackdrop4];

    overlayBackdrop3 = [(CRLiOSVibrantBackdropView *)self overlayBackdrop];
    [(CRLiOSVibrantBackdropView *)self addSubview:overlayBackdrop3];

    overlayBackdrop4 = [(CRLiOSVibrantBackdropView *)self overlayBackdrop];
    [(CRLiOSVibrantBackdropView *)self p_constrainToSuperview:overlayBackdrop4];

    scrimBackdrop3 = [(CRLiOSVibrantBackdropView *)self scrimBackdrop];
    [(CRLiOSVibrantBackdropView *)self addSubview:scrimBackdrop3];

    scrimBackdrop4 = [(CRLiOSVibrantBackdropView *)self scrimBackdrop];
    [(CRLiOSVibrantBackdropView *)self p_constrainToSuperview:scrimBackdrop4];
  }

  [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
}

- (int64_t)p_alternateStyleForStyle:(int64_t)style
{
  result = style;
  if (style <= 9)
  {
    return qword_101466428[style];
  }

  return result;
}

- (int64_t)p_selectedStyleForStyle:(int64_t)style
{
  result = style;
  if (style <= 9)
  {
    return qword_101466478[style];
  }

  return result;
}

- (int64_t)p_effectiveStyleForStyle:(int64_t)style
{
  touchedButton = [(CRLiOSVibrantBackdropView *)self touchedButton];
  if (touchedButton)
  {
    v6 = touchedButton;
    isInsideTouchedButton = [(CRLiOSVibrantBackdropView *)self isInsideTouchedButton];

    if (isInsideTouchedButton)
    {
      style = [(CRLiOSVibrantBackdropView *)self p_alternateStyleForStyle:style];
    }
  }

  if (self->_selected)
  {
    style = [(CRLiOSVibrantBackdropView *)self p_selectedStyleForStyle:style];
  }

  if (self->_alwaysUsesBoldActiveStyle || UIAccessibilityDarkerSystemColorsEnabled())
  {
    styleCopy = 6;
    if (style != 4)
    {
      styleCopy = style;
    }

    if (style == 5)
    {
      return 7;
    }

    else
    {
      return styleCopy;
    }
  }

  return style;
}

- (int64_t)p_presetColorPairForStyle:(int64_t)style
{
  if (style <= 9)
  {
    if (((1 << style) & 0x30) != 0)
    {
      activeStylePresetPair = [(CRLiOSVibrantBackdropView *)self activeStylePresetPair];
      goto LABEL_12;
    }

    if (((1 << style) & 0xC0) != 0)
    {
      activeStylePresetPair = [(CRLiOSVibrantBackdropView *)self boldActiveStylePresetPair];
      goto LABEL_12;
    }

    if (((1 << style) & 0x300) != 0)
    {
      activeStylePresetPair = [(CRLiOSVibrantBackdropView *)self noneStylePresetPair];
LABEL_12:
      v5 = activeStylePresetPair;
      goto LABEL_13;
    }
  }

  if ((style - 2) < 2)
  {
    activeStylePresetPair = [(CRLiOSVibrantBackdropView *)self highContrastStylePresetPair];
    goto LABEL_12;
  }

  if (style <= 1)
  {
    activeStylePresetPair = [(CRLiOSVibrantBackdropView *)self normalStylePresetPair];
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

- (void)p_configureBackdropsWithCorners:(int64_t)corners radius:(double)radius presetPair:(int64_t)pair
{
  pairCopy = pair;
  v10 = pair == 2;
  visualEffectView = [(CRLiOSVibrantBackdropView *)self visualEffectView];

  if (((v10 ^ (visualEffectView == 0)) & 1) == 0)
  {
    [(CRLiOSVibrantBackdropView *)self p_resetSubviewHierarchy];
    [(CRLiOSVibrantBackdropView *)self p_setupSubviewHierarchy];
  }

  baseBackdrop = [(CRLiOSVibrantBackdropView *)self baseBackdrop];
  v13 = baseBackdrop;
  if (pairCopy)
  {
    [baseBackdrop setHidden:0];

    v13 = +[CRLiOSVisualEffectHelper sharedHelper];
    baseBackdrop2 = [(CRLiOSVibrantBackdropView *)self baseBackdrop];
    layer = [baseBackdrop2 layer];
    traitCollection = [(CRLiOSVibrantBackdropView *)self traitCollection];
    [v13 configureBackdropLayer:layer radius:corners corners:pairCopy colorPreset:traitCollection forTraitCollection:radius];
  }

  else
  {
    [baseBackdrop setHidden:1];
  }

  overlayBackdrop = [(CRLiOSVibrantBackdropView *)self overlayBackdrop];
  v18 = overlayBackdrop;
  if (pair >= 0x10000)
  {
    [overlayBackdrop setHidden:0];

    v18 = +[CRLiOSVisualEffectHelper sharedHelper];
    overlayBackdrop2 = [(CRLiOSVibrantBackdropView *)self overlayBackdrop];
    layer2 = [overlayBackdrop2 layer];
    traitCollection2 = [(CRLiOSVibrantBackdropView *)self traitCollection];
    [v18 configureBackdropLayer:layer2 radius:corners corners:pair >> 16 colorPreset:traitCollection2 forTraitCollection:radius];
  }

  else
  {
    [overlayBackdrop setHidden:1];
  }

  v25 = +[CRLiOSVisualEffectHelper sharedHelper];
  scrimBackdrop = [(CRLiOSVibrantBackdropView *)self scrimBackdrop];
  layer3 = [scrimBackdrop layer];
  if (self->_touchOverlayRoundsAllCorners)
  {
    corners = 5;
  }

  traitCollection3 = [(CRLiOSVibrantBackdropView *)self traitCollection];
  [v25 configureBackdropLayer:layer3 radius:corners corners:7 colorPreset:traitCollection3 forTraitCollection:radius];
}

- (void)p_configureBackdropsForCurrentEffectiveStyle
{
  v3 = [(CRLiOSVibrantBackdropView *)self p_presetColorPairForStyle:[(CRLiOSVibrantBackdropView *)self p_effectiveStyleForStyle:[(CRLiOSVibrantBackdropView *)self style]]];
  roundedCorners = [(CRLiOSVibrantBackdropView *)self roundedCorners];
  [(CRLiOSVibrantBackdropView *)self cornerRadius];

  [(CRLiOSVibrantBackdropView *)self p_configureBackdropsWithCorners:roundedCorners radius:v3 presetPair:?];
}

- (void)p_didChangeColorPresets
{
  if (![(CRLiOSVibrantBackdropView *)self isMovingToWindow])
  {

    [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
  }
}

- (void)p_constrainToSuperview:(id)superview
{
  superviewCopy = superview;
  superview = [superviewCopy superview];
  if (superview)
  {
    leadingAnchor = [superviewCopy leadingAnchor];
    leadingAnchor2 = [superview leadingAnchor];
    v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v6 setActive:1];

    topAnchor = [superviewCopy topAnchor];
    topAnchor2 = [superview topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v9 setActive:1];

    trailingAnchor = [superviewCopy trailingAnchor];
    trailingAnchor2 = [superview trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v12 setActive:1];

    bottomAnchor = [superviewCopy bottomAnchor];
    bottomAnchor2 = [superview bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v15 setActive:1];
  }
}

- (void)p_buttonTouchDown:(id)down
{
  [(CRLiOSVibrantBackdropView *)self setTouchedButton:down];
  [(CRLiOSVibrantBackdropView *)self setIsInsideTouchedButton:1];

  [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
}

- (void)p_buttonDragEnter:(id)enter
{
  enterCopy = enter;
  touchedButton = [(CRLiOSVibrantBackdropView *)self touchedButton];

  if (touchedButton == enterCopy)
  {
    [(CRLiOSVibrantBackdropView *)self setIsInsideTouchedButton:1];

    [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
  }
}

- (void)p_buttonDragExit:(id)exit
{
  exitCopy = exit;
  touchedButton = [(CRLiOSVibrantBackdropView *)self touchedButton];

  if (touchedButton == exitCopy)
  {
    [(CRLiOSVibrantBackdropView *)self setIsInsideTouchedButton:0];

    [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
  }
}

- (void)p_buttonTouchCancel:(id)cancel
{
  [(CRLiOSVibrantBackdropView *)self setTouchedButton:0];
  [(CRLiOSVibrantBackdropView *)self setIsInsideTouchedButton:0];

  [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
}

- (void)setRoundedCorners:(int64_t)corners
{
  if (self->_roundedCorners != corners)
  {
    self->_roundedCorners = corners;
    [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
  }
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
  }
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
  }
}

- (void)setAlwaysUsesBoldActiveStyle:(BOOL)style
{
  if (self->_alwaysUsesBoldActiveStyle != style)
  {
    self->_alwaysUsesBoldActiveStyle = style;
    [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
  }
}

- (void)setTouchOverlayRoundsAllCorners:(BOOL)corners
{
  if (self->_touchOverlayRoundsAllCorners != corners)
  {
    self->_touchOverlayRoundsAllCorners = corners;
  }

  [(CRLiOSVibrantBackdropView *)self p_configureBackdropsForCurrentEffectiveStyle];
}

- (void)linkStyleWithHighlightedStateOfButton:(id)button
{
  buttonCopy = button;
  [buttonCopy addTarget:self action:"p_buttonTouchDown:" forControlEvents:1];
  [buttonCopy addTarget:self action:"p_buttonDragEnter:" forControlEvents:16];
  [buttonCopy addTarget:self action:"p_buttonDragExit:" forControlEvents:32];
  [buttonCopy addTarget:self action:"p_buttonTouchCancel:" forControlEvents:256];
  [buttonCopy addTarget:self action:"p_buttonTouchCancel:" forControlEvents:64];
  [buttonCopy addTarget:self action:"p_buttonTouchCancel:" forControlEvents:128];
}

- (void)unlinkStyleWithHighlightedStateOfButton:(id)button
{
  buttonCopy = button;
  [buttonCopy removeTarget:self action:"p_buttonTouchDown:" forControlEvents:1];
  [buttonCopy removeTarget:self action:"p_buttonDragEnter:" forControlEvents:16];
  [buttonCopy removeTarget:self action:"p_buttonDragExit:" forControlEvents:32];
  [buttonCopy removeTarget:self action:"p_buttonTouchCancel:" forControlEvents:256];
  [buttonCopy removeTarget:self action:"p_buttonTouchCancel:" forControlEvents:64];
  [buttonCopy removeTarget:self action:"p_buttonTouchCancel:" forControlEvents:128];
}

- (void)setNormalStylePresetPair:(int64_t)pair
{
  if (self->_normalStylePresetPair != pair)
  {
    self->_normalStylePresetPair = pair;
    [(CRLiOSVibrantBackdropView *)self p_didChangeColorPresets];
  }
}

- (void)setHighContrastStylePresetPair:(int64_t)pair
{
  if (self->_highContrastStylePresetPair != pair)
  {
    self->_highContrastStylePresetPair = pair;
    [(CRLiOSVibrantBackdropView *)self p_didChangeColorPresets];
  }
}

- (void)setActiveStylePresetPair:(int64_t)pair
{
  if (self->_activeStylePresetPair != pair)
  {
    self->_activeStylePresetPair = pair;
    [(CRLiOSVibrantBackdropView *)self p_didChangeColorPresets];
  }
}

- (void)setBoldActiveStylePresetPair:(int64_t)pair
{
  if (self->_boldActiveStylePresetPair != pair)
  {
    self->_boldActiveStylePresetPair = pair;
    [(CRLiOSVibrantBackdropView *)self p_didChangeColorPresets];
  }
}

- (void)setNoneStylePresetPair:(int64_t)pair
{
  if (self->_noneStylePresetPair != pair)
  {
    self->_noneStylePresetPair = pair;
    [(CRLiOSVibrantBackdropView *)self p_didChangeColorPresets];
  }
}

- (UIButton)touchedButton
{
  WeakRetained = objc_loadWeakRetained(&self->_touchedButton);

  return WeakRetained;
}

@end
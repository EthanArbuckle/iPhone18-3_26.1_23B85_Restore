@interface LPPlayButtonControl
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CGSize)buttonSize;
- (LPPlayButtonControl)initWithStyle:(id)style theme:(id)theme;
- (float)buttonCornerRadius;
- (id)_createProgressIndicatorLayerWithBounds:(CGRect)bounds lineWidth:(double)width;
- (id)pauseImage;
- (id)playImage;
- (void)_createBackgroundView;
- (void)_createBorderView;
- (void)_createHighlightLayer;
- (void)_createImageView;
- (void)_createInnerProgressView;
- (void)_createOuterProgressView;
- (void)_didScroll;
- (void)_hideTapHighlight;
- (void)_highlightLongPressRecognized:(id)recognized;
- (void)_showPlayIndicator:(BOOL)indicator;
- (void)_toggleToPlayState;
- (void)_updateEnabledState;
- (void)_updateInnerProgressLayerStroke;
- (void)_updateOuterProgressLayerStroke;
- (void)beginIndeterminateAnimation;
- (void)endIndeterminateAnimation;
- (void)hideProgressAnimated:(BOOL)animated;
- (void)installRecognizersOnView:(id)view;
- (void)layoutPlayButton;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setPlayButtonState:(unint64_t)state;
- (void)setProgress:(float)progress animated:(BOOL)animated;
- (void)setShowOuterBorder:(BOOL)border;
@end

@implementation LPPlayButtonControl

- (LPPlayButtonControl)initWithStyle:(id)style theme:(id)theme
{
  styleCopy = style;
  themeCopy = theme;
  v18.receiver = self;
  v18.super_class = LPPlayButtonControl;
  v9 = [(LPPlayButtonControl *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_style, style);
    objc_storeStrong(&v10->_theme, theme);
    [(UIView *)v10 _lp_setBackgroundColor:0];
    layer = [(LPPlayButtonControl *)v10 layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [(LPPlayButtonControl *)v10 layer];
    [layer2 setAllowsGroupOpacity:0];

    layer3 = [(LPPlayButtonControl *)v10 layer];
    [layer3 setMasksToBounds:0];

    [(LPPlayButtonControl *)v10 _createBackgroundView];
    [(LPPlayButtonControl *)v10 _createImageView];
    [(LPPlayButtonControl *)v10 _createBorderView];
    [(LPPlayButtonControl *)v10 _createOuterProgressView];
    [(LPPlayButtonControl *)v10 _createInnerProgressView];
    [(LPPlayButtonControl *)v10 _createHighlightLayer];
    [(LPPlayButtonControl *)v10 setShowOuterBorder:0];
    [(LPPlayButtonControl *)v10 setShowBorder:0];
    [(LPPlayButtonControl *)v10 setPlayButtonState:0];
    [(LPPlayButtonControl *)v10 hideProgressAnimated:0];
    [(LPPlayButtonControl *)v10 showPlayIndicator:1];
    systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v15 = [(LPPlayButtonControl *)v10 registerForTraitChanges:systemTraitsAffectingColorAppearance withAction:sel__traitAffectingColorAppearanceDidChange_];

    v16 = v10;
  }

  return v10;
}

- (void)setPlayButtonState:(unint64_t)state
{
  if (state == 1)
  {
    keyColor = [(LPAudioPlayButtonTheme *)self->_theme keyColor];
    v12 = keyColor;
    if (!keyColor)
    {
      keyColor = [(UIView *)self _lp_tintColor];
    }

    [(UIImageView *)self->_imageView setTintColor:keyColor];
    v7 = v12;
    if (!v12)
    {

      v7 = 0;
    }

    backgroundView = self->_backgroundView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)backgroundView _lp_setBackgroundColor:?];

    [(LPPlayButtonControl *)self setShowOuterBorder:1];
  }

  else if (!state)
  {
    useInvertedInactiveState = [(LPAudioPlayButtonTheme *)self->_theme useInvertedInactiveState];
    theme = self->_theme;
    if (useInvertedInactiveState)
    {
      [(LPAudioPlayButtonTheme *)theme keyColor];
    }

    else
    {
      [(LPAudioPlayButtonTheme *)theme secondaryColor];
    }
    v14 = ;
    useInvertedInactiveState2 = [(LPAudioPlayButtonTheme *)self->_theme useInvertedInactiveState];
    v10 = self->_theme;
    if (useInvertedInactiveState2)
    {
      [(LPAudioPlayButtonTheme *)v10 secondaryColor];
    }

    else
    {
      [(LPAudioPlayButtonTheme *)v10 keyColor];
    }
    v11 = ;
    [(UIImageView *)self->_imageView setTintColor:v14];
    [(UIView *)self->_backgroundView _lp_setBackgroundColor:v11];
    [(LPPlayButtonControl *)self setShowOuterBorder:0];
  }
}

- (id)playImage
{
  v2 = +[LPResources playButton];
  platformImage = [v2 platformImage];

  return platformImage;
}

- (id)pauseImage
{
  v2 = +[LPResources pauseButton];
  platformImage = [v2 platformImage];

  return platformImage;
}

- (CGSize)buttonSize
{
  v2 = [(LPAudioPlayButtonStyle *)self->_style size];
  [v2 asSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (float)buttonCornerRadius
{
  v3 = [(LPAudioPlayButtonStyle *)self->_style size];
  width = [v3 width];
  [width value];
  v6 = v5;
  v7 = [(LPAudioPlayButtonStyle *)self->_style size];
  height = [v7 height];
  [height value];
  *&v6 = fmin(v6, v9) * 0.5;

  return *&v6;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = LPPlayButtonControl;
  [(LPPlayButtonControl *)&v3 layoutSubviews];
  [(LPPlayButtonControl *)self layoutPlayButton];
}

- (void)layoutPlayButton
{
  [(LPPlayButtonControl *)self buttonSize];
  v4 = v3;
  v6 = v5;
  [(UIImageView *)self->_imageView setFrame:0.0, 0.0, v3, v5];
  backgroundView = self->_backgroundView;

  [(UIView *)backgroundView setFrame:0.0, 0.0, v4, v6];
}

- (void)installRecognizersOnView:(id)view
{
  viewCopy = view;
  v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_buttonPressed_];
  [viewCopy addGestureRecognizer:v4];
  v5 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__highlightLongPressRecognized_];
  highlightRecognizer = self->_highlightRecognizer;
  self->_highlightRecognizer = v5;

  [(UILongPressGestureRecognizer *)self->_highlightRecognizer setMinimumPressDuration:0.001];
  [(UILongPressGestureRecognizer *)self->_highlightRecognizer setDelegate:self];
  [viewCopy addGestureRecognizer:self->_highlightRecognizer];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    NSClassFromString(&cfstr_Uipreviewgestu.isa);
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)_didScroll
{
  [(UILongPressGestureRecognizer *)self->_highlightRecognizer setEnabled:0];
  highlightRecognizer = self->_highlightRecognizer;

  [(UILongPressGestureRecognizer *)highlightRecognizer setEnabled:1];
}

- (void)_highlightLongPressRecognized:(id)recognized
{
  recognizedCopy = recognized;
  state = [recognizedCopy state];
  if ((state - 3) >= 2)
  {
    if (state == 1)
    {
      LODWORD(v5) = 1.0;
      [(CAShapeLayer *)self->_highlightLayer setOpacity:v5];
    }
  }

  else
  {
    [(LPPlayButtonControl *)self _hideTapHighlight];
  }
}

- (void)_hideTapHighlight
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__LPPlayButtonControl__hideTapHighlight__block_invoke;
  v2[3] = &unk_1E7A35450;
  v2[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v2 options:0 animations:0.47 completion:0.0];
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = LPPlayButtonControl;
  [(LPPlayButtonControl *)&v4 setEnabled:enabled];
  [(LPPlayButtonControl *)self _updateEnabledState];
}

- (void)beginIndeterminateAnimation
{
  [(LPPlayButtonControl *)self setProgress:0 animated:0.0];
  outerProgressLayer = self->_outerProgressLayer;
  if (self->_indeterminate)
  {
    v4 = [(CAShapeLayer *)outerProgressLayer animationForKey:@"spin"];

    if (v4)
    {
      return;
    }
  }

  else
  {
    [(CAShapeLayer *)outerProgressLayer setStrokeStart:0.12];
    self->_indeterminate = 1;
  }

  [(LPPlayButtonControl *)self _updateOuterProgressLayerStroke];
  [(CAShapeLayer *)self->_outerProgressLayer removeAnimationForKey:@"spin"];
  v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.rotation.z"];
  [v6 setFromValue:&unk_1F24835C0];
  [v6 setToValue:&unk_1F2483D88];
  [v6 setDuration:1.0];
  [v6 setCumulative:1];
  LODWORD(v5) = 2139095040;
  [v6 setRepeatCount:v5];
  [(CAShapeLayer *)self->_outerProgressLayer addAnimation:v6 forKey:@"spin"];
}

- (void)endIndeterminateAnimation
{
  if (self->_indeterminate)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(CAShapeLayer *)self->_outerProgressLayer setStrokeStart:0.0];
    [MEMORY[0x1E6979518] commit];
    [(CAShapeLayer *)self->_outerProgressLayer removeAnimationForKey:@"spin"];
    CGAffineTransformMakeRotation(&v5, -1.57079633);
    outerProgressLayer = self->_outerProgressLayer;
    v4 = v5;
    [(CAShapeLayer *)outerProgressLayer setAffineTransform:&v4];
    self->_indeterminate = 0;
    [(LPPlayButtonControl *)self _updateOuterProgressLayerStroke];
  }
}

- (void)hideProgressAnimated:(BOOL)animated
{
  if (self->_showingProgress || self->_indeterminate)
  {
    [(LPPlayButtonControl *)self endIndeterminateAnimation];
    [(CAShapeLayer *)self->_innerProgressLayer setHidden:1];
    [(UIView *)self->_backgroundView setHidden:0];
    [(UIView *)self->_backgroundView _lp_setOpacity:1.0];
    [(UIImageView *)self->_imageView _lp_setOpacity:1.0];
    self->_showingProgress = 0;

    [(LPPlayButtonControl *)self _showPlayIndicator:1];
  }
}

- (void)setProgress:(float)progress animated:(BOOL)animated
{
  progressCopy = progress;
  [(CAShapeLayer *)self->_innerProgressLayer setHidden:fabs(progress) < 0.00000011920929];
  if (!self->_showingProgress)
  {
    [(LPPlayButtonControl *)self _toggleToPlayState];
  }

  if (self->_progress != progress)
  {
    if (progress > 0.00000011921 && self->_indeterminate)
    {
      [(LPPlayButtonControl *)self endIndeterminateAnimation];
    }

    v8 = fmax(fmin(progressCopy, 1.0), 0.0);
    self->_progress = v8;
    if (animated)
    {
      v13 = [MEMORY[0x1E6979318] animationWithKeyPath:@"strokeEnd"];
      [v13 setDuration:0.2];
      [v13 setFillMode:*MEMORY[0x1E69797E8]];
      [v13 setRemovedOnCompletion:0];
      *&v9 = self->_progress;
      v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
      [v13 setToValue:v10];

      [(CAShapeLayer *)self->_innerProgressLayer addAnimation:v13 forKey:0];
    }

    else
    {
      [(CAShapeLayer *)self->_innerProgressLayer removeAllAnimations];
      progress = self->_progress;
      innerProgressLayer = self->_innerProgressLayer;

      [(CAShapeLayer *)innerProgressLayer setStrokeEnd:progress];
    }
  }
}

- (void)setShowOuterBorder:(BOOL)border
{
  [(CAShapeLayer *)self->_outerProgressLayer setHidden:!border];

  [(LPPlayButtonControl *)self _updateOuterProgressLayerStroke];
}

- (void)_updateOuterProgressLayerStroke
{
  outerBorderColor = [(LPPlayButtonControl *)self outerBorderColor];
  -[CAShapeLayer setStrokeColor:](self->_outerProgressLayer, "setStrokeColor:", [outerBorderColor CGColor]);
}

- (id)_createProgressIndicatorLayerWithBounds:(CGRect)bounds lineWidth:(double)width
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9 = objc_alloc_init(MEMORY[0x1E69794A0]);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v16 = CGRectInset(v15, width * 0.5, width * 0.5);
  [v9 setFrame:{v16.origin.x, v16.origin.y, v16.size.width, v16.size.height}];
  CGAffineTransformMakeRotation(&v13, -1.57079633);
  v12 = v13;
  [v9 setAffineTransform:&v12];
  [v9 setLineWidth:width];
  [v9 bounds];
  v10 = CGPathCreateWithEllipseInRect(v17, 0);
  [v9 setPath:v10];
  [v9 setLineCap:*MEMORY[0x1E6979E78]];
  CGPathRelease(v10);

  return v9;
}

- (void)_createBorderView
{
  [(UIView *)self _lp_backingScaleFactor];
  v4 = 1.0 / v3;
  [(LPPlayButtonControl *)self buttonSize];
  v7 = [(LPPlayButtonControl *)self _createProgressIndicatorLayerWithBounds:-v4 lineWidth:-v4, v5 + v4 * 2.0, v6 + v4 * 2.0, v4];
  borderLayer = self->_borderLayer;
  self->_borderLayer = v7;

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  -[CAShapeLayer setBackgroundColor:](self->_borderLayer, "setBackgroundColor:", [clearColor CGColor]);

  v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
  -[CAShapeLayer setStrokeColor:](self->_borderLayer, "setStrokeColor:", [v10 CGColor]);

  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  -[CAShapeLayer setFillColor:](self->_borderLayer, "setFillColor:", [clearColor2 CGColor]);

  layer = [(LPPlayButtonControl *)self layer];
  [layer addSublayer:self->_borderLayer];
}

- (void)_createBackgroundView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v4;

  [(UIView *)self->_backgroundView setUserInteractionEnabled:0];
  v6 = self->_backgroundView;
  [(LPPlayButtonControl *)self buttonCornerRadius];
  [(UIView *)v6 _lp_setCornerRadius:0 continuous:v7];
  v8 = self->_backgroundView;
  defaultBackgroundColor = [(LPPlayButtonControl *)self defaultBackgroundColor];
  [(UIView *)v8 _lp_setBackgroundColor:defaultBackgroundColor];

  [(UIView *)self->_backgroundView _lp_setHoverEffectEnabled:1];
  v10 = self->_backgroundView;

  [(LPPlayButtonControl *)self addSubview:v10];
}

- (void)_createImageView
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  imageView = self->_imageView;
  self->_imageView = v4;

  [(UIImageView *)self->_imageView setContentMode:4];
  [(UIImageView *)self->_imageView setUserInteractionEnabled:0];
  [(UIImageView *)self->_imageView setOpaque:0];
  v6 = MEMORY[0x1E69DCAD8];
  glyphSize = [(LPAudioPlayButtonStyle *)self->_style glyphSize];
  [glyphSize value];
  v8 = [v6 configurationWithPointSize:?];
  [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v8];

  [(UIImageView *)self->_imageView _lp_setBackgroundColor:0];
  v9 = self->_imageView;

  [(LPPlayButtonControl *)self addSubview:v9];
}

- (void)_createInnerProgressView
{
  [(LPPlayButtonControl *)self buttonSize];
  v5 = [(LPPlayButtonControl *)self _createProgressIndicatorLayerWithBounds:0.0 lineWidth:0.0, v3, v4, 2.0];
  innerProgressLayer = self->_innerProgressLayer;
  self->_innerProgressLayer = v5;

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  -[CAShapeLayer setBackgroundColor:](self->_innerProgressLayer, "setBackgroundColor:", [clearColor CGColor]);

  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  -[CAShapeLayer setFillColor:](self->_innerProgressLayer, "setFillColor:", [clearColor2 CGColor]);

  [(CAShapeLayer *)self->_innerProgressLayer setStrokeEnd:0.0];
  layer = [(LPPlayButtonControl *)self layer];
  [layer addSublayer:self->_innerProgressLayer];

  [(LPPlayButtonControl *)self _updateInnerProgressLayerStroke];
}

- (void)_createOuterProgressView
{
  [(LPPlayButtonControl *)self buttonSize];
  v5 = [(LPPlayButtonControl *)self _createProgressIndicatorLayerWithBounds:0.0 lineWidth:0.0, v3, v4, 2.0];
  outerProgressLayer = self->_outerProgressLayer;
  self->_outerProgressLayer = v5;

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  -[CAShapeLayer setBackgroundColor:](self->_outerProgressLayer, "setBackgroundColor:", [clearColor CGColor]);

  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  -[CAShapeLayer setFillColor:](self->_outerProgressLayer, "setFillColor:", [clearColor2 CGColor]);

  layer = [(LPPlayButtonControl *)self layer];
  [layer addSublayer:self->_outerProgressLayer];

  [(LPPlayButtonControl *)self _updateOuterProgressLayerStroke];
}

- (void)_createHighlightLayer
{
  [(LPPlayButtonControl *)self buttonSize];
  v4 = v3;
  v6 = v5;
  v7 = objc_alloc_init(MEMORY[0x1E69794A0]);
  highlightLayer = self->_highlightLayer;
  self->_highlightLayer = v7;

  [(CAShapeLayer *)self->_highlightLayer setFrame:0.0, 0.0, v4, v6];
  v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.16];
  -[CAShapeLayer setFillColor:](self->_highlightLayer, "setFillColor:", [v10 CGColor]);

  [(CAShapeLayer *)self->_highlightLayer setOpacity:0.0];
  [(CAShapeLayer *)self->_highlightLayer bounds];
  v9 = CGPathCreateWithEllipseInRect(v13, 0);
  [(CAShapeLayer *)self->_highlightLayer setPath:v9];
  CGPathRelease(v9);
  layer = [(LPPlayButtonControl *)self layer];
  [layer addSublayer:self->_highlightLayer];
}

- (void)_showPlayIndicator:(BOOL)indicator
{
  self->_isPlaying = !indicator;
  if (!indicator)
  {
    [(LPPlayButtonControl *)self pauseImage];
  }

  else
  {
    [(LPPlayButtonControl *)self playImage];
  }
  v4 = ;
  [(UIImageView *)self->_imageView setImage:v4];

  [(UIView *)self _lp_setNeedsLayout];
}

- (void)_toggleToPlayState
{
  self->_showingProgress = 1;
  [(LPPlayButtonControl *)self _showPlayIndicator:0];
  [(CAShapeLayer *)self->_outerProgressLayer setHidden:0];
  innerProgressLayer = self->_innerProgressLayer;

  [(CAShapeLayer *)innerProgressLayer setHidden:0];
}

- (void)_updateInnerProgressLayerStroke
{
  keyColor = [(LPAudioPlayButtonTheme *)self->_theme keyColor];
  -[CAShapeLayer setStrokeColor:](self->_innerProgressLayer, "setStrokeColor:", [keyColor CGColor]);
}

- (void)_updateEnabledState
{
  imageView = self->_imageView;
  isEnabled = [(LPPlayButtonControl *)self isEnabled];
  v5 = 1.0;
  if ((isEnabled & 1) == 0)
  {
    +[LPTheme disabledButtonOpacity];
  }

  [(UIImageView *)imageView _lp_setOpacity:v5];

  [(UIView *)self _lp_setNeedsLayout];
}

@end
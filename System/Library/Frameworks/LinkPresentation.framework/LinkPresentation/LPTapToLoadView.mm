@interface LPTapToLoadView
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CGSize)sizeThatFits:(CGSize)fits;
- (LPTapToLoadView)initWithHost:(id)host style:(id)style;
- (LPTapToLoadViewDelegate)tapToLoadViewDelegate;
- (id)_createIndeterminateProgressIndicator;
- (void)_animateToProgressView;
- (void)_buildViews;
- (void)_didScroll;
- (void)_highlightLongPressRecognized:(id)recognized;
- (void)_tapRecognized:(id)recognized;
- (void)animateOutWithCompletionHandler:(id)handler;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)layoutComponentView;
@end

@implementation LPTapToLoadView

- (LPTapToLoadView)initWithHost:(id)host style:(id)style
{
  hostCopy = host;
  styleCopy = style;
  v15.receiver = self;
  v15.super_class = LPTapToLoadView;
  v8 = [(LPComponentView *)&v15 initWithHost:hostCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_style, style);
    [(LPTapToLoadView *)v9 _buildViews];
    v10 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v9 action:sel__tapRecognized_];
    [(LPTapToLoadView *)v9 addGestureRecognizer:v10];
    v11 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v9 action:sel__highlightLongPressRecognized_];
    highlightGestureRecognizer = v9->_highlightGestureRecognizer;
    v9->_highlightGestureRecognizer = v11;

    [(UILongPressGestureRecognizer *)v9->_highlightGestureRecognizer setMinimumPressDuration:0.001];
    [(UILongPressGestureRecognizer *)v9->_highlightGestureRecognizer setDelegate:v9];
    [(LPTapToLoadView *)v9 addGestureRecognizer:v9->_highlightGestureRecognizer];
    v13 = v9;
  }

  return v9;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [(LPTapToLoadViewStyle *)self->_style width:fits.width];
  [v4 value];
  v6 = v5;
  height = [(LPTapToLoadViewStyle *)self->_style height];
  [height value];
  v9 = v8;

  v10 = v6;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutComponentView
{
  captionView = self->_captionView;
  [(LPTapToLoadView *)self bounds];
  [(LPTextView *)captionView sizeThatFits:v4, v5];
  v7 = v6;
  v9 = v8;
  [(LPTapToLoadView *)self bounds];
  v11 = v10 * 0.5 - v7 * 0.5;
  [(LPTapToLoadView *)self bounds];
  [(LPTextView *)self->_captionView setFrame:v11, v12 * 0.5 - v9 * 0.5, v7, v9];
  [(LPTapToLoadView *)self bounds];
  [(UIView *)self->_highlightView setFrame:?];
  [(LPTapToLoadView *)self bounds];
  progressView = self->_progressView;

  [(UIView *)progressView setFrame:?];
}

- (void)_buildViews
{
  backgroundColor = [(LPTapToLoadViewStyle *)self->_style backgroundColor];
  [(UIView *)self _lp_setBackgroundColor:?];

  v14 = LPLocalizedString(@"Tap to Load Preview");
  v3 = [LPTextView alloc];
  host = [(LPComponentView *)self host];
  v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v14];
  caption = [(LPTapToLoadViewStyle *)self->_style caption];
  v7 = [(LPTextView *)v3 initWithHost:host text:v5 style:caption];
  captionView = self->_captionView;
  self->_captionView = v7;

  [(LPTapToLoadView *)self addSubview:self->_captionView];
  v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
  highlightView = self->_highlightView;
  self->_highlightView = v9;

  [(UIView *)self->_highlightView setHidden:1];
  v11 = self->_highlightView;
  tapHighlightColor = [(LPTapToLoadViewStyle *)self->_style tapHighlightColor];
  [(UIView *)v11 _lp_setBackgroundColor:tapHighlightColor];

  [(LPTapToLoadView *)self addSubview:self->_highlightView];
}

- (id)_createIndeterminateProgressIndicator
{
  v2 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [v2 startAnimating];

  return v2;
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
  [(UILongPressGestureRecognizer *)self->_highlightGestureRecognizer setEnabled:0];
  highlightGestureRecognizer = self->_highlightGestureRecognizer;

  [(UILongPressGestureRecognizer *)highlightGestureRecognizer setEnabled:1];
}

- (void)_highlightLongPressRecognized:(id)recognized
{
  recognizedCopy = recognized;
  state = [recognizedCopy state];
  if ((state - 3) >= 2)
  {
    if (state != 1)
    {
      goto LABEL_6;
    }

    layer = [(UIView *)self->_highlightView layer];
    [layer setHidden:0];
  }

  else
  {
    wasTapped = self->_wasTapped;
    layer = [(UIView *)self->_highlightView layer];
    [layer setHidden:!wasTapped];
  }

LABEL_6:
}

- (void)_tapRecognized:(id)recognized
{
  recognizedCopy = recognized;
  self->_wasTapped = 1;
  layer = [(UIView *)self->_highlightView layer];
  [layer setHidden:0];

  WeakRetained = objc_loadWeakRetained(&self->_tapToLoadViewDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_tapToLoadViewDelegate);
    [v7 tapToLoadViewWasTapped:self];
  }

  [(LPTapToLoadView *)self removeGestureRecognizer:recognizedCopy];
  [(LPTapToLoadView *)self removeGestureRecognizer:self->_highlightGestureRecognizer];
  highlightGestureRecognizer = self->_highlightGestureRecognizer;
  self->_highlightGestureRecognizer = 0;

  _createIndeterminateProgressIndicator = [(LPTapToLoadView *)self _createIndeterminateProgressIndicator];
  progressView = self->_progressView;
  self->_progressView = _createIndeterminateProgressIndicator;

  [(LPTapToLoadView *)self addSubview:self->_progressView];
  [(UIView *)self _lp_setNeedsLayout];
  [(LPTapToLoadView *)self _animateToProgressView];
}

- (void)_animateToProgressView
{
  layer = [(LPTapToLoadView *)self layer];
  [layer convertTime:0 fromLayer:CACurrentMediaTime()];
  v4 = v3;

  v16 = [MEMORY[0x1E69794A8] _lp_springWithMass:2.0 stiffness:800.0 damping:37.0];
  [v16 setKeyPath:@"opacity"];
  [v16 setDelegate:self];
  [v16 setRemovedOnCompletion:0];
  v5 = *MEMORY[0x1E69797E0];
  [v16 setFillMode:*MEMORY[0x1E69797E0]];
  [v16 setToValue:&unk_1F24836B0];
  layer2 = [(LPTextView *)self->_captionView layer];
  [layer2 addAnimation:v16 forKey:@"captionFadeOutSpring"];

  v7 = [v16 copy];
  [v7 setKeyPath:@"transform.scale.xy"];
  [v7 setToValue:&unk_1F2483DC8];
  layer3 = [(LPTextView *)self->_captionView layer];
  [layer3 addAnimation:v7 forKey:@"captionShrinkSpring"];

  v9 = objc_alloc_init(MEMORY[0x1E6979318]);
  [v9 setDuration:0.25];
  [v9 setKeyPath:@"opacity"];
  [v9 setDelegate:self];
  [v9 setRemovedOnCompletion:0];
  [v9 setFillMode:v5];
  [v9 setToValue:&unk_1F24836B0];
  layer4 = [(UIView *)self->_highlightView layer];
  [layer4 addAnimation:v9 forKey:@"highlightFadeOut"];

  v11 = [MEMORY[0x1E69794A8] _lp_springWithMass:2.0 stiffness:700.0 damping:37.0];
  [v11 setBeginTime:v4 + 0.18];
  [v11 setKeyPath:@"opacity"];
  [v11 setFromValue:&unk_1F24836B0];
  layer5 = [(UIView *)self->_progressView layer];
  [layer5 addAnimation:v11 forKey:@"progressFadeInSpring"];

  v13 = [v11 _lp_copyWithBeginTime:v4 + 0.135];
  [v13 setKeyPath:@"transform.scale.xy"];
  [v13 setFromValue:&unk_1F2483DD8];
  layer6 = [(UIView *)self->_progressView layer];
  [layer6 addAnimation:v13 forKey:@"progressGrowSpring"];
}

- (void)animateOutWithCompletionHandler:(id)handler
{
  aBlock = handler;
  v4 = objc_alloc_init(MEMORY[0x1E6979318]);
  [v4 setDuration:0.25];
  [v4 setKeyPath:@"opacity"];
  [v4 setDelegate:self];
  [v4 setRemovedOnCompletion:0];
  v5 = *MEMORY[0x1E69797E0];
  [v4 setFillMode:*MEMORY[0x1E69797E0]];
  LODWORD(v6) = 0.25;
  LODWORD(v7) = 0.25;
  LODWORD(v8) = 1.0;
  LODWORD(v9) = 1036831949;
  v10 = [MEMORY[0x1E69793D0] functionWithControlPoints:v6 :v9 :v7 :v8];
  [v4 setTimingFunction:v10];

  [v4 setToValue:&unk_1F24836B0];
  layer = [(LPTapToLoadView *)self layer];
  [layer addAnimation:v4 forKey:@"fadeOut"];

  v12 = objc_alloc_init(MEMORY[0x1E6979318]);
  [v12 setDuration:0.25];
  [v12 setKeyPath:@"transform.scale.xy"];
  LODWORD(v13) = 0.25;
  LODWORD(v14) = 0.25;
  LODWORD(v15) = 1.0;
  LODWORD(v16) = 1036831949;
  v17 = [MEMORY[0x1E69793D0] functionWithControlPoints:v13 :v16 :v14 :v15];
  [v12 setTimingFunction:v17];

  [v12 setFillMode:v5];
  [v12 setToValue:&unk_1F2483DE8];
  layer2 = [(UIView *)self->_progressView layer];
  [layer2 addAnimation:v12 forKey:@"scaleOut"];

  v19 = _Block_copy(aBlock);
  animateOutCompletionHandler = self->_animateOutCompletionHandler;
  self->_animateOutCompletionHandler = v19;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  layer = [(LPTextView *)self->_captionView layer];
  v6 = [layer animationForKey:@"captionFadeOutSpring"];

  if (v6 == stopCopy)
  {
    [(LPTextView *)self->_captionView removeFromSuperview];
    captionView = self->_captionView;
    self->_captionView = 0;
  }

  layer2 = [(UIView *)self->_highlightView layer];
  v9 = [layer2 animationForKey:@"highlightFadeOutSpring"];

  if (v9 == stopCopy)
  {
    [(UIView *)self->_highlightView removeFromSuperview];
    highlightView = self->_highlightView;
    self->_highlightView = 0;
  }

  layer3 = [(LPTapToLoadView *)self layer];
  v12 = [layer3 animationForKey:@"fadeOut"];

  if (v12 == stopCopy)
  {
    animateOutCompletionHandler = self->_animateOutCompletionHandler;
    if (animateOutCompletionHandler)
    {
      animateOutCompletionHandler[2]();
      v14 = self->_animateOutCompletionHandler;
      self->_animateOutCompletionHandler = 0;
    }
  }
}

- (LPTapToLoadViewDelegate)tapToLoadViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tapToLoadViewDelegate);

  return WeakRetained;
}

@end
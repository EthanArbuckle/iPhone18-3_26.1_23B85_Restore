@interface AVPresentationContainerView
- (AVPresentationContainerViewAppearanceProxy)appearanceProxy;
- (BOOL)avkit_isCounterRotatedForTransition;
- (BOOL)avkit_isVideoGravityFrozen;
- (CGAffineTransform)_contentTransform;
- (UIEdgeInsets)avkit_overrideLayoutMarginsForCounterRotation;
- (UIEdgeInsets)avkit_overrideLayoutMarginsForInterfaceOrientation:(int64_t)orientation;
- (UIView)presentationContainerContentView;
- (double)_continuousCornerRadius;
- (double)_cornerRadius;
- (double)_radiansForCounterRotation;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setCornerRadius:(double)radius;
- (void)didStopTransition;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setClipsToBounds:(BOOL)bounds;
- (void)setWantsAppearanceConfigValues:(BOOL)values;
- (void)willStartDismissalTransitionFromInterfaceOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation needsCounterRotation:(BOOL)rotation;
- (void)willStartPresentationTransitionFromInterfaceOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation needsCounterRotation:(BOOL)rotation;
@end

@implementation AVPresentationContainerView

- (UIView)presentationContainerContentView
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationContainerContentView);

  return WeakRetained;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = AVPresentationContainerView;
  [(AVPresentationContainerView *)&v21 layoutSubviews];
  presentationContainerContentView = [(AVPresentationContainerView *)self presentationContainerContentView];
  superview = [presentationContainerContentView superview];

  if (superview == self)
  {
    [(AVPresentationContainerView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    presentationContainerContentView2 = [(AVPresentationContainerView *)self presentationContainerContentView];
    [presentationContainerContentView2 setFrame:{v6, v8, v10, v12}];

    [(AVPresentationContainerView *)self _contentTransform];
    presentationContainerContentView3 = [(AVPresentationContainerView *)self presentationContainerContentView];
    v20[0] = v20[3];
    v20[1] = v20[4];
    v20[2] = v20[5];
    [presentationContainerContentView3 setTransform:v20];

    [(AVPresentationContainerView *)self bounds];
    UIRectGetCenter();
    v16 = v15;
    v18 = v17;
    presentationContainerContentView4 = [(AVPresentationContainerView *)self presentationContainerContentView];
    [presentationContainerContentView4 setCenter:{v16, v18}];
  }
}

- (void)setClipsToBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  v8.receiver = self;
  v8.super_class = AVPresentationContainerView;
  [(AVPresentationContainerView *)&v8 setClipsToBounds:[(AVPresentationContainerView *)self wantsAppearanceConfigValues]& bounds];
  appearanceProxy = [(AVPresentationContainerView *)self appearanceProxy];
  [appearanceProxy setClipsToBounds:boundsCopy];

  appearanceProxy2 = [(AVPresentationContainerView *)self appearanceProxy];
  actualView = [appearanceProxy2 actualView];
  [actualView setClipsToBounds:boundsCopy];
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  wantsAppearanceConfigValues = [(AVPresentationContainerView *)self wantsAppearanceConfigValues];
  if (wantsAppearanceConfigValues)
  {
    appearanceProxy = [(AVPresentationContainerView *)self appearanceProxy];
    [appearanceProxy backgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v7 = ;
  v11.receiver = self;
  v11.super_class = AVPresentationContainerView;
  [(AVPresentationContainerView *)&v11 setBackgroundColor:v7];
  if (wantsAppearanceConfigValues)
  {

    v7 = appearanceProxy;
  }

  appearanceProxy2 = [(AVPresentationContainerView *)self appearanceProxy];
  [appearanceProxy2 setBackgroundColor:colorCopy];

  appearanceProxy3 = [(AVPresentationContainerView *)self appearanceProxy];
  actualView = [appearanceProxy3 actualView];
  [actualView setBackgroundColor:colorCopy];
}

- (double)_radiansForCounterRotation
{
  v3 = [(AVPresentationContainerView *)self fromOrientation]- 2;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_18B6EC6F0[v3];
  }

  toOrientation = [(AVPresentationContainerView *)self toOrientation];
  if ((toOrientation - 2) > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_18B6EC708[toOrientation - 2];
  }

  return (v6 + v4) * 1.57079633;
}

- (CGAffineTransform)_contentTransform
{
  result = [(AVPresentationContainerView *)self isCounterRotatingContentView];
  if (result)
  {
    [(AVPresentationContainerView *)self _radiansForCounterRotation];
    CGAffineTransformMakeRotation(&v9, v6);
    return UIIntegralTransform();
  }

  else
  {
    v7 = MEMORY[0x1E695EFD0];
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v8;
    *&retstr->tx = *(v7 + 32);
  }

  return result;
}

- (void)didStopTransition
{
  [(AVPresentationContainerView *)self setBeingDismissed:0];
  [(AVPresentationContainerView *)self setBeingPresented:0];
  [(AVPresentationContainerView *)self setFromOrientation:[(AVPresentationContainerView *)self toOrientation]];
  [(AVPresentationContainerView *)self setCounterRotatingContentView:0];
  [(AVPresentationContainerView *)self setNeedsLayout];
  [(AVPresentationContainerView *)self layoutIfNeeded];

  [(AVPresentationContainerView *)self setWillBeginOrientationChange:0];
}

- (void)willStartDismissalTransitionFromInterfaceOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation needsCounterRotation:(BOOL)rotation
{
  rotationCopy = rotation;
  [(AVPresentationContainerView *)self setBeingDismissed:1];
  [(AVPresentationContainerView *)self setFromOrientation:orientation];
  [(AVPresentationContainerView *)self setToOrientation:toOrientation];
  [(AVPresentationContainerView *)self setCounterRotatingContentView:rotationCopy];
  [(AVPresentationContainerView *)self setNeedsLayout];
  [(AVPresentationContainerView *)self layoutIfNeeded];

  [(AVPresentationContainerView *)self setWillBeginOrientationChange:0];
}

- (void)willStartPresentationTransitionFromInterfaceOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation needsCounterRotation:(BOOL)rotation
{
  rotationCopy = rotation;
  [(AVPresentationContainerView *)self setBeingPresented:1];
  [(AVPresentationContainerView *)self setFromOrientation:orientation];
  [(AVPresentationContainerView *)self setToOrientation:toOrientation];
  [(AVPresentationContainerView *)self setCounterRotatingContentView:rotationCopy];
  [(AVPresentationContainerView *)self setNeedsLayout];
  [(AVPresentationContainerView *)self layoutIfNeeded];

  [(AVPresentationContainerView *)self setWillBeginOrientationChange:0];
}

- (UIEdgeInsets)avkit_overrideLayoutMarginsForCounterRotation
{
  if (![(AVPresentationContainerView *)self avkit_isCounterRotatedForTransition])
  {
    goto LABEL_7;
  }

  if (![(AVPresentationContainerView *)self isBeingPresented])
  {
    if ([(AVPresentationContainerView *)self isBeingDismissed])
    {
      fromOrientation = [(AVPresentationContainerView *)self fromOrientation];
      goto LABEL_6;
    }

LABEL_7:
    v7 = 2.22507386e-308;
    v6 = 2.22507386e-308;
    v5 = 2.22507386e-308;
    v4 = 2.22507386e-308;
    goto LABEL_8;
  }

  fromOrientation = [(AVPresentationContainerView *)self toOrientation];
LABEL_6:
  [(AVPresentationContainerView *)self avkit_overrideLayoutMarginsForInterfaceOrientation:fromOrientation];
LABEL_8:
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)avkit_overrideLayoutMarginsForInterfaceOrientation:(int64_t)orientation
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  if ((orientation - 3) > 1 || userInterfaceIdiom)
  {

    goto LABEL_6;
  }

  avkit_mainScreen = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  traitCollection = [avkit_mainScreen traitCollection];
  [traitCollection displayCornerRadius];
  v9 = v8;

  if (v9 <= 0.0)
  {
LABEL_6:
    v10 = 2.22507386e-308;
    goto LABEL_7;
  }

  v10 = 27.0;
LABEL_7:
  v11 = v10;
  v12 = v10;
  v13 = v10;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (BOOL)avkit_isCounterRotatedForTransition
{
  if ([(AVPresentationContainerView *)self isBeingDismissed]|| (v3 = [(AVPresentationContainerView *)self isBeingPresented]))
  {
    fromOrientation = [(AVPresentationContainerView *)self fromOrientation];
    LOBYTE(v3) = fromOrientation != [(AVPresentationContainerView *)self toOrientation];
  }

  return v3;
}

- (BOOL)avkit_isVideoGravityFrozen
{
  willBeginOrientationChange = [(AVPresentationContainerView *)self willBeginOrientationChange];
  if (willBeginOrientationChange)
  {
    window = [(AVPresentationContainerView *)self window];
    _windowOwnsInterfaceOrientation = [window _windowOwnsInterfaceOrientation];

    LOBYTE(willBeginOrientationChange) = _windowOwnsInterfaceOrientation;
  }

  return willBeginOrientationChange;
}

- (void)_setCornerRadius:(double)radius
{
  layer = [(AVPresentationContainerView *)self layer];
  [layer setCornerRadius:radius];

  v6 = *MEMORY[0x1E69796E0];
  layer2 = [(AVPresentationContainerView *)self layer];
  [layer2 setCornerCurve:v6];

  layer3 = [(AVPresentationContainerView *)self layer];
  appearanceProxy = [layer3 appearanceProxy];
  maskedCorners = [appearanceProxy maskedCorners];
  layer4 = [(AVPresentationContainerView *)self layer];
  [layer4 setMaskedCorners:maskedCorners];

  if (radius > 0.0)
  {

    [(AVPresentationContainerView *)self setClipsToBounds:1];
  }
}

- (double)_cornerRadius
{
  layer = [(AVPresentationContainerView *)self layer];
  cornerCurve = [layer cornerCurve];
  v5 = 0.0;
  if (cornerCurve == *MEMORY[0x1E69796E0])
  {
    layer2 = [(AVPresentationContainerView *)self layer];
    [layer2 cornerRadius];
    v5 = v7;
  }

  return v5;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  layer = [(AVPresentationContainerView *)self layer];
  [layer setCornerRadius:radius];

  v6 = *MEMORY[0x1E69796E8];
  layer2 = [(AVPresentationContainerView *)self layer];
  [layer2 setCornerCurve:v6];

  layer3 = [(AVPresentationContainerView *)self layer];
  appearanceProxy = [layer3 appearanceProxy];
  maskedCorners = [appearanceProxy maskedCorners];
  layer4 = [(AVPresentationContainerView *)self layer];
  [layer4 setMaskedCorners:maskedCorners];

  if (radius > 0.0)
  {

    [(AVPresentationContainerView *)self setClipsToBounds:1];
  }
}

- (double)_continuousCornerRadius
{
  layer = [(AVPresentationContainerView *)self layer];
  cornerCurve = [layer cornerCurve];
  v5 = 0.0;
  if (cornerCurve == *MEMORY[0x1E69796E8])
  {
    layer2 = [(AVPresentationContainerView *)self layer];
    [layer2 cornerRadius];
    v5 = v7;
  }

  return v5;
}

- (void)setWantsAppearanceConfigValues:(BOOL)values
{
  if (self->_wantsAppearanceConfigValues != values)
  {
    v11 = appearanceProxy;
    v12 = v4;
    v13 = v5;
    valuesCopy = values;
    self->_wantsAppearanceConfigValues = values;
    if (values)
    {
      appearanceProxy = [(AVPresentationContainerView *)self appearanceProxy];
      [appearanceProxy backgroundColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] clearColor];
    }
    v8 = ;
    v10.receiver = self;
    v10.super_class = AVPresentationContainerView;
    [(AVPresentationContainerView *)&v10 setBackgroundColor:v8];
    if (valuesCopy)
    {

      v8 = appearanceProxy;
    }

    layer = [(AVPresentationContainerView *)self layer];
    [layer setWantsAppearanceConfigValues:valuesCopy];
  }
}

- (AVPresentationContainerViewAppearanceProxy)appearanceProxy
{
  layer = [(AVPresentationContainerView *)self layer];
  appearanceProxy = [layer appearanceProxy];

  return appearanceProxy;
}

@end
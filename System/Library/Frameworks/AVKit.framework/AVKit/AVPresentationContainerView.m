@interface AVPresentationContainerView
- (AVPresentationContainerViewAppearanceProxy)appearanceProxy;
- (BOOL)avkit_isCounterRotatedForTransition;
- (BOOL)avkit_isVideoGravityFrozen;
- (CGAffineTransform)_contentTransform;
- (UIEdgeInsets)avkit_overrideLayoutMarginsForCounterRotation;
- (UIEdgeInsets)avkit_overrideLayoutMarginsForInterfaceOrientation:(int64_t)a3;
- (UIView)presentationContainerContentView;
- (double)_continuousCornerRadius;
- (double)_cornerRadius;
- (double)_radiansForCounterRotation;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setCornerRadius:(double)a3;
- (void)didStopTransition;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setClipsToBounds:(BOOL)a3;
- (void)setWantsAppearanceConfigValues:(BOOL)a3;
- (void)willStartDismissalTransitionFromInterfaceOrientation:(int64_t)a3 toOrientation:(int64_t)a4 needsCounterRotation:(BOOL)a5;
- (void)willStartPresentationTransitionFromInterfaceOrientation:(int64_t)a3 toOrientation:(int64_t)a4 needsCounterRotation:(BOOL)a5;
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
  v3 = [(AVPresentationContainerView *)self presentationContainerContentView];
  v4 = [v3 superview];

  if (v4 == self)
  {
    [(AVPresentationContainerView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(AVPresentationContainerView *)self presentationContainerContentView];
    [v13 setFrame:{v6, v8, v10, v12}];

    [(AVPresentationContainerView *)self _contentTransform];
    v14 = [(AVPresentationContainerView *)self presentationContainerContentView];
    v20[0] = v20[3];
    v20[1] = v20[4];
    v20[2] = v20[5];
    [v14 setTransform:v20];

    [(AVPresentationContainerView *)self bounds];
    UIRectGetCenter();
    v16 = v15;
    v18 = v17;
    v19 = [(AVPresentationContainerView *)self presentationContainerContentView];
    [v19 setCenter:{v16, v18}];
  }
}

- (void)setClipsToBounds:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = AVPresentationContainerView;
  [(AVPresentationContainerView *)&v8 setClipsToBounds:[(AVPresentationContainerView *)self wantsAppearanceConfigValues]& a3];
  v5 = [(AVPresentationContainerView *)self appearanceProxy];
  [v5 setClipsToBounds:v3];

  v6 = [(AVPresentationContainerView *)self appearanceProxy];
  v7 = [v6 actualView];
  [v7 setClipsToBounds:v3];
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = [(AVPresentationContainerView *)self wantsAppearanceConfigValues];
  if (v6)
  {
    v3 = [(AVPresentationContainerView *)self appearanceProxy];
    [v3 backgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v7 = ;
  v11.receiver = self;
  v11.super_class = AVPresentationContainerView;
  [(AVPresentationContainerView *)&v11 setBackgroundColor:v7];
  if (v6)
  {

    v7 = v3;
  }

  v8 = [(AVPresentationContainerView *)self appearanceProxy];
  [v8 setBackgroundColor:v5];

  v9 = [(AVPresentationContainerView *)self appearanceProxy];
  v10 = [v9 actualView];
  [v10 setBackgroundColor:v5];
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

  v5 = [(AVPresentationContainerView *)self toOrientation];
  if ((v5 - 2) > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_18B6EC708[v5 - 2];
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

- (void)willStartDismissalTransitionFromInterfaceOrientation:(int64_t)a3 toOrientation:(int64_t)a4 needsCounterRotation:(BOOL)a5
{
  v5 = a5;
  [(AVPresentationContainerView *)self setBeingDismissed:1];
  [(AVPresentationContainerView *)self setFromOrientation:a3];
  [(AVPresentationContainerView *)self setToOrientation:a4];
  [(AVPresentationContainerView *)self setCounterRotatingContentView:v5];
  [(AVPresentationContainerView *)self setNeedsLayout];
  [(AVPresentationContainerView *)self layoutIfNeeded];

  [(AVPresentationContainerView *)self setWillBeginOrientationChange:0];
}

- (void)willStartPresentationTransitionFromInterfaceOrientation:(int64_t)a3 toOrientation:(int64_t)a4 needsCounterRotation:(BOOL)a5
{
  v5 = a5;
  [(AVPresentationContainerView *)self setBeingPresented:1];
  [(AVPresentationContainerView *)self setFromOrientation:a3];
  [(AVPresentationContainerView *)self setToOrientation:a4];
  [(AVPresentationContainerView *)self setCounterRotatingContentView:v5];
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
      v3 = [(AVPresentationContainerView *)self fromOrientation];
      goto LABEL_6;
    }

LABEL_7:
    v7 = 2.22507386e-308;
    v6 = 2.22507386e-308;
    v5 = 2.22507386e-308;
    v4 = 2.22507386e-308;
    goto LABEL_8;
  }

  v3 = [(AVPresentationContainerView *)self toOrientation];
LABEL_6:
  [(AVPresentationContainerView *)self avkit_overrideLayoutMarginsForInterfaceOrientation:v3];
LABEL_8:
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)avkit_overrideLayoutMarginsForInterfaceOrientation:(int64_t)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];
  if ((a3 - 3) > 1 || v5)
  {

    goto LABEL_6;
  }

  v6 = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  v7 = [v6 traitCollection];
  [v7 displayCornerRadius];
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
    v4 = [(AVPresentationContainerView *)self fromOrientation];
    LOBYTE(v3) = v4 != [(AVPresentationContainerView *)self toOrientation];
  }

  return v3;
}

- (BOOL)avkit_isVideoGravityFrozen
{
  v3 = [(AVPresentationContainerView *)self willBeginOrientationChange];
  if (v3)
  {
    v4 = [(AVPresentationContainerView *)self window];
    v5 = [v4 _windowOwnsInterfaceOrientation];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)_setCornerRadius:(double)a3
{
  v5 = [(AVPresentationContainerView *)self layer];
  [v5 setCornerRadius:a3];

  v6 = *MEMORY[0x1E69796E0];
  v7 = [(AVPresentationContainerView *)self layer];
  [v7 setCornerCurve:v6];

  v8 = [(AVPresentationContainerView *)self layer];
  v9 = [v8 appearanceProxy];
  v10 = [v9 maskedCorners];
  v11 = [(AVPresentationContainerView *)self layer];
  [v11 setMaskedCorners:v10];

  if (a3 > 0.0)
  {

    [(AVPresentationContainerView *)self setClipsToBounds:1];
  }
}

- (double)_cornerRadius
{
  v3 = [(AVPresentationContainerView *)self layer];
  v4 = [v3 cornerCurve];
  v5 = 0.0;
  if (v4 == *MEMORY[0x1E69796E0])
  {
    v6 = [(AVPresentationContainerView *)self layer];
    [v6 cornerRadius];
    v5 = v7;
  }

  return v5;
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v5 = [(AVPresentationContainerView *)self layer];
  [v5 setCornerRadius:a3];

  v6 = *MEMORY[0x1E69796E8];
  v7 = [(AVPresentationContainerView *)self layer];
  [v7 setCornerCurve:v6];

  v8 = [(AVPresentationContainerView *)self layer];
  v9 = [v8 appearanceProxy];
  v10 = [v9 maskedCorners];
  v11 = [(AVPresentationContainerView *)self layer];
  [v11 setMaskedCorners:v10];

  if (a3 > 0.0)
  {

    [(AVPresentationContainerView *)self setClipsToBounds:1];
  }
}

- (double)_continuousCornerRadius
{
  v3 = [(AVPresentationContainerView *)self layer];
  v4 = [v3 cornerCurve];
  v5 = 0.0;
  if (v4 == *MEMORY[0x1E69796E8])
  {
    v6 = [(AVPresentationContainerView *)self layer];
    [v6 cornerRadius];
    v5 = v7;
  }

  return v5;
}

- (void)setWantsAppearanceConfigValues:(BOOL)a3
{
  if (self->_wantsAppearanceConfigValues != a3)
  {
    v11 = v3;
    v12 = v4;
    v13 = v5;
    v6 = a3;
    self->_wantsAppearanceConfigValues = a3;
    if (a3)
    {
      v3 = [(AVPresentationContainerView *)self appearanceProxy];
      [v3 backgroundColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] clearColor];
    }
    v8 = ;
    v10.receiver = self;
    v10.super_class = AVPresentationContainerView;
    [(AVPresentationContainerView *)&v10 setBackgroundColor:v8];
    if (v6)
    {

      v8 = v3;
    }

    v9 = [(AVPresentationContainerView *)self layer];
    [v9 setWantsAppearanceConfigValues:v6];
  }
}

- (AVPresentationContainerViewAppearanceProxy)appearanceProxy
{
  v2 = [(AVPresentationContainerView *)self layer];
  v3 = [v2 appearanceProxy];

  return v3;
}

@end
@interface AVPresentationContainerViewLayer
- (AVPresentationContainerViewAppearanceProxy)appearanceProxy;
- (BOOL)masksToBounds;
- (double)cornerRadius;
- (id)cornerCurve;
- (unint64_t)maskedCorners;
- (void)setCornerCurve:(id)curve;
- (void)setCornerRadius:(double)radius;
- (void)setMaskedCorners:(unint64_t)corners;
- (void)setMasksToBounds:(BOOL)bounds;
- (void)setWantsAppearanceConfigValues:(BOOL)values;
@end

@implementation AVPresentationContainerViewLayer

- (void)setCornerRadius:(double)radius
{
  appearanceProxy = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  [appearanceProxy setCornerRadius:radius];

  appearanceProxy2 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  actualView = [appearanceProxy2 actualView];
  layer = [actualView layer];
  [layer setCornerRadius:radius];
}

- (double)cornerRadius
{
  appearanceProxy = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  [appearanceProxy cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setCornerCurve:(id)curve
{
  curveCopy = curve;
  appearanceProxy = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  [appearanceProxy setCornerCurve:curveCopy];

  appearanceProxy2 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  actualView = [appearanceProxy2 actualView];
  layer = [actualView layer];
  [layer setCornerCurve:curveCopy];
}

- (id)cornerCurve
{
  appearanceProxy = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  cornerCurve = [appearanceProxy cornerCurve];

  return cornerCurve;
}

- (void)setMasksToBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  appearanceProxy = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  [appearanceProxy setClipsToBounds:boundsCopy];

  appearanceProxy2 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  actualView = [appearanceProxy2 actualView];
  [actualView setClipsToBounds:boundsCopy];
}

- (BOOL)masksToBounds
{
  appearanceProxy = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  clipsToBounds = [appearanceProxy clipsToBounds];

  return clipsToBounds;
}

- (void)setMaskedCorners:(unint64_t)corners
{
  appearanceProxy = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  [appearanceProxy setMaskedCorners:corners];

  appearanceProxy2 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  actualView = [appearanceProxy2 actualView];
  layer = [actualView layer];
  [layer setMaskedCorners:corners];
}

- (unint64_t)maskedCorners
{
  appearanceProxy = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  maskedCorners = [appearanceProxy maskedCorners];

  return maskedCorners;
}

- (void)setWantsAppearanceConfigValues:(BOOL)values
{
  if (self->_wantsAppearanceConfigValues != values)
  {
    v17 = v3;
    v18 = v4;
    valuesCopy = values;
    self->_wantsAppearanceConfigValues = values;
    appearanceProxy = [(AVPresentationContainerViewLayer *)self appearanceProxy];
    cornerCurve = [appearanceProxy cornerCurve];
    if (valuesCopy)
    {
      v16.receiver = self;
      v16.super_class = AVPresentationContainerViewLayer;
      [(AVPresentationContainerViewLayer *)&v16 setCornerCurve:cornerCurve];

      appearanceProxy2 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
      v15.receiver = self;
      v15.super_class = AVPresentationContainerViewLayer;
      -[AVPresentationContainerViewLayer setMaskedCorners:](&v15, sel_setMaskedCorners_, [appearanceProxy2 maskedCorners]);

      appearanceProxy3 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
      [appearanceProxy3 cornerRadius];
      v14.receiver = self;
      v14.super_class = AVPresentationContainerViewLayer;
      [(AVPresentationContainerViewLayer *)&v14 setCornerRadius:?];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = AVPresentationContainerViewLayer;
      [(AVPresentationContainerViewLayer *)&v13 setCornerCurve:cornerCurve];

      v12.receiver = self;
      v12.super_class = AVPresentationContainerViewLayer;
      [(AVPresentationContainerViewLayer *)&v12 setMaskedCorners:0];
      v11.receiver = self;
      v11.super_class = AVPresentationContainerViewLayer;
      [(AVPresentationContainerViewLayer *)&v11 setCornerRadius:0.0];
    }
  }
}

- (AVPresentationContainerViewAppearanceProxy)appearanceProxy
{
  appearanceProxy = self->_appearanceProxy;
  if (!appearanceProxy)
  {
    v4 = objc_alloc_init(AVPresentationContainerViewAppearanceProxy);
    v5 = self->_appearanceProxy;
    self->_appearanceProxy = v4;

    v16.receiver = self;
    v16.super_class = AVPresentationContainerViewLayer;
    cornerCurve = [(AVPresentationContainerViewLayer *)&v16 cornerCurve];
    appearanceProxy = [(AVPresentationContainerViewLayer *)self appearanceProxy];
    [appearanceProxy setCornerCurve:cornerCurve];

    v15.receiver = self;
    v15.super_class = AVPresentationContainerViewLayer;
    maskedCorners = [(AVPresentationContainerViewLayer *)&v15 maskedCorners];
    appearanceProxy2 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
    [appearanceProxy2 setMaskedCorners:maskedCorners];

    v14.receiver = self;
    v14.super_class = AVPresentationContainerViewLayer;
    [(AVPresentationContainerViewLayer *)&v14 cornerRadius];
    v11 = v10;
    appearanceProxy3 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
    [appearanceProxy3 setCornerRadius:v11];

    appearanceProxy = self->_appearanceProxy;
  }

  return appearanceProxy;
}

@end
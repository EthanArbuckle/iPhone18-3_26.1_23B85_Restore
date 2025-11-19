@interface AVPresentationContainerViewLayer
- (AVPresentationContainerViewAppearanceProxy)appearanceProxy;
- (BOOL)masksToBounds;
- (double)cornerRadius;
- (id)cornerCurve;
- (unint64_t)maskedCorners;
- (void)setCornerCurve:(id)a3;
- (void)setCornerRadius:(double)a3;
- (void)setMaskedCorners:(unint64_t)a3;
- (void)setMasksToBounds:(BOOL)a3;
- (void)setWantsAppearanceConfigValues:(BOOL)a3;
@end

@implementation AVPresentationContainerViewLayer

- (void)setCornerRadius:(double)a3
{
  v5 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  [v5 setCornerRadius:a3];

  v8 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  v6 = [v8 actualView];
  v7 = [v6 layer];
  [v7 setCornerRadius:a3];
}

- (double)cornerRadius
{
  v2 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  [v2 cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setCornerCurve:(id)a3
{
  v4 = a3;
  v5 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  [v5 setCornerCurve:v4];

  v8 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  v6 = [v8 actualView];
  v7 = [v6 layer];
  [v7 setCornerCurve:v4];
}

- (id)cornerCurve
{
  v2 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  v3 = [v2 cornerCurve];

  return v3;
}

- (void)setMasksToBounds:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  [v5 setClipsToBounds:v3];

  v7 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  v6 = [v7 actualView];
  [v6 setClipsToBounds:v3];
}

- (BOOL)masksToBounds
{
  v2 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  v3 = [v2 clipsToBounds];

  return v3;
}

- (void)setMaskedCorners:(unint64_t)a3
{
  v5 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  [v5 setMaskedCorners:a3];

  v8 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  v6 = [v8 actualView];
  v7 = [v6 layer];
  [v7 setMaskedCorners:a3];
}

- (unint64_t)maskedCorners
{
  v2 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
  v3 = [v2 maskedCorners];

  return v3;
}

- (void)setWantsAppearanceConfigValues:(BOOL)a3
{
  if (self->_wantsAppearanceConfigValues != a3)
  {
    v17 = v3;
    v18 = v4;
    v5 = a3;
    self->_wantsAppearanceConfigValues = a3;
    v7 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
    v8 = [v7 cornerCurve];
    if (v5)
    {
      v16.receiver = self;
      v16.super_class = AVPresentationContainerViewLayer;
      [(AVPresentationContainerViewLayer *)&v16 setCornerCurve:v8];

      v9 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
      v15.receiver = self;
      v15.super_class = AVPresentationContainerViewLayer;
      -[AVPresentationContainerViewLayer setMaskedCorners:](&v15, sel_setMaskedCorners_, [v9 maskedCorners]);

      v10 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
      [v10 cornerRadius];
      v14.receiver = self;
      v14.super_class = AVPresentationContainerViewLayer;
      [(AVPresentationContainerViewLayer *)&v14 setCornerRadius:?];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = AVPresentationContainerViewLayer;
      [(AVPresentationContainerViewLayer *)&v13 setCornerCurve:v8];

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
    v6 = [(AVPresentationContainerViewLayer *)&v16 cornerCurve];
    v7 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
    [v7 setCornerCurve:v6];

    v15.receiver = self;
    v15.super_class = AVPresentationContainerViewLayer;
    v8 = [(AVPresentationContainerViewLayer *)&v15 maskedCorners];
    v9 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
    [v9 setMaskedCorners:v8];

    v14.receiver = self;
    v14.super_class = AVPresentationContainerViewLayer;
    [(AVPresentationContainerViewLayer *)&v14 cornerRadius];
    v11 = v10;
    v12 = [(AVPresentationContainerViewLayer *)self appearanceProxy];
    [v12 setCornerRadius:v11];

    appearanceProxy = self->_appearanceProxy;
  }

  return appearanceProxy;
}

@end
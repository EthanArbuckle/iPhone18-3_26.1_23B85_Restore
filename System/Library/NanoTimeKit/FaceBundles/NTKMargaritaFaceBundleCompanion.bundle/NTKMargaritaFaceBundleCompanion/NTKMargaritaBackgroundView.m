@interface NTKMargaritaBackgroundView
+ (id)rotationSwatchImageForDevice:(id)a3 withColors:(id)a4 rotation:(int64_t)a5;
+ (id)stripeCountSwatchImageForDevice:(id)a3 withColors:(id)a4;
- (CGSize)_stripeContainerSizeForStyle:(unint64_t)a3 rotation:(double)a4;
- (CGSize)_stripeSizeForStripeCount:(unint64_t)a3;
- (CGVector)_stripeOriginOffsetForStripeCount:(unint64_t)a3;
- (NTKMargaritaBackgroundView)initWithDevice:(id)a3;
- (double)_stripeContainerCornerRadiusForStyle:(unint64_t)a3;
- (id)_maskLayerWithFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5;
- (id)_stripeContainerCornerCurveForStyle:(unint64_t)a3;
- (void)_applyColors:(id)a3;
- (void)_applyStripeSize:(CGSize)a3 originOffset:(CGVector)a4;
- (void)_layoutStripes;
- (void)_layoutStripesForStripeCount:(unint64_t)a3;
- (void)_recreateStripeLayers;
- (void)applyTransitionFraction:(double)a3 fromRotation:(int64_t)a4 toRotation:(int64_t)a5;
- (void)applyTransitionFraction:(double)a3 fromStripeCount:(unint64_t)a4 toStripeCount:(unint64_t)a5;
- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5;
- (void)applyTransitionFractionToCompactCircular:(double)a3;
- (void)layoutSubviews;
- (void)setCompactCircular:(BOOL)a3;
- (void)setRotation:(int64_t)a3;
- (void)setStripeColor:(id)a3 atIndex:(int64_t)a4;
- (void)setStyle:(unint64_t)a3;
@end

@implementation NTKMargaritaBackgroundView

- (NTKMargaritaBackgroundView)initWithDevice:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = NTKMargaritaBackgroundView;
  v6 = [(NTKMargaritaBackgroundView *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = +[NTKMargaritaFace totalStripeCount];
    v9 = [NSMutableArray arrayWithCapacity:v8];
    stripeColors = v7->_stripeColors;
    v7->_stripeColors = v9;

    if (v8 >= 1)
    {
      do
      {
        v11 = v7->_stripeColors;
        v12 = +[UIColor whiteColor];
        [(NSMutableArray *)v11 addObject:v12];

        --v8;
      }

      while (v8);
    }

    v13 = +[CALayer layer];
    stripeContainerLayer = v7->_stripeContainerLayer;
    v7->_stripeContainerLayer = v13;

    [(CALayer *)v7->_stripeContainerLayer setMasksToBounds:1];
    v15 = v7->_stripeContainerLayer;
    v16 = sub_73A8();
    [(CALayer *)v15 setActions:v16];

    v17 = [(NTKMargaritaBackgroundView *)v7 layer];
    [v17 addSublayer:v7->_stripeContainerLayer];

    v18 = [(NTKMargaritaBackgroundView *)v7 layer];
    [v18 setCornerCurve:kCACornerCurveContinuous];

    v19 = [(NTKMargaritaBackgroundView *)v7 layer];
    [v5 screenCornerRadius];
    [v19 setCornerRadius:?];

    v20 = [(NTKMargaritaBackgroundView *)v7 layer];
    [v20 setMasksToBounds:1];

    v21 = [(NTKMargaritaBackgroundView *)v7 layer];
    v22 = sub_73A8();
    [v21 setActions:v22];

    [(NTKMargaritaBackgroundView *)v7 _recreateStripeLayers];
    v23 = v7;
  }

  return v7;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKMargaritaBackgroundView;
  [(NTKMargaritaBackgroundView *)&v3 layoutSubviews];
  [(NTKMargaritaBackgroundView *)self bounds];
  CLKRectGetCenter();
  [(CALayer *)self->_stripeContainerLayer setPosition:?];
}

+ (id)stripeCountSwatchImageForDevice:(id)a3 withColors:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NTKMargaritaBackgroundView alloc] initWithDevice:v6];
  [(NTKMargaritaBackgroundView *)v7 _applyColors:v5];

  [(NTKMargaritaBackgroundView *)v7 setStyle:0];
  [v6 screenBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(NTKMargaritaBackgroundView *)v7 setFrame:v9, v11, v13, v15];
  v16 = [[UIGraphicsImageRenderer alloc] initWithBounds:{v9, v11, v13, v15}];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_75B0;
  v20[3] = &unk_14640;
  v21 = v7;
  v17 = v7;
  v18 = [v16 imageWithActions:v20];

  return v18;
}

+ (id)rotationSwatchImageForDevice:(id)a3 withColors:(id)a4 rotation:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[NTKMargaritaBackgroundView alloc] initWithDevice:v8];

  v10 = v9->_stripeContainerLayer;
  [NTKEditOption sizeForSwatchStyle:0];
  v12 = v11;
  v14 = v13;
  [(CALayer *)v10 setCornerRadius:0.0];
  [(CALayer *)v10 setFrame:0.0, 0.0, v12, v14];
  CGAffineTransformMakeRotation(&v22, a5 * 3.14159265 / 180.0);
  [(CALayer *)v10 setAffineTransform:&v22];
  [(NTKMargaritaBackgroundView *)v9 _applyColors:v7];

  v15 = +[CALayer layer];
  [v15 setMasksToBounds:1];
  [v15 setCornerRadius:v12 * 0.5];
  [v15 setFrame:{0.0, 0.0, v12, v14}];
  [v15 addSublayer:v10];
  v16 = [[UIGraphicsImageRenderer alloc] initWithBounds:{0.0, 0.0, v12, v14}];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_7838;
  v20[3] = &unk_14640;
  v21 = v15;
  v17 = v15;
  v18 = [v16 imageWithActions:v20];

  return v18;
}

- (void)_applyColors:(id)a3
{
  v7 = a3;
  v4 = [v7 count];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [v7 objectAtIndexedSubscript:i];
      [(NTKMargaritaBackgroundView *)self setStripeColor:v6 atIndex:i];
    }
  }

  [(NTKMargaritaBackgroundView *)self setStripeCount:v4];
}

- (void)_recreateStripeLayers
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(CALayer *)self->_stripeContainerLayer sublayers];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v21 + 1) + 8 * v8) removeFromSuperlayer];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  stripeLayers = self->_stripeLayers;
  self->_stripeLayers = 0;

  v10 = +[NSMutableArray array];
  stripeColors = self->_stripeColors;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_7AD8;
  v18 = &unk_14788;
  v19 = self;
  v12 = v10;
  v20 = v12;
  [(NSMutableArray *)stripeColors enumerateObjectsUsingBlock:&v15];
  v13 = self->_stripeLayers;
  self->_stripeLayers = v12;
  v14 = v12;

  [(NTKMargaritaBackgroundView *)self _layoutStripes:v15];
}

- (void)_layoutStripes
{
  if (self->_stripeCount)
  {
    [(NTKMargaritaBackgroundView *)self _layoutStripesForStripeCount:?];
  }
}

- (void)_layoutStripesForStripeCount:(unint64_t)a3
{
  [(NTKMargaritaBackgroundView *)self _stripeSizeForStripeCount:?];
  v6 = v5;
  v8 = v7;
  [(NTKMargaritaBackgroundView *)self _stripeOriginOffsetForStripeCount:a3];

  [(NTKMargaritaBackgroundView *)self _applyStripeSize:v6 originOffset:v8, v9, v10];
}

- (void)_applyStripeSize:(CGSize)a3 originOffset:(CGVector)a4
{
  stripeLayers = self->_stripeLayers;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_7CA4;
  v5[3] = &unk_147A8;
  v6 = a4;
  v7 = a3;
  [(NSArray *)stripeLayers enumerateObjectsUsingBlock:v5];
}

- (void)setStyle:(unint64_t)a3
{
  self->_style = a3;
  [(NTKMargaritaBackgroundView *)self _stripeContainerSizeForStyle:self->_displayRotation rotation:?];
  [(CALayer *)self->_stripeContainerLayer setBounds:0.0, 0.0, v5, v6];
  [(NTKMargaritaBackgroundView *)self _layoutStripes];
  v8 = [(NTKMargaritaBackgroundView *)self _maskLayerWithStyle:a3];
  v7 = [(NTKMargaritaBackgroundView *)self layer];
  [v7 setMask:v8];
}

- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5
{
  [(NTKMargaritaBackgroundView *)self _stripeContainerSizeForStyle:self->_displayRotation rotation:?];
  [(NTKMargaritaBackgroundView *)self _stripeContainerSizeForStyle:a5 rotation:self->_displayRotation];
  CLKInterpolateBetweenSizes();
  [(CALayer *)self->_stripeContainerLayer setBounds:0.0, 0.0, v9, v10];
  [(CALayer *)self->_stripeContainerLayer setNeedsDisplay];
  [(NTKMargaritaBackgroundView *)self _layoutStripes];
  v12 = [(NTKMargaritaBackgroundView *)self _maskLayerWithFraction:a4 fromStyle:a5 toStyle:a3];
  v11 = [(NTKMargaritaBackgroundView *)self layer];
  [v11 setMask:v12];
}

- (id)_maskLayerWithFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5
{
  [(CLKDevice *)self->_device screenBounds];
  [(NTKMargaritaBackgroundView *)self _stripeContainerSizeForStyle:2 rotation:0.0];
  CLKInterpolateBetweenRects();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(NTKMargaritaBackgroundView *)self _stripeContainerCornerRadiusForStyle:a4, *&a3];
  [(NTKMargaritaBackgroundView *)self _stripeContainerCornerRadiusForStyle:a5];
  CLKInterpolateBetweenFloatsClipped();
  v18 = v17;
  v19 = +[CAShapeLayer layer];
  v20 = [UIBezierPath bezierPathWithRoundedRect:v10 cornerRadius:v12, v14, v16, v18];
  [v19 setPath:{objc_msgSend(v20, "CGPath")}];

  return v19;
}

- (void)setRotation:(int64_t)a3
{
  self->_rotation = a3;
  v4 = a3;
  self->_displayRotation = a3;
  stripeContainerLayer = self->_stripeContainerLayer;
  CGAffineTransformMakeRotation(&v8, a3 * 3.14159265 / 180.0);
  [(CALayer *)stripeContainerLayer setAffineTransform:&v8];
  [(NTKMargaritaBackgroundView *)self _stripeContainerSizeForStyle:self->_style rotation:v4];
  [(CALayer *)self->_stripeContainerLayer setBounds:0.0, 0.0, v6, v7];
  [(NTKMargaritaBackgroundView *)self _layoutStripes];
}

- (void)applyTransitionFraction:(double)a3 fromRotation:(int64_t)a4 toRotation:(int64_t)a5
{
  CLKInterpolateBetweenFloatsClipped();
  v7 = v6;
  self->_displayRotation = v6;
  stripeContainerLayer = self->_stripeContainerLayer;
  CGAffineTransformMakeRotation(&v11, v6 * 3.14159265 / 180.0);
  [(CALayer *)stripeContainerLayer setAffineTransform:&v11];
  [(NTKMargaritaBackgroundView *)self _stripeContainerSizeForStyle:self->_style rotation:v7];
  [(CALayer *)self->_stripeContainerLayer setBounds:0.0, 0.0, v9, v10];
  [(NTKMargaritaBackgroundView *)self _layoutStripes];
}

- (void)applyTransitionFraction:(double)a3 fromStripeCount:(unint64_t)a4 toStripeCount:(unint64_t)a5
{
  [(NTKMargaritaBackgroundView *)self _stripeSizeForStripeCount:?];
  [(NTKMargaritaBackgroundView *)self _stripeSizeForStripeCount:a5];
  CLKInterpolateBetweenSizes();
  v9 = v8;
  v11 = v10;
  [(NTKMargaritaBackgroundView *)self _stripeOriginOffsetForStripeCount:a4];
  [(NTKMargaritaBackgroundView *)self _stripeOriginOffsetForStripeCount:a5];
  CLKInterpolateBetweenVectors();

  [(NTKMargaritaBackgroundView *)self _applyStripeSize:v9 originOffset:v11, v12, v13];
}

- (void)setStripeColor:(id)a3 atIndex:(int64_t)a4
{
  v7 = a3;
  [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
  if ([(NSArray *)self->_stripeLayers count]> a4)
  {
    v6 = [(NSArray *)self->_stripeLayers objectAtIndexedSubscript:a4];
    [v6 setBackgroundColor:{objc_msgSend(v7, "CGColor")}];
  }
}

- (void)setCompactCircular:(BOOL)a3
{
  self->_compactCircular = a3;
  if (self->_style >= 2)
  {
    [(NTKMargaritaBackgroundView *)self _stripeContainerSizeForStyle:self->_displayRotation rotation:?];
    [(CALayer *)self->_stripeContainerLayer setBounds:0.0, 0.0, v5, v6];

    [(NTKMargaritaBackgroundView *)self _layoutStripes];
  }
}

- (void)applyTransitionFractionToCompactCircular:(double)a3
{
  if (self->_style >= 2)
  {
    sub_8780(self, self->_device);
    sub_8780(v5, self->_device);
    CLKInterpolateBetweenFloatsClipped();
    v7 = v6;
    [(CALayer *)self->_stripeContainerLayer setBounds:0.0, 0.0, v7, v7];
    [(CALayer *)self->_stripeContainerLayer setCornerRadius:v7 * 0.5];

    [(NTKMargaritaBackgroundView *)self _layoutStripes];
  }
}

- (CGSize)_stripeSizeForStripeCount:(unint64_t)a3
{
  [(CALayer *)self->_stripeContainerLayer bounds];
  v5 = v4;
  v7 = v6 / a3;
  result.height = v7;
  result.width = v5;
  return result;
}

- (CGVector)_stripeOriginOffsetForStripeCount:(unint64_t)a3
{
  [(CALayer *)self->_stripeContainerLayer bounds];
  v5 = v4 / a3;
  v6 = 0.0;
  result.dy = v5;
  result.dx = v6;
  return result;
}

- (CGSize)_stripeContainerSizeForStyle:(unint64_t)a3 rotation:(double)a4
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    compactCircular = self->_compactCircular;
    v6 = sub_8780(self, self->_device);
    if (compactCircular)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (compactCircular)
    {
      height = v6;
    }

    else
    {
      height = v7;
    }
  }

  else
  {
    v10 = a4 * 3.14159265 / 180.0;
    [(CLKDevice *)self->_device screenBounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(CLKDevice *)self->_device screenCornerRadius];
    v20 = [UIBezierPath bezierPathWithRoundedRect:v12 cornerRadius:v14, v16, v18, v19];
    CGAffineTransformMakeRotation(&v23, v10);
    [v20 applyTransform:&v23];
    PathBoundingBox = CGPathGetPathBoundingBox([v20 CGPath]);
    height = PathBoundingBox.size.height;
    v8 = PathBoundingBox.size.height * (PathBoundingBox.size.width / PathBoundingBox.size.height);
  }

  v21 = v8;
  v22 = height;
  result.height = v22;
  result.width = v21;
  return result;
}

- (double)_stripeContainerCornerRadiusForStyle:(unint64_t)a3
{
  if (a3 > 1)
  {
    compactCircular = self->_compactCircular;
    v7 = sub_8780(self, self->_device);
    if (!compactCircular)
    {
      v7 = v8;
    }

    return v7 * 0.5;
  }

  else
  {
    device = self->_device;

    [(CLKDevice *)device screenCornerRadius];
  }

  return result;
}

- (id)_stripeContainerCornerCurveForStyle:(unint64_t)a3
{
  v3 = &kCACornerCurveContinuous;
  if (a3 >= 2)
  {
    v3 = &kCACornerCurveCircular;
  }

  return *v3;
}

@end
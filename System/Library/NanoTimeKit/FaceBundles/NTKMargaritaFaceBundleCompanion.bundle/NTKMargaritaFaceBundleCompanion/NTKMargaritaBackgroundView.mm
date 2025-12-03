@interface NTKMargaritaBackgroundView
+ (id)rotationSwatchImageForDevice:(id)device withColors:(id)colors rotation:(int64_t)rotation;
+ (id)stripeCountSwatchImageForDevice:(id)device withColors:(id)colors;
- (CGSize)_stripeContainerSizeForStyle:(unint64_t)style rotation:(double)rotation;
- (CGSize)_stripeSizeForStripeCount:(unint64_t)count;
- (CGVector)_stripeOriginOffsetForStripeCount:(unint64_t)count;
- (NTKMargaritaBackgroundView)initWithDevice:(id)device;
- (double)_stripeContainerCornerRadiusForStyle:(unint64_t)style;
- (id)_maskLayerWithFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle;
- (id)_stripeContainerCornerCurveForStyle:(unint64_t)style;
- (void)_applyColors:(id)colors;
- (void)_applyStripeSize:(CGSize)size originOffset:(CGVector)offset;
- (void)_layoutStripes;
- (void)_layoutStripesForStripeCount:(unint64_t)count;
- (void)_recreateStripeLayers;
- (void)applyTransitionFraction:(double)fraction fromRotation:(int64_t)rotation toRotation:(int64_t)toRotation;
- (void)applyTransitionFraction:(double)fraction fromStripeCount:(unint64_t)count toStripeCount:(unint64_t)stripeCount;
- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle;
- (void)applyTransitionFractionToCompactCircular:(double)circular;
- (void)layoutSubviews;
- (void)setCompactCircular:(BOOL)circular;
- (void)setRotation:(int64_t)rotation;
- (void)setStripeColor:(id)color atIndex:(int64_t)index;
- (void)setStyle:(unint64_t)style;
@end

@implementation NTKMargaritaBackgroundView

- (NTKMargaritaBackgroundView)initWithDevice:(id)device
{
  deviceCopy = device;
  v25.receiver = self;
  v25.super_class = NTKMargaritaBackgroundView;
  v6 = [(NTKMargaritaBackgroundView *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
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

    layer = [(NTKMargaritaBackgroundView *)v7 layer];
    [layer addSublayer:v7->_stripeContainerLayer];

    layer2 = [(NTKMargaritaBackgroundView *)v7 layer];
    [layer2 setCornerCurve:kCACornerCurveContinuous];

    layer3 = [(NTKMargaritaBackgroundView *)v7 layer];
    [deviceCopy screenCornerRadius];
    [layer3 setCornerRadius:?];

    layer4 = [(NTKMargaritaBackgroundView *)v7 layer];
    [layer4 setMasksToBounds:1];

    layer5 = [(NTKMargaritaBackgroundView *)v7 layer];
    v22 = sub_73A8();
    [layer5 setActions:v22];

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

+ (id)stripeCountSwatchImageForDevice:(id)device withColors:(id)colors
{
  colorsCopy = colors;
  deviceCopy = device;
  v7 = [[NTKMargaritaBackgroundView alloc] initWithDevice:deviceCopy];
  [(NTKMargaritaBackgroundView *)v7 _applyColors:colorsCopy];

  [(NTKMargaritaBackgroundView *)v7 setStyle:0];
  [deviceCopy screenBounds];
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

+ (id)rotationSwatchImageForDevice:(id)device withColors:(id)colors rotation:(int64_t)rotation
{
  colorsCopy = colors;
  deviceCopy = device;
  v9 = [[NTKMargaritaBackgroundView alloc] initWithDevice:deviceCopy];

  v10 = v9->_stripeContainerLayer;
  [NTKEditOption sizeForSwatchStyle:0];
  v12 = v11;
  v14 = v13;
  [(CALayer *)v10 setCornerRadius:0.0];
  [(CALayer *)v10 setFrame:0.0, 0.0, v12, v14];
  CGAffineTransformMakeRotation(&v22, rotation * 3.14159265 / 180.0);
  [(CALayer *)v10 setAffineTransform:&v22];
  [(NTKMargaritaBackgroundView *)v9 _applyColors:colorsCopy];

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

- (void)_applyColors:(id)colors
{
  colorsCopy = colors;
  v4 = [colorsCopy count];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [colorsCopy objectAtIndexedSubscript:i];
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
  sublayers = [(CALayer *)self->_stripeContainerLayer sublayers];
  v4 = [sublayers copy];

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
  selfCopy = self;
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

- (void)_layoutStripesForStripeCount:(unint64_t)count
{
  [(NTKMargaritaBackgroundView *)self _stripeSizeForStripeCount:?];
  v6 = v5;
  v8 = v7;
  [(NTKMargaritaBackgroundView *)self _stripeOriginOffsetForStripeCount:count];

  [(NTKMargaritaBackgroundView *)self _applyStripeSize:v6 originOffset:v8, v9, v10];
}

- (void)_applyStripeSize:(CGSize)size originOffset:(CGVector)offset
{
  stripeLayers = self->_stripeLayers;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_7CA4;
  v5[3] = &unk_147A8;
  offsetCopy = offset;
  sizeCopy = size;
  [(NSArray *)stripeLayers enumerateObjectsUsingBlock:v5];
}

- (void)setStyle:(unint64_t)style
{
  self->_style = style;
  [(NTKMargaritaBackgroundView *)self _stripeContainerSizeForStyle:self->_displayRotation rotation:?];
  [(CALayer *)self->_stripeContainerLayer setBounds:0.0, 0.0, v5, v6];
  [(NTKMargaritaBackgroundView *)self _layoutStripes];
  v8 = [(NTKMargaritaBackgroundView *)self _maskLayerWithStyle:style];
  layer = [(NTKMargaritaBackgroundView *)self layer];
  [layer setMask:v8];
}

- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle
{
  [(NTKMargaritaBackgroundView *)self _stripeContainerSizeForStyle:self->_displayRotation rotation:?];
  [(NTKMargaritaBackgroundView *)self _stripeContainerSizeForStyle:toStyle rotation:self->_displayRotation];
  CLKInterpolateBetweenSizes();
  [(CALayer *)self->_stripeContainerLayer setBounds:0.0, 0.0, v9, v10];
  [(CALayer *)self->_stripeContainerLayer setNeedsDisplay];
  [(NTKMargaritaBackgroundView *)self _layoutStripes];
  v12 = [(NTKMargaritaBackgroundView *)self _maskLayerWithFraction:style fromStyle:toStyle toStyle:fraction];
  layer = [(NTKMargaritaBackgroundView *)self layer];
  [layer setMask:v12];
}

- (id)_maskLayerWithFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle
{
  [(CLKDevice *)self->_device screenBounds];
  [(NTKMargaritaBackgroundView *)self _stripeContainerSizeForStyle:2 rotation:0.0];
  CLKInterpolateBetweenRects();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(NTKMargaritaBackgroundView *)self _stripeContainerCornerRadiusForStyle:style, *&fraction];
  [(NTKMargaritaBackgroundView *)self _stripeContainerCornerRadiusForStyle:toStyle];
  CLKInterpolateBetweenFloatsClipped();
  v18 = v17;
  v19 = +[CAShapeLayer layer];
  v20 = [UIBezierPath bezierPathWithRoundedRect:v10 cornerRadius:v12, v14, v16, v18];
  [v19 setPath:{objc_msgSend(v20, "CGPath")}];

  return v19;
}

- (void)setRotation:(int64_t)rotation
{
  self->_rotation = rotation;
  rotationCopy = rotation;
  self->_displayRotation = rotation;
  stripeContainerLayer = self->_stripeContainerLayer;
  CGAffineTransformMakeRotation(&v8, rotation * 3.14159265 / 180.0);
  [(CALayer *)stripeContainerLayer setAffineTransform:&v8];
  [(NTKMargaritaBackgroundView *)self _stripeContainerSizeForStyle:self->_style rotation:rotationCopy];
  [(CALayer *)self->_stripeContainerLayer setBounds:0.0, 0.0, v6, v7];
  [(NTKMargaritaBackgroundView *)self _layoutStripes];
}

- (void)applyTransitionFraction:(double)fraction fromRotation:(int64_t)rotation toRotation:(int64_t)toRotation
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

- (void)applyTransitionFraction:(double)fraction fromStripeCount:(unint64_t)count toStripeCount:(unint64_t)stripeCount
{
  [(NTKMargaritaBackgroundView *)self _stripeSizeForStripeCount:?];
  [(NTKMargaritaBackgroundView *)self _stripeSizeForStripeCount:stripeCount];
  CLKInterpolateBetweenSizes();
  v9 = v8;
  v11 = v10;
  [(NTKMargaritaBackgroundView *)self _stripeOriginOffsetForStripeCount:count];
  [(NTKMargaritaBackgroundView *)self _stripeOriginOffsetForStripeCount:stripeCount];
  CLKInterpolateBetweenVectors();

  [(NTKMargaritaBackgroundView *)self _applyStripeSize:v9 originOffset:v11, v12, v13];
}

- (void)setStripeColor:(id)color atIndex:(int64_t)index
{
  colorCopy = color;
  [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
  if ([(NSArray *)self->_stripeLayers count]> index)
  {
    v6 = [(NSArray *)self->_stripeLayers objectAtIndexedSubscript:index];
    [v6 setBackgroundColor:{objc_msgSend(colorCopy, "CGColor")}];
  }
}

- (void)setCompactCircular:(BOOL)circular
{
  self->_compactCircular = circular;
  if (self->_style >= 2)
  {
    [(NTKMargaritaBackgroundView *)self _stripeContainerSizeForStyle:self->_displayRotation rotation:?];
    [(CALayer *)self->_stripeContainerLayer setBounds:0.0, 0.0, v5, v6];

    [(NTKMargaritaBackgroundView *)self _layoutStripes];
  }
}

- (void)applyTransitionFractionToCompactCircular:(double)circular
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

- (CGSize)_stripeSizeForStripeCount:(unint64_t)count
{
  [(CALayer *)self->_stripeContainerLayer bounds];
  v5 = v4;
  v7 = v6 / count;
  result.height = v7;
  result.width = v5;
  return result;
}

- (CGVector)_stripeOriginOffsetForStripeCount:(unint64_t)count
{
  [(CALayer *)self->_stripeContainerLayer bounds];
  v5 = v4 / count;
  v6 = 0.0;
  result.dy = v5;
  result.dx = v6;
  return result;
}

- (CGSize)_stripeContainerSizeForStyle:(unint64_t)style rotation:(double)rotation
{
  if ((style & 0xFFFFFFFFFFFFFFFELL) == 2)
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
    v10 = rotation * 3.14159265 / 180.0;
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

- (double)_stripeContainerCornerRadiusForStyle:(unint64_t)style
{
  if (style > 1)
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

- (id)_stripeContainerCornerCurveForStyle:(unint64_t)style
{
  v3 = &kCACornerCurveContinuous;
  if (style >= 2)
  {
    v3 = &kCACornerCurveCircular;
  }

  return *v3;
}

@end
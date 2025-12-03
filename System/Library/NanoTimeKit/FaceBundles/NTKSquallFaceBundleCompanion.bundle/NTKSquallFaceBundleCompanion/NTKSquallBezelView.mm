@interface NTKSquallBezelView
- (CGRect)_insetBounds;
- (NTKSquallBezelView)initWithDevice:(id)device progressProvider:(id)provider;
- (id)_compositeBezelImagesA:(id)a andB:(id)b dialFraction:(double)fraction;
- (id)_dimmedColor;
- (id)_highlightColor;
- (id)_renderBezelTemplateForSize:(CGSize)size highlighted:(BOOL)highlighted tritium:(BOOL)tritium;
- (id)_tritiumDimmedColor;
- (id)_tritiumHighlightColor;
- (unint64_t)_calculateCrossingStrokeForDialFraction:(double)fraction bezelBounds:(CGRect)bounds screenSize:(CGSize)size cornerRadius:(double)radius length:(double)length point1:(CGPoint *)point1 point2:(CGPoint *)point2 auxPoint:(CGPoint *)self0;
- (void)_compositeBezelImageA:(id)a clippingPath:(id)path context:(CGContext *)context;
- (void)_compositeBezelImageB:(id)b clippingPath:(id)path context:(CGContext *)context;
- (void)_compositeBezelImagesA:(id)a andB:(id)b clippingPath:(id)path context:(CGContext *)context;
- (void)_refreshTemplateImages;
- (void)_renderBezelTemplateForSize:(CGSize)size highlighted:(BOOL)highlighted tritium:(BOOL)tritium rendererContext:(id)context;
- (void)_startBezelTimer;
- (void)_stopBezelTimer;
- (void)_updateImage;
- (void)bezelProgressUpdated;
- (void)layoutSubviews;
- (void)setAnimating:(BOOL)animating;
- (void)setBlurred:(BOOL)blurred;
- (void)setColorKeysDimmed:(id)dimmed highlighted:(id)highlighted;
- (void)setDimmedColorKey:(id)key;
- (void)setHighlightedColorKey:(id)key;
- (void)setProgress:(double)progress;
- (void)setTritiumFraction:(double)fraction;
@end

@implementation NTKSquallBezelView

- (NTKSquallBezelView)initWithDevice:(id)device progressProvider:(id)provider
{
  deviceCopy = device;
  providerCopy = provider;
  v20.receiver = self;
  v20.super_class = NTKSquallBezelView;
  v9 = [(NTKSquallBezelView *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v10->_provider, provider);
    v10->_dimmedColorKey = @"bezelDimmed";
    v10->_highlightedColorKey = @"bezelHighlighted";
    v11 = [UIImageView alloc];
    [(NTKSquallBezelView *)v10 bounds];
    v12 = [v11 initWithFrame:?];
    bezelImageView = v10->_bezelImageView;
    v10->_bezelImageView = v12;

    v14 = [UIImageView alloc];
    [(NTKSquallBezelView *)v10 bounds];
    v15 = [v14 initWithFrame:?];
    tritiumImageView = v10->_tritiumImageView;
    v10->_tritiumImageView = v15;

    v10->_updateFrequency = 3;
    v17 = objc_alloc_init(CLKUIBezierPathStepperProvider);
    pathStepper = v10->_pathStepper;
    v10->_pathStepper = v17;

    [(NTKSquallBezelView *)v10 addSubview:v10->_bezelImageView];
    [(NTKSquallBezelView *)v10 addSubview:v10->_tritiumImageView];
    [(UIImageView *)v10->_tritiumImageView setAlpha:0.0];
  }

  return v10;
}

- (void)layoutSubviews
{
  v3 = sub_62E4(self, self->_device);
  v5 = v4;
  [(NTKSquallBezelView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v3 + v5 * 0.5;
  [(CLKDevice *)self->_device screenCornerRadius];
  self->_reducedCornerRadius = v15 - v14;
  self->_insetBounds.origin.x = v14 + v7;
  self->_insetBounds.origin.y = v14 + v9;
  self->_insetBounds.size.width = v11 + v14 * -2.0;
  self->_insetBounds.size.height = v13 + v14 * -2.0;
  v16 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  bezelPath = self->_bezelPath;
  self->_bezelPath = v16;

  [(CLKUIBezierPathStepperProvider *)self->_pathStepper setPath:self->_bezelPath];
  [(NTKSquallBezelView *)self bounds];
  [(UIImageView *)self->_bezelImageView setFrame:?];
  [(NTKSquallBezelView *)self bounds];
  [(UIImageView *)self->_tritiumImageView setFrame:?];

  [(NTKSquallBezelView *)self _refreshTemplateImages];
}

- (CGRect)_insetBounds
{
  x = self->_insetBounds.origin.x;
  y = self->_insetBounds.origin.y;
  width = self->_insetBounds.size.width;
  height = self->_insetBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setAnimating:(BOOL)animating
{
  if (self->_animating != animating)
  {
    self->_animating = animating;
    if (animating)
    {
      [(NTKSquallBezelView *)self _startBezelTimer];
      self->_blurred = 0;
      layer = [(UIImageView *)self->_bezelImageView layer];
      [layer setFilters:0];
    }

    else
    {

      [(NTKSquallBezelView *)self _stopBezelTimer];
    }
  }
}

- (void)setBlurred:(BOOL)blurred
{
  blurredCopy = blurred;
  if ((!self->_animating || !blurred) && self->_blurred != blurred)
  {
    self->_blurred = blurred;
    layer = [(UIImageView *)self->_bezelImageView layer];
    v7 = layer;
    if (blurredCopy)
    {
      v5 = [CAFilter filterWithType:kCAFilterGaussianBlur];
      [v5 setName:@"gaussianBlurSquallBezel"];
      [v5 setValue:&off_109E0 forKey:@"inputRadius"];
      v8 = v5;
      v6 = [NSArray arrayWithObjects:&v8 count:1];
      [v7 setFilters:v6];
    }

    else
    {
      [layer setFilters:0];
    }
  }
}

- (void)_startBezelTimer
{
  if (!self->_bezelTimerToken)
  {
    objc_initWeak(&location, self);
    v3 = +[CLKClockTimer sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_4D84;
    v6[3] = &unk_103E8;
    objc_copyWeak(&v7, &location);
    v4 = [v3 startUpdatesWithUpdateFrequency:3 withHandler:v6 identificationLog:&stru_104C8];
    bezelTimerToken = self->_bezelTimerToken;
    self->_bezelTimerToken = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_stopBezelTimer
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_bezelTimerToken)
  {
    v3 = +[CLKClockTimer sharedInstance];
    [v3 stopUpdatesForToken:self->_bezelTimerToken];

    bezelTimerToken = self->_bezelTimerToken;
    self->_bezelTimerToken = 0;
  }
}

- (void)setProgress:(double)progress
{
  if (self->_progress != progress)
  {
    self->_progress = progress;
    [(NTKSquallBezelView *)self _updateImage];
  }
}

- (void)bezelProgressUpdated
{
  [(NTKSquallProgressProviding *)self->_provider bezelProgress];

  [(NTKSquallBezelView *)self setProgress:?];
}

- (void)_refreshTemplateImages
{
  dimmedImage = self->_dimmedImage;
  self->_dimmedImage = 0;

  highlightedImage = self->_highlightedImage;
  self->_highlightedImage = 0;

  tritiumImage = self->_tritiumImage;
  self->_tritiumImage = 0;

  [(NTKSquallBezelView *)self _updateImage];
}

- (void)_updateImage
{
  [(NTKSquallBezelView *)self bounds];
  v5 = v3;
  v6 = v4;
  if (!self->_dimmedImage)
  {
    v7 = [(NTKSquallBezelView *)self _renderBezelTemplateForSize:0 highlighted:0 tritium:v3, v4];
    dimmedImage = self->_dimmedImage;
    self->_dimmedImage = v7;
  }

  if (!self->_highlightedImage)
  {
    v9 = [(NTKSquallBezelView *)self _renderBezelTemplateForSize:1 highlighted:0 tritium:v5, v6];
    highlightedImage = self->_highlightedImage;
    self->_highlightedImage = v9;
  }

  if (!self->_tritiumImage)
  {
    v11 = [(NTKSquallBezelView *)self _renderBezelTemplateForSize:0 highlighted:1 tritium:v5, v6];
    tritiumImage = self->_tritiumImage;
    self->_tritiumImage = v11;
  }

  v13 = [(NTKSquallBezelView *)self _compositeBezelImagesA:self->_dimmedImage andB:self->_highlightedImage dialFraction:self->_progress];
  [(UIImageView *)self->_bezelImageView setImage:v13];

  v14 = self->_tritiumImage;
  tritiumImageView = self->_tritiumImageView;

  [(UIImageView *)tritiumImageView setImage:v14];
}

- (void)setDimmedColorKey:(id)key
{
  if ((NTKEqualStrings() & 1) == 0)
  {
    self->_dimmedColorKey = key;

    [(NTKSquallBezelView *)self _refreshTemplateImages];
  }
}

- (void)setHighlightedColorKey:(id)key
{
  if ((NTKEqualStrings() & 1) == 0)
  {
    self->_highlightedColorKey = key;

    [(NTKSquallBezelView *)self _refreshTemplateImages];
  }
}

- (void)setColorKeysDimmed:(id)dimmed highlighted:(id)highlighted
{
  dimmedCopy = dimmed;
  highlightedCopy = highlighted;
  if (!NTKEqualStrings() || (NTKEqualStrings() & 1) == 0)
  {
    self->_dimmedColorKey = dimmedCopy;
    self->_highlightedColorKey = highlightedCopy;
    [(NTKSquallBezelView *)self _refreshTemplateImages];
  }
}

- (id)_highlightColor
{
  if (self->_colorPalette)
  {
    [(NTKSquallColorPalette *)self->_colorPalette valueForKey:self->_highlightedColorKey];
  }

  else
  {
    +[UIColor systemOrangeColor];
  }
  v2 = ;

  return v2;
}

- (id)_dimmedColor
{
  if (self->_colorPalette)
  {
    [(NTKSquallColorPalette *)self->_colorPalette valueForKey:self->_dimmedColorKey];
  }

  else
  {
    +[UIColor systemBlueColor];
  }
  v2 = ;

  return v2;
}

- (id)_tritiumHighlightColor
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_colorPalette;
    tritiumPalette = [(NTKSquallColorPalette *)v3 tritiumPalette];
    v5 = [tritiumPalette valueForKey:self->_highlightedColorKey];
  }

  else
  {
    v5 = +[UIColor systemOrangeColor];
  }

  return v5;
}

- (id)_tritiumDimmedColor
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_colorPalette;
    tritiumPalette = [(NTKSquallColorPalette *)v3 tritiumPalette];
    v5 = [tritiumPalette valueForKey:self->_dimmedColorKey];
  }

  else
  {
    v5 = +[UIColor systemOrangeColor];
  }

  return v5;
}

- (void)setTritiumFraction:(double)fraction
{
  if (self->_tritiumFraction != fraction)
  {
    self->_tritiumFraction = fraction;
    [(UIImageView *)self->_tritiumImageView setAlpha:fraction];
    bezelImageView = self->_bezelImageView;

    [(UIImageView *)bezelImageView setAlpha:1.0 - fraction];
  }
}

- (id)_renderBezelTemplateForSize:(CGSize)size highlighted:(BOOL)highlighted tritium:(BOOL)tritium
{
  height = size.height;
  width = size.width;
  v10 = +[UIGraphicsImageRendererFormat preferredFormat];
  [v10 setOpaque:0];
  v11 = [[UIGraphicsImageRenderer alloc] initWithSize:v10 format:{width, height}];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_5644;
  v14[3] = &unk_104F0;
  v14[4] = self;
  *&v14[5] = width;
  *&v14[6] = height;
  highlightedCopy = highlighted;
  tritiumCopy = tritium;
  v12 = [v11 imageWithActions:v14];

  return v12;
}

- (void)_renderBezelTemplateForSize:(CGSize)size highlighted:(BOOL)highlighted tritium:(BOOL)tritium rendererContext:(id)context
{
  tritiumCopy = tritium;
  height = size.height;
  width = size.width;
  cGContext = [context CGContext];
  sub_62E4(cGContext, self->_device);
  v13 = v12;
  CGContextSetBlendMode(cGContext, kCGBlendModeNormal);
  if (tritiumCopy)
  {
    if (highlighted)
    {
      [(NTKSquallBezelView *)self _tritiumHighlightColor];
    }

    else
    {
      [(NTKSquallBezelView *)self _tritiumDimmedColor];
    }
  }

  else if (highlighted)
  {
    [(NTKSquallBezelView *)self _highlightColor];
  }

  else
  {
    [(NTKSquallBezelView *)self _dimmedColor];
  }
  v14 = ;
  v18 = v14;
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = width;
  v20.size.height = height;
  CGContextClearRect(cGContext, v20);
  v15 = +[CAShapeLayer layer];
  [v15 setPath:{-[UIBezierPath CGPath](self->_bezelPath, "CGPath")}];
  [v15 setFillRule:kCAFillRuleEvenOdd];
  [v15 setLineWidth:v13];
  v16 = v18;
  [v15 setStrokeColor:{objc_msgSend(v18, "CGColor")}];
  v17 = +[UIColor clearColor];
  [v15 setFillColor:{objc_msgSend(v17, "CGColor")}];

  [v15 setBounds:{0.0, 0.0, width, height}];
  [v15 renderInContext:cGContext];
}

- (id)_compositeBezelImagesA:(id)a andB:(id)b dialFraction:(double)fraction
{
  aCopy = a;
  bCopy = b;
  v10 = sub_62E4(bCopy, self->_device);
  v12 = v11;
  [(CLKDevice *)self->_device screenBounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(NTKSquallBezelView *)self _adjustDialFraction:fraction];
  v22 = v21;
  if (fraction >= 1.0)
  {
    v23 = 0;
    goto LABEL_12;
  }

  v23 = +[UIBezierPath bezierPath];
  v42 = 0.0;
  v43 = 0.0;
  v41[0] = 0.0;
  v41[1] = 0.0;
  v39 = 0.0;
  v40 = 0.0;
  [v23 moveToPoint:{v18 * 0.5, v12 + 5.0}];
  v24 = 0.0;
  [v23 addLineToPoint:{v18 * 0.5, 0.0}];
  v25 = [(NTKSquallBezelView *)self _calculateCrossingStrokeForDialFraction:&v42 bezelBounds:v41 screenSize:&v39 cornerRadius:v22 length:self->_insetBounds.origin.x point1:self->_insetBounds.origin.y point2:self->_insetBounds.size.width auxPoint:self->_insetBounds.size.height, v18, v20, self->_reducedCornerRadius, v12 + 10.0];
  switch(v25)
  {
    case 3uLL:
      [v23 addLineToPoint:{v18, 0.0}];
      [v23 addLineToPoint:{v18, v20}];
      goto LABEL_9;
    case 2uLL:
      [v23 addLineToPoint:{v18, 0.0}];
      v24 = v18;
LABEL_9:
      v26 = v20;
      goto LABEL_10;
    case 1uLL:
      v26 = 0.0;
      v24 = v18;
LABEL_10:
      [v23 addLineToPoint:{v24, v26}];
      break;
  }

  _addToPath(v23, v14, v16, v18, v20, v39, v40, v42, v43, v41[0]);
  [v23 closePath];
LABEL_12:
  [aCopy size];
  v29 = [[UIGraphicsImageRenderer alloc] initWithSize:{v27, v28}];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_5BE8;
  v35[3] = &unk_10518;
  v35[4] = self;
  v36 = aCopy;
  v37 = bCopy;
  v38 = v23;
  v30 = v23;
  v31 = bCopy;
  v32 = aCopy;
  v33 = [v29 imageWithActions:v35];

  return v33;
}

- (void)_compositeBezelImagesA:(id)a andB:(id)b clippingPath:(id)path context:(CGContext *)context
{
  pathCopy = path;
  bCopy = b;
  [(NTKSquallBezelView *)self _compositeBezelImageA:a clippingPath:pathCopy context:context];
  [(NTKSquallBezelView *)self _compositeBezelImageB:bCopy clippingPath:pathCopy context:context];
}

- (void)_compositeBezelImageA:(id)a clippingPath:(id)path context:(CGContext *)context
{
  aCopy = a;
  [aCopy size];
  v8 = v7;
  v10 = v9;
  CGContextSetBlendMode(context, kCGBlendModeNormal);
  CGContextSaveGState(context);
  v12.b = 0.0;
  v12.c = 0.0;
  v12.a = 1.0;
  *&v12.d = xmmword_9A50;
  v12.ty = v10;
  CGContextConcatCTM(context, &v12);
  cGImage = [aCopy CGImage];

  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = v8;
  v13.size.height = v10;
  CGContextDrawImage(context, v13, cGImage);
  CGContextRestoreGState(context);
}

- (void)_compositeBezelImageB:(id)b clippingPath:(id)path context:(CGContext *)context
{
  pathCopy = path;
  bCopy = b;
  [bCopy size];
  v11 = v10;
  v13 = v12;
  CGContextBeginPath(context);
  cGPath = [pathCopy CGPath];

  CGContextAddPath(context, cGPath);
  CGContextClosePath(context);
  CGContextClip(context);
  CGContextSetAlpha(context, 1.0 - self->_tritiumFraction);
  CGContextSaveGState(context);
  v16.b = 0.0;
  v16.c = 0.0;
  v16.a = 1.0;
  *&v16.d = xmmword_9A50;
  v16.ty = v13;
  CGContextConcatCTM(context, &v16);
  cGImage = [bCopy CGImage];

  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = v11;
  v17.size.height = v13;
  CGContextDrawImage(context, v17, cGImage);
  CGContextRestoreGState(context);
  CGContextSetAlpha(context, 1.0);
}

- (unint64_t)_calculateCrossingStrokeForDialFraction:(double)fraction bezelBounds:(CGRect)bounds screenSize:(CGSize)size cornerRadius:(double)radius length:(double)length point1:(CGPoint *)point1 point2:(CGPoint *)point2 auxPoint:(CGPoint *)self0
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v20 = 0;
  if (fraction >= 0.25)
  {
    fractionCopy2 = fraction;
    do
    {
      v20 = (v20 + 1) & 3;
      fractionCopy2 = fractionCopy2 + -0.25;
    }

    while (fractionCopy2 >= 0.25);
  }

  else
  {
    fractionCopy2 = fraction;
  }

  MidX = CGRectGetMidX(bounds);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  MinY = CGRectGetMinY(v40);
  v24 = height * 0.5 - radius;
  if (v20)
  {
    v25 = width * 0.5 - radius;
  }

  else
  {
    v25 = height * 0.5 - radius;
  }

  if (v20)
  {
    v26 = v24;
  }

  else
  {
    v26 = width * 0.5 - radius;
  }

  v39 = 0uLL;
  v38 = 0uLL;
  [(CLKUIBezierPathStepperProvider *)self->_pathStepper pointAtOffset:&v39 outPoint:&v38 outTangent:fraction, *&size.width, *&size.height];
  v27 = vmulq_n_f64(vmulq_f64(v38, xmmword_9A90), length);
  v28 = vextq_s8(v27, v27, 8uLL);
  v29 = v39;
  *point1 = vaddq_f64(v39, v28);
  *point2 = vsubq_f64(v29, v28);
  if (point)
  {
    v30 = radius * 1.57079633 + v26;
    if (fractionCopy2 * 4.0 >= v26 / (v25 + v30))
    {
      v33 = v30 / (v25 + v30);
      v31 = v26 + MidX + radius + length * 0.5;
      v32 = 0.0;
      if (fractionCopy2 * 4.0 < v33)
      {
        v32 = MinY + length * -0.5;
      }
    }

    else
    {
      v31 = NAN;
      v32 = NAN;
    }

    point->x = _rotateToQuadrant(v20, v31, v32, v37);
    point->y = v34;
  }

  return v20;
}

@end
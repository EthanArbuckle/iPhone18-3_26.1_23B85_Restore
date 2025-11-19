@interface NTKSquallBezelView
- (CGRect)_insetBounds;
- (NTKSquallBezelView)initWithDevice:(id)a3 progressProvider:(id)a4;
- (id)_compositeBezelImagesA:(id)a3 andB:(id)a4 dialFraction:(double)a5;
- (id)_dimmedColor;
- (id)_highlightColor;
- (id)_renderBezelTemplateForSize:(CGSize)a3 highlighted:(BOOL)a4 tritium:(BOOL)a5;
- (id)_tritiumDimmedColor;
- (id)_tritiumHighlightColor;
- (unint64_t)_calculateCrossingStrokeForDialFraction:(double)a3 bezelBounds:(CGRect)a4 screenSize:(CGSize)a5 cornerRadius:(double)a6 length:(double)a7 point1:(CGPoint *)a8 point2:(CGPoint *)a9 auxPoint:(CGPoint *)a10;
- (void)_compositeBezelImageA:(id)a3 clippingPath:(id)a4 context:(CGContext *)a5;
- (void)_compositeBezelImageB:(id)a3 clippingPath:(id)a4 context:(CGContext *)a5;
- (void)_compositeBezelImagesA:(id)a3 andB:(id)a4 clippingPath:(id)a5 context:(CGContext *)a6;
- (void)_refreshTemplateImages;
- (void)_renderBezelTemplateForSize:(CGSize)a3 highlighted:(BOOL)a4 tritium:(BOOL)a5 rendererContext:(id)a6;
- (void)_startBezelTimer;
- (void)_stopBezelTimer;
- (void)_updateImage;
- (void)bezelProgressUpdated;
- (void)layoutSubviews;
- (void)setAnimating:(BOOL)a3;
- (void)setBlurred:(BOOL)a3;
- (void)setColorKeysDimmed:(id)a3 highlighted:(id)a4;
- (void)setDimmedColorKey:(id)a3;
- (void)setHighlightedColorKey:(id)a3;
- (void)setProgress:(double)a3;
- (void)setTritiumFraction:(double)a3;
@end

@implementation NTKSquallBezelView

- (NTKSquallBezelView)initWithDevice:(id)a3 progressProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = NTKSquallBezelView;
  v9 = [(NTKSquallBezelView *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_provider, a4);
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

- (void)setAnimating:(BOOL)a3
{
  if (self->_animating != a3)
  {
    self->_animating = a3;
    if (a3)
    {
      [(NTKSquallBezelView *)self _startBezelTimer];
      self->_blurred = 0;
      v4 = [(UIImageView *)self->_bezelImageView layer];
      [v4 setFilters:0];
    }

    else
    {

      [(NTKSquallBezelView *)self _stopBezelTimer];
    }
  }
}

- (void)setBlurred:(BOOL)a3
{
  v3 = a3;
  if ((!self->_animating || !a3) && self->_blurred != a3)
  {
    self->_blurred = a3;
    v4 = [(UIImageView *)self->_bezelImageView layer];
    v7 = v4;
    if (v3)
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
      [v4 setFilters:0];
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

- (void)setProgress:(double)a3
{
  if (self->_progress != a3)
  {
    self->_progress = a3;
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

- (void)setDimmedColorKey:(id)a3
{
  if ((NTKEqualStrings() & 1) == 0)
  {
    self->_dimmedColorKey = a3;

    [(NTKSquallBezelView *)self _refreshTemplateImages];
  }
}

- (void)setHighlightedColorKey:(id)a3
{
  if ((NTKEqualStrings() & 1) == 0)
  {
    self->_highlightedColorKey = a3;

    [(NTKSquallBezelView *)self _refreshTemplateImages];
  }
}

- (void)setColorKeysDimmed:(id)a3 highlighted:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (!NTKEqualStrings() || (NTKEqualStrings() & 1) == 0)
  {
    self->_dimmedColorKey = v7;
    self->_highlightedColorKey = v6;
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
    v4 = [(NTKSquallColorPalette *)v3 tritiumPalette];
    v5 = [v4 valueForKey:self->_highlightedColorKey];
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
    v4 = [(NTKSquallColorPalette *)v3 tritiumPalette];
    v5 = [v4 valueForKey:self->_dimmedColorKey];
  }

  else
  {
    v5 = +[UIColor systemOrangeColor];
  }

  return v5;
}

- (void)setTritiumFraction:(double)a3
{
  if (self->_tritiumFraction != a3)
  {
    self->_tritiumFraction = a3;
    [(UIImageView *)self->_tritiumImageView setAlpha:a3];
    bezelImageView = self->_bezelImageView;

    [(UIImageView *)bezelImageView setAlpha:1.0 - a3];
  }
}

- (id)_renderBezelTemplateForSize:(CGSize)a3 highlighted:(BOOL)a4 tritium:(BOOL)a5
{
  height = a3.height;
  width = a3.width;
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
  v15 = a4;
  v16 = a5;
  v12 = [v11 imageWithActions:v14];

  return v12;
}

- (void)_renderBezelTemplateForSize:(CGSize)a3 highlighted:(BOOL)a4 tritium:(BOOL)a5 rendererContext:(id)a6
{
  v6 = a5;
  height = a3.height;
  width = a3.width;
  v11 = [a6 CGContext];
  sub_62E4(v11, self->_device);
  v13 = v12;
  CGContextSetBlendMode(v11, kCGBlendModeNormal);
  if (v6)
  {
    if (a4)
    {
      [(NTKSquallBezelView *)self _tritiumHighlightColor];
    }

    else
    {
      [(NTKSquallBezelView *)self _tritiumDimmedColor];
    }
  }

  else if (a4)
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
  CGContextClearRect(v11, v20);
  v15 = +[CAShapeLayer layer];
  [v15 setPath:{-[UIBezierPath CGPath](self->_bezelPath, "CGPath")}];
  [v15 setFillRule:kCAFillRuleEvenOdd];
  [v15 setLineWidth:v13];
  v16 = v18;
  [v15 setStrokeColor:{objc_msgSend(v18, "CGColor")}];
  v17 = +[UIColor clearColor];
  [v15 setFillColor:{objc_msgSend(v17, "CGColor")}];

  [v15 setBounds:{0.0, 0.0, width, height}];
  [v15 renderInContext:v11];
}

- (id)_compositeBezelImagesA:(id)a3 andB:(id)a4 dialFraction:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = sub_62E4(v9, self->_device);
  v12 = v11;
  [(CLKDevice *)self->_device screenBounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(NTKSquallBezelView *)self _adjustDialFraction:a5];
  v22 = v21;
  if (a5 >= 1.0)
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
  [v8 size];
  v29 = [[UIGraphicsImageRenderer alloc] initWithSize:{v27, v28}];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_5BE8;
  v35[3] = &unk_10518;
  v35[4] = self;
  v36 = v8;
  v37 = v9;
  v38 = v23;
  v30 = v23;
  v31 = v9;
  v32 = v8;
  v33 = [v29 imageWithActions:v35];

  return v33;
}

- (void)_compositeBezelImagesA:(id)a3 andB:(id)a4 clippingPath:(id)a5 context:(CGContext *)a6
{
  v10 = a5;
  v11 = a4;
  [(NTKSquallBezelView *)self _compositeBezelImageA:a3 clippingPath:v10 context:a6];
  [(NTKSquallBezelView *)self _compositeBezelImageB:v11 clippingPath:v10 context:a6];
}

- (void)_compositeBezelImageA:(id)a3 clippingPath:(id)a4 context:(CGContext *)a5
{
  v6 = a3;
  [v6 size];
  v8 = v7;
  v10 = v9;
  CGContextSetBlendMode(a5, kCGBlendModeNormal);
  CGContextSaveGState(a5);
  v12.b = 0.0;
  v12.c = 0.0;
  v12.a = 1.0;
  *&v12.d = xmmword_9A50;
  v12.ty = v10;
  CGContextConcatCTM(a5, &v12);
  v11 = [v6 CGImage];

  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = v8;
  v13.size.height = v10;
  CGContextDrawImage(a5, v13, v11);
  CGContextRestoreGState(a5);
}

- (void)_compositeBezelImageB:(id)a3 clippingPath:(id)a4 context:(CGContext *)a5
{
  v8 = a4;
  v9 = a3;
  [v9 size];
  v11 = v10;
  v13 = v12;
  CGContextBeginPath(a5);
  v14 = [v8 CGPath];

  CGContextAddPath(a5, v14);
  CGContextClosePath(a5);
  CGContextClip(a5);
  CGContextSetAlpha(a5, 1.0 - self->_tritiumFraction);
  CGContextSaveGState(a5);
  v16.b = 0.0;
  v16.c = 0.0;
  v16.a = 1.0;
  *&v16.d = xmmword_9A50;
  v16.ty = v13;
  CGContextConcatCTM(a5, &v16);
  v15 = [v9 CGImage];

  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = v11;
  v17.size.height = v13;
  CGContextDrawImage(a5, v17, v15);
  CGContextRestoreGState(a5);
  CGContextSetAlpha(a5, 1.0);
}

- (unint64_t)_calculateCrossingStrokeForDialFraction:(double)a3 bezelBounds:(CGRect)a4 screenSize:(CGSize)a5 cornerRadius:(double)a6 length:(double)a7 point1:(CGPoint *)a8 point2:(CGPoint *)a9 auxPoint:(CGPoint *)a10
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v20 = 0;
  if (a3 >= 0.25)
  {
    v21 = a3;
    do
    {
      v20 = (v20 + 1) & 3;
      v21 = v21 + -0.25;
    }

    while (v21 >= 0.25);
  }

  else
  {
    v21 = a3;
  }

  MidX = CGRectGetMidX(a4);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  MinY = CGRectGetMinY(v40);
  v24 = height * 0.5 - a6;
  if (v20)
  {
    v25 = width * 0.5 - a6;
  }

  else
  {
    v25 = height * 0.5 - a6;
  }

  if (v20)
  {
    v26 = v24;
  }

  else
  {
    v26 = width * 0.5 - a6;
  }

  v39 = 0uLL;
  v38 = 0uLL;
  [(CLKUIBezierPathStepperProvider *)self->_pathStepper pointAtOffset:&v39 outPoint:&v38 outTangent:a3, *&a5.width, *&a5.height];
  v27 = vmulq_n_f64(vmulq_f64(v38, xmmword_9A90), a7);
  v28 = vextq_s8(v27, v27, 8uLL);
  v29 = v39;
  *a8 = vaddq_f64(v39, v28);
  *a9 = vsubq_f64(v29, v28);
  if (a10)
  {
    v30 = a6 * 1.57079633 + v26;
    if (v21 * 4.0 >= v26 / (v25 + v30))
    {
      v33 = v30 / (v25 + v30);
      v31 = v26 + MidX + a6 + a7 * 0.5;
      v32 = 0.0;
      if (v21 * 4.0 < v33)
      {
        v32 = MinY + a7 * -0.5;
      }
    }

    else
    {
      v31 = NAN;
      v32 = NAN;
    }

    a10->x = _rotateToQuadrant(v20, v31, v32, v37);
    a10->y = v34;
  }

  return v20;
}

@end
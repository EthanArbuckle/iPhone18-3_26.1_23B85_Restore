@interface BSUIProgressSeparatorController
- (BSUIProgressSeparatorController)initWithProgressView:(id)view frame:(CGRect)frame;
- (CGRect)bounds;
- (CGRect)frame;
- (id)_gradientSeparatorWithColors:(id)colors backgroundColor:(id)color;
- (id)_separatorWithColor:(id)color;
- (id)description;
- (void)_setupBackgroundLayer;
- (void)_setupSeparatorForLayoutType:(int64_t)type;
- (void)configureWithType:(int64_t)type;
- (void)updateProgress:(double)progress animate:(BOOL)animate;
@end

@implementation BSUIProgressSeparatorController

- (BSUIProgressSeparatorController)initWithProgressView:(id)view frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v16.receiver = self;
  v16.super_class = BSUIProgressSeparatorController;
  v11 = [(BSUIProgressSeparatorController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_progressView, view);
    metrics = [viewCopy metrics];
    metrics = v12->_metrics;
    v12->_metrics = metrics;

    v12->_frame.origin.x = x;
    v12->_frame.origin.y = y;
    v12->_frame.size.width = width;
    v12->_frame.size.height = height;
  }

  return v12;
}

- (void)updateProgress:(double)progress animate:(BOOL)animate
{
  metrics = [(BSUIProgressSeparatorController *)self metrics];
  v7 = metrics;
  if (progress >= 1.0)
  {
    [metrics progressColor];
  }

  else
  {
    [metrics controlColor];
  }
  v8 = ;
  progressView = [(BSUIProgressSeparatorController *)self progressView];
  traitCollection = [progressView traitCollection];
  v16 = [v8 resolvedColorWithTraitCollection:traitCollection];

  separatorLayer = [(BSUIProgressSeparatorController *)self separatorLayer];
  backgroundColor = [separatorLayer backgroundColor];
  v13 = v16;
  LOBYTE(backgroundColor) = CGColorEqualToColor(backgroundColor, [v16 CGColor]);

  if ((backgroundColor & 1) == 0)
  {
    cGColor = [v16 CGColor];
    separatorLayer2 = [(BSUIProgressSeparatorController *)self separatorLayer];
    [separatorLayer2 setBackgroundColor:cGColor];
  }
}

- (void)configureWithType:(int64_t)type
{
  [(BSUIProgressSeparatorController *)self frame];
  Width = CGRectGetWidth(v7);
  [(BSUIProgressSeparatorController *)self frame];
  [(BSUIProgressSeparatorController *)self setBounds:0.0, 0.0, Width, CGRectGetHeight(v8)];
  [(BSUIProgressSeparatorController *)self _setupBackgroundLayer];

  [(BSUIProgressSeparatorController *)self _setupSeparatorForLayoutType:type];
}

- (void)_setupBackgroundLayer
{
  backgroundLayer = [(BSUIProgressSeparatorController *)self backgroundLayer];

  if (!backgroundLayer)
  {
    v4 = +[CALayer layer];
    backgroundLayer = self->_backgroundLayer;
    self->_backgroundLayer = v4;
  }

  [(BSUIProgressSeparatorController *)self bounds];
  [(CALayer *)self->_backgroundLayer setBounds:?];
  [(BSUIProgressSeparatorController *)self frame];
  [(CALayer *)self->_backgroundLayer setFrame:?];
  v6 = +[UIColor clearColor];
  -[CALayer setBackgroundColor:](self->_backgroundLayer, "setBackgroundColor:", [v6 CGColor]);

  if (self->_debugBounds)
  {
    v7 = +[UIColor blueColor];
    -[CALayer setBorderColor:](self->_backgroundLayer, "setBorderColor:", [v7 CGColor]);

    [(CALayer *)self->_backgroundLayer setBorderWidth:0.5];
  }

  [(CALayer *)self->_backgroundLayer setMasksToBounds:1];
  progressView = [(BSUIProgressSeparatorController *)self progressView];
  presentationLayer = [progressView presentationLayer];
  [presentationLayer addSublayer:self->_backgroundLayer];
}

- (void)_setupSeparatorForLayoutType:(int64_t)type
{
  separatorLayer = [(BSUIProgressSeparatorController *)self separatorLayer];
  [separatorLayer removeFromSuperlayer];

  [(BSUIProgressSeparatorController *)self setSeparatorLayer:0];
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    metrics = [(BSUIProgressSeparatorController *)self metrics];
    v9 = metrics;
    if (type == 6)
    {
      [metrics controlColor];
    }

    else
    {
      [metrics progressColor];
    }
    v15 = ;

    progressView = [(BSUIProgressSeparatorController *)self progressView];
    traitCollection = [progressView traitCollection];
    v13 = [v15 resolvedColorWithTraitCollection:traitCollection];

    metrics2 = [(BSUIProgressSeparatorController *)self metrics];
    backgroundColor = [metrics2 backgroundColor];
    v19 = [(BSUIProgressSeparatorController *)self _gradientSeparatorWithColors:v13 backgroundColor:backgroundColor];
    [(BSUIProgressSeparatorController *)self setSeparatorLayer:v19];
  }

  else
  {
    if ((type & 0xFFFFFFFFFFFFFFFELL) != 4)
    {
      goto LABEL_12;
    }

    metrics3 = [(BSUIProgressSeparatorController *)self metrics];
    v7 = metrics3;
    if (type == 4)
    {
      [metrics3 controlColor];
    }

    else
    {
      [metrics3 progressColor];
    }
    v10 = ;

    progressView2 = [(BSUIProgressSeparatorController *)self progressView];
    traitCollection2 = [progressView2 traitCollection];
    v13 = [v10 resolvedColorWithTraitCollection:traitCollection2];

    metrics2 = [(BSUIProgressSeparatorController *)self _separatorWithColor:v13];
    [(BSUIProgressSeparatorController *)self setSeparatorLayer:metrics2];
  }

LABEL_12:
  backgroundLayer = [(BSUIProgressSeparatorController *)self backgroundLayer];
  separatorLayer2 = [(BSUIProgressSeparatorController *)self separatorLayer];
  [backgroundLayer addSublayer:separatorLayer2];
}

- (id)_gradientSeparatorWithColors:(id)colors backgroundColor:(id)color
{
  colorCopy = color;
  colorsCopy = colors;
  metrics = [(BSUIProgressSeparatorController *)self metrics];
  rightToLeft = [metrics rightToLeft];
  bOOLValue = [rightToLeft BOOLValue];

  v11 = objc_alloc_init(CAGradientLayer);
  cGColor = [colorCopy CGColor];

  v16[0] = cGColor;
  cGColor2 = [colorsCopy CGColor];

  v16[1] = cGColor2;
  v14 = [NSArray arrayWithObjects:v16 count:2];
  [v11 setColors:v14];

  [(BSUIProgressSeparatorController *)self bounds];
  [v11 setFrame:?];
  [v11 setStartPoint:{bOOLValue, 0.5}];
  [v11 setEndPoint:{(bOOLValue ^ 1), 0.5}];

  return v11;
}

- (id)_separatorWithColor:(id)color
{
  colorCopy = color;
  v5 = +[CALayer layer];
  cGColor = [colorCopy CGColor];

  [v5 setBackgroundColor:cGColor];
  [(BSUIProgressSeparatorController *)self bounds];
  [v5 setBounds:?];
  [(BSUIProgressSeparatorController *)self bounds];
  [v5 setFrame:?];

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  [(BSUIProgressSeparatorController *)self frame];
  v4 = NSStringFromCGRect(v8);
  v5 = [NSString stringWithFormat:@"%@: %p frame=%@", v3, self, v4];

  return v5;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
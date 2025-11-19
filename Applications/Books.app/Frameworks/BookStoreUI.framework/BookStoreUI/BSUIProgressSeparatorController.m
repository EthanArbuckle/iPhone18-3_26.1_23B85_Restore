@interface BSUIProgressSeparatorController
- (BSUIProgressSeparatorController)initWithProgressView:(id)a3 frame:(CGRect)a4;
- (CGRect)bounds;
- (CGRect)frame;
- (id)_gradientSeparatorWithColors:(id)a3 backgroundColor:(id)a4;
- (id)_separatorWithColor:(id)a3;
- (id)description;
- (void)_setupBackgroundLayer;
- (void)_setupSeparatorForLayoutType:(int64_t)a3;
- (void)configureWithType:(int64_t)a3;
- (void)updateProgress:(double)a3 animate:(BOOL)a4;
@end

@implementation BSUIProgressSeparatorController

- (BSUIProgressSeparatorController)initWithProgressView:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v16.receiver = self;
  v16.super_class = BSUIProgressSeparatorController;
  v11 = [(BSUIProgressSeparatorController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_progressView, a3);
    v13 = [v10 metrics];
    metrics = v12->_metrics;
    v12->_metrics = v13;

    v12->_frame.origin.x = x;
    v12->_frame.origin.y = y;
    v12->_frame.size.width = width;
    v12->_frame.size.height = height;
  }

  return v12;
}

- (void)updateProgress:(double)a3 animate:(BOOL)a4
{
  v6 = [(BSUIProgressSeparatorController *)self metrics];
  v7 = v6;
  if (a3 >= 1.0)
  {
    [v6 progressColor];
  }

  else
  {
    [v6 controlColor];
  }
  v8 = ;
  v9 = [(BSUIProgressSeparatorController *)self progressView];
  v10 = [v9 traitCollection];
  v16 = [v8 resolvedColorWithTraitCollection:v10];

  v11 = [(BSUIProgressSeparatorController *)self separatorLayer];
  v12 = [v11 backgroundColor];
  v13 = v16;
  LOBYTE(v12) = CGColorEqualToColor(v12, [v16 CGColor]);

  if ((v12 & 1) == 0)
  {
    v14 = [v16 CGColor];
    v15 = [(BSUIProgressSeparatorController *)self separatorLayer];
    [v15 setBackgroundColor:v14];
  }
}

- (void)configureWithType:(int64_t)a3
{
  [(BSUIProgressSeparatorController *)self frame];
  Width = CGRectGetWidth(v7);
  [(BSUIProgressSeparatorController *)self frame];
  [(BSUIProgressSeparatorController *)self setBounds:0.0, 0.0, Width, CGRectGetHeight(v8)];
  [(BSUIProgressSeparatorController *)self _setupBackgroundLayer];

  [(BSUIProgressSeparatorController *)self _setupSeparatorForLayoutType:a3];
}

- (void)_setupBackgroundLayer
{
  v3 = [(BSUIProgressSeparatorController *)self backgroundLayer];

  if (!v3)
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
  v9 = [(BSUIProgressSeparatorController *)self progressView];
  v8 = [v9 presentationLayer];
  [v8 addSublayer:self->_backgroundLayer];
}

- (void)_setupSeparatorForLayoutType:(int64_t)a3
{
  v5 = [(BSUIProgressSeparatorController *)self separatorLayer];
  [v5 removeFromSuperlayer];

  [(BSUIProgressSeparatorController *)self setSeparatorLayer:0];
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v8 = [(BSUIProgressSeparatorController *)self metrics];
    v9 = v8;
    if (a3 == 6)
    {
      [v8 controlColor];
    }

    else
    {
      [v8 progressColor];
    }
    v15 = ;

    v16 = [(BSUIProgressSeparatorController *)self progressView];
    v17 = [v16 traitCollection];
    v13 = [v15 resolvedColorWithTraitCollection:v17];

    v14 = [(BSUIProgressSeparatorController *)self metrics];
    v18 = [v14 backgroundColor];
    v19 = [(BSUIProgressSeparatorController *)self _gradientSeparatorWithColors:v13 backgroundColor:v18];
    [(BSUIProgressSeparatorController *)self setSeparatorLayer:v19];
  }

  else
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 4)
    {
      goto LABEL_12;
    }

    v6 = [(BSUIProgressSeparatorController *)self metrics];
    v7 = v6;
    if (a3 == 4)
    {
      [v6 controlColor];
    }

    else
    {
      [v6 progressColor];
    }
    v10 = ;

    v11 = [(BSUIProgressSeparatorController *)self progressView];
    v12 = [v11 traitCollection];
    v13 = [v10 resolvedColorWithTraitCollection:v12];

    v14 = [(BSUIProgressSeparatorController *)self _separatorWithColor:v13];
    [(BSUIProgressSeparatorController *)self setSeparatorLayer:v14];
  }

LABEL_12:
  v21 = [(BSUIProgressSeparatorController *)self backgroundLayer];
  v20 = [(BSUIProgressSeparatorController *)self separatorLayer];
  [v21 addSublayer:v20];
}

- (id)_gradientSeparatorWithColors:(id)a3 backgroundColor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BSUIProgressSeparatorController *)self metrics];
  v9 = [v8 rightToLeft];
  v10 = [v9 BOOLValue];

  v11 = objc_alloc_init(CAGradientLayer);
  v12 = [v6 CGColor];

  v16[0] = v12;
  v13 = [v7 CGColor];

  v16[1] = v13;
  v14 = [NSArray arrayWithObjects:v16 count:2];
  [v11 setColors:v14];

  [(BSUIProgressSeparatorController *)self bounds];
  [v11 setFrame:?];
  [v11 setStartPoint:{v10, 0.5}];
  [v11 setEndPoint:{(v10 ^ 1), 0.5}];

  return v11;
}

- (id)_separatorWithColor:(id)a3
{
  v4 = a3;
  v5 = +[CALayer layer];
  v6 = [v4 CGColor];

  [v5 setBackgroundColor:v6];
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
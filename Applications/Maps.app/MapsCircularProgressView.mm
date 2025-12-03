@interface MapsCircularProgressView
- (CGPath)circlePath;
- (MapsCircularProgressView)initWithFrame:(CGRect)frame animateButtonBackground:(BOOL)background;
- (void)createButtonBackgroundLayer;
- (void)dealloc;
- (void)layoutSubviews;
- (void)resetAllAnimation;
- (void)setAnimationDuration:(double)duration;
- (void)setBackgroundLayerColor:(id)color;
- (void)setCentralBackgroundLayerColor:(id)color;
- (void)setLineWidth:(double)width;
- (void)setProgress:(double)progress;
- (void)setProgressLayerColor:(id)color;
- (void)setUpOpacityForFadeInAnimation:(float)animation;
- (void)startProgressAnimationWithCompletion:(id)completion;
- (void)updatePaths;
- (void)updateStrokeColors;
@end

@implementation MapsCircularProgressView

- (void)resetAllAnimation
{
  progressLayer = [(MapsCircularProgressView *)self progressLayer];
  [progressLayer removeAllAnimations];

  buttonBackgroundLayer = [(MapsCircularProgressView *)self buttonBackgroundLayer];
  [buttonBackgroundLayer removeAllAnimations];
}

- (void)setCentralBackgroundLayerColor:(id)color
{
  colorCopy = color;
  if (self->_animateButtonBackground)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_centralBackgroundLayerColor, color);
    [(MapsCircularProgressView *)self updateStrokeColors];
    colorCopy = v6;
  }
}

- (void)setProgressLayerColor:(id)color
{
  objc_storeStrong(&self->_progressLayerColor, color);

  [(MapsCircularProgressView *)self updateStrokeColors];
}

- (void)setBackgroundLayerColor:(id)color
{
  objc_storeStrong(&self->_backgroundLayerColor, color);

  [(MapsCircularProgressView *)self updateStrokeColors];
}

- (void)updateStrokeColors
{
  v3 = sub_10094B210();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating stroke colors", &v13, 0xCu);
  }

  backgroundLayerColor = self->_backgroundLayerColor;
  traitCollection = [(MapsCircularProgressView *)self traitCollection];
  v6 = [(UIColor *)backgroundLayerColor resolvedColorWithTraitCollection:traitCollection];
  -[CAShapeLayer setStrokeColor:](self->_backgroundLayer, "setStrokeColor:", [v6 CGColor]);

  progressLayerColor = self->_progressLayerColor;
  traitCollection2 = [(MapsCircularProgressView *)self traitCollection];
  v9 = [(UIColor *)progressLayerColor resolvedColorWithTraitCollection:traitCollection2];
  -[CAShapeLayer setStrokeColor:](self->_progressLayer, "setStrokeColor:", [v9 CGColor]);

  centralBackgroundLayerColor = self->_centralBackgroundLayerColor;
  traitCollection3 = [(MapsCircularProgressView *)self traitCollection];
  v12 = [(UIColor *)centralBackgroundLayerColor resolvedColorWithTraitCollection:traitCollection3];
  -[CALayer setBackgroundColor:](self->_buttonBackgroundLayer, "setBackgroundColor:", [v12 CGColor]);
}

- (void)updatePaths
{
  v3 = sub_10094B210();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating paths", &v8, 0xCu);
  }

  circlePath = [(MapsCircularProgressView *)self circlePath];
  [(CAShapeLayer *)self->_backgroundLayer setPath:circlePath];
  [(CAShapeLayer *)self->_progressLayer setPath:circlePath];
  CGPathRelease(circlePath);
  if (self->_animateButtonBackground)
  {
    [(MapsCircularProgressView *)self frame];
    [(CALayer *)self->_buttonBackgroundLayer setFrame:0.0, 0.0, v5, v5];
    buttonBackgroundLayer = self->_buttonBackgroundLayer;
    [(MapsCircularProgressView *)self frame];
    [(CALayer *)buttonBackgroundLayer setCornerRadius:v7 * 0.5];
  }
}

- (CGPath)circlePath
{
  [(MapsCircularProgressView *)self frame];
  v4 = v3;
  v5 = v3 * 0.5;
  [(MapsCircularProgressView *)self lineWidth];
  v7 = (v4 - v6) * 0.5;
  Mutable = CGPathCreateMutable();
  CGPathAddArc(Mutable, 0, v5, v5, v7, -1.57079633, 4.71238898, 0);
  return Mutable;
}

- (void)setLineWidth:(double)width
{
  [(CAShapeLayer *)self->_backgroundLayer setLineWidth:?];
  progressLayer = self->_progressLayer;

  [(CAShapeLayer *)progressLayer setLineWidth:width];
}

- (void)startProgressAnimationWithCompletion:(id)completion
{
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10094B5F4;
  v11 = &unk_10162F5E8;
  selfCopy = self;
  completionCopy = completion;
  v4 = completionCopy;
  v5 = objc_retainBlock(&v8);
  v6 = [(MapsCircularProgressView *)self progressLayer:v8];
  (v5[2])(v5, v6, @"strokeEnd", @"strokeEndAnimation");

  if (self->_animateButtonBackground)
  {
    buttonBackgroundLayer = [(MapsCircularProgressView *)self buttonBackgroundLayer];
    (v5[2])(v5, buttonBackgroundLayer, @"opacity", @"opacityAnimation");
  }
}

- (void)setAnimationDuration:(double)duration
{
  if (vabdd_f64(self->_animationDuration, duration) > 2.22044605e-16)
  {
    v5 = sub_10094B210();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      animationDuration = self->_animationDuration;
      v7 = 134349568;
      selfCopy = self;
      v9 = 2048;
      v10 = animationDuration;
      v11 = 2048;
      durationCopy = duration;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating animation duration: %f -> %f", &v7, 0x20u);
    }

    self->_animationDuration = duration;
  }
}

- (void)setProgress:(double)progress
{
  progress = self->_progress;
  if (vabdd_f64(progress, progress) > 2.22044605e-16)
  {
    v5 = fmin(fmax(progress, 0.0), 1.0);
    self->_progress = v5;
    v6 = sub_10094B210();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      animationDuration = self->_animationDuration;
      v8 = 134349824;
      selfCopy = self;
      v10 = 2048;
      v11 = fmin(fmax(progress, 0.0), 1.0);
      v12 = 2048;
      v13 = v5;
      v14 = 2048;
      v15 = animationDuration;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Updating progress: %f -> %f with duration %f", &v8, 0x2Au);
    }
  }
}

- (void)setUpOpacityForFadeInAnimation:(float)animation
{
  [(CAShapeLayer *)self->_backgroundLayer setOpacity:?];
  progressLayer = self->_progressLayer;
  *&v6 = animation;

  [(CAShapeLayer *)progressLayer setOpacity:v6];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MapsCircularProgressView;
  [(MapsCircularProgressView *)&v3 layoutSubviews];
  [(MapsCircularProgressView *)self updatePaths];
}

- (void)dealloc
{
  v3 = sub_10094B210();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MapsCircularProgressView;
  [(MapsCircularProgressView *)&v4 dealloc];
}

- (void)createButtonBackgroundLayer
{
  v3 = objc_alloc_init(CALayer);
  buttonBackgroundLayer = self->_buttonBackgroundLayer;
  self->_buttonBackgroundLayer = v3;

  v5 = +[UIColor tertiarySystemFillColor];
  -[CALayer setBackgroundColor:](self->_buttonBackgroundLayer, "setBackgroundColor:", [v5 CGColor]);

  LODWORD(v6) = 1.0;
  [(CALayer *)self->_buttonBackgroundLayer setOpacity:v6];
  layer = [(MapsCircularProgressView *)self layer];
  [layer addSublayer:self->_buttonBackgroundLayer];
}

- (MapsCircularProgressView)initWithFrame:(CGRect)frame animateButtonBackground:(BOOL)background
{
  backgroundCopy = background;
  v28.receiver = self;
  v28.super_class = MapsCircularProgressView;
  v5 = [(MapsCircularProgressView *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    v6 = sub_10094B210();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v31 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v5->_animationDuration = 5.0;
    v5->_animateButtonBackground = backgroundCopy;
    if (backgroundCopy)
    {
      [(MapsCircularProgressView *)v5 createButtonBackgroundLayer];
    }

    v7 = objc_alloc_init(CAShapeLayer);
    backgroundLayer = v5->_backgroundLayer;
    v5->_backgroundLayer = v7;

    v9 = +[UIColor clearColor];
    v10 = v9;
    -[CAShapeLayer setFillColor:](v5->_backgroundLayer, "setFillColor:", [v9 CGColor]);

    [(CAShapeLayer *)v5->_backgroundLayer setLineCap:kCALineCapRound];
    layer = [(MapsCircularProgressView *)v5 layer];
    [layer addSublayer:v5->_backgroundLayer];

    v12 = objc_alloc_init(CAShapeLayer);
    progressLayer = v5->_progressLayer;
    v5->_progressLayer = v12;

    v14 = +[UIColor clearColor];
    v15 = v14;
    -[CAShapeLayer setFillColor:](v5->_progressLayer, "setFillColor:", [v14 CGColor]);

    [(CAShapeLayer *)v5->_progressLayer setLineCap:kCALineCapRound];
    [(CAShapeLayer *)v5->_progressLayer setStrokeEnd:v5->_progress];
    layer2 = [(MapsCircularProgressView *)v5 layer];
    [layer2 addSublayer:v5->_progressLayer];

    [(MapsCircularProgressView *)v5 setLineWidth:2.0];
    [(MapsCircularProgressView *)v5 updatePaths];
    [(CAShapeLayer *)v5->_backgroundLayer setOpacity:0.0];
    [(CAShapeLayer *)v5->_progressLayer setOpacity:0.0];
    [(CALayer *)v5->_buttonBackgroundLayer setOpacity:0.0];
    v17 = +[UIColor tertiarySystemFillColor];
    backgroundLayerColor = v5->_backgroundLayerColor;
    v5->_backgroundLayerColor = v17;

    v19 = +[UIColor secondaryLabelColor];
    progressLayerColor = v5->_progressLayerColor;
    v5->_progressLayerColor = v19;

    v21 = +[UIColor tertiarySystemFillColor];
    centralBackgroundLayerColor = v5->_centralBackgroundLayerColor;
    v5->_centralBackgroundLayerColor = v21;

    [(MapsCircularProgressView *)v5 updateStrokeColors];
    objc_initWeak(buf, v5);
    v29 = objc_opt_class();
    v23 = [NSArray arrayWithObjects:&v29 count:1];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10094BF08;
    v26[3] = &unk_1016546B0;
    objc_copyWeak(&v27, buf);
    v24 = [(MapsCircularProgressView *)v5 registerForTraitChanges:v23 withHandler:v26];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  return v5;
}

@end
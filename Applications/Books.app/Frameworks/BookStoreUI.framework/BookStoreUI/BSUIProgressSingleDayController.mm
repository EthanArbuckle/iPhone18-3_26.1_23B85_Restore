@interface BSUIProgressSingleDayController
+ (void)_updateArcLayer:(id)layer withPercent:(double)percent frame:(CGRect)frame color:(id)color fill:(BOOL)fill rtl:(BOOL)rtl;
- (BSUIProgressSingleDayController)initWithProgressView:(id)view frame:(CGRect)frame progress:(double)progress label:(id)label;
- (CGRect)bounds;
- (CGRect)frame;
- (id)description;
- (void)_animatePop;
- (void)_setupBackgroundLayer;
- (void)_setupDayWithProgress:(double)progress dayType:(int64_t)type;
- (void)_setupNumberText:(id)text;
- (void)configureWithType:(int64_t)type;
- (void)dealloc;
- (void)updateProgress:(double)progress animate:(BOOL)animate;
@end

@implementation BSUIProgressSingleDayController

- (BSUIProgressSingleDayController)initWithProgressView:(id)view frame:(CGRect)frame progress:(double)progress label:(id)label
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  labelCopy = label;
  v21.receiver = self;
  v21.super_class = BSUIProgressSingleDayController;
  v16 = [(BSUIProgressSingleDayController *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_progressView, view);
    metrics = [viewCopy metrics];
    metrics = v17->_metrics;
    v17->_metrics = metrics;

    v17->_frame.origin.x = x;
    v17->_frame.origin.y = y;
    v17->_frame.size.width = width;
    v17->_frame.size.height = height;
    v17->_progress = progress;
    v17->_lastSeenProgress = 0.0;
    objc_storeStrong(&v17->_label, label);
  }

  return v17;
}

- (void)dealloc
{
  [(UILabel *)self->_titleLabel removeFromSuperview];
  titleLabel = self->_titleLabel;
  self->_titleLabel = 0;

  [(CALayer *)self->_backgroundLayer removeFromSuperlayer];
  backgroundLayer = self->_backgroundLayer;
  self->_backgroundLayer = 0;

  v5.receiver = self;
  v5.super_class = BSUIProgressSingleDayController;
  [(BSUIProgressSingleDayController *)&v5 dealloc];
}

- (void)updateProgress:(double)progress animate:(BOOL)animate
{
  animateCopy = animate;
  self->_progress = progress;
  lastSeenProgress = self->_lastSeenProgress;
  [(BSUIProgressSingleDayController *)self _setupDayWithProgress:self->_layoutType dayType:?];
  self->_lastSeenProgress = progress;
  if (animateCopy && self->_layoutType == 1)
  {
    if (progress >= 1.0 && lastSeenProgress < 1.0)
    {

      [(BSUIProgressSingleDayController *)self _animatePop];
    }

    else if (progress < 1.0 && lastSeenProgress < 1.0)
    {
      v13 = [CASpringAnimation animationWithKeyPath:@"strokeEnd"];
      [v13 setMass:1.0];
      [v13 setStiffness:55.0];
      [v13 setDamping:15.0];
      [v13 setInitialVelocity:0.0];
      v10 = [NSNumber numberWithDouble:lastSeenProgress];
      [v13 setFromValue:v10];

      v11 = [NSNumber numberWithDouble:progress];
      [v13 setToValue:v11];

      [v13 settlingDuration];
      [v13 setDuration:?];
      progressRingLayer = [(BSUIProgressSingleDayController *)self progressRingLayer];
      [progressRingLayer addAnimation:v13 forKey:@"progress"];
    }
  }
}

- (void)configureWithType:(int64_t)type
{
  [(BSUIProgressSingleDayController *)self frame];
  Width = CGRectGetWidth(v8);
  [(BSUIProgressSingleDayController *)self frame];
  Height = CGRectGetHeight(v9);
  self->_bounds.origin.x = 0.0;
  self->_bounds.origin.y = 0.0;
  self->_bounds.size.width = Width;
  self->_bounds.size.height = Height;
  self->_layoutType = type;
  [(BSUIProgressSingleDayController *)self _setupBackgroundLayer];
  [(BSUIProgressSingleDayController *)self progress];

  [(BSUIProgressSingleDayController *)self _setupDayWithProgress:type dayType:?];
}

- (void)_setupBackgroundLayer
{
  backgroundLayer = [(BSUIProgressSingleDayController *)self backgroundLayer];

  if (!backgroundLayer)
  {
    v4 = +[CALayer layer];
    backgroundLayer = self->_backgroundLayer;
    self->_backgroundLayer = v4;

    v6 = +[UIColor clearColor];
    -[CALayer setBackgroundColor:](self->_backgroundLayer, "setBackgroundColor:", [v6 CGColor]);

    if (self->_debugBounds)
    {
      v7 = +[UIColor blueColor];
      v8 = [v7 colorWithAlphaComponent:0.25];
      -[CALayer setBackgroundColor:](self->_backgroundLayer, "setBackgroundColor:", [v8 CGColor]);
    }

    [(CALayer *)self->_backgroundLayer setMasksToBounds:1];
    progressView = [(BSUIProgressSingleDayController *)self progressView];
    presentationLayer = [progressView presentationLayer];
    [presentationLayer addSublayer:self->_backgroundLayer];
  }

  [(BSUIProgressSingleDayController *)self frame];
  v11 = self->_backgroundLayer;

  [(CALayer *)v11 setFrame:?];
}

- (void)_setupDayWithProgress:(double)progress dayType:(int64_t)type
{
  controlRingLayer = [(BSUIProgressSingleDayController *)self controlRingLayer];

  if (!controlRingLayer)
  {
    v8 = +[CAShapeLayer layer];
    [(BSUIProgressSingleDayController *)self setControlRingLayer:v8];
  }

  controlBackgroundLayer = [(BSUIProgressSingleDayController *)self controlBackgroundLayer];

  if (!controlBackgroundLayer)
  {
    v10 = +[CAShapeLayer layer];
    [(BSUIProgressSingleDayController *)self setControlBackgroundLayer:v10];
  }

  progressRingLayer = [(BSUIProgressSingleDayController *)self progressRingLayer];

  if (!progressRingLayer)
  {
    v12 = +[CAShapeLayer layer];
    [(BSUIProgressSingleDayController *)self setProgressRingLayer:v12];
  }

  if (type == 2)
  {
    metrics = [(BSUIProgressSingleDayController *)self metrics];
    futureDayTextColor = [metrics futureDayTextColor];
    progressView = [(BSUIProgressSingleDayController *)self progressView];
    traitCollection = [progressView traitCollection];
    v132 = [futureDayTextColor resolvedColorWithTraitCollection:traitCollection];

    metrics2 = [(BSUIProgressSingleDayController *)self metrics];
    controlColor = [metrics2 controlColor];
    progressView2 = [(BSUIProgressSingleDayController *)self progressView];
    traitCollection2 = [progressView2 traitCollection];
    v21 = [controlColor resolvedColorWithTraitCollection:traitCollection2];

    controlRingLayer2 = [(BSUIProgressSingleDayController *)self controlRingLayer];
    [(BSUIProgressSingleDayController *)self bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    metrics3 = [(BSUIProgressSingleDayController *)self metrics];
    rightToLeft = [metrics3 rightToLeft];
    +[BSUIProgressSingleDayController _updateArcLayer:withPercent:frame:color:fill:rtl:](BSUIProgressSingleDayController, "_updateArcLayer:withPercent:frame:color:fill:rtl:", controlRingLayer2, v21, 0, [rightToLeft BOOLValue], 1.0, v24, v26, v28, v30);

    backgroundLayer = [(BSUIProgressSingleDayController *)self backgroundLayer];
    controlRingLayer3 = [(BSUIProgressSingleDayController *)self controlRingLayer];
    [backgroundLayer addSublayer:controlRingLayer3];

LABEL_18:
    goto LABEL_19;
  }

  if (progress >= 1.0)
  {
    metrics4 = [(BSUIProgressSingleDayController *)self metrics];
    completedTextColor = [metrics4 completedTextColor];
    progressView3 = [(BSUIProgressSingleDayController *)self progressView];
    traitCollection3 = [progressView3 traitCollection];
    v132 = [completedTextColor resolvedColorWithTraitCollection:traitCollection3];

    metrics5 = [(BSUIProgressSingleDayController *)self metrics];
    progressColor = [metrics5 progressColor];
    progressView4 = [(BSUIProgressSingleDayController *)self progressView];
    traitCollection4 = [progressView4 traitCollection];
    backgroundLayer = [progressColor resolvedColorWithTraitCollection:traitCollection4];

    controlBackgroundLayer2 = [(BSUIProgressSingleDayController *)self controlBackgroundLayer];
    [(BSUIProgressSingleDayController *)self bounds];
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    metrics6 = [(BSUIProgressSingleDayController *)self metrics];
    rightToLeft2 = [metrics6 rightToLeft];
    +[BSUIProgressSingleDayController _updateArcLayer:withPercent:frame:color:fill:rtl:](BSUIProgressSingleDayController, "_updateArcLayer:withPercent:frame:color:fill:rtl:", controlBackgroundLayer2, backgroundLayer, 1, [rightToLeft2 BOOLValue], 0.0, v86, v88, v90, v92);

    backgroundLayer2 = [(BSUIProgressSingleDayController *)self backgroundLayer];
    controlBackgroundLayer3 = [(BSUIProgressSingleDayController *)self controlBackgroundLayer];
    [backgroundLayer2 addSublayer:controlBackgroundLayer3];

    controlRingLayer4 = [(BSUIProgressSingleDayController *)self controlRingLayer];
    [(BSUIProgressSingleDayController *)self bounds];
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v105 = v104;
    metrics7 = [(BSUIProgressSingleDayController *)self metrics];
    rightToLeft3 = [metrics7 rightToLeft];
    +[BSUIProgressSingleDayController _updateArcLayer:withPercent:frame:color:fill:rtl:](BSUIProgressSingleDayController, "_updateArcLayer:withPercent:frame:color:fill:rtl:", controlRingLayer4, backgroundLayer, 0, [rightToLeft3 BOOLValue], progress, v99, v101, v103, v105);

    controlBackgroundLayer4 = [(BSUIProgressSingleDayController *)self controlBackgroundLayer];
    controlRingLayer5 = [(BSUIProgressSingleDayController *)self controlRingLayer];
LABEL_17:
    v129 = controlRingLayer5;
    [controlBackgroundLayer4 addSublayer:controlRingLayer5];

    v21 = 0;
    goto LABEL_18;
  }

  if (!type)
  {
    metrics8 = [(BSUIProgressSingleDayController *)self metrics];
    previousDayTextColor = [metrics8 previousDayTextColor];
    progressView5 = [(BSUIProgressSingleDayController *)self progressView];
    traitCollection5 = [progressView5 traitCollection];
    v132 = [previousDayTextColor resolvedColorWithTraitCollection:traitCollection5];

    metrics9 = [(BSUIProgressSingleDayController *)self metrics];
    previousDayBackgroundColor = [metrics9 previousDayBackgroundColor];
    progressView6 = [(BSUIProgressSingleDayController *)self progressView];
    traitCollection6 = [progressView6 traitCollection];
    backgroundLayer = [previousDayBackgroundColor resolvedColorWithTraitCollection:traitCollection6];

    controlBackgroundLayer5 = [(BSUIProgressSingleDayController *)self controlBackgroundLayer];
    [(BSUIProgressSingleDayController *)self bounds];
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v126 = v125;
    metrics10 = [(BSUIProgressSingleDayController *)self metrics];
    rightToLeft4 = [metrics10 rightToLeft];
    +[BSUIProgressSingleDayController _updateArcLayer:withPercent:frame:color:fill:rtl:](BSUIProgressSingleDayController, "_updateArcLayer:withPercent:frame:color:fill:rtl:", controlBackgroundLayer5, backgroundLayer, 1, [rightToLeft4 BOOLValue], 0.0, v120, v122, v124, v126);

    controlBackgroundLayer4 = [(BSUIProgressSingleDayController *)self backgroundLayer];
    controlRingLayer5 = [(BSUIProgressSingleDayController *)self controlBackgroundLayer];
    goto LABEL_17;
  }

  controlBackgroundLayer6 = [(BSUIProgressSingleDayController *)self controlBackgroundLayer];
  superlayer = [controlBackgroundLayer6 superlayer];

  if (superlayer)
  {
    controlBackgroundLayer7 = [(BSUIProgressSingleDayController *)self controlBackgroundLayer];
    [controlBackgroundLayer7 removeFromSuperlayer];
  }

  metrics11 = [(BSUIProgressSingleDayController *)self metrics];
  textColor = [metrics11 textColor];
  progressView7 = [(BSUIProgressSingleDayController *)self progressView];
  traitCollection7 = [progressView7 traitCollection];
  v132 = [textColor resolvedColorWithTraitCollection:traitCollection7];

  metrics12 = [(BSUIProgressSingleDayController *)self metrics];
  controlColor2 = [metrics12 controlColor];
  progressView8 = [(BSUIProgressSingleDayController *)self progressView];
  traitCollection8 = [progressView8 traitCollection];
  v21 = [controlColor2 resolvedColorWithTraitCollection:traitCollection8];

  controlRingLayer6 = [(BSUIProgressSingleDayController *)self controlRingLayer];
  [(BSUIProgressSingleDayController *)self bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  metrics13 = [(BSUIProgressSingleDayController *)self metrics];
  rightToLeft5 = [metrics13 rightToLeft];
  +[BSUIProgressSingleDayController _updateArcLayer:withPercent:frame:color:fill:rtl:](BSUIProgressSingleDayController, "_updateArcLayer:withPercent:frame:color:fill:rtl:", controlRingLayer6, v21, 0, [rightToLeft5 BOOLValue], 1.0, v48, v50, v52, v54);

  backgroundLayer3 = [(BSUIProgressSingleDayController *)self backgroundLayer];
  controlRingLayer7 = [(BSUIProgressSingleDayController *)self controlRingLayer];
  [backgroundLayer3 addSublayer:controlRingLayer7];

  if (progress > 0.0)
  {
    metrics14 = [(BSUIProgressSingleDayController *)self metrics];
    progressColor2 = [metrics14 progressColor];
    progressView9 = [(BSUIProgressSingleDayController *)self progressView];
    traitCollection9 = [progressView9 traitCollection];
    v63 = [progressColor2 resolvedColorWithTraitCollection:traitCollection9];

    progressRingLayer2 = [(BSUIProgressSingleDayController *)self progressRingLayer];
    [(BSUIProgressSingleDayController *)self bounds];
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    metrics15 = [(BSUIProgressSingleDayController *)self metrics];
    rightToLeft6 = [metrics15 rightToLeft];
    +[BSUIProgressSingleDayController _updateArcLayer:withPercent:frame:color:fill:rtl:](BSUIProgressSingleDayController, "_updateArcLayer:withPercent:frame:color:fill:rtl:", progressRingLayer2, v63, 0, [rightToLeft6 BOOLValue], progress, v66, v68, v70, v72);

    backgroundLayer = [(BSUIProgressSingleDayController *)self controlRingLayer];
    progressRingLayer3 = [(BSUIProgressSingleDayController *)self progressRingLayer];
    [backgroundLayer addSublayer:progressRingLayer3];

    v21 = v63;
    goto LABEL_18;
  }

  progressRingLayer4 = [(BSUIProgressSingleDayController *)self progressRingLayer];
  superlayer2 = [progressRingLayer4 superlayer];

  if (superlayer2)
  {
    backgroundLayer = [(BSUIProgressSingleDayController *)self progressRingLayer];
    [backgroundLayer removeFromSuperlayer];
    goto LABEL_18;
  }

LABEL_19:
  [(BSUIProgressSingleDayController *)self _setupNumberText:v132];
}

+ (void)_updateArcLayer:(id)layer withPercent:(double)percent frame:(CGRect)frame color:(id)color fill:(BOOL)fill rtl:(BOOL)rtl
{
  rtlCopy = rtl;
  fillCopy = fill;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layerCopy = layer;
  colorCopy = color;
  +[BSUIProgressSingleDayController _ringWidthThickness];
  v18 = v17;
  if (fillCopy)
  {
    v19 = height;
    v20 = width;
    v21 = y;
    v22 = x;
  }

  else
  {
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    *&v22 = CGRectInset(v30, v18 * 0.5, v18 * 0.5);
  }

  v23 = [UIBezierPath bezierPathWithRoundedRect:v22 cornerRadius:v21, v20, v19, width * 0.5 + v18 * -2.0];
  v24 = v23;
  if (rtlCopy)
  {
    bezierPathByReversingPath = [v23 bezierPathByReversingPath];

    v24 = bezierPathByReversingPath;
  }

  [layerCopy setStrokeColor:{objc_msgSend(colorCopy, "CGColor")}];
  if (fillCopy)
  {
    [layerCopy setFillColor:{objc_msgSend(colorCopy, "CGColor")}];
  }

  else
  {
    v26 = +[UIColor clearColor];
    [layerCopy setFillColor:{objc_msgSend(v26, "CGColor")}];
  }

  [layerCopy setFrame:{x, y, width, height}];
  v27 = 0.0;
  if (percent != 0.0)
  {
    v27 = v18;
  }

  [layerCopy setLineWidth:v27];
  [layerCopy setLineCap:kCALineCapRound];
  [layerCopy setStrokeStart:0.0];
  [layerCopy setStrokeEnd:percent];
  [layerCopy setZPosition:1.0];
  [layerCopy setPath:{objc_msgSend(v24, "CGPath")}];
}

- (void)_setupNumberText:(id)text
{
  textCopy = text;
  titleLabel = [(BSUIProgressSingleDayController *)self titleLabel];

  if (!titleLabel)
  {
    v6 = [UILabel alloc];
    [(BSUIProgressSingleDayController *)self frame];
    v7 = [v6 initWithFrame:?];
    [(BSUIProgressSingleDayController *)self setTitleLabel:v7];
  }

  [(BSUIProgressSingleDayController *)self frame];
  label = [(BSUIProgressSingleDayController *)self label];
  [(UILabel *)self->_titleLabel setText:label];

  metrics = [(BSUIProgressSingleDayController *)self metrics];
  fontSpec = [metrics fontSpec];
  font = [fontSpec font];
  [(UILabel *)self->_titleLabel setFont:font];

  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  [(UILabel *)self->_titleLabel setClipsToBounds:1];
  v12 = +[UIColor clearColor];
  [(UILabel *)self->_titleLabel setBackgroundColor:v12];

  [(UILabel *)self->_titleLabel setTextColor:textCopy];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  v14 = v13;
  [(BSUIProgressSingleDayController *)self frame];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v20 = MidX - CGRectGetWidth(v26) * 0.5;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v21 = CGRectGetMidY(v27) - v14 * 0.5;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  [(UILabel *)self->_titleLabel setFrame:v20, v21, CGRectGetWidth(v28), v14];
  progressView = [(BSUIProgressSingleDayController *)self progressView];
  [progressView addSubview:self->_titleLabel];
}

- (void)_animatePop
{
  v3 = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
  [v3 setFromValue:&off_39B540];
  [v3 setToValue:&off_39B550];
  [v3 setDuration:0.15];
  LODWORD(v4) = 1051260355;
  LODWORD(v5) = 1045220557;
  LODWORD(v6) = 1.0;
  v7 = [CAMediaTimingFunction functionWithControlPoints:v4];
  [v3 setTimingFunction:v7];

  v8 = [CASpringAnimation animationWithKeyPath:@"transform.scale"];
  [v8 setMass:1.0];
  [v8 setStiffness:200.0];
  [v8 setDamping:22.0];
  [v8 setInitialVelocity:0.0];
  [v8 setFromValue:&off_39B550];
  [v8 setToValue:&off_39B540];
  [v8 setBeginTime:0.15];
  [v8 settlingDuration];
  [v8 setDuration:?];
  v9 = objc_alloc_init(CAAnimationGroup);
  v13[0] = v3;
  v13[1] = v8;
  v10 = [NSArray arrayWithObjects:v13 count:2];
  [v9 setAnimations:v10];

  [v8 settlingDuration];
  [v9 setDuration:v11 + 0.15];
  backgroundLayer = [(BSUIProgressSingleDayController *)self backgroundLayer];
  [backgroundLayer addAnimation:v9 forKey:@"bounce"];
}

- (id)description
{
  v3 = objc_opt_class();
  [(BSUIProgressSingleDayController *)self frame];
  v4 = NSStringFromCGRect(v13);
  [(BSUIProgressSingleDayController *)self progress];
  v6 = v5;
  [(BSUIProgressSingleDayController *)self lastSeenProgress];
  v8 = v7;
  label = [(BSUIProgressSingleDayController *)self label];
  v10 = [NSString stringWithFormat:@"%@: %p frame=%@, progress=%.2f, lastProgress=%.2f, label=%@", v3, self, v4, v6, v8, label];

  return v10;
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
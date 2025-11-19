@interface BSUIProgressSingleDayController
+ (void)_updateArcLayer:(id)a3 withPercent:(double)a4 frame:(CGRect)a5 color:(id)a6 fill:(BOOL)a7 rtl:(BOOL)a8;
- (BSUIProgressSingleDayController)initWithProgressView:(id)a3 frame:(CGRect)a4 progress:(double)a5 label:(id)a6;
- (CGRect)bounds;
- (CGRect)frame;
- (id)description;
- (void)_animatePop;
- (void)_setupBackgroundLayer;
- (void)_setupDayWithProgress:(double)a3 dayType:(int64_t)a4;
- (void)_setupNumberText:(id)a3;
- (void)configureWithType:(int64_t)a3;
- (void)dealloc;
- (void)updateProgress:(double)a3 animate:(BOOL)a4;
@end

@implementation BSUIProgressSingleDayController

- (BSUIProgressSingleDayController)initWithProgressView:(id)a3 frame:(CGRect)a4 progress:(double)a5 label:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a3;
  v15 = a6;
  v21.receiver = self;
  v21.super_class = BSUIProgressSingleDayController;
  v16 = [(BSUIProgressSingleDayController *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_progressView, a3);
    v18 = [v14 metrics];
    metrics = v17->_metrics;
    v17->_metrics = v18;

    v17->_frame.origin.x = x;
    v17->_frame.origin.y = y;
    v17->_frame.size.width = width;
    v17->_frame.size.height = height;
    v17->_progress = a5;
    v17->_lastSeenProgress = 0.0;
    objc_storeStrong(&v17->_label, a6);
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

- (void)updateProgress:(double)a3 animate:(BOOL)a4
{
  v4 = a4;
  self->_progress = a3;
  lastSeenProgress = self->_lastSeenProgress;
  [(BSUIProgressSingleDayController *)self _setupDayWithProgress:self->_layoutType dayType:?];
  self->_lastSeenProgress = a3;
  if (v4 && self->_layoutType == 1)
  {
    if (a3 >= 1.0 && lastSeenProgress < 1.0)
    {

      [(BSUIProgressSingleDayController *)self _animatePop];
    }

    else if (a3 < 1.0 && lastSeenProgress < 1.0)
    {
      v13 = [CASpringAnimation animationWithKeyPath:@"strokeEnd"];
      [v13 setMass:1.0];
      [v13 setStiffness:55.0];
      [v13 setDamping:15.0];
      [v13 setInitialVelocity:0.0];
      v10 = [NSNumber numberWithDouble:lastSeenProgress];
      [v13 setFromValue:v10];

      v11 = [NSNumber numberWithDouble:a3];
      [v13 setToValue:v11];

      [v13 settlingDuration];
      [v13 setDuration:?];
      v12 = [(BSUIProgressSingleDayController *)self progressRingLayer];
      [v12 addAnimation:v13 forKey:@"progress"];
    }
  }
}

- (void)configureWithType:(int64_t)a3
{
  [(BSUIProgressSingleDayController *)self frame];
  Width = CGRectGetWidth(v8);
  [(BSUIProgressSingleDayController *)self frame];
  Height = CGRectGetHeight(v9);
  self->_bounds.origin.x = 0.0;
  self->_bounds.origin.y = 0.0;
  self->_bounds.size.width = Width;
  self->_bounds.size.height = Height;
  self->_layoutType = a3;
  [(BSUIProgressSingleDayController *)self _setupBackgroundLayer];
  [(BSUIProgressSingleDayController *)self progress];

  [(BSUIProgressSingleDayController *)self _setupDayWithProgress:a3 dayType:?];
}

- (void)_setupBackgroundLayer
{
  v3 = [(BSUIProgressSingleDayController *)self backgroundLayer];

  if (!v3)
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
    v9 = [(BSUIProgressSingleDayController *)self progressView];
    v10 = [v9 presentationLayer];
    [v10 addSublayer:self->_backgroundLayer];
  }

  [(BSUIProgressSingleDayController *)self frame];
  v11 = self->_backgroundLayer;

  [(CALayer *)v11 setFrame:?];
}

- (void)_setupDayWithProgress:(double)a3 dayType:(int64_t)a4
{
  v7 = [(BSUIProgressSingleDayController *)self controlRingLayer];

  if (!v7)
  {
    v8 = +[CAShapeLayer layer];
    [(BSUIProgressSingleDayController *)self setControlRingLayer:v8];
  }

  v9 = [(BSUIProgressSingleDayController *)self controlBackgroundLayer];

  if (!v9)
  {
    v10 = +[CAShapeLayer layer];
    [(BSUIProgressSingleDayController *)self setControlBackgroundLayer:v10];
  }

  v11 = [(BSUIProgressSingleDayController *)self progressRingLayer];

  if (!v11)
  {
    v12 = +[CAShapeLayer layer];
    [(BSUIProgressSingleDayController *)self setProgressRingLayer:v12];
  }

  if (a4 == 2)
  {
    v13 = [(BSUIProgressSingleDayController *)self metrics];
    v14 = [v13 futureDayTextColor];
    v15 = [(BSUIProgressSingleDayController *)self progressView];
    v16 = [v15 traitCollection];
    v132 = [v14 resolvedColorWithTraitCollection:v16];

    v17 = [(BSUIProgressSingleDayController *)self metrics];
    v18 = [v17 controlColor];
    v19 = [(BSUIProgressSingleDayController *)self progressView];
    v20 = [v19 traitCollection];
    v21 = [v18 resolvedColorWithTraitCollection:v20];

    v22 = [(BSUIProgressSingleDayController *)self controlRingLayer];
    [(BSUIProgressSingleDayController *)self bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = [(BSUIProgressSingleDayController *)self metrics];
    v32 = [v31 rightToLeft];
    +[BSUIProgressSingleDayController _updateArcLayer:withPercent:frame:color:fill:rtl:](BSUIProgressSingleDayController, "_updateArcLayer:withPercent:frame:color:fill:rtl:", v22, v21, 0, [v32 BOOLValue], 1.0, v24, v26, v28, v30);

    v33 = [(BSUIProgressSingleDayController *)self backgroundLayer];
    v34 = [(BSUIProgressSingleDayController *)self controlRingLayer];
    [v33 addSublayer:v34];

LABEL_18:
    goto LABEL_19;
  }

  if (a3 >= 1.0)
  {
    v76 = [(BSUIProgressSingleDayController *)self metrics];
    v77 = [v76 completedTextColor];
    v78 = [(BSUIProgressSingleDayController *)self progressView];
    v79 = [v78 traitCollection];
    v132 = [v77 resolvedColorWithTraitCollection:v79];

    v80 = [(BSUIProgressSingleDayController *)self metrics];
    v81 = [v80 progressColor];
    v82 = [(BSUIProgressSingleDayController *)self progressView];
    v83 = [v82 traitCollection];
    v33 = [v81 resolvedColorWithTraitCollection:v83];

    v84 = [(BSUIProgressSingleDayController *)self controlBackgroundLayer];
    [(BSUIProgressSingleDayController *)self bounds];
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = [(BSUIProgressSingleDayController *)self metrics];
    v94 = [v93 rightToLeft];
    +[BSUIProgressSingleDayController _updateArcLayer:withPercent:frame:color:fill:rtl:](BSUIProgressSingleDayController, "_updateArcLayer:withPercent:frame:color:fill:rtl:", v84, v33, 1, [v94 BOOLValue], 0.0, v86, v88, v90, v92);

    v95 = [(BSUIProgressSingleDayController *)self backgroundLayer];
    v96 = [(BSUIProgressSingleDayController *)self controlBackgroundLayer];
    [v95 addSublayer:v96];

    v97 = [(BSUIProgressSingleDayController *)self controlRingLayer];
    [(BSUIProgressSingleDayController *)self bounds];
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v106 = [(BSUIProgressSingleDayController *)self metrics];
    v107 = [v106 rightToLeft];
    +[BSUIProgressSingleDayController _updateArcLayer:withPercent:frame:color:fill:rtl:](BSUIProgressSingleDayController, "_updateArcLayer:withPercent:frame:color:fill:rtl:", v97, v33, 0, [v107 BOOLValue], a3, v99, v101, v103, v105);

    v108 = [(BSUIProgressSingleDayController *)self controlBackgroundLayer];
    v109 = [(BSUIProgressSingleDayController *)self controlRingLayer];
LABEL_17:
    v129 = v109;
    [v108 addSublayer:v109];

    v21 = 0;
    goto LABEL_18;
  }

  if (!a4)
  {
    v110 = [(BSUIProgressSingleDayController *)self metrics];
    v111 = [v110 previousDayTextColor];
    v112 = [(BSUIProgressSingleDayController *)self progressView];
    v113 = [v112 traitCollection];
    v132 = [v111 resolvedColorWithTraitCollection:v113];

    v114 = [(BSUIProgressSingleDayController *)self metrics];
    v115 = [v114 previousDayBackgroundColor];
    v116 = [(BSUIProgressSingleDayController *)self progressView];
    v117 = [v116 traitCollection];
    v33 = [v115 resolvedColorWithTraitCollection:v117];

    v118 = [(BSUIProgressSingleDayController *)self controlBackgroundLayer];
    [(BSUIProgressSingleDayController *)self bounds];
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v126 = v125;
    v127 = [(BSUIProgressSingleDayController *)self metrics];
    v128 = [v127 rightToLeft];
    +[BSUIProgressSingleDayController _updateArcLayer:withPercent:frame:color:fill:rtl:](BSUIProgressSingleDayController, "_updateArcLayer:withPercent:frame:color:fill:rtl:", v118, v33, 1, [v128 BOOLValue], 0.0, v120, v122, v124, v126);

    v108 = [(BSUIProgressSingleDayController *)self backgroundLayer];
    v109 = [(BSUIProgressSingleDayController *)self controlBackgroundLayer];
    goto LABEL_17;
  }

  v35 = [(BSUIProgressSingleDayController *)self controlBackgroundLayer];
  v36 = [v35 superlayer];

  if (v36)
  {
    v37 = [(BSUIProgressSingleDayController *)self controlBackgroundLayer];
    [v37 removeFromSuperlayer];
  }

  v38 = [(BSUIProgressSingleDayController *)self metrics];
  v39 = [v38 textColor];
  v40 = [(BSUIProgressSingleDayController *)self progressView];
  v41 = [v40 traitCollection];
  v132 = [v39 resolvedColorWithTraitCollection:v41];

  v42 = [(BSUIProgressSingleDayController *)self metrics];
  v43 = [v42 controlColor];
  v44 = [(BSUIProgressSingleDayController *)self progressView];
  v45 = [v44 traitCollection];
  v21 = [v43 resolvedColorWithTraitCollection:v45];

  v46 = [(BSUIProgressSingleDayController *)self controlRingLayer];
  [(BSUIProgressSingleDayController *)self bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = [(BSUIProgressSingleDayController *)self metrics];
  v56 = [v55 rightToLeft];
  +[BSUIProgressSingleDayController _updateArcLayer:withPercent:frame:color:fill:rtl:](BSUIProgressSingleDayController, "_updateArcLayer:withPercent:frame:color:fill:rtl:", v46, v21, 0, [v56 BOOLValue], 1.0, v48, v50, v52, v54);

  v57 = [(BSUIProgressSingleDayController *)self backgroundLayer];
  v58 = [(BSUIProgressSingleDayController *)self controlRingLayer];
  [v57 addSublayer:v58];

  if (a3 > 0.0)
  {
    v59 = [(BSUIProgressSingleDayController *)self metrics];
    v60 = [v59 progressColor];
    v61 = [(BSUIProgressSingleDayController *)self progressView];
    v62 = [v61 traitCollection];
    v63 = [v60 resolvedColorWithTraitCollection:v62];

    v64 = [(BSUIProgressSingleDayController *)self progressRingLayer];
    [(BSUIProgressSingleDayController *)self bounds];
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v73 = [(BSUIProgressSingleDayController *)self metrics];
    v74 = [v73 rightToLeft];
    +[BSUIProgressSingleDayController _updateArcLayer:withPercent:frame:color:fill:rtl:](BSUIProgressSingleDayController, "_updateArcLayer:withPercent:frame:color:fill:rtl:", v64, v63, 0, [v74 BOOLValue], a3, v66, v68, v70, v72);

    v33 = [(BSUIProgressSingleDayController *)self controlRingLayer];
    v75 = [(BSUIProgressSingleDayController *)self progressRingLayer];
    [v33 addSublayer:v75];

    v21 = v63;
    goto LABEL_18;
  }

  v130 = [(BSUIProgressSingleDayController *)self progressRingLayer];
  v131 = [v130 superlayer];

  if (v131)
  {
    v33 = [(BSUIProgressSingleDayController *)self progressRingLayer];
    [v33 removeFromSuperlayer];
    goto LABEL_18;
  }

LABEL_19:
  [(BSUIProgressSingleDayController *)self _setupNumberText:v132];
}

+ (void)_updateArcLayer:(id)a3 withPercent:(double)a4 frame:(CGRect)a5 color:(id)a6 fill:(BOOL)a7 rtl:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v28 = a3;
  v16 = a6;
  +[BSUIProgressSingleDayController _ringWidthThickness];
  v18 = v17;
  if (v9)
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
  if (v8)
  {
    v25 = [v23 bezierPathByReversingPath];

    v24 = v25;
  }

  [v28 setStrokeColor:{objc_msgSend(v16, "CGColor")}];
  if (v9)
  {
    [v28 setFillColor:{objc_msgSend(v16, "CGColor")}];
  }

  else
  {
    v26 = +[UIColor clearColor];
    [v28 setFillColor:{objc_msgSend(v26, "CGColor")}];
  }

  [v28 setFrame:{x, y, width, height}];
  v27 = 0.0;
  if (a4 != 0.0)
  {
    v27 = v18;
  }

  [v28 setLineWidth:v27];
  [v28 setLineCap:kCALineCapRound];
  [v28 setStrokeStart:0.0];
  [v28 setStrokeEnd:a4];
  [v28 setZPosition:1.0];
  [v28 setPath:{objc_msgSend(v24, "CGPath")}];
}

- (void)_setupNumberText:(id)a3
{
  v4 = a3;
  v5 = [(BSUIProgressSingleDayController *)self titleLabel];

  if (!v5)
  {
    v6 = [UILabel alloc];
    [(BSUIProgressSingleDayController *)self frame];
    v7 = [v6 initWithFrame:?];
    [(BSUIProgressSingleDayController *)self setTitleLabel:v7];
  }

  [(BSUIProgressSingleDayController *)self frame];
  v8 = [(BSUIProgressSingleDayController *)self label];
  [(UILabel *)self->_titleLabel setText:v8];

  v9 = [(BSUIProgressSingleDayController *)self metrics];
  v10 = [v9 fontSpec];
  v11 = [v10 font];
  [(UILabel *)self->_titleLabel setFont:v11];

  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  [(UILabel *)self->_titleLabel setClipsToBounds:1];
  v12 = +[UIColor clearColor];
  [(UILabel *)self->_titleLabel setBackgroundColor:v12];

  [(UILabel *)self->_titleLabel setTextColor:v4];
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
  v22 = [(BSUIProgressSingleDayController *)self progressView];
  [v22 addSubview:self->_titleLabel];
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
  v12 = [(BSUIProgressSingleDayController *)self backgroundLayer];
  [v12 addAnimation:v9 forKey:@"bounce"];
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
  v9 = [(BSUIProgressSingleDayController *)self label];
  v10 = [NSString stringWithFormat:@"%@: %p frame=%@, progress=%.2f, lastProgress=%.2f, label=%@", v3, self, v4, v6, v8, v9];

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
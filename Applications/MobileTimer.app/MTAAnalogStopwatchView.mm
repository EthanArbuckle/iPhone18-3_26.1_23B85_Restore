@interface MTAAnalogStopwatchView
- (CGPoint)_minutesCircleCenter:(double *)center;
- (MTAAnalogStopwatchView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)handleLocaleChange;
- (void)layoutSubviews;
- (void)setCurrentLapTime:(double)time;
- (void)setDisplayAdjustedElapsedTime:(double)time;
- (void)setElapsedTime:(double)time;
@end

@implementation MTAAnalogStopwatchView

- (MTAAnalogStopwatchView)initWithFrame:(CGRect)frame
{
  v37.receiver = self;
  v37.super_class = MTAAnalogStopwatchView;
  v3 = [(MTAAnalogStopwatchView *)&v37 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MTAAnalogStopwatchView *)v3 setUserInteractionEnabled:0];
    v5 = [MTUITimeView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(MTAAnalogStopwatchView *)v4 setTimeView:v9];

    v10 = +[UIColor mtui_primaryTextColor];
    timeView = [(MTAAnalogStopwatchView *)v4 timeView];
    [timeView setTextColor:v10];

    timeView2 = [(MTAAnalogStopwatchView *)v4 timeView];
    [timeView2 setTextAlignment:1];

    timeView3 = [(MTAAnalogStopwatchView *)v4 timeView];
    [timeView3 setAdjustsFontSizeToFitWidth:1];

    timeView4 = [(MTAAnalogStopwatchView *)v4 timeView];
    [timeView4 setTime:0.0];

    timeView5 = [(MTAAnalogStopwatchView *)v4 timeView];
    [(MTAAnalogStopwatchView *)v4 addSubview:timeView5];

    height = [[MTAAnalogStopwatchHandView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    [(MTAAnalogStopwatchView *)v4 setMinutesHand:height];

    v17 = +[UIColor mtui_tintColor];
    minutesHand = [(MTAAnalogStopwatchView *)v4 minutesHand];
    [minutesHand setColor:v17];

    minutesHand2 = [(MTAAnalogStopwatchView *)v4 minutesHand];
    [minutesHand2 setAnchorStyle:1];

    minutesHand3 = [(MTAAnalogStopwatchView *)v4 minutesHand];
    [(MTAAnalogStopwatchView *)v4 addSubview:minutesHand3];

    height2 = [[MTAAnalogStopwatchHandView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    [(MTAAnalogStopwatchView *)v4 setLapSecondsHand:height2];

    v22 = +[UIColor systemBlueColor];
    lapSecondsHand = [(MTAAnalogStopwatchView *)v4 lapSecondsHand];
    [lapSecondsHand setColor:v22];

    lapSecondsHand2 = [(MTAAnalogStopwatchView *)v4 lapSecondsHand];
    [lapSecondsHand2 setHasTail:1];

    lapSecondsHand3 = [(MTAAnalogStopwatchView *)v4 lapSecondsHand];
    [(MTAAnalogStopwatchView *)v4 addSubview:lapSecondsHand3];

    height3 = [[MTAAnalogStopwatchHandView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    [(MTAAnalogStopwatchView *)v4 setSecondsHand:height3];

    v27 = +[UIColor mtui_tintColor];
    secondsHand = [(MTAAnalogStopwatchView *)v4 secondsHand];
    [secondsHand setColor:v27];

    secondsHand2 = [(MTAAnalogStopwatchView *)v4 secondsHand];
    [secondsHand2 setHasTail:1];

    secondsHand3 = [(MTAAnalogStopwatchView *)v4 secondsHand];
    [secondsHand3 setAnchorStyle:2];

    secondsHand4 = [(MTAAnalogStopwatchView *)v4 secondsHand];
    [(MTAAnalogStopwatchView *)v4 addSubview:secondsHand4];

    v32 = objc_opt_new();
    [(MTAAnalogStopwatchView *)v4 setNumberFormatter:v32];

    numberFormatter = [(MTAAnalogStopwatchView *)v4 numberFormatter];
    [numberFormatter setNumberStyle:1];

    v34 = +[NSLocale autoupdatingCurrentLocale];
    numberFormatter2 = [(MTAAnalogStopwatchView *)v4 numberFormatter];
    [numberFormatter2 setLocale:v34];
  }

  return v4;
}

- (void)setElapsedTime:(double)time
{
  self->_elapsedTime = time;
  [(MTAAnalogStopwatchView *)self elapsedTime];
  v5 = fmod(v4 / 60.0, 30.0) * 0.20943951;
  minutesHand = [(MTAAnalogStopwatchView *)self minutesHand];
  [minutesHand setAngle:v5];

  [(MTAAnalogStopwatchView *)self elapsedTime];
  v8 = fmod(v7, 60.0) * 0.104719755;
  secondsHand = [(MTAAnalogStopwatchView *)self secondsHand];
  [secondsHand setAngle:v8];
}

- (void)setDisplayAdjustedElapsedTime:(double)time
{
  self->_displayAdjustedElapsedTime = time;
  timeView = [(MTAAnalogStopwatchView *)self timeView];
  [timeView setTime:time];
}

- (void)setCurrentLapTime:(double)time
{
  self->_currentLapTime = time;
  [(MTAAnalogStopwatchView *)self currentLapTime];
  v5 = fmod(v4, 60.0) * 0.104719755;
  lapSecondsHand = [(MTAAnalogStopwatchView *)self lapSecondsHand];
  [lapSecondsHand setAngle:v5];
}

- (void)handleLocaleChange
{
  timeView = [(MTAAnalogStopwatchView *)self timeView];
  [timeView handleLocaleChange];

  [(MTAAnalogStopwatchView *)self setNeedsDisplay];
}

- (void)layoutSubviews
{
  v56.receiver = self;
  v56.super_class = MTAAnalogStopwatchView;
  [(MTAAnalogStopwatchView *)&v56 layoutSubviews];
  [(MTAAnalogStopwatchView *)self bounds];
  v55 = 0.0;
  v3 = CGRectGetHeight(v57) / 311.0;
  [(MTAAnalogStopwatchView *)self _minutesCircleCenter:&v55];
  v5 = v4;
  v7 = v6;
  UIRoundToViewScale();
  v9 = v8;
  v10 = v5 - v55;
  v11 = v7 - v55;
  v12 = v55 + v55;
  minutesHand = [(MTAAnalogStopwatchView *)self minutesHand];
  [minutesHand setFrame:{v10, v11, v12, v12}];

  [(MTAAnalogStopwatchView *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  secondsHand = [(MTAAnalogStopwatchView *)self secondsHand];
  [secondsHand setFrame:{v15, v17, v19, v21}];

  [(MTAAnalogStopwatchView *)self bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  lapSecondsHand = [(MTAAnalogStopwatchView *)self lapSecondsHand];
  [lapSecondsHand setFrame:{v24, v26, v28, v30}];

  minutesHand2 = [(MTAAnalogStopwatchView *)self minutesHand];
  [minutesHand2 setWidth:v9];

  secondsHand2 = [(MTAAnalogStopwatchView *)self secondsHand];
  [secondsHand2 setWidth:v9];

  lapSecondsHand2 = [(MTAAnalogStopwatchView *)self lapSecondsHand];
  [lapSecondsHand2 setWidth:v9];

  v35 = [UIFont systemFontOfSize:v3 * 20.0 weight:UIFontWeightRegular];
  mtui_fontByAddingTimeFontAttributes = [v35 mtui_fontByAddingTimeFontAttributes];

  timeView = [(MTAAnalogStopwatchView *)self timeView];
  [timeView setTime:359999.0];

  timeView2 = [(MTAAnalogStopwatchView *)self timeView];
  [timeView2 setFont:mtui_fontByAddingTimeFontAttributes];

  timeView3 = [(MTAAnalogStopwatchView *)self timeView];
  [timeView3 sizeToFit];

  [(MTAAnalogStopwatchView *)self elapsedTime];
  v41 = v40;
  timeView4 = [(MTAAnalogStopwatchView *)self timeView];
  [timeView4 setTime:v41];

  timeView5 = [(MTAAnalogStopwatchView *)self timeView];
  [timeView5 frame];
  v45 = v44;
  v47 = v46;
  v49 = v48;

  [(MTAAnalogStopwatchView *)self bounds];
  v50 = CGRectGetMidX(v58) + v47 * -0.5;
  timeView6 = [(MTAAnalogStopwatchView *)self timeView];
  [timeView6 setFrame:{v50, v45, v47, v49}];

  [(MTAAnalogStopwatchView *)self bounds];
  CGRectGetHeight(v59);
  UIRoundToViewScale();
  v53 = v52;
  timeView7 = [(MTAAnalogStopwatchView *)self timeView];
  [timeView7 _setFirstLineBaselineFrameOriginY:v53];

  [(MTAAnalogStopwatchView *)self setNeedsDisplay];
}

- (CGPoint)_minutesCircleCenter:(double *)center
{
  [(MTAAnalogStopwatchView *)self bounds];
  CGRectGetWidth(v12);
  UIRoundToViewScale();
  v6 = v5;
  [(MTAAnalogStopwatchView *)self bounds];
  MidX = CGRectGetMidX(v13);
  [(MTAAnalogStopwatchView *)self bounds];
  CGRectGetMidY(v14);
  UIRoundToViewScale();
  v9 = v8;
  if (center)
  {
    *center = v6;
  }

  v10 = MidX;
  result.y = v9;
  result.x = v10;
  return result;
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  [(MTAAnalogStopwatchView *)self bounds];
  MidX = CGRectGetMidX(v71);
  [(MTAAnalogStopwatchView *)self bounds];
  MidY = CGRectGetMidY(v72);
  [(MTAAnalogStopwatchView *)self bounds];
  v8 = v7;
  [(MTAAnalogStopwatchView *)self bounds];
  v9 = CGRectGetHeight(v73) / 311.0;
  CGContextSaveGState(CurrentContext);
  c = CurrentContext;
  CGContextTranslateCTM(CurrentContext, MidX, MidY);
  v10 = v8 * -0.5;
  CGAffineTransformMakeRotation(&v66, 0.0261799388);
  v11 = v66.ty + v10 * v66.d + v66.b * 0.0 - v10;
  v12 = sqrt((v66.tx + v10 * v66.c + v66.a * 0.0) * (v66.tx + v10 * v66.c + v66.a * 0.0) + v11 * v11) * 0.5;
  v69[0] = NSFontAttributeName;
  v13 = [UIFont systemFontOfSize:v9 * 26.0];
  v70[0] = v13;
  v69[1] = NSForegroundColorAttributeName;
  v14 = &DateMaskToString_ptr;
  v15 = +[UIColor whiteColor];
  v70[1] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:2];

  v17 = 1;
  __asm { FMOV            V0.2D, #0.5 }

  v64 = _Q0;
  do
  {
    v23 = objc_opt_new();
    [v23 moveToPoint:{0.0, v10}];
    if ((v17 & 3) != 0)
    {
      v24 = 7.0;
    }

    else
    {
      v24 = 13.0;
    }

    v25 = v10 + v9 * v24;
    [v23 addLineToPoint:{0.0, v25}];
    CGAffineTransformMakeRotation(&v66, v17 * 0.0261799388);
    [v23 applyTransform:&v66];
    [v23 setLineWidth:v12];
    HIDWORD(v26) = -858993459 * v17;
    LODWORD(v26) = HIDWORD(v26);
    if ((v26 >> 2) < 0xCCCCCCD)
    {
      v27 = +[UIColor mtui_stopwatchMajorTickMarkColor];
      [v27 setStroke];
      [v23 stroke];
      numberFormatter = [(MTAAnalogStopwatchView *)self numberFormatter];
      v29 = [NSNumber numberWithUnsignedInteger:v17 >> 2];
      v30 = [numberFormatter stringFromNumber:v29];

      v14 = &DateMaskToString_ptr;
      [v30 sizeWithAttributes:v16];
      v60 = v32;
      v62 = v31;
      CGAffineTransformMakeRotation(&v66, v17 * 0.0261799388);
      v33.f64[0] = v62;
      v33.f64[1] = v60;
      v34 = vmulq_f64(v33, v64);
      [v30 drawAtPoint:v16 withAttributes:{vsubq_f64(vaddq_f64(*&v66.tx, vmlaq_f64(vmulq_n_f64(*&v66.c, v25 + 5.0 + v34.f64[1]), 0, *&v66.a)), v34)}];
    }

    else
    {
      v27 = +[UIColor mtui_stopwatchMinorTickMarkColor];
      [v27 setStroke];
      [v23 stroke];
    }

    ++v17;
  }

  while (v17 != 241);

  CGContextRestoreGState(c);
  v65 = 0.0;
  [(MTAAnalogStopwatchView *)self _minutesCircleCenter:&v65];
  v36 = v35;
  v38 = v37;
  CGContextSaveGState(c);
  CGContextTranslateCTM(c, v36, v38);
  UICeilToViewScale();
  v40 = v39;
  v67[0] = NSFontAttributeName;
  v41 = [UIFont systemFontOfSize:v9 * 14.0];
  v67[1] = NSForegroundColorAttributeName;
  v68[0] = v41;
  v42 = +[UIColor whiteColor];
  v68[1] = v42;
  v43 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:2];

  for (i = 1; i != 61; ++i)
  {
    v45 = objc_opt_new();
    [v45 moveToPoint:{0.0, -v65}];
    if (i)
    {
      v46 = 5.0;
    }

    else
    {
      v46 = 8.0;
    }

    v47 = v9 * v46;
    [v45 addLineToPoint:{0.0, v9 * v46 - v65}];
    CGAffineTransformMakeRotation(&v66, i * 0.104719755);
    [v45 applyTransform:&v66];
    [v45 setLineWidth:v40];
    v48 = v14[498];
    HIDWORD(v49) = -858993459 * i;
    LODWORD(v49) = HIDWORD(v49);
    if ((v49 >> 1) < 0x1999999A)
    {
      mtui_stopwatchMajorTickMarkColor = [v48 mtui_stopwatchMajorTickMarkColor];
      [mtui_stopwatchMajorTickMarkColor setStroke];
      [v45 stroke];
      numberFormatter2 = [(MTAAnalogStopwatchView *)self numberFormatter];
      v52 = [NSNumber numberWithUnsignedInteger:i >> 1];
      v53 = [numberFormatter2 stringFromNumber:v52];

      v14 = &DateMaskToString_ptr;
      [v53 sizeWithAttributes:v43];
      v61 = v55;
      v63 = v54;
      v56 = v47 - v65 + 3.0;
      CGAffineTransformMakeRotation(&v66, i * 0.104719755);
      v57.f64[0] = v63;
      v57.f64[1] = v61;
      v58 = vmulq_f64(v57, v64);
      [v53 drawAtPoint:v43 withAttributes:{vsubq_f64(vaddq_f64(*&v66.tx, vmlaq_f64(vmulq_n_f64(*&v66.c, v58.f64[1] + v56), 0, *&v66.a)), v58)}];
    }

    else
    {
      mtui_stopwatchMajorTickMarkColor = [v48 mtui_stopwatchMinorTickMarkColor];
      [mtui_stopwatchMajorTickMarkColor setStroke];
      [v45 stroke];
    }
  }

  CGContextRestoreGState(c);
}

@end
@interface ELSConsentSignatureView
- (BOOL)isForceTouchAvailable;
- (BOOL)isTouchTypeStylus:(id)stylus;
- (BOOL)signatureExists;
- (CGSize)signatureImageSize;
- (ELSConsentSignatureView)initWithCoder:(id)coder;
- (ELSConsentSignatureView)initWithFrame:(CGRect)frame;
- (ELSConsentSignatureViewDelegate)delegate;
- (NSArray)backgroundLines;
- (NSArray)signaturePath;
- (NSMutableArray)pathArray;
- (UIColor)lineColor;
- (double)placeholderPoint;
- (id)pathWithRoundedStyle;
- (id)signatureImage;
- (void)clear;
- (void)commitCurrentPath;
- (void)drawRect:(CGRect)rect;
- (void)gestureTouchesBegan:(id)began withEvent:(id)event;
- (void)gestureTouchesMoved:(id)moved withEvent:(id)event;
- (void)makeSignatureGestureRecognizer;
- (void)setSignaturePath:(id)path;
@end

@implementation ELSConsentSignatureView

- (ELSConsentSignatureView)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = ELSConsentSignatureView;
  v3 = [(ELSConsentSignatureView *)&v15 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    v3->_lineWidth = 1.0;
    v3->_lineWidthVariation = 3.0;
    v5 = +[UIColor lightGrayColor];
    cGColor = [v5 CGColor];
    layer = [(ELSConsentSignatureView *)v4 layer];
    [layer setBorderColor:cGColor];

    v8 = +[UIColor whiteColor];
    cGColor2 = [v8 CGColor];
    layer2 = [(ELSConsentSignatureView *)v4 layer];
    [layer2 setBackgroundColor:cGColor2];

    layer3 = [(ELSConsentSignatureView *)v4 layer];
    [layer3 setMasksToBounds:1];

    layer4 = [(ELSConsentSignatureView *)v4 layer];
    [layer4 setBorderWidth:1.0];

    layer5 = [(ELSConsentSignatureView *)v4 layer];
    [layer5 setCornerRadius:26.0];

    [(ELSConsentSignatureView *)v4 makeSignatureGestureRecognizer];
  }

  return v4;
}

- (ELSConsentSignatureView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = ELSConsentSignatureView;
  v3 = [(ELSConsentSignatureView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_lineWidth = 1.0;
    v3->_lineWidthVariation = 3.0;
    v5 = +[UIColor lightGrayColor];
    cGColor = [v5 CGColor];
    layer = [(ELSConsentSignatureView *)v4 layer];
    [layer setBorderColor:cGColor];

    v8 = +[UIColor whiteColor];
    cGColor2 = [v8 CGColor];
    layer2 = [(ELSConsentSignatureView *)v4 layer];
    [layer2 setBackgroundColor:cGColor2];

    layer3 = [(ELSConsentSignatureView *)v4 layer];
    [layer3 setMasksToBounds:1];

    layer4 = [(ELSConsentSignatureView *)v4 layer];
    [layer4 setBorderWidth:1.0];

    layer5 = [(ELSConsentSignatureView *)v4 layer];
    [layer5 setCornerRadius:26.0];

    [(ELSConsentSignatureView *)v4 makeSignatureGestureRecognizer];
  }

  return v4;
}

- (id)pathWithRoundedStyle
{
  v3 = +[UIBezierPath bezierPath];
  [v3 setLineCapStyle:1];
  [(ELSConsentSignatureView *)self lineWidth];
  [v3 setLineWidth:?];
  [v3 setLineJoinStyle:1];

  return v3;
}

- (void)makeSignatureGestureRecognizer
{
  if (!self->_signatureGestureRecognizer)
  {
    v3 = objc_opt_new();
    signatureGestureRecognizer = self->_signatureGestureRecognizer;
    self->_signatureGestureRecognizer = v3;

    [(UIGestureRecognizer *)self->_signatureGestureRecognizer setEventDelegate:self];
    v5 = self->_signatureGestureRecognizer;

    [(ELSConsentSignatureView *)self addGestureRecognizer:v5];
  }
}

- (UIColor)lineColor
{
  lineColor = self->_lineColor;
  if (!lineColor)
  {
    v4 = +[UIColor blackColor];
    v5 = self->_lineColor;
    self->_lineColor = v4;

    lineColor = self->_lineColor;
  }

  return lineColor;
}

- (NSMutableArray)pathArray
{
  pathArray = self->_pathArray;
  if (!pathArray)
  {
    v4 = objc_opt_new();
    v5 = self->_pathArray;
    self->_pathArray = v4;

    pathArray = self->_pathArray;
  }

  return pathArray;
}

- (double)placeholderPoint
{
  [(ELSConsentSignatureView *)self bounds];
  v3 = v2 * 0.7;
  v4 = [UIFont systemFontOfSize:12.0];
  [v4 pointSize];
  v6 = v3 + -5.0 - v5;
  [v4 descender];
  v8 = v6 + v7;

  return v8;
}

- (NSArray)backgroundLines
{
  backgroundLines = self->_backgroundLines;
  if (!backgroundLines)
  {
    [(ELSConsentSignatureView *)self bounds];
    v5 = v4;
    [(ELSConsentSignatureView *)self bounds];
    v7 = v6;
    v8 = +[UIBezierPath bezierPath];
    v9 = v7 * 0.7;
    [v8 moveToPoint:{0.0, v9}];
    [v8 addLineToPoint:{v5, v9}];
    v13 = v8;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    v11 = self->_backgroundLines;
    self->_backgroundLines = v10;

    backgroundLines = self->_backgroundLines;
  }

  return backgroundLines;
}

- (BOOL)isForceTouchAvailable
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015D7C;
  block[3] = &unk_1001BC580;
  block[4] = self;
  if (qword_100202D88 != -1)
  {
    dispatch_once(&qword_100202D88, block);
  }

  return byte_100202D80;
}

- (BOOL)isTouchTypeStylus:(id)stylus
{
  stylusCopy = stylus;
  v4 = (objc_opt_respondsToSelector() & 1) != 0 && [stylusCopy type] == 2;

  return v4;
}

- (void)gestureTouchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  anyObject = [beganCopy anyObject];
  pathWithRoundedStyle = [(ELSConsentSignatureView *)self pathWithRoundedStyle];
  [(ELSConsentSignatureView *)self setCurrentPath:pathWithRoundedStyle];

  [(ELSConsentSignatureView *)self setNeedsDisplay];
  [anyObject previousLocationInView:self];
  self->previousPoint1.x = v9;
  self->previousPoint1.y = v10;
  [anyObject previousLocationInView:self];
  self->previousPoint2.x = v11;
  self->previousPoint2.y = v12;
  p_currentPoint = &self->currentPoint;
  [anyObject locationInView:self];
  self->currentPoint.x = v14;
  self->currentPoint.y = v15;
  if ([(ELSConsentSignatureView *)self isForceTouchAvailable]|| [(ELSConsentSignatureView *)self isTouchTypeStylus:anyObject])
  {
    self->minPressure = 0.0;
    [anyObject maximumPossibleForce];
    v17 = v16 * 0.5;
    v18 = &OBJC_IVAR___ELSConsentSignatureView_maxPressure;
  }

  else
  {
    self->minPressure = 0.0;
    self->maxPressure = 9.0;
    [anyObject timestamp];
    v18 = &OBJC_IVAR___ELSConsentSignatureView_previousTouchTime;
  }

  *(&self->super.super.super.isa + *v18) = v17;
  currentPath = [(ELSConsentSignatureView *)self currentPath];
  [currentPath moveToPoint:{p_currentPoint->x, self->currentPoint.y}];

  currentPath2 = [(ELSConsentSignatureView *)self currentPath];
  [currentPath2 addArcWithCenter:1 radius:p_currentPoint->x startAngle:self->currentPoint.y endAngle:0.1 clockwise:{0.0, 6.28318531}];

  [(ELSConsentSignatureView *)self gestureTouchesMoved:beganCopy withEvent:eventCopy];
}

- (void)gestureTouchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  anyObject = [moved anyObject];
  [anyObject locationInView:self];
  p_currentPoint = &self->currentPoint;
  v10 = (v9 - self->currentPoint.y) * (v9 - self->currentPoint.y) + (v8 - self->currentPoint.x) * (v8 - self->currentPoint.x);
  if (v10 >= 25.0)
  {
    if ([(ELSConsentSignatureView *)self isForceTouchAvailable]|| [(ELSConsentSignatureView *)self isTouchTypeStylus:anyObject])
    {
      [anyObject force];
      v12 = v11;
    }

    else
    {
      maxPressure = self->maxPressure;
      [eventCopy timestamp];
      v12 = maxPressure - log(sqrt(v10) / fmax(v14 - self->previousTouchTime, 0.0001));
      [eventCopy timestamp];
      self->previousTouchTime = v15;
    }

    minPressure = self->minPressure;
    if (minPressure < v12)
    {
      minPressure = v12;
    }

    if (self->maxPressure >= minPressure)
    {
      v17 = minPressure;
    }

    else
    {
      v17 = self->maxPressure;
    }

    currentPath = [(ELSConsentSignatureView *)self currentPath];
    [currentPath lineWidth];
    v20 = v19;

    v21 = v17 - self->minPressure;
    [(ELSConsentSignatureView *)self lineWidthVariation];
    v23 = v21 * v22 / (self->maxPressure - self->minPressure);
    [(ELSConsentSignatureView *)self lineWidth];
    v25 = v24 + v23;
    __asm { FMOV            V1.2D, #0.5 }

    v59 = _Q1;
    if (_NF != _VF)
    {
      goto LABEL_20;
    }

    if (v25 <= v20)
    {
      if (v25 >= v20)
      {
LABEL_19:
        [(ELSConsentSignatureView *)self commitCurrentPath];
        pathWithRoundedStyle = [(ELSConsentSignatureView *)self pathWithRoundedStyle];
        [(ELSConsentSignatureView *)self setCurrentPath:pathWithRoundedStyle];

        currentPath2 = [(ELSConsentSignatureView *)self currentPath];
        [currentPath2 setLineWidth:v20];

        v57 = vmulq_f64(vaddq_f64(*p_currentPoint, self->previousPoint1), v59);
        currentPath3 = [(ELSConsentSignatureView *)self currentPath];
        [currentPath3 moveToPoint:*&v57];

LABEL_20:
        self->previousPoint2 = self->previousPoint1;
        [anyObject previousLocationInView:self];
        self->previousPoint1.x = v35;
        self->previousPoint1.y = v36;
        [anyObject locationInView:self];
        p_currentPoint->x = v37.f64[0];
        self->currentPoint.y = v38;
        v37.f64[1] = v38;
        v58 = vmulq_f64(vaddq_f64(self->previousPoint1, self->previousPoint2), v59);
        v60 = vmulq_f64(vaddq_f64(v37, self->previousPoint1), v59);
        v39 = +[UIBezierPath bezierPath];
        [v39 moveToPoint:*&v58];
        [v39 addQuadCurveToPoint:? controlPoint:?];
        BoundingBox = CGPathGetBoundingBox([v39 CGPath]);
        x = BoundingBox.origin.x;
        y = BoundingBox.origin.y;
        width = BoundingBox.size.width;
        height = BoundingBox.size.height;
        currentPath4 = [(ELSConsentSignatureView *)self currentPath];
        [currentPath4 addQuadCurveToPoint:*&v60 controlPoint:{self->previousPoint1.x, self->previousPoint1.y}];

        currentPath5 = [(ELSConsentSignatureView *)self currentPath];
        [currentPath5 lineWidth];
        v47 = x - v46 * 2.0;

        currentPath6 = [(ELSConsentSignatureView *)self currentPath];
        [currentPath6 lineWidth];
        v50 = y - v49 * 2.0;

        currentPath7 = [(ELSConsentSignatureView *)self currentPath];
        [currentPath7 lineWidth];
        v53 = width + v52 * 4.0;

        currentPath8 = [(ELSConsentSignatureView *)self currentPath];
        [currentPath8 lineWidth];
        v56 = height + v55 * 4.0;

        [(ELSConsentSignatureView *)self setNeedsDisplayInRect:v47, v50, v53, v56];
        goto LABEL_21;
      }

      v31 = -0.25;
    }

    else
    {
      v31 = 0.25;
    }

    v20 = v20 + v31;
    goto LABEL_19;
  }

LABEL_21:
}

- (void)commitCurrentPath
{
  currentPath = [(ELSConsentSignatureView *)self currentPath];
  [currentPath bounds];
  v5 = v4;
  v7 = v6;

  if (v5 != CGSizeZero.width || v7 != CGSizeZero.height)
  {
    pathArray = [(ELSConsentSignatureView *)self pathArray];
    currentPath2 = [(ELSConsentSignatureView *)self currentPath];
    [pathArray addObject:currentPath2];

    [(ELSConsentSignatureView *)self setCurrentPath:0];
    delegate = [(ELSConsentSignatureView *)self delegate];
    [delegate didEdit:self];
  }
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layer = [(ELSConsentSignatureView *)self layer];
  [layer cornerRadius];

  [(ELSConsentSignatureView *)self bounds];
  v9 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  [v9 addClip];
  v10 = +[UIColor whiteColor];
  [v10 setFill];

  CurrentContext = UIGraphicsGetCurrentContext();
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  CGContextFillRect(CurrentContext, v26);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  pathArray = [(ELSConsentSignatureView *)self pathArray];
  v13 = [pathArray countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(pathArray);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        lineColor = [(ELSConsentSignatureView *)self lineColor];
        [lineColor setStroke];

        [v17 stroke];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [pathArray countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  lineColor2 = [(ELSConsentSignatureView *)self lineColor];
  [lineColor2 setStroke];

  currentPath = [(ELSConsentSignatureView *)self currentPath];
  [currentPath stroke];
}

- (NSArray)signaturePath
{
  pathArray = [(ELSConsentSignatureView *)self pathArray];
  v3 = [pathArray copy];

  return v3;
}

- (void)setSignaturePath:(id)path
{
  if (path)
  {
    v4 = [path mutableCopy];
    pathArray = self->_pathArray;
    self->_pathArray = v4;

    [(ELSConsentSignatureView *)self setNeedsDisplay];
  }
}

- (id)signatureImage
{
  [(ELSConsentSignatureView *)self signatureImageSize];
  UIGraphicsBeginImageContextWithOptions(v18, 0, 0.85);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  pathArray = [(ELSConsentSignatureView *)self pathArray];
  v4 = [pathArray countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(pathArray);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        lineColor = [(ELSConsentSignatureView *)self lineColor];
        [lineColor setStroke];

        [v8 stroke];
      }

      v5 = [pathArray countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

- (BOOL)signatureExists
{
  pathArray = [(ELSConsentSignatureView *)self pathArray];
  v3 = [pathArray count] != 0;

  return v3;
}

- (void)clear
{
  pathArray = [(ELSConsentSignatureView *)self pathArray];
  v4 = [pathArray count];

  if (v4)
  {
    currentPath = [(ELSConsentSignatureView *)self currentPath];

    if (currentPath)
    {
      pathWithRoundedStyle = [(ELSConsentSignatureView *)self pathWithRoundedStyle];
      [(ELSConsentSignatureView *)self setCurrentPath:pathWithRoundedStyle];
    }

    pathArray2 = [(ELSConsentSignatureView *)self pathArray];
    [pathArray2 removeAllObjects];

    [(ELSConsentSignatureView *)self bounds];

    [(ELSConsentSignatureView *)self setNeedsDisplayInRect:?];
  }
}

- (CGSize)signatureImageSize
{
  [(ELSConsentSignatureView *)self frame];
  if (v3 == 0.0)
  {
    v7 = 175.0;
  }

  else
  {
    [(ELSConsentSignatureView *)self frame];
    v5 = 175.0 / v4;
    [(ELSConsentSignatureView *)self frame];
    v7 = v6 * v5;
  }

  v8 = 175.0;
  result.height = v8;
  result.width = v7;
  return result;
}

- (ELSConsentSignatureViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
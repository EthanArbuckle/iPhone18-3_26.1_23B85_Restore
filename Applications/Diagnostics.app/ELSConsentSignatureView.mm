@interface ELSConsentSignatureView
- (BOOL)isForceTouchAvailable;
- (BOOL)isTouchTypeStylus:(id)a3;
- (BOOL)signatureExists;
- (CGSize)signatureImageSize;
- (ELSConsentSignatureView)initWithCoder:(id)a3;
- (ELSConsentSignatureView)initWithFrame:(CGRect)a3;
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
- (void)drawRect:(CGRect)a3;
- (void)gestureTouchesBegan:(id)a3 withEvent:(id)a4;
- (void)gestureTouchesMoved:(id)a3 withEvent:(id)a4;
- (void)makeSignatureGestureRecognizer;
- (void)setSignaturePath:(id)a3;
@end

@implementation ELSConsentSignatureView

- (ELSConsentSignatureView)initWithCoder:(id)a3
{
  v15.receiver = self;
  v15.super_class = ELSConsentSignatureView;
  v3 = [(ELSConsentSignatureView *)&v15 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v3->_lineWidth = 1.0;
    v3->_lineWidthVariation = 3.0;
    v5 = +[UIColor lightGrayColor];
    v6 = [v5 CGColor];
    v7 = [(ELSConsentSignatureView *)v4 layer];
    [v7 setBorderColor:v6];

    v8 = +[UIColor whiteColor];
    v9 = [v8 CGColor];
    v10 = [(ELSConsentSignatureView *)v4 layer];
    [v10 setBackgroundColor:v9];

    v11 = [(ELSConsentSignatureView *)v4 layer];
    [v11 setMasksToBounds:1];

    v12 = [(ELSConsentSignatureView *)v4 layer];
    [v12 setBorderWidth:1.0];

    v13 = [(ELSConsentSignatureView *)v4 layer];
    [v13 setCornerRadius:26.0];

    [(ELSConsentSignatureView *)v4 makeSignatureGestureRecognizer];
  }

  return v4;
}

- (ELSConsentSignatureView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = ELSConsentSignatureView;
  v3 = [(ELSConsentSignatureView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_lineWidth = 1.0;
    v3->_lineWidthVariation = 3.0;
    v5 = +[UIColor lightGrayColor];
    v6 = [v5 CGColor];
    v7 = [(ELSConsentSignatureView *)v4 layer];
    [v7 setBorderColor:v6];

    v8 = +[UIColor whiteColor];
    v9 = [v8 CGColor];
    v10 = [(ELSConsentSignatureView *)v4 layer];
    [v10 setBackgroundColor:v9];

    v11 = [(ELSConsentSignatureView *)v4 layer];
    [v11 setMasksToBounds:1];

    v12 = [(ELSConsentSignatureView *)v4 layer];
    [v12 setBorderWidth:1.0];

    v13 = [(ELSConsentSignatureView *)v4 layer];
    [v13 setCornerRadius:26.0];

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

- (BOOL)isTouchTypeStylus:(id)a3
{
  v3 = a3;
  v4 = (objc_opt_respondsToSelector() & 1) != 0 && [v3 type] == 2;

  return v4;
}

- (void)gestureTouchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v21 = [v7 anyObject];
  v8 = [(ELSConsentSignatureView *)self pathWithRoundedStyle];
  [(ELSConsentSignatureView *)self setCurrentPath:v8];

  [(ELSConsentSignatureView *)self setNeedsDisplay];
  [v21 previousLocationInView:self];
  self->previousPoint1.x = v9;
  self->previousPoint1.y = v10;
  [v21 previousLocationInView:self];
  self->previousPoint2.x = v11;
  self->previousPoint2.y = v12;
  p_currentPoint = &self->currentPoint;
  [v21 locationInView:self];
  self->currentPoint.x = v14;
  self->currentPoint.y = v15;
  if ([(ELSConsentSignatureView *)self isForceTouchAvailable]|| [(ELSConsentSignatureView *)self isTouchTypeStylus:v21])
  {
    self->minPressure = 0.0;
    [v21 maximumPossibleForce];
    v17 = v16 * 0.5;
    v18 = &OBJC_IVAR___ELSConsentSignatureView_maxPressure;
  }

  else
  {
    self->minPressure = 0.0;
    self->maxPressure = 9.0;
    [v21 timestamp];
    v18 = &OBJC_IVAR___ELSConsentSignatureView_previousTouchTime;
  }

  *(&self->super.super.super.isa + *v18) = v17;
  v19 = [(ELSConsentSignatureView *)self currentPath];
  [v19 moveToPoint:{p_currentPoint->x, self->currentPoint.y}];

  v20 = [(ELSConsentSignatureView *)self currentPath];
  [v20 addArcWithCenter:1 radius:p_currentPoint->x startAngle:self->currentPoint.y endAngle:0.1 clockwise:{0.0, 6.28318531}];

  [(ELSConsentSignatureView *)self gestureTouchesMoved:v7 withEvent:v6];
}

- (void)gestureTouchesMoved:(id)a3 withEvent:(id)a4
{
  v61 = a4;
  v6 = [a3 anyObject];
  [v6 locationInView:self];
  p_currentPoint = &self->currentPoint;
  v10 = (v9 - self->currentPoint.y) * (v9 - self->currentPoint.y) + (v8 - self->currentPoint.x) * (v8 - self->currentPoint.x);
  if (v10 >= 25.0)
  {
    if ([(ELSConsentSignatureView *)self isForceTouchAvailable]|| [(ELSConsentSignatureView *)self isTouchTypeStylus:v6])
    {
      [v6 force];
      v12 = v11;
    }

    else
    {
      maxPressure = self->maxPressure;
      [v61 timestamp];
      v12 = maxPressure - log(sqrt(v10) / fmax(v14 - self->previousTouchTime, 0.0001));
      [v61 timestamp];
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

    v18 = [(ELSConsentSignatureView *)self currentPath];
    [v18 lineWidth];
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
        v32 = [(ELSConsentSignatureView *)self pathWithRoundedStyle];
        [(ELSConsentSignatureView *)self setCurrentPath:v32];

        v33 = [(ELSConsentSignatureView *)self currentPath];
        [v33 setLineWidth:v20];

        v57 = vmulq_f64(vaddq_f64(*p_currentPoint, self->previousPoint1), v59);
        v34 = [(ELSConsentSignatureView *)self currentPath];
        [v34 moveToPoint:*&v57];

LABEL_20:
        self->previousPoint2 = self->previousPoint1;
        [v6 previousLocationInView:self];
        self->previousPoint1.x = v35;
        self->previousPoint1.y = v36;
        [v6 locationInView:self];
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
        v44 = [(ELSConsentSignatureView *)self currentPath];
        [v44 addQuadCurveToPoint:*&v60 controlPoint:{self->previousPoint1.x, self->previousPoint1.y}];

        v45 = [(ELSConsentSignatureView *)self currentPath];
        [v45 lineWidth];
        v47 = x - v46 * 2.0;

        v48 = [(ELSConsentSignatureView *)self currentPath];
        [v48 lineWidth];
        v50 = y - v49 * 2.0;

        v51 = [(ELSConsentSignatureView *)self currentPath];
        [v51 lineWidth];
        v53 = width + v52 * 4.0;

        v54 = [(ELSConsentSignatureView *)self currentPath];
        [v54 lineWidth];
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
  v3 = [(ELSConsentSignatureView *)self currentPath];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  if (v5 != CGSizeZero.width || v7 != CGSizeZero.height)
  {
    v9 = [(ELSConsentSignatureView *)self pathArray];
    v10 = [(ELSConsentSignatureView *)self currentPath];
    [v9 addObject:v10];

    [(ELSConsentSignatureView *)self setCurrentPath:0];
    v11 = [(ELSConsentSignatureView *)self delegate];
    [v11 didEdit:self];
  }
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(ELSConsentSignatureView *)self layer];
  [v8 cornerRadius];

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
  v12 = [(ELSConsentSignatureView *)self pathArray];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        v18 = [(ELSConsentSignatureView *)self lineColor];
        [v18 setStroke];

        [v17 stroke];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v19 = [(ELSConsentSignatureView *)self lineColor];
  [v19 setStroke];

  v20 = [(ELSConsentSignatureView *)self currentPath];
  [v20 stroke];
}

- (NSArray)signaturePath
{
  v2 = [(ELSConsentSignatureView *)self pathArray];
  v3 = [v2 copy];

  return v3;
}

- (void)setSignaturePath:(id)a3
{
  if (a3)
  {
    v4 = [a3 mutableCopy];
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
  v3 = [(ELSConsentSignatureView *)self pathArray];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(ELSConsentSignatureView *)self lineColor];
        [v9 setStroke];

        [v8 stroke];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

- (BOOL)signatureExists
{
  v2 = [(ELSConsentSignatureView *)self pathArray];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)clear
{
  v3 = [(ELSConsentSignatureView *)self pathArray];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(ELSConsentSignatureView *)self currentPath];

    if (v5)
    {
      v6 = [(ELSConsentSignatureView *)self pathWithRoundedStyle];
      [(ELSConsentSignatureView *)self setCurrentPath:v6];
    }

    v7 = [(ELSConsentSignatureView *)self pathArray];
    [v7 removeAllObjects];

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
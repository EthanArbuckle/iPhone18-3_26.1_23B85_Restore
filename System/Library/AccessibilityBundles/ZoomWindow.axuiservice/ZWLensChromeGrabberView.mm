@interface ZWLensChromeGrabberView
- (BOOL)isAccessibilityElement;
- (ZWLensChromeGrabberView)initWithCoder:(id)coder;
- (ZWLensChromeGrabberView)initWithEdge:(int64_t)edge startExpanded:(BOOL)expanded;
- (ZWLensChromeGrabberView)initWithFrame:(CGRect)frame;
- (id)_grabberEtchPathForCurrentEdge;
- (id)_grabberPathForCurrentEdgeIncludingFlatEdge:(BOOL)edge;
- (id)accessibilityLabel;
- (void)collapseGrabberAnimated:(BOOL)animated;
- (void)expandGrabberAnimated:(BOOL)animated;
- (void)layoutSubviews;
@end

@implementation ZWLensChromeGrabberView

- (ZWLensChromeGrabberView)initWithFrame:(CGRect)frame
{
  [NSException raise:@"NotSupported" format:@"Use initWithEdge:startExpanded:", frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  return [(ZWLensChromeGrabberView *)self initWithEdge:2 startExpanded:1];
}

- (ZWLensChromeGrabberView)initWithCoder:(id)coder
{
  [NSException raise:@"NotSupported" format:@"Use initWithEdge:startExpanded:"];

  return [(ZWLensChromeGrabberView *)self initWithEdge:2 startExpanded:1];
}

- (ZWLensChromeGrabberView)initWithEdge:(int64_t)edge startExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  v26.receiver = self;
  v26.super_class = ZWLensChromeGrabberView;
  v6 = [(ZWLensChromeGrabberView *)&v26 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    [(ZWLensChromeGrabberView *)v6 setGrabberEdge:edge];
    v8 = +[CAShapeLayer layer];
    [(ZWLensChromeGrabberView *)v7 setOuterBorderLayer:v8];
    layer = [(ZWLensChromeGrabberView *)v7 layer];
    [layer addSublayer:v8];

    v10 = +[UIColor clearColor];
    [v8 setFillColor:{objc_msgSend(v10, "CGColor")}];

    v11 = ZWLensOuterColor();
    [v8 setStrokeColor:{objc_msgSend(v11, "CGColor")}];

    v12 = ZWLensOuterBorderWidth();
    [v8 setLineWidth:v12 + v12];
    v13 = +[CAShapeLayer layer];
    [(ZWLensChromeGrabberView *)v7 setEtchLayer:v13];
    layer2 = [(ZWLensChromeGrabberView *)v7 layer];
    [layer2 addSublayer:v13];

    v15 = +[UIColor clearColor];
    [v13 setFillColor:{objc_msgSend(v15, "CGColor")}];

    v16 = ZWLensOuterColor();
    [v13 setStrokeColor:{objc_msgSend(v16, "CGColor")}];

    [v13 setLineWidth:ZWLensOuterBorderWidth()];
    [v13 setLineJoin:kCALineJoinBevel];
    if ([(ZWLensChromeGrabberView *)v7 grabberEdge])
    {
      grabberEdge = [(ZWLensChromeGrabberView *)v7 grabberEdge];
      if (grabberEdge == &dword_0 + 2)
      {
        v18 = 7;
      }

      else
      {
        v18 = 8;
      }

      if (grabberEdge == &dword_0 + 2)
      {
        v19 = 8;
      }

      else
      {
        v19 = 7;
      }
    }

    else
    {
      v19 = 8;
      v18 = 7;
    }

    v20 = [NSLayoutConstraint constraintWithItem:v7 attribute:v18 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:90.0];
    LODWORD(v21) = 1148829696;
    [v20 setPriority:v21];
    [(ZWLensChromeGrabberView *)v7 addConstraint:v20];
    v22 = [NSLayoutConstraint constraintWithItem:v7 attribute:v19 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:20.0];

    LODWORD(v23) = 1148829696;
    [v22 setPriority:v23];
    [(ZWLensChromeGrabberView *)v7 addConstraint:v22];

    if (expandedCopy)
    {
      [(ZWLensChromeGrabberView *)v7 expandGrabberAnimated:0];
    }

    else
    {
      [(ZWLensChromeGrabberView *)v7 collapseGrabberAnimated:0];
    }

    v24 = ZWLensInnerColor();
    [(ZWLensChromeGrabberView *)v7 setBackgroundColor:v24];
  }

  return v7;
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = ZWLensChromeGrabberView;
  [(ZWLensChromeGrabberView *)&v30 layoutSubviews];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v3 = [(ZWLensChromeGrabberView *)self _grabberPathForCurrentEdgeIncludingFlatEdge:1];
  v4 = +[CAShapeLayer layer];
  [v4 setPath:{objc_msgSend(v3, "CGPath")}];
  layer = [(ZWLensChromeGrabberView *)self layer];
  [layer setMask:v4];

  [(ZWLensChromeGrabberView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  outerBorderLayer = [(ZWLensChromeGrabberView *)self outerBorderLayer];
  [outerBorderLayer setFrame:{v7, v9, v11, v13}];

  v15 = [(ZWLensChromeGrabberView *)self _grabberPathForCurrentEdgeIncludingFlatEdge:0];
  cGPath = [v15 CGPath];
  outerBorderLayer2 = [(ZWLensChromeGrabberView *)self outerBorderLayer];
  [outerBorderLayer2 setPath:cGPath];

  [(ZWLensChromeGrabberView *)self bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  etchLayer = [(ZWLensChromeGrabberView *)self etchLayer];
  [etchLayer setFrame:{v19, v21, v23, v25}];

  _grabberEtchPathForCurrentEdge = [(ZWLensChromeGrabberView *)self _grabberEtchPathForCurrentEdge];
  cGPath2 = [_grabberEtchPathForCurrentEdge CGPath];
  etchLayer2 = [(ZWLensChromeGrabberView *)self etchLayer];
  [etchLayer2 setPath:cGPath2];

  +[CATransaction commit];
}

- (id)_grabberPathForCurrentEdgeIncludingFlatEdge:(BOOL)edge
{
  edgeCopy = edge;
  if ([(ZWLensChromeGrabberView *)self grabberEdge])
  {
    grabberEdge = [(ZWLensChromeGrabberView *)self grabberEdge];
    if (grabberEdge == 2)
    {
      v6 = 20.0;
    }

    else
    {
      v6 = 90.0;
    }

    if (grabberEdge == 2)
    {
      v7 = 90.0;
    }

    else
    {
      v7 = 20.0;
    }
  }

  else
  {
    v6 = 20.0;
    v7 = 90.0;
  }

  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v7;
  v24.size.height = v6;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = v7;
  v25.size.height = v6;
  MidY = CGRectGetMidY(v25);
  v10 = +[UIBezierPath bezierPath];
  [v10 moveToPoint:{0.0, 0.0}];
  if ([(ZWLensChromeGrabberView *)self grabberEdge]&& [(ZWLensChromeGrabberView *)self grabberEdge]!= &dword_0 + 2)
  {
    [v10 addCurveToPoint:v7 + 0.0 controlPoint1:v6 * 0.5 + 0.0 controlPoint2:{0.0, v6 * 0.25 + 0.0, v7 + 0.0, v6 * 0.25 + 0.0}];
    v15 = v6 * 3.0 * 0.25 + 0.0;
    v12 = v10;
    v13 = 0.0;
    v14 = v6 + 0.0;
    v11 = v7 + 0.0;
    v16 = 0.0;
    v17 = v15;
  }

  else
  {
    [v10 addCurveToPoint:v7 * 0.5 + 0.0 controlPoint1:v6 + 0.0 controlPoint2:{v7 * 0.25 + 0.0, 0.0, v7 * 0.25 + 0.0, v6 + 0.0}];
    v11 = v7 * 3.0 * 0.25 + 0.0;
    v12 = v10;
    v13 = v7 + 0.0;
    v14 = 0.0;
    v15 = v6 + 0.0;
    v16 = v11;
    v17 = 0.0;
  }

  [v12 addCurveToPoint:v13 controlPoint1:v14 controlPoint2:{v11, v15, v16, v17}];
  if (edgeCopy)
  {
    [v10 closePath];
  }

  if (![(ZWLensChromeGrabberView *)self grabberEdge]|| [(ZWLensChromeGrabberView *)self grabberEdge]== &dword_0 + 3)
  {
    v18 = *&CGAffineTransformIdentity.c;
    *&v22.a = *&CGAffineTransformIdentity.a;
    *&v22.c = v18;
    *&v22.tx = *&CGAffineTransformIdentity.tx;
    *&v21.a = *&v22.a;
    *&v21.c = v18;
    *&v21.tx = *&v22.tx;
    CGAffineTransformTranslate(&v22, &v21, MidX, MidY);
    v20 = v22;
    CGAffineTransformRotate(&v21, &v20, 3.14159265);
    v22 = v21;
    v20 = v21;
    CGAffineTransformTranslate(&v21, &v20, -MidX, -MidY);
    v22 = v21;
    [v10 applyTransform:&v21];
  }

  return v10;
}

- (id)_grabberEtchPathForCurrentEdge
{
  if ([(ZWLensChromeGrabberView *)self grabberEdge])
  {
    grabberEdge = [(ZWLensChromeGrabberView *)self grabberEdge];
    if (grabberEdge == 2)
    {
      v4 = 20.0;
    }

    else
    {
      v4 = 90.0;
    }

    if (grabberEdge == 2)
    {
      v5 = 90.0;
    }

    else
    {
      v5 = 20.0;
    }
  }

  else
  {
    v4 = 20.0;
    v5 = 90.0;
  }

  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v5;
  v20.size.height = v4;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v5;
  v21.size.height = v4;
  MidY = CGRectGetMidY(v21);
  v8 = +[UIBezierPath bezierPath];
  if ([(ZWLensChromeGrabberView *)self grabberEdge]&& [(ZWLensChromeGrabberView *)self grabberEdge]!= &dword_0 + 2)
  {
    v11 = MidX + -10.0;
    v13 = MidY + -10.0;
    v10 = MidY + 10.0;
    v12 = v8;
    v9 = MidX + -10.0;
  }

  else
  {
    v9 = MidX + -10.0;
    v10 = MidY + -10.0;
    v11 = MidX + 10.0;
    v12 = v8;
    v13 = MidY + -10.0;
  }

  [v12 moveToPoint:{v9, v13}];
  [v8 addLineToPoint:{MidX, MidY}];
  [v8 addLineToPoint:{v11, v10}];
  if (![(ZWLensChromeGrabberView *)self grabberEdge]|| [(ZWLensChromeGrabberView *)self grabberEdge]== &dword_0 + 3)
  {
    v14 = *&CGAffineTransformIdentity.c;
    *&v18.a = *&CGAffineTransformIdentity.a;
    *&v18.c = v14;
    *&v18.tx = *&CGAffineTransformIdentity.tx;
    *&v17.a = *&v18.a;
    *&v17.c = v14;
    *&v17.tx = *&v18.tx;
    CGAffineTransformTranslate(&v18, &v17, MidX, MidY);
    v16 = v18;
    CGAffineTransformRotate(&v17, &v16, 3.14159265);
    v18 = v17;
    v16 = v17;
    CGAffineTransformTranslate(&v17, &v16, -MidX, -MidY);
    v18 = v17;
    [v8 applyTransform:&v17];
  }

  return v8;
}

- (void)expandGrabberAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(ZWLensChromeGrabberView *)self setExpanded:1];
  v4 = 0.0;
  if (animatedCopy)
  {
    v4 = ZWDefaultFadeAnimationDuration();
  }

  [UIView animateWithDuration:&__block_literal_global_0 animations:v4];
}

- (void)collapseGrabberAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(ZWLensChromeGrabberView *)self setExpanded:0];
  v5 = 0.0;
  if (animatedCopy)
  {
    v5 = ZWDefaultFadeAnimationDuration();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __51__ZWLensChromeGrabberView_collapseGrabberAnimated___block_invoke;
  v6[3] = &unk_78D00;
  v6[4] = self;
  [UIView animateWithDuration:v6 animations:v5];
}

- (BOOL)isAccessibilityElement
{
  [(ZWLensChromeGrabberView *)self alpha];
  if (v3 <= 0.0)
  {
    return 0;
  }

  else
  {
    return [(ZWLensChromeGrabberView *)self isHidden]^ 1;
  }
}

- (id)accessibilityLabel
{
  grabberEdge = [(ZWLensChromeGrabberView *)self grabberEdge];
  if (grabberEdge <= 3)
  {
    v3 = ZWLocString(off_78D90[grabberEdge]);
  }

  return v3;
}

@end
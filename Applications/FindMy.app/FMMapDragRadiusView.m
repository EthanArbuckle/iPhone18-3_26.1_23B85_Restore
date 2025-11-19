@interface FMMapDragRadiusView
- (BOOL)usesMetric;
- (CAShapeLayer)shapeLayer;
- (CGPoint)maxPoint;
- (CGPoint)minPoint;
- (FMMapDragRadiusView)initWithCoder:(id)a3;
- (FMMapDragRadiusView)initWithFrame:(CGRect)a3;
- (double)currentHandleDistance;
- (double)currentHandleDistanceNormalized;
- (double)maximumRadiusNormalized;
- (double)minimumInMeters;
- (double)minimumRadiusNormalized;
- (id)bezierPathWithEndPoint:(CGPoint)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)shapeLayerWithEndPoint:(CGPoint)a3;
- (void)_axSetCustomRadius:(double)a3;
- (void)addHandleForAnnotation:(id)a3;
- (void)animateHandleIn:(BOOL)a3;
- (void)drawRect:(CGRect)a3;
- (void)handlePan:(id)a3;
- (void)hideCircleAfterDelay;
- (void)initialize;
- (void)popAnimateHandle;
- (void)removeHandle:(BOOL)a3;
@end

@implementation FMMapDragRadiusView

- (void)initialize
{
  v3 = [UIImageView alloc];
  v4 = [UIImage imageNamed:@"FenceMapDragHandle"];
  v5 = +[UIColor fmfOrangeColor];
  v6 = [v4 tintedImageWithColor:v5];
  v7 = [UIImage imageNamed:@"FenceMapDragHandle"];
  v8 = +[UIColor fmfOrangeColor];
  v9 = [v7 tintedImageWithColor:v8];
  v10 = [v3 initWithImage:v6 highlightedImage:v9];
  [(FMMapDragRadiusView *)self setHandleImageView:v10];

  v11 = [(FMMapDragRadiusView *)self handleImageView];
  v12 = [v11 layer];
  [v12 setZPosition:50.0];

  v13 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"handlePan:"];
  [(FMMapDragRadiusView *)self addGestureRecognizer:v13];
}

- (FMMapDragRadiusView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = FMMapDragRadiusView;
  v3 = [(FMMapDragRadiusView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(FMMapDragRadiusView *)v3 initialize];
  }

  return v4;
}

- (FMMapDragRadiusView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = FMMapDragRadiusView;
  v3 = [(FMMapDragRadiusView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(FMMapDragRadiusView *)v3 initialize];
  }

  return v4;
}

- (void)popAnimateHandle
{
  v2 = [(FMMapDragRadiusView *)self handleImageView];
  v3 = [v2 layer];

  v4 = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
  [v4 setDuration:0.349999994];
  memset(&v26, 0, sizeof(v26));
  if (v3)
  {
    [v3 transform];
    CATransform3DScale(&v26, &v25, 0.5, 0.5, 1.0);
    memset(&v25, 0, sizeof(v25));
    [v3 transform];
    CATransform3DScale(&v25, &v24, 1.20000005, 1.20000005, 1.0);
    memset(&v24, 0, sizeof(v24));
    [v3 transform];
    CATransform3DScale(&v24, &v23, 0.899999976, 0.899999976, 1.0);
    memset(&v23, 0, sizeof(v23));
    [v3 transform];
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
    CATransform3DScale(&v26, &v25, 0.5, 0.5, 1.0);
    memset(&v25, 0, sizeof(v25));
    memset(&v24, 0, sizeof(v24));
    CATransform3DScale(&v25, &v24, 1.20000005, 1.20000005, 1.0);
    memset(&v24, 0, sizeof(v24));
    memset(&v23, 0, sizeof(v23));
    CATransform3DScale(&v24, &v23, 0.899999976, 0.899999976, 1.0);
    memset(&v23, 0, sizeof(v23));
  }

  v22 = v26;
  v5 = [NSValue valueWithCATransform3D:&v22];
  v22 = v25;
  v6 = [NSValue valueWithCATransform3D:&v22];
  v22 = v24;
  v7 = [NSValue valueWithCATransform3D:&v22];
  v22 = v23;
  v8 = [NSValue valueWithCATransform3D:&v22];
  v9 = [NSArray arrayWithObjects:v5, v6, v7, v8, 0];

  [v4 setValues:v9];
  v10 = [NSNumber numberWithFloat:0.0];
  LODWORD(v11) = 0.5;
  v12 = [NSNumber numberWithFloat:v11];
  LODWORD(v13) = *"fff?";
  v14 = [NSNumber numberWithFloat:v13];
  LODWORD(v15) = 1.0;
  v16 = [NSNumber numberWithFloat:v15];
  v17 = [NSArray arrayWithObjects:v10, v12, v14, v16, 0];

  [v4 setKeyTimes:v17];
  v18 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v19 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  v20 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  v21 = [NSArray arrayWithObjects:v18, v19, v20, 0];

  [v4 setTimingFunctions:v21];
  [v4 setFillMode:kCAFillModeForwards];
  [v4 setRemovedOnCompletion:0];
  [v3 addAnimation:v4 forKey:@"transform"];
}

- (id)bezierPathWithEndPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(FMMapDragRadiusView *)self mapView];
  v7 = [(FMMapDragRadiusView *)self annotation];
  [v7 coordinate];
  [v6 convertCoordinate:self toPointToView:?];
  v9 = v8;
  v11 = v10;

  v12 = +[UIBezierPath bezierPath];
  v14 = xmmword_100550400;
  [v12 setLineDash:&v14 count:2 phase:0.0];
  [v12 setLineWidth:2.0];
  [v12 setLineCapStyle:1];
  [v12 moveToPoint:{floor(v9), floor(v11)}];
  [v12 addLineToPoint:{floor(x), floor(y)}];
  [v12 stroke];

  return v12;
}

- (CAShapeLayer)shapeLayer
{
  shapeLayer = self->_shapeLayer;
  if (!shapeLayer)
  {
    v4 = objc_alloc_init(CAShapeLayer);
    v5 = +[UIColor fmfOrangeColor];
    [v4 setStrokeColor:{objc_msgSend(v5, "CGColor")}];
    v6 = +[UIColor clearColor];
    [v4 setFillColor:{objc_msgSend(v6, "CGColor")}];

    [v4 setLineDashPattern:&off_100646F40];
    [v4 setLineCap:@"round"];
    [v4 setLineWidth:2.0];
    [v4 setStrokeStart:0.0];
    [v4 setStrokeEnd:1.0];
    [v4 setZPosition:40.0];
    [(FMMapDragRadiusView *)self setShapeLayer:v4];

    shapeLayer = self->_shapeLayer;
  }

  return shapeLayer;
}

- (id)shapeLayerWithEndPoint:(CGPoint)a3
{
  v4 = [(FMMapDragRadiusView *)self bezierPathWithEndPoint:a3.x, a3.y];
  v5 = [(FMMapDragRadiusView *)self shapeLayer];
  [v5 setPath:{objc_msgSend(v4, "CGPath")}];
  v6 = [v5 superlayer];

  if (!v6)
  {
    v7 = [(FMMapDragRadiusView *)self layer];
    [v7 addSublayer:v5];
  }

  return v5;
}

- (void)animateHandleIn:(BOOL)a3
{
  v3 = a3;
  v5 = [(FMMapDragRadiusView *)self annotation];
  v6 = [v5 overlay];
  [v6 boundingMapRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(FMMapDragRadiusView *)self mapView];
  [v15 visibleMapRect];
  v63.origin.x = v16;
  v63.origin.y = v17;
  v63.size.width = v18;
  v63.size.height = v19;
  v58.origin.x = v8;
  v58.origin.y = v10;
  v58.size.width = v12;
  v58.size.height = v14;
  v20 = MKMapRectIntersectsRect(v58, v63);

  if (v20)
  {
    v21 = [(FMMapDragRadiusView *)self mapView];
    v22 = [(FMMapDragRadiusView *)self annotation];
    [v22 coordinate];
    [v21 convertCoordinate:self toPointToView:?];
    v24 = v23;
    v26 = v25;

    v27 = [(FMMapDragRadiusView *)self handleImageView];
    [v27 setCenter:{floor(v24), floor(v26)}];

    v28 = [(FMMapDragRadiusView *)self handleImageView];
    [(FMMapDragRadiusView *)self addSubview:v28];

    v29 = [(FMMapDragRadiusView *)self annotation];
    v30 = [v29 overlay];
    [v30 boundingMapRect];
    v60 = MKCoordinateRegionForMapRect(v59);
    latitude = v60.center.latitude;
    longitude = v60.center.longitude;
    latitudeDelta = v60.span.latitudeDelta;
    longitudeDelta = v60.span.longitudeDelta;

    v35 = [(FMMapDragRadiusView *)self mapView];
    [v35 convertRegion:self toRectToView:{latitude, longitude, latitudeDelta, longitudeDelta}];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v61.origin.x = v37;
    v61.origin.y = v39;
    v61.size.width = v41;
    v61.size.height = v43;
    v44 = floor(CGRectGetMaxX(v61));
    v62.origin.x = v37;
    v62.origin.y = v39;
    v62.size.width = v41;
    v62.size.height = v43;
    MidY = CGRectGetMidY(v62);
    v46 = [(FMMapDragRadiusView *)self handleImageView];
    v53 = v46;
    if (v44 - v24 >= 12.0)
    {
      v47 = floor(MidY);
      [v46 setAlpha:1.0];

      [(FMMapDragRadiusView *)self frame];
      v57.width = v48;
      v57.height = v49;
      UIGraphicsBeginImageContext(v57);
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextSaveGState(CurrentContext);
      v51 = [(FMMapDragRadiusView *)self shapeLayerWithEndPoint:v44, v47];
      CGContextRestoreGState(CurrentContext);
      UIGraphicsEndImageContext();
      if (v3)
      {
        v52 = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        [v52 setDuration:0.35];
        [v52 setFromValue:&off_100646F58];
        [v52 setToValue:&off_100646F68];
        [(CAShapeLayer *)self->_shapeLayer addAnimation:v52 forKey:@"strokeEndAnimation"];
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_10007D3F8;
        v55[3] = &unk_100621A20;
        v55[4] = self;
        *&v55[5] = v44;
        *&v55[6] = v47;
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_10007D450;
        v54[3] = &unk_100621A48;
        v54[4] = self;
        [UIView animateWithDuration:v55 animations:v54 completion:0.349999994];

        return;
      }

      v53 = [(FMMapDragRadiusView *)self handleImageView];
      [v53 setCenter:{v44, v47}];
    }

    else
    {
      [v46 setAlpha:0.0];
    }
  }
}

- (void)addHandleForAnnotation:(id)a3
{
  v9 = a3;
  v4 = [(FMMapDragRadiusView *)self isDragging];
  v5 = v9;
  if (v9)
  {
    if ((v4 & 1) == 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v5 = v9;
      if (isKindOfClass)
      {
        v7 = [(FMMapDragRadiusView *)self annotation];
        v8 = v7 != v9;

        [(FMMapDragRadiusView *)self setAnnotation:v9];
        [(FMMapDragRadiusView *)self animateHandleIn:v8];
        v5 = v9;
      }
    }
  }
}

- (void)removeHandle:(BOOL)a3
{
  v3 = a3;
  if (![(FMMapDragRadiusView *)self isDragging])
  {
    if (v3)
    {
      v5 = [(FMMapDragRadiusView *)self annotation];
      [v5 setDidZoomOnSelection:0];

      [(FMMapDragRadiusView *)self setAnnotation:0];
    }

    v6 = [(FMMapDragRadiusView *)self handleImageView];
    [v6 removeFromSuperview];

    v7 = [(FMMapDragRadiusView *)self shapeLayer];
    [v7 removeFromSuperlayer];
  }

  [(FMMapDragRadiusView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  v50.receiver = self;
  v50.super_class = FMMapDragRadiusView;
  [(FMMapDragRadiusView *)&v50 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if ([(FMMapDragRadiusView *)self isDragging])
  {
    v4 = [(FMMapDragRadiusView *)self mapView];
    v5 = [(FMMapDragRadiusView *)self annotation];
    [v5 coordinate];
    [v4 convertCoordinate:self toPointToView:?];
    v7 = v6;
    v9 = v8;

    v10 = [(FMMapDragRadiusView *)self handleImageView];
    [v10 center];
    v12 = v11 - v7;

    v13 = [(FMMapDragRadiusView *)self handleImageView];
    [v13 center];
    v15 = v14 - (v12 + v12);
    v16 = [(FMMapDragRadiusView *)self handleImageView];
    [v16 center];
    v18 = v17 - v12;

    v19 = +[UIColor fmfOrangeColor];
    v20 = +[UIColor fmfOverlayColor];
    CurrentContext = UIGraphicsGetCurrentContext();
    v53.origin.x = v15;
    v53.origin.y = v18;
    v53.size.width = v12 + v12;
    v53.size.height = v12 + v12;
    CGContextAddEllipseInRect(CurrentContext, v53);
    Components = CGColorGetComponents([v20 CGColor]);
    CGContextSetFillColor(CurrentContext, Components);
    CGContextFillPath(CurrentContext);
    v54.origin.x = v15;
    v54.origin.y = v18;
    v54.size.width = v12 + v12;
    v54.size.height = v12 + v12;
    CGContextAddEllipseInRect(CurrentContext, v54);
    v23 = CGColorGetComponents([v19 CGColor]);
    CGContextSetStrokeColor(CurrentContext, v23);
    CGContextSetLineWidth(CurrentContext, 3.0);
    CGContextStrokePath(CurrentContext);
    v24 = [v19 colorWithAlphaComponent:0.5];
    v25 = CGColorGetComponents([v24 CGColor]);
    CGContextSetStrokeColor(CurrentContext, v25);

    [(FMMapDragRadiusView *)self currentHandleDistanceNormalized];
    v27 = v26;
    if ([(FMMapDragRadiusView *)self isMinimum])
    {
      [(FMMapDragRadiusView *)self minimumRadiusNormalized];
      v27 = v28;
    }

    if ([(FMMapDragRadiusView *)self isMaximum]|| ([(FMMapDragRadiusView *)self maximumRadiusNormalized], v29 <= v27))
    {
      [(FMMapDragRadiusView *)self maximumRadiusNormalized];
      v30 = v31;
    }

    else
    {
      v30 = v27;
    }

    v32 = [NSNumber numberWithUnsignedInteger:v30];
    v33 = [NSNumberFormatter localizedStringFromNumber:v32 numberStyle:1];

    if ([(FMMapDragRadiusView *)self usesMetric])
    {
      v34 = @"METERS";
    }

    else
    {
      v34 = @"FEET";
    }

    v35 = sub_10007AF08(v34);
    v36 = [NSString stringWithFormat:@"%@ %@", v33, v35];

    v55.origin.y = v9 + -16.0;
    v55.size.width = v12 + -14.0;
    v55.size.height = 16.0;
    v55.origin.x = v7;
    v56 = CGRectIntegral(v55);
    x = v56.origin.x;
    y = v56.origin.y;
    width = v56.size.width;
    height = v56.size.height;
    [v19 set];
    v41 = [UIFont boldSystemFontOfSize:12.0];
    [v19 set];
    CGContextSetLineJoin(CurrentContext, kCGLineJoinRound);
    CGContextSetRGBFillColor(CurrentContext, 0.937254906, 0.56078434, 0.0784313753, 1.0);
    CGContextSetRGBStrokeColor(CurrentContext, 1.0, 1.0, 1.0, 0.5);
    CGContextSetTextDrawingMode(CurrentContext, kCGTextFill);
    CGContextSetLineWidth(CurrentContext, 2.0);
    v42 = objc_alloc_init(NSMutableParagraphStyle);
    [v42 setAlignment:1];
    [v42 setLineBreakMode:4];
    v51[0] = NSFontAttributeName;
    v51[1] = NSForegroundColorAttributeName;
    v52[0] = v41;
    v52[1] = v19;
    v51[2] = NSParagraphStyleAttributeName;
    v52[2] = v42;
    v43 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:3];
    [v36 drawInRect:v43 withAttributes:{x, y, width, height}];

    v44 = [(FMMapDragRadiusView *)self handleImageView];
    [v44 center];
    v46 = v45;
    v48 = v47;

    v49 = [(FMMapDragRadiusView *)self shapeLayerWithEndPoint:v46, v48];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(FMMapDragRadiusView *)self handleImageView];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v22.origin.x = v9 + -15.0;
  v22.origin.y = v11 + -15.0;
  v22.size.width = v13 + 30.0;
  v22.size.height = v15 + 30.0;
  v21.x = x;
  v21.y = y;
  if (CGRectContainsPoint(v22, v21) && (-[FMMapDragRadiusView handleImageView](self, "handleImageView"), v16 = objc_claimAutoreleasedReturnValue(), [v16 superview], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17))
  {
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)handlePan:(id)a3
{
  v29 = a3;
  v4 = [v29 state];
  if ((v4 - 3) < 2)
  {
    v7 = [(FMMapDragRadiusView *)self handleImageView];
    [v7 setHighlighted:0];

    [v29 locationInView:self];
    v9 = v8;
    [(FMMapDragRadiusView *)self minPoint];
    if (v9 > v10)
    {
      [(FMMapDragRadiusView *)self setIsMinimum:0];
    }

    [(FMMapDragRadiusView *)self maxPoint];
    if (v9 < v11)
    {
      [(FMMapDragRadiusView *)self setIsMaximum:0];
    }

    if ([(FMMapDragRadiusView *)self isMinimum])
    {
      [(FMMapDragRadiusView *)self minimumInMeters];
    }

    else
    {
      [(FMMapDragRadiusView *)self currentHandleDistance];
    }

    v26 = v12;
    if ([(FMMapDragRadiusView *)self isMaximum])
    {
      v26 = 241401.0;
    }

    v27 = [(FMMapDragRadiusView *)self annotation];
    [v27 setCustomRadius:v26];

    [(FMMapDragRadiusView *)self performSelector:"hideCircleAfterDelay" withObject:0 afterDelay:0.05];
    v28 = [(FMMapDragRadiusView *)self delegate];
    [v28 didStopDraggingHandle:self];

    [(FMMapDragRadiusView *)self popAnimateHandle];
LABEL_21:
    [(FMMapDragRadiusView *)self setNeedsDisplay];
    goto LABEL_22;
  }

  if (v4 == 2)
  {
    [v29 locationInView:self];
    v14 = v13;
    [(FMMapDragRadiusView *)self minPoint];
    v16 = v15;
    [(FMMapDragRadiusView *)self maxPoint];
    if (v17 < 0.0)
    {
      goto LABEL_22;
    }

    v18 = v17;
    [(FMMapDragRadiusView *)self setIsMinimum:0];
    [(FMMapDragRadiusView *)self setIsMaximum:0];
    v19 = v14;
    if (v14 <= v16)
    {
      [(FMMapDragRadiusView *)self setIsMinimum:1];
      v19 = v16;
    }

    if (v14 >= v18)
    {
      [(FMMapDragRadiusView *)self setIsMaximum:1];
      v19 = v18;
    }

    v20 = [(FMMapDragRadiusView *)self handleImageView];
    [v20 frame];
    v31.size.width = 24.0;
    v31.size.height = 24.0;
    v31.origin.x = v19;
    v32 = CGRectIntegral(v31);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    v25 = [(FMMapDragRadiusView *)self handleImageView];
    [v25 setFrame:{x, y, width, height}];

    goto LABEL_21;
  }

  if (v4 == 1)
  {
    [(FMMapDragRadiusView *)self setIsDragging:1];
    v5 = [(FMMapDragRadiusView *)self handleImageView];
    [v5 setHighlighted:1];

    [(FMMapDragRadiusView *)self setNeedsDisplay];
    v6 = [(FMMapDragRadiusView *)self delegate];
    [v6 willStartDraggingHandle:self];
  }

LABEL_22:
}

- (void)_axSetCustomRadius:(double)a3
{
  v4 = [(FMMapDragRadiusView *)self annotation];
  [v4 setCustomRadius:a3];
}

- (double)minimumInMeters
{
  if ([(FMMapDragRadiusView *)self usesMetric])
  {
    return 100.0;
  }

  [(FMMapDragRadiusView *)self feetToMeters:300.0];
  return result;
}

- (void)hideCircleAfterDelay
{
  [(FMMapDragRadiusView *)self setIsDragging:0];

  [(FMMapDragRadiusView *)self setNeedsDisplay];
}

- (CGPoint)minPoint
{
  v3 = [(FMMapDragRadiusView *)self annotation];
  [v3 coordinate];
  v5 = MKMapPointsPerMeterAtLatitude(v4);

  if ([(FMMapDragRadiusView *)self usesMetric])
  {
    v6 = 100.0;
  }

  else
  {
    v6 = 91.44;
  }

  v7 = [(FMMapDragRadiusView *)self annotation];
  [v7 coordinate];
  v8 = MKMapPointForCoordinate(v17);

  v18.x = v8.x + v5 * v6;
  v18.y = v8.y;
  v9 = MKCoordinateForMapPoint(v18);
  v10 = [(FMMapDragRadiusView *)self mapView];
  [v10 convertCoordinate:self toPointToView:{v9.latitude, v9.longitude}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)maxPoint
{
  v3 = [(FMMapDragRadiusView *)self annotation];
  [v3 coordinate];
  v5 = MKMapPointsPerMeterAtLatitude(v4);

  if ([(FMMapDragRadiusView *)self usesMetric])
  {
    v6 = 241401.0;
  }

  else
  {
    v6 = 241401.6;
  }

  v7 = [(FMMapDragRadiusView *)self annotation];
  [v7 coordinate];
  v8 = MKMapPointForCoordinate(v17);

  v18.x = v8.x + v5 * v6;
  v18.y = v8.y;
  v9 = MKCoordinateForMapPoint(v18);
  v10 = [(FMMapDragRadiusView *)self mapView];
  [v10 convertCoordinate:self toPointToView:{v9.latitude, v9.longitude}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (double)currentHandleDistanceNormalized
{
  [(FMMapDragRadiusView *)self currentHandleDistance];
  v4 = v3;
  v5 = [(FMMapDragRadiusView *)self usesMetric];
  v6 = v4 * 3.28084;
  if (v5)
  {
    v6 = v4;
  }

  return floor(v6 / 10.0) * 10.0;
}

- (double)currentHandleDistance
{
  v3 = [(FMMapDragRadiusView *)self handleImageView];
  [v3 center];
  v5 = v4;
  v7 = v6;

  v8 = [(FMMapDragRadiusView *)self mapView];
  [v8 convertPoint:self toCoordinateFromView:{v5, v7}];
  v10 = v9;
  v12 = v11;

  v13 = [[CLLocation alloc] initWithLatitude:v10 longitude:v12];
  v14 = [CLLocation alloc];
  v15 = [(FMMapDragRadiusView *)self annotation];
  [v15 coordinate];
  v17 = v16;
  v18 = [(FMMapDragRadiusView *)self annotation];
  [v18 coordinate];
  v19 = [v14 initWithLatitude:v17 longitude:?];

  [v13 distanceFromLocation:v19];
  v21 = v20;

  return v21;
}

- (double)maximumRadiusNormalized
{
  v2 = [(FMMapDragRadiusView *)self usesMetric];
  result = 792000.0;
  if (v2)
  {
    return 241401.0;
  }

  return result;
}

- (double)minimumRadiusNormalized
{
  v2 = [(FMMapDragRadiusView *)self usesMetric];
  result = 300.0;
  if (v2)
  {
    return 100.0;
  }

  return result;
}

- (BOOL)usesMetric
{
  v2 = objc_alloc_init(FMDistanceCalculator);
  v3 = [v2 measurementSystem] == 2;

  return v3;
}

@end
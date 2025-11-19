@interface THWInteractiveImageCalloutInfo
- (CGPoint)contentOffset;
- (CGPoint)sourcePoint;
- (CGPoint)targetPoint;
- (CGRect)unscaledTitleRect;
- (THWInteractiveImageCalloutInfo)initWithViewScale:(double)a3 contentOffset:(CGPoint)a4;
- (THWInteractiveImageCalloutInfo)initWithViewScale:(double)a3 contentOffset:(CGPoint)a4 groupShape:(id)a5 titleStorage:(id)a6 titleGeometry:(id)a7 descriptionStorage:(id)a8 descriptionGeometry:(id)a9 lineShape:(id)a10;
- (UIEdgeInsets)contentInset;
- (id)description;
- (id)p_geometry:(id)a3 offsetBy:(CGPoint)a4;
- (void)dealloc;
@end

@implementation THWInteractiveImageCalloutInfo

- (THWInteractiveImageCalloutInfo)initWithViewScale:(double)a3 contentOffset:(CGPoint)a4 groupShape:(id)a5 titleStorage:(id)a6 titleGeometry:(id)a7 descriptionStorage:(id)a8 descriptionGeometry:(id)a9 lineShape:(id)a10
{
  y = a4.y;
  x = a4.x;
  v43.receiver = self;
  v43.super_class = THWInteractiveImageCalloutInfo;
  v19 = [(THWInteractiveImageCalloutInfo *)&v43 init];
  if (v19)
  {
    v20 = [objc_msgSend(objc_msgSend(a10 "pathSource")];
    v41 = CGPointZero;
    v42 = CGPointZero;
    if (v20)
    {
      TSDPathGetStartAndEndPoints();
      v21 = [a10 geometry];
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      if (v21)
      {
        [v21 transform];
        v23 = v38;
        v24 = v39;
        v22 = v40;
      }

      v42 = vaddq_f64(v22, vmlaq_n_f64(vmulq_n_f64(v24, v42.y), v23, v42.x));
      v25 = [a10 geometry];
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      if (v25)
      {
        [v25 transform];
        v26 = v38;
        v27 = v39;
        v28 = v40;
      }

      v41 = vaddq_f64(v28, vmlaq_n_f64(vmulq_n_f64(v27, v41.y), v26, v41.x));
    }

    [objc_msgSend(a5 "geometry")];
    v30 = v29;
    v32 = v31;
    [(THWInteractiveImageCalloutInfo *)v19 setViewScale:a3];
    [(THWInteractiveImageCalloutInfo *)v19 setContentOffset:x, y];
    [(THWInteractiveImageCalloutInfo *)v19 setGroupShape:a5];
    [(THWInteractiveImageCalloutInfo *)v19 setTitleStorage:a6];
    [(THWInteractiveImageCalloutInfo *)v19 setTitleGeometry:[(THWInteractiveImageCalloutInfo *)v19 p_geometry:a7 offsetBy:v30, v32]];
    [(THWInteractiveImageCalloutInfo *)v19 setDescriptionStorage:a8];
    [(THWInteractiveImageCalloutInfo *)v19 setDescriptionGeometry:[(THWInteractiveImageCalloutInfo *)v19 p_geometry:a9 offsetBy:v30, v32]];
    [(THWInteractiveImageCalloutInfo *)v19 setLineShape:a10];
    [(THWInteractiveImageCalloutInfo *)v19 setSourcePoint:v42];
    [(THWInteractiveImageCalloutInfo *)v19 setTargetPoint:v41];
    [(TSDInfoGeometry *)[(THWInteractiveImageCalloutInfo *)v19 titleGeometry] position];
    v34 = v33;
    [-[TSDShapeInfo geometry](-[THWInteractiveImageCalloutInfo groupShape](v19 "groupShape")];
    v19->_marginInset = v34 - v35;
    [(TSDInfoGeometry *)[(THWInteractiveImageCalloutInfo *)v19 descriptionGeometry] boundsBeforeRotation];
    MinY = CGRectGetMinY(v44);
    [(TSDInfoGeometry *)[(THWInteractiveImageCalloutInfo *)v19 titleGeometry] boundsBeforeRotation];
    v19->_verticalSpacing = MinY - CGRectGetMaxY(v45);
  }

  return v19;
}

- (THWInteractiveImageCalloutInfo)initWithViewScale:(double)a3 contentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v11.receiver = self;
  v11.super_class = THWInteractiveImageCalloutInfo;
  v7 = [(THWInteractiveImageCalloutInfo *)&v11 init];
  v8 = v7;
  if (v7)
  {
    [(THWInteractiveImageCalloutInfo *)v7 setViewScale:a3];
    [(THWInteractiveImageCalloutInfo *)v8 setContentOffset:x, y];
    [(THWInteractiveImageCalloutInfo *)v8 setGroupShape:0];
    [(THWInteractiveImageCalloutInfo *)v8 setTitleStorage:0];
    [(THWInteractiveImageCalloutInfo *)v8 setTitleGeometry:0];
    [(THWInteractiveImageCalloutInfo *)v8 setDescriptionStorage:0];
    [(THWInteractiveImageCalloutInfo *)v8 setDescriptionGeometry:0];
    [(THWInteractiveImageCalloutInfo *)v8 setLineShape:0];
    v9 = CGPointZero.y;
    [(THWInteractiveImageCalloutInfo *)v8 setSourcePoint:CGPointZero.x, v9];
    [(THWInteractiveImageCalloutInfo *)v8 setTargetPoint:CGPointZero.x, v9];
  }

  return v8;
}

- (void)dealloc
{
  [(THWInteractiveImageCalloutInfo *)self setGroupShape:0];
  [(THWInteractiveImageCalloutInfo *)self setTitleStorage:0];
  [(THWInteractiveImageCalloutInfo *)self setTitleGeometry:0];
  [(THWInteractiveImageCalloutInfo *)self setDescriptionStorage:0];
  [(THWInteractiveImageCalloutInfo *)self setDescriptionGeometry:0];
  [(THWInteractiveImageCalloutInfo *)self setLineShape:0];
  v3.receiver = self;
  v3.super_class = THWInteractiveImageCalloutInfo;
  [(THWInteractiveImageCalloutInfo *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(THWInteractiveImageCalloutInfo *)self viewScale];
  v6 = v5;
  [(THWInteractiveImageCalloutInfo *)self contentOffset];
  v7 = NSStringFromCGPoint(v12);
  v8 = [(TSWPStorage *)[(THWInteractiveImageCalloutInfo *)self titleStorage] string];
  v9 = [-[TSDShapeInfo geometry](-[THWInteractiveImageCalloutInfo groupShape](self "groupShape")];
  [(THWInteractiveImageCalloutInfo *)self sourcePoint];
  v10 = NSStringFromCGPoint(v13);
  [(THWInteractiveImageCalloutInfo *)self targetPoint];
  return [NSString stringWithFormat:@"<%@=%p viewScale=%.1f contentOffset=%@ title=%@ groupShape.geometry=%@ sourcePoint=%@ targetPoint=%@>", v4, self, v6, v7, v8, v9, v10, NSStringFromCGPoint(v14)];
}

- (CGRect)unscaledTitleRect
{
  v2 = [(THWInteractiveImageCalloutInfo *)self titleGeometry];

  [(TSDInfoGeometry *)v2 boundsBeforeRotation];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (UIEdgeInsets)contentInset
{
  marginInset = self->_marginInset;
  v3 = marginInset;
  v4 = marginInset;
  v5 = marginInset;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = marginInset;
  return result;
}

- (id)p_geometry:(id)a3 offsetBy:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [a3 position];
  v8 = x + v7;
  v10 = y + v9;
  v11 = [TSDInfoGeometry alloc];
  [a3 size];
  v13 = v12;
  v15 = v14;
  v16 = [a3 widthValid];
  v17 = [a3 heightValid];
  v18 = [a3 horizontalFlip];
  v19 = [a3 verticalFlip];
  [a3 angle];
  v21 = [v11 initWithPosition:v16 size:v17 widthValid:v18 heightValid:v19 horizontalFlip:v8 verticalFlip:v10 angle:{v13, v15, v20}];

  return v21;
}

- (CGPoint)contentOffset
{
  x = self->mContentOffset.x;
  y = self->mContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)sourcePoint
{
  x = self->mSourcePoint.x;
  y = self->mSourcePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)targetPoint
{
  x = self->mTargetPoint.x;
  y = self->mTargetPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
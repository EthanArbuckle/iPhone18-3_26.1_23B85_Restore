@interface CRLCalligraphyStroke
- (CGAffineTransform)transformInContext:(SEL)context;
- (CGRect)boundsForLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale transform:(CGAffineTransform *)transform;
- (CRLCalligraphyStroke)initWithColor:(id)color width:(double)width cap:(unint64_t)cap join:(unint64_t)join pattern:(id)pattern miterLimit:(double)limit;
- (double)horizontalMarginForSwatch;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)applyToContext:(CGContext *)context insideStroke:(BOOL)stroke;
- (void)paintLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale inContext:(CGContext *)context useFastDrawing:(BOOL)drawing;
- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order;
@end

@implementation CRLCalligraphyStroke

- (CRLCalligraphyStroke)initWithColor:(id)color width:(double)width cap:(unint64_t)cap join:(unint64_t)join pattern:(id)pattern miterLimit:(double)limit
{
  v9.receiver = self;
  v9.super_class = CRLCalligraphyStroke;
  return [(CRLSmartStroke *)&v9 initWithName:@"Calligraphy" color:color width:cap cap:join join:pattern pattern:width miterLimit:limit];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRLMutableCalligraphyStroke alloc];
  color = [(CRLStroke *)self color];
  [(CRLStroke *)self width];
  v7 = v6;
  v8 = [(CRLStroke *)self cap];
  join = [(CRLStroke *)self join];
  pattern = [(CRLStroke *)self pattern];
  [(CRLStroke *)self miterLimit];
  v12 = [(CRLCalligraphyStroke *)v4 initWithColor:color width:v8 cap:join join:pattern pattern:v7 miterLimit:v11];

  return v12;
}

- (CGAffineTransform)transformInContext:(SEL)context
{
  v19 = *&CGAffineTransformIdentity.c;
  v20 = *&CGAffineTransformIdentity.a;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v19;
  v18 = *&CGAffineTransformIdentity.tx;
  *&retstr->tx = v18;
  CGContextGetCTM(&v22, a4);
  v7 = sub_100139980(&v22);
  if (sub_10050FDC0(a4))
  {
    v8 = -v7;
  }

  else
  {
    v8 = v7;
  }

  v9 = sub_100510444(a4);
  v10 = v8 - (v9 + sub_10050FC78(a4));
  [(CRLCalligraphyStroke *)self angle];
  v12 = v11 - v10;
  if ([(CRLCalligraphyStroke *)self chisel])
  {
    v13 = *&retstr->c;
    *&v22.a = *&retstr->a;
    *&v22.c = v13;
    *&v22.tx = *&retstr->tx;
    return CGAffineTransformRotate(retstr, &v22, v12 * -3.14159265 / 180.0);
  }

  else
  {
    [(CRLCalligraphyStroke *)self scale];
    *&v22.a = v20;
    *&v22.c = v19;
    *&v22.tx = v18;
    CGAffineTransformScale(retstr, &v22, 1.0, 1.0 / v15);
    v16 = *&retstr->c;
    *&v21.a = *&retstr->a;
    *&v21.c = v16;
    *&v21.tx = *&retstr->tx;
    result = CGAffineTransformRotate(&v22, &v21, v12 * 3.14159265 / 180.0);
    v17 = *&v22.c;
    *&retstr->a = *&v22.a;
    *&retstr->c = v17;
    *&retstr->tx = *&v22.tx;
  }

  return result;
}

- (void)applyToContext:(CGContext *)context insideStroke:(BOOL)stroke
{
  v5.receiver = self;
  v5.super_class = CRLCalligraphyStroke;
  [(CRLStroke *)&v5 applyToContext:context insideStroke:stroke];
  CGContextSetLineCap(context, kCGLineCapRound);
  CGContextSetLineJoin(context, kCGLineJoinRound);
}

- (void)paintPath:(CGPath *)path wantsInteriorStroke:(BOOL)stroke inContext:(CGContext *)context useFastDrawing:(BOOL)drawing parameterized:(BOOL)parameterized shouldReverseDrawOrder:(BOOL)order
{
  strokeCopy = stroke;
  if ([(CRLStroke *)self shouldRender:path])
  {
    memset(&v19, 0, sizeof(v19));
    [(CRLCalligraphyStroke *)self transformInContext:context];
    transform = v19;
    v12 = sub_10007187C(path, &transform);
    CGContextSaveGState(context);
    [(CRLCalligraphyStroke *)self applyToContext:context insideStroke:strokeCopy];
    v17 = v19;
    CGAffineTransformInvert(&transform, &v17);
    CGContextConcatCTM(context, &transform);
    if ([(CRLCalligraphyStroke *)self chisel])
    {
      v13 = [CRLBezierPath bezierPathWithCGPath:v12];
      [(CRLStroke *)self width];
      [v13 setLineWidth:?];
      chisel = [v13 chisel];
      cGPath = [chisel CGPath];

      CGContextAddPath(context, cGPath);
      color = [(CRLStroke *)self color];
      CGContextSetFillColorWithColor(context, [color CGColor]);

      CGContextFillPath(context);
    }

    else
    {
      CGContextAddPath(context, v12);
      CGContextStrokePath(context);
    }

    CGPathRelease(v12);
    CGContextRestoreGState(context);
  }
}

- (void)paintLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale inContext:(CGContext *)context useFastDrawing:(BOOL)drawing
{
  y = point.y;
  x = point.x;
  endCopy = end;
  CGContextSaveGState(context);
  [(CRLCalligraphyStroke *)self applyToContext:context insideStroke:0];
  memset(&v26, 0, sizeof(v26));
  [(CRLCalligraphyStroke *)self transformInContext:context];
  v24 = v26;
  CGAffineTransformInvert(&transform, &v24);
  CGContextConcatCTM(context, &transform);
  memset(&transform, 0, sizeof(transform));
  CGAffineTransformMakeTranslation(&transform, x, y);
  t1 = transform;
  CGAffineTransformScale(&v24, &t1, scale, scale);
  transform = v24;
  t1 = v24;
  CGAffineTransformRotate(&v24, &t1, angle);
  transform = v24;
  [endCopy endPoint];
  v16 = -v15;
  [endCopy endPoint];
  t1 = transform;
  CGAffineTransformTranslate(&v24, &t1, v16, -v17);
  transform = v24;
  path = [endCopy path];
  cGPath = [path CGPath];
  t1 = transform;
  v22 = v26;
  CGAffineTransformConcat(&v24, &t1, &v22);
  v20 = sub_10007187C(cGPath, &v24);

  CGContextAddPath(context, v20);
  CGPathRelease(v20);
  if ([endCopy isFilled])
  {
    CGContextFillPath(context);
  }

  else
  {
    [(CRLStroke *)self width];
    CGContextSetLineWidth(context, v21);
    CGContextSetLineJoin(context, [endCopy lineJoin]);
    CGContextStrokePath(context);
  }

  CGContextRestoreGState(context);
}

- (CGRect)boundsForLineEnd:(id)end atPoint:(CGPoint)point atAngle:(double)angle withScale:(double)scale transform:(CGAffineTransform *)transform
{
  y = point.y;
  x = point.x;
  v34.receiver = self;
  v34.super_class = CRLCalligraphyStroke;
  v12 = *&transform->c;
  v31 = *&transform->a;
  v32 = v12;
  v33 = *&transform->tx;
  endCopy = end;
  [(CRLStroke *)&v34 boundsForLineEnd:endCopy atPoint:&v31 atAngle:x withScale:y transform:angle, scale];
  v15 = v14;
  v17 = v16;
  width = v18;
  height = v20;
  isFilled = [endCopy isFilled];

  if ((isFilled & 1) == 0)
  {
    [(CRLStroke *)self width];
    v24 = v23 * -0.5;
    [(CRLStroke *)self width];
    v26 = v25 * -0.5;
    v35.origin.x = v15;
    v35.origin.y = v17;
    v35.size.width = width;
    v35.size.height = height;
    v36 = CGRectInset(v35, v24, v26);
    v15 = v36.origin.x;
    v17 = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
  }

  v27 = v15;
  v28 = v17;
  v29 = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (double)horizontalMarginForSwatch
{
  v4.receiver = self;
  v4.super_class = CRLCalligraphyStroke;
  [(CRLStroke *)&v4 horizontalMarginForSwatch];
  return v2 + 3.0;
}

@end
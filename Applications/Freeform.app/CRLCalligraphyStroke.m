@interface CRLCalligraphyStroke
- (CGAffineTransform)transformInContext:(SEL)a3;
- (CGRect)boundsForLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 transform:(CGAffineTransform *)a7;
- (CRLCalligraphyStroke)initWithColor:(id)a3 width:(double)a4 cap:(unint64_t)a5 join:(unint64_t)a6 pattern:(id)a7 miterLimit:(double)a8;
- (double)horizontalMarginForSwatch;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)applyToContext:(CGContext *)a3 insideStroke:(BOOL)a4;
- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7 useFastDrawing:(BOOL)a8;
- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8;
@end

@implementation CRLCalligraphyStroke

- (CRLCalligraphyStroke)initWithColor:(id)a3 width:(double)a4 cap:(unint64_t)a5 join:(unint64_t)a6 pattern:(id)a7 miterLimit:(double)a8
{
  v9.receiver = self;
  v9.super_class = CRLCalligraphyStroke;
  return [(CRLSmartStroke *)&v9 initWithName:@"Calligraphy" color:a3 width:a5 cap:a6 join:a7 pattern:a4 miterLimit:a8];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CRLMutableCalligraphyStroke alloc];
  v5 = [(CRLStroke *)self color];
  [(CRLStroke *)self width];
  v7 = v6;
  v8 = [(CRLStroke *)self cap];
  v9 = [(CRLStroke *)self join];
  v10 = [(CRLStroke *)self pattern];
  [(CRLStroke *)self miterLimit];
  v12 = [(CRLCalligraphyStroke *)v4 initWithColor:v5 width:v8 cap:v9 join:v10 pattern:v7 miterLimit:v11];

  return v12;
}

- (CGAffineTransform)transformInContext:(SEL)a3
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

- (void)applyToContext:(CGContext *)a3 insideStroke:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = CRLCalligraphyStroke;
  [(CRLStroke *)&v5 applyToContext:a3 insideStroke:a4];
  CGContextSetLineCap(a3, kCGLineCapRound);
  CGContextSetLineJoin(a3, kCGLineJoinRound);
}

- (void)paintPath:(CGPath *)a3 wantsInteriorStroke:(BOOL)a4 inContext:(CGContext *)a5 useFastDrawing:(BOOL)a6 parameterized:(BOOL)a7 shouldReverseDrawOrder:(BOOL)a8
{
  v9 = a4;
  if ([(CRLStroke *)self shouldRender:a3])
  {
    memset(&v19, 0, sizeof(v19));
    [(CRLCalligraphyStroke *)self transformInContext:a5];
    transform = v19;
    v12 = sub_10007187C(a3, &transform);
    CGContextSaveGState(a5);
    [(CRLCalligraphyStroke *)self applyToContext:a5 insideStroke:v9];
    v17 = v19;
    CGAffineTransformInvert(&transform, &v17);
    CGContextConcatCTM(a5, &transform);
    if ([(CRLCalligraphyStroke *)self chisel])
    {
      v13 = [CRLBezierPath bezierPathWithCGPath:v12];
      [(CRLStroke *)self width];
      [v13 setLineWidth:?];
      v14 = [v13 chisel];
      v15 = [v14 CGPath];

      CGContextAddPath(a5, v15);
      v16 = [(CRLStroke *)self color];
      CGContextSetFillColorWithColor(a5, [v16 CGColor]);

      CGContextFillPath(a5);
    }

    else
    {
      CGContextAddPath(a5, v12);
      CGContextStrokePath(a5);
    }

    CGPathRelease(v12);
    CGContextRestoreGState(a5);
  }
}

- (void)paintLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 inContext:(CGContext *)a7 useFastDrawing:(BOOL)a8
{
  y = a4.y;
  x = a4.x;
  v14 = a3;
  CGContextSaveGState(a7);
  [(CRLCalligraphyStroke *)self applyToContext:a7 insideStroke:0];
  memset(&v26, 0, sizeof(v26));
  [(CRLCalligraphyStroke *)self transformInContext:a7];
  v24 = v26;
  CGAffineTransformInvert(&transform, &v24);
  CGContextConcatCTM(a7, &transform);
  memset(&transform, 0, sizeof(transform));
  CGAffineTransformMakeTranslation(&transform, x, y);
  t1 = transform;
  CGAffineTransformScale(&v24, &t1, a6, a6);
  transform = v24;
  t1 = v24;
  CGAffineTransformRotate(&v24, &t1, a5);
  transform = v24;
  [v14 endPoint];
  v16 = -v15;
  [v14 endPoint];
  t1 = transform;
  CGAffineTransformTranslate(&v24, &t1, v16, -v17);
  transform = v24;
  v18 = [v14 path];
  v19 = [v18 CGPath];
  t1 = transform;
  v22 = v26;
  CGAffineTransformConcat(&v24, &t1, &v22);
  v20 = sub_10007187C(v19, &v24);

  CGContextAddPath(a7, v20);
  CGPathRelease(v20);
  if ([v14 isFilled])
  {
    CGContextFillPath(a7);
  }

  else
  {
    [(CRLStroke *)self width];
    CGContextSetLineWidth(a7, v21);
    CGContextSetLineJoin(a7, [v14 lineJoin]);
    CGContextStrokePath(a7);
  }

  CGContextRestoreGState(a7);
}

- (CGRect)boundsForLineEnd:(id)a3 atPoint:(CGPoint)a4 atAngle:(double)a5 withScale:(double)a6 transform:(CGAffineTransform *)a7
{
  y = a4.y;
  x = a4.x;
  v34.receiver = self;
  v34.super_class = CRLCalligraphyStroke;
  v12 = *&a7->c;
  v31 = *&a7->a;
  v32 = v12;
  v33 = *&a7->tx;
  v13 = a3;
  [(CRLStroke *)&v34 boundsForLineEnd:v13 atPoint:&v31 atAngle:x withScale:y transform:a5, a6];
  v15 = v14;
  v17 = v16;
  width = v18;
  height = v20;
  v22 = [v13 isFilled];

  if ((v22 & 1) == 0)
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
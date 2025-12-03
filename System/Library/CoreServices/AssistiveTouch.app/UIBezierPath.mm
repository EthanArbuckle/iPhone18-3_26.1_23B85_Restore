@interface UIBezierPath
- (id)_convertPointInPathWithBlock:(id)block;
- (id)convertPathToView:(id)view;
- (id)offsetPathByPoint:(CGPoint)point;
- (void)ax_addArcWithFirstPoint:(CGPoint)point secondPoint:(CGPoint)secondPoint cornerRadius:(double)radius;
- (void)enumerateElementsUsingBlock:(id)block;
@end

@implementation UIBezierPath

- (void)ax_addArcWithFirstPoint:(CGPoint)point secondPoint:(CGPoint)secondPoint cornerRadius:(double)radius
{
  y = secondPoint.y;
  x = secondPoint.x;
  v8 = point.y;
  v9 = point.x;
  [(UIBezierPath *)self currentPoint];
  v12 = v9 - v11;
  v14 = v8 - v13;
  v30 = v13;
  v31 = v11;
  v28 = x - v11;
  v26 = y - v13;
  v15 = 0.0;
  v32 = v8 - v13;
  v34 = v12;
  v16 = v12 == CGPointZero.x && v14 == CGPointZero.y;
  v17 = 0.0;
  radiusCopy = 0.0;
  if (!v16)
  {
    v17 = atan2(v14, v12);
    radiusCopy = radius;
  }

  memset(&v36, 0, sizeof(v36));
  CGAffineTransformMakeRotation(&v36, -v17);
  v19 = vaddq_f64(*&v36.tx, vmlaq_n_f64(vmulq_n_f64(*&v36.c, v32), *&v36.a, v34));
  v33 = vaddq_f64(*&v36.tx, vmlaq_n_f64(vmulq_n_f64(*&v36.c, v26), *&v36.a, v28));
  v35 = v19;
  v20 = vmovn_s64(vceqq_f64(v19, v33));
  if ((v20.i32[0] & v20.i32[1] & 1) == 0)
  {
    v21 = vsubq_f64(v33, v19);
    v15 = 3.14159265 - fabs(atan2(v21.f64[1], v21.f64[0]));
  }

  v22 = sin(v15 * 0.5);
  if (v22 == 0.0)
  {
    v23 = 0.0;
    v24 = 0.0;
    v29 = v35.f64[1];
    v27 = v35.f64[0];
    radiusCopy = 0.0;
  }

  else
  {
    v27 = v35.f64[0] - radiusCopy * fabs(cos(v15 * 0.5) / v22);
    if (vmovn_s64(vcgtq_f64(v33, v35)).i32[1])
    {
      v24 = 1.57079633 - v15;
      v23 = -1.57079633;
      v29 = radiusCopy;
    }

    else
    {
      v29 = -radiusCopy;
      v24 = v15 + -1.57079633;
      v23 = 1.57079633;
    }
  }

  memset(&v36, 0, sizeof(v36));
  CGAffineTransformMakeRotation(&v36, v17);
  v25.f64[0] = v31;
  v25.f64[1] = v30;
  [(UIBezierPath *)self addArcWithCenter:vmovn_s64(vcgtq_f64(v33 radius:v35)).i8[4] & 1 startAngle:vaddq_f64(v25 endAngle:vaddq_f64(*&v36.tx clockwise:vmlaq_n_f64(vmulq_n_f64(*&v36.c, v29), *&v36.a, v27))), radiusCopy, v17 + v23, v17 + v24];
}

- (void)enumerateElementsUsingBlock:(id)block
{
  selfCopy = self;
  blockCopy = block;
  [(UIBezierPath *)self CGPath];
  AX_CGPathEnumerateElementsUsingBlock();
}

- (id)_convertPointInPathWithBlock:(id)block
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100042F54;
  v9[3] = &unk_1001D4AF0;
  blockCopy = block;
  v4 = objc_alloc_init(UIBezierPath);
  v10 = v4;
  v5 = blockCopy;
  [(UIBezierPath *)self enumerateElementsUsingBlock:v9];
  v6 = v10;
  v7 = v4;

  return v4;
}

- (id)offsetPathByPoint:(CGPoint)point
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004314C;
  v5[3] = &unk_1001D4938;
  pointCopy = point;
  v3 = [(UIBezierPath *)self _convertPointInPathWithBlock:v5];

  return v3;
}

- (id)convertPathToView:(id)view
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004320C;
  v7[3] = &unk_1001D4B18;
  viewCopy = view;
  v4 = viewCopy;
  v5 = [(UIBezierPath *)self _convertPointInPathWithBlock:v7];

  return v5;
}

@end
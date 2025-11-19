@interface CRLAngleGradientFill
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)p_shadingTransformForBounds:(SEL)a3;
- (CGPoint)endPointForPath:(id)a3 andBounds:(CGRect)a4;
- (CGPoint)startPointForPath:(id)a3 andBounds:(CGRect)a4;
- (CRLAngleGradientFill)initWithGradientStops:(id)a3 type:(unint64_t)a4 opacity:(double)a5 angle:(double)a6 isAdvancedGradient:(BOOL)a7;
- (CRLAngleGradientFill)initWithStartColor:(id)a3 endColor:(id)a4 type:(unint64_t)a5 angle:(double)a6;
- (double)p_bestGradientLengthForRect:(CGRect)a3 atAngle:(double)a4;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)p_paintPath:(CGPath *)a3 inContext:(CGContext *)a4 naturalBounds:(CGRect)a5;
- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)paintPath:(CGPath *)a3 naturalBounds:(CGRect)a4 inContext:(CGContext *)a5 isPDF:(BOOL)a6;
- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4 atAngle:(double)a5;
@end

@implementation CRLAngleGradientFill

- (CRLAngleGradientFill)initWithGradientStops:(id)a3 type:(unint64_t)a4 opacity:(double)a5 angle:(double)a6 isAdvancedGradient:(BOOL)a7
{
  v7 = a7;
  v12.receiver = self;
  v12.super_class = CRLAngleGradientFill;
  v9 = [(CRLGradientFill *)&v12 initWithGradientStops:a3 type:a4 opacity:a5];
  v10 = v9;
  if (v9)
  {
    v9->mAngle = a6;
    [(CRLGradientFill *)v9 p_setIsAdvancedGradient:v7];
  }

  return v10;
}

- (CRLAngleGradientFill)initWithStartColor:(id)a3 endColor:(id)a4 type:(unint64_t)a5 angle:(double)a6
{
  v8.receiver = self;
  v8.super_class = CRLAngleGradientFill;
  result = [(CRLGradientFill *)&v8 initWithStartColor:a3 endColor:a4 type:a5];
  if (result)
  {
    result->mAngle = a6;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CRLGradientFill *)self gradientType];
  [(CRLGradientFill *)self opacity];
  return [NSString stringWithFormat:@"%@<%p>: type=%tu opacity=%f angle=%f \n\tstops=%@", v4, self, v5, v6, *&self->mAngle, [(CRLGradientFill *)self gradientStops]];
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = CRLAngleGradientFill;
  v3 = [(CRLGradientFill *)&v5 hash];
  return sub_100083B3C(&self->mAngle, 8, v3);
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v14 = v3;
    v15 = v4;
    v7 = objc_opt_class();
    v8 = sub_100014370(v7, a3);
    if (v8)
    {
      v9 = v8;
      v13.receiver = self;
      v13.super_class = CRLAngleGradientFill;
      LODWORD(v8) = [(CRLGradientFill *)&v13 isEqual:a3];
      if (v8)
      {
        [v9 gradientAngle];
        mAngle = self->mAngle;
        LOBYTE(v8) = v10 == mAngle || vabdd_f64(v10, mAngle) < fabs(mAngle * 0.000000999999997);
      }
    }
  }

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CRLMutableAngleGradientFill allocWithZone:a3];
  v5 = [(CRLGradientFill *)self gradientStops];
  v6 = [(CRLGradientFill *)self gradientType];
  [(CRLGradientFill *)self opacity];
  v8 = v7;
  [(CRLAngleGradientFill *)self gradientAngle];
  v10 = [(CRLAngleGradientFill *)v4 initWithGradientStops:v5 type:v6 opacity:v8 angle:v9];
  [(CRLGradientFill *)v10 i_setAdvancedGradientFlag:[(CRLGradientFill *)self i_advancedGradientFlag]];
  return v10;
}

- (double)p_bestGradientLengthForRect:(CGRect)a3 atAngle:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetWidth(a3) * 0.5;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v9 = CGRectGetHeight(v22) * 0.5;
  v18 = CGPointZero.y;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v10 = CGRectGetWidth(v23);
  memset(&v21, 0, sizeof(v21));
  v11 = *&CGAffineTransformIdentity.c;
  *&v20.a = *&CGAffineTransformIdentity.a;
  *&v20.c = v11;
  *&v20.tx = *&CGAffineTransformIdentity.tx;
  CGAffineTransformTranslate(&v21, &v20, v8, v9);
  v19 = v21;
  CGAffineTransformRotate(&v20, &v19, -a4);
  v21 = v20;
  v19 = v20;
  CGAffineTransformTranslate(&v20, &v19, -v8, -v9);
  v21 = v20;
  v12 = v20.tx + v18 * v20.c + v20.a * CGPointZero.x;
  v13 = v20.ty + v18 * v20.d + v20.b * CGPointZero.x;
  if (v13 != v9)
  {
    v14 = v20.ty + v20.d * 0.0 + v20.b * v10;
    if (v14 == v9)
    {
      v12 = v20.tx + v20.c * 0.0 + v20.a * v10;
      v13 = v20.ty + v20.d * 0.0 + v20.b * v10;
    }

    else
    {
      if (vabdd_f64(v13, v9) >= vabdd_f64(v14, v9))
      {
        v15 = v20.tx + v20.c * 0.0 + v20.a * v10;
      }

      else
      {
        v15 = v20.tx + v18 * v20.c + v20.a * CGPointZero.x;
      }

      v12 = v8;
      v13 = v9;
      v8 = v15;
    }
  }

  return sub_100120090(v12, v13, v8, v9);
}

- (CGPoint)startPointForPath:(id)a3 andBounds:(CGRect)a4
{
  [a3 bounds];
  if (self)
  {
    [(CRLAngleGradientFill *)self p_shadingTransformForBounds:?];
    v5 = 0u;
    v6 = 0u;
    v7 = 0u;
  }

  else
  {
    v7 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  v8 = vaddq_f64(v7, vmlaq_n_f64(vmulq_n_f64(v6, CGPointZero.y), v5, CGPointZero.x));
  v9 = v8.f64[1];
  result.x = v8.f64[0];
  result.y = v9;
  return result;
}

- (CGPoint)endPointForPath:(id)a3 andBounds:(CGRect)a4
{
  [a3 bounds];
  if (self)
  {
    [(CRLAngleGradientFill *)self p_shadingTransformForBounds:?];
    v5 = 0u;
    v6 = 0u;
    v7 = vmulq_f64(0, 0);
  }

  else
  {
    v7 = 0uLL;
    v6 = 0uLL;
    v5 = 0uLL;
  }

  v8 = vaddq_f64(v6, vmlaq_f64(v7, vdupq_n_s64(0x4059000000000000uLL), v5));
  v9 = v8.f64[1];
  result.x = v8.f64[0];
  result.y = v9;
  return result;
}

- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4 atAngle:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = [(CRLGradientFill *)self shadingRef];
  CGContextSaveGState(a4);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  CGContextClipToRect(a4, v28);
  if ([(CRLGradientFill *)self gradientType])
  {
    if (self)
    {
      [(CRLGradientFill *)self centeredRadialTransformInRect:x, y, width, height];
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
    }

    CGContextConcatCTM(a4, &v25);
  }

  else
  {
    [(CRLAngleGradientFill *)self p_bestGradientLengthForRect:x atAngle:y, width, height, -a5];
    v14 = v13;
    *&v25.a = 0uLL;
    v26 = 0.0;
    v27 = 0.0;
    sub_100120F28(&v26, v13, -a5);
    sub_100120F28(&v25.a, v14, 3.14159265 - a5);
    v15 = sub_100120414(x, y, width, height);
    v17 = v16;
    v18 = sub_10011F334(v15, v16, v26);
    v20 = v19;
    v26 = v18;
    v27 = v19;
    v21 = sub_10011F334(v15, v17, v25.a);
    v23 = v22;
    v25.a = v21;
    v25.b = v22;
    v24 = sub_100120090(v21, v22, v18, v20);
    CGContextTranslateCTM(a4, v21, v23);
    CGContextRotateCTM(a4, -a5);
    CGContextScaleCTM(a4, v24 / 100.0, v24 / 100.0);
  }

  [(CRLGradientFill *)self p_setAlpha:a4, *&v25.a, *&v25.c, *&v25.tx];
  CGContextSetInterpolationQuality(a4, kCGInterpolationHigh);
  CGContextDrawShading(a4, v12);
  CGContextRestoreGState(a4);
}

- (void)paintPath:(CGPath *)a3 naturalBounds:(CGRect)a4 inContext:(CGContext *)a5 isPDF:(BOOL)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  CGContextSaveGState(a5);
  CGContextAddPath(a5, a3);
  CGContextClip(a5);
  ClipBoundingBox = CGContextGetClipBoundingBox(a5);
  v14 = ClipBoundingBox.size.width;
  v15 = ClipBoundingBox.size.height;
  if (sub_1001207D0(ClipBoundingBox.origin.x, ClipBoundingBox.origin.y, ClipBoundingBox.size.width, ClipBoundingBox.size.height) && v15 > 0.0 && v14 > 0.0)
  {
    if ((a6 || sub_100510804(a5)) && [(CRLGradientFill *)self hasAlpha]|| sub_10051058C(a5))
    {
      size = CGRectZero.size;
      origin = CGRectZero.origin;
      v19 = size;
      v17 = [(CRLGradientFill *)self p_beginBitmapWrapperContextInContext:a5 returningIntegralBounds:&origin];
      if (v17)
      {
        [(CRLAngleGradientFill *)self p_paintPath:a3 inContext:v17 naturalBounds:x, y, width, height];
      }

      [(CRLGradientFill *)self p_endBitmapWrapperContext:v17 inContext:a5 withIntegralBounds:origin, v19];
    }

    else
    {
      [(CRLAngleGradientFill *)self p_paintPath:a3 inContext:a5 naturalBounds:x, y, width, height];
    }
  }

  CGContextRestoreGState(a5);
}

- (void)paintPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  PathBoundingBox = CGPathGetPathBoundingBox(a3);

  [(CRLAngleGradientFill *)self paintPath:a3 naturalBounds:a4 inContext:0 isPDF:PathBoundingBox.origin.x, PathBoundingBox.origin.y, PathBoundingBox.size.width, PathBoundingBox.size.height];
}

- (CGAffineTransform)p_shadingTransformForBounds:(SEL)a3
{
  v65 = CGRectInset(a4, -1.0, -1.0);
  x = v65.origin.x;
  y = v65.origin.y;
  width = v65.size.width;
  height = v65.size.height;
  v59 = *&CGAffineTransformIdentity.c;
  v60 = *&CGAffineTransformIdentity.a;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v59;
  v58 = *&CGAffineTransformIdentity.tx;
  *&retstr->tx = v58;
  v10 = [(CRLGradientFill *)self gradientType];
  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = width;
  v66.size.height = height;
  MidX = CGRectGetMidX(v66);
  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  MidY = CGRectGetMidY(v67);
  if (v10)
  {
    v68.origin.x = x;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    MaxX = CGRectGetMaxX(v68);
    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    MaxY = CGRectGetMaxY(v69);
    sub_100139F80(0, retstr, CGPointZero.x, CGPointZero.y, 100.0, 0.0, MidX, MidY, MaxX, MaxY);
    v15 = sub_100120ABC(MidX, MidY, MaxX, MaxY, 0.5);
    v17 = v16;
    memset(&v64, 0, sizeof(v64));
    CGAffineTransformMakeRotation(&v64, 5.49778714 - self->mAngle);
    v18 = sub_10011F340(v15, v17, -1.0);
    t1 = v64;
    sub_100139EB4(&t1, &v63, v18, v19);
    v64 = v63;
    v20 = *&retstr->c;
    *&t1.a = *&retstr->a;
    *&t1.c = v20;
    *&t1.tx = *&retstr->tx;
    t2 = v63;
    result = CGAffineTransformConcat(&v63, &t1, &t2);
    v22 = *&v63.c;
    *&retstr->a = *&v63.a;
    *&retstr->c = v22;
    v23 = *&v63.tx;
  }

  else
  {
    *&v64.a = v60;
    *&v64.c = v59;
    *&v64.tx = v58;
    CGAffineTransformTranslate(retstr, &v64, MidX, MidY);
    mAngle = self->mAngle;
    v25 = *&retstr->c;
    *&v63.a = *&retstr->a;
    *&v63.c = v25;
    *&v63.tx = *&retstr->tx;
    CGAffineTransformRotate(&v64, &v63, mAngle);
    v26 = *&v64.c;
    *&retstr->a = *&v64.a;
    *&retstr->c = v26;
    *&retstr->tx = *&v64.tx;
    v27 = x;
    *&v26 = y;
    v28 = width;
    v29 = height;
    v30 = -CGRectGetMidX(*(&v26 - 8));
    v70.origin.x = x;
    v70.origin.y = y;
    v70.size.width = width;
    v70.size.height = height;
    v31 = CGRectGetMidY(v70);
    v32 = *&retstr->c;
    *&v63.a = *&retstr->a;
    *&v63.c = v32;
    *&v63.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v64, &v63, v30, -v31);
    v33 = *&v64.c;
    *&retstr->a = *&v64.a;
    *&retstr->c = v33;
    *&retstr->tx = *&v64.tx;
    v34 = *&retstr->c;
    *&v64.a = *&retstr->a;
    *&v64.c = v34;
    *&v64.tx = *&retstr->tx;
    v35 = x;
    *&v34 = y;
    v36 = width;
    v37 = height;
    v71 = CGRectApplyAffineTransform(*(&v34 - 8), &v64);
    v38 = v71.origin.x;
    v39 = v71.origin.y;
    v40 = v71.size.width;
    v41 = v71.size.height;
    *&retstr->a = v60;
    *&retstr->c = v59;
    *&retstr->tx = v58;
    v42 = CGRectGetMidX(v71);
    v72.origin.x = v38;
    v72.origin.y = v39;
    v72.size.width = v40;
    v72.size.height = v41;
    v43 = CGRectGetMidY(v72);
    v44 = *&retstr->c;
    *&v63.a = *&retstr->a;
    *&v63.c = v44;
    *&v63.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v64, &v63, v42, v43);
    v45 = *&v64.c;
    *&retstr->a = *&v64.a;
    *&retstr->c = v45;
    *&retstr->tx = *&v64.tx;
    v46 = -self->mAngle;
    v47 = *&retstr->c;
    *&v63.a = *&retstr->a;
    *&v63.c = v47;
    *&v63.tx = *&retstr->tx;
    CGAffineTransformRotate(&v64, &v63, v46);
    v48 = *&v64.c;
    *&retstr->a = *&v64.a;
    *&retstr->c = v48;
    *&retstr->tx = *&v64.tx;
    v49 = v38;
    *&v48 = v39;
    v50 = v40;
    v51 = v41;
    v52 = CGRectGetWidth(*(&v48 - 8)) / 100.0;
    v73.origin.x = v38;
    v73.origin.y = v39;
    v73.size.width = v40;
    v73.size.height = v41;
    v53 = CGRectGetHeight(v73);
    v54 = *&retstr->c;
    *&v63.a = *&retstr->a;
    *&v63.c = v54;
    *&v63.tx = *&retstr->tx;
    CGAffineTransformScale(&v64, &v63, v52, v53 / 100.0);
    v55 = *&v64.c;
    *&retstr->a = *&v64.a;
    *&retstr->c = v55;
    *&retstr->tx = *&v64.tx;
    CGAffineTransformMakeTranslation(&v63, -50.0, 0.0);
    v56 = *&retstr->c;
    *&t1.a = *&retstr->a;
    *&t1.c = v56;
    *&t1.tx = *&retstr->tx;
    result = CGAffineTransformConcat(&v64, &v63, &t1);
    v57 = *&v64.c;
    *&retstr->a = *&v64.a;
    *&retstr->c = v57;
    v23 = *&v64.tx;
  }

  *&retstr->tx = v23;
  return result;
}

- (void)p_paintPath:(CGPath *)a3 inContext:(CGContext *)a4 naturalBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  CGContextSaveGState(a4);
  CGContextAddPath(a4, a3);
  CGContextClip(a4);
  ClipBoundingBox = CGContextGetClipBoundingBox(a4);
  if (sub_1001207D0(ClipBoundingBox.origin.x, ClipBoundingBox.origin.y, ClipBoundingBox.size.width, ClipBoundingBox.size.height))
  {
    memset(&v13[1], 0, sizeof(CGAffineTransform));
    if (self)
    {
      [(CRLAngleGradientFill *)self p_shadingTransformForBounds:x, y, width, height];
    }

    v13[0] = v13[1];
    CGContextConcatCTM(a4, v13);
    CGContextSetInterpolationQuality(a4, kCGInterpolationHigh);
    v12 = [(CRLGradientFill *)self shadingRef];
    CGShadingRetain(v12);
    [(CRLGradientFill *)self p_setAlpha:a4];
    CGContextDrawShading(a4, v12);
    CGShadingRelease(v12);
  }

  CGContextRestoreGState(a4);
}

@end
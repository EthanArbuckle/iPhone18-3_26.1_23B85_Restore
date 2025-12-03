@interface CRLTransformGradientFill
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualIgnoringTransform:(id)transform;
- (CGPoint)endPoint;
- (CGPoint)endPointForPath:(id)path andBounds:(CGRect)bounds;
- (CGPoint)normalizedPointForSize:(CGSize)size endPoint:(BOOL)point;
- (CGPoint)p_scalePoint:(CGPoint)point fromShapeWithNaturalSize:(CGSize)size;
- (CGPoint)p_scalePoint:(CGPoint)point toShapeWithNaturalSize:(CGSize)size;
- (CGPoint)startPoint;
- (CGPoint)startPointForPath:(id)path andBounds:(CGRect)bounds;
- (CGSize)baseNaturalSize;
- (CGSize)baseNaturalSizeForBounds:(CGRect)bounds;
- (CRLTransformGradientFill)initWithGradient:(id)gradient inPath:(id)path andBounds:(CGRect)bounds;
- (CRLTransformGradientFill)initWithGradientStops:(id)stops type:(unint64_t)type;
- (CRLTransformGradientFill)initWithGradientStops:(id)stops type:(unint64_t)type opacity:(double)opacity startPoint:(CGPoint)point endPoint:(CGPoint)endPoint baseNaturalSize:(CGSize)size isAdvancedGradient:(BOOL)gradient;
- (CRLTransformGradientFill)initWithStartColor:(id)color endColor:(id)endColor type:(unint64_t)type;
- (double)gradientAngleInDegrees;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
- (void)p_drawQuartzShadingInContext:(CGContext *)context withGradientNaturalSize:(CGSize)size baseNaturalSize:(CGSize)naturalSize start:(CGPoint)start end:(CGPoint)end;
- (void)p_setBaseNaturalSize:(CGSize)size;
- (void)p_setDefaultValues;
- (void)paintPath:(CGPath *)path inContext:(CGContext *)context;
- (void)paintPath:(CGPath *)path naturalBounds:(CGRect)bounds inContext:(CGContext *)context isPDF:(BOOL)f;
- (void)paintRect:(CGRect)rect inContext:(CGContext *)context;
@end

@implementation CRLTransformGradientFill

- (CRLTransformGradientFill)initWithStartColor:(id)color endColor:(id)endColor type:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = CRLTransformGradientFill;
  v5 = [(CRLGradientFill *)&v8 initWithStartColor:color endColor:endColor type:type];
  v6 = v5;
  if (v5)
  {
    [(CRLTransformGradientFill *)v5 p_setDefaultValues];
  }

  return v6;
}

- (CRLTransformGradientFill)initWithGradientStops:(id)stops type:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = CRLTransformGradientFill;
  v4 = [(CRLGradientFill *)&v7 initWithGradientStops:stops type:type];
  v5 = v4;
  if (v4)
  {
    [(CRLTransformGradientFill *)v4 p_setDefaultValues];
  }

  return v5;
}

- (CRLTransformGradientFill)initWithGradient:(id)gradient inPath:(id)path andBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v21.receiver = self;
  v21.super_class = CRLTransformGradientFill;
  v11 = -[CRLGradientFill initWithGradientStops:type:](&v21, "initWithGradientStops:type:", [gradient gradientStops], objc_msgSend(gradient, "gradientType"));
  if (v11)
  {
    v12 = objc_opt_class();
    v13 = sub_100014370(v12, gradient);
    if (v13)
    {
      [v13 baseNaturalSizeForBounds:{x, y, width, height}];
      width = v14;
      height = v15;
    }

    v11->mBaseNaturalSize.width = width;
    v11->mBaseNaturalSize.height = height;
    [gradient startPointForPath:path andBounds:sub_10011ECB4()];
    v11->mStart.x = v16;
    v11->mStart.y = v17;
    [gradient endPointForPath:path andBounds:sub_10011ECB4()];
    v11->mEnd.x = v18;
    v11->mEnd.y = v19;
  }

  return v11;
}

- (CRLTransformGradientFill)initWithGradientStops:(id)stops type:(unint64_t)type opacity:(double)opacity startPoint:(CGPoint)point endPoint:(CGPoint)endPoint baseNaturalSize:(CGSize)size isAdvancedGradient:(BOOL)gradient
{
  gradientCopy = gradient;
  height = size.height;
  width = size.width;
  y = endPoint.y;
  x = endPoint.x;
  v14 = point.y;
  v15 = point.x;
  v19.receiver = self;
  v19.super_class = CRLTransformGradientFill;
  v16 = [(CRLGradientFill *)&v19 initWithGradientStops:stops type:type opacity:opacity];
  v17 = v16;
  if (v16)
  {
    v16->mBaseNaturalSize.width = width;
    v16->mBaseNaturalSize.height = height;
    v16->mStart.x = v15;
    v16->mStart.y = v14;
    v16->mEnd.x = x;
    v16->mEnd.y = y;
    [(CRLGradientFill *)v16 p_setIsAdvancedGradient:gradientCopy];
  }

  return v17;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = CRLTransformGradientFill;
  v3 = [(CRLGradientFill *)&v7 hash];
  v4 = sub_100083B3C(&self->mStart, 16, v3);
  v5 = sub_100083B3C(&self->mEnd, 16, v4);
  return sub_100083B3C(&self->mBaseNaturalSize, 16, v5);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CRLTransformGradientFill;
  [(CRLGradientFill *)&v2 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  gradientType = [(CRLGradientFill *)self gradientType];
  [(CRLGradientFill *)self opacity];
  v7 = v6;
  v8 = NSStringFromCGPoint(self->mStart);
  v9 = NSStringFromCGPoint(self->mEnd);
  return [NSString stringWithFormat:@"%@<%p>: type=%tu opacity=%f start=%@ end=%@ \n\tstops=%@ \n\tbase size=%@", v4, self, gradientType, v7, v8, v9, [(CRLGradientFill *)self gradientStops], NSStringFromCGSize(self->mBaseNaturalSize)];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v21 = v3;
    v22 = v4;
    v7 = objc_opt_class();
    v8 = sub_100014370(v7, equal);
    if (v8)
    {
      v9 = v8;
      v20.receiver = self;
      v20.super_class = CRLTransformGradientFill;
      LODWORD(v8) = [(CRLGradientFill *)&v20 isEqual:equal];
      if (v8)
      {
        [v9 startPoint];
        v12 = self->mStart.x == v11 && self->mStart.y == v10;
        if (v12 && (([v9 endPoint], self->mEnd.x == v14) ? (v15 = self->mEnd.y == v13) : (v15 = 0), v15))
        {
          p_mBaseNaturalSize = &self->mBaseNaturalSize;
          [v9 baseNaturalSize];
          LOBYTE(v8) = p_mBaseNaturalSize->height == v18 && p_mBaseNaturalSize->width == v17;
        }

        else
        {
          LOBYTE(v8) = 0;
        }
      }
    }
  }

  return v8;
}

- (BOOL)isEqualIgnoringTransform:(id)transform
{
  if (transform == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v15 = v3;
    v16 = v4;
    v7 = objc_opt_class();
    v8 = sub_100014370(v7, transform);
    if (v8)
    {
      v9 = v8;
      v14.receiver = self;
      v14.super_class = CRLTransformGradientFill;
      LODWORD(v8) = [(CRLGradientFill *)&v14 isEqual:transform];
      if (v8)
      {
        p_mBaseNaturalSize = &self->mBaseNaturalSize;
        [v9 baseNaturalSize];
        LOBYTE(v8) = p_mBaseNaturalSize->height == v12 && p_mBaseNaturalSize->width == v11;
      }
    }
  }

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRLMutableTransformGradientFill allocWithZone:zone];
  gradientStops = [(CRLGradientFill *)self gradientStops];
  gradientType = [(CRLGradientFill *)self gradientType];
  [(CRLGradientFill *)self opacity];
  v7 = [(CRLGradientFill *)v4 initWithGradientStops:gradientStops type:gradientType opacity:?];
  [(CRLGradientFill *)v7 i_setAdvancedGradientFlag:[(CRLGradientFill *)self i_advancedGradientFlag]];
  [(CRLTransformGradientFill *)self startPoint];
  [(CRLMutableTransformGradientFill *)v7 setStartPoint:?];
  [(CRLTransformGradientFill *)self endPoint];
  [(CRLMutableTransformGradientFill *)v7 setEndPoint:?];
  [(CRLTransformGradientFill *)self baseNaturalSize];
  [(CRLMutableTransformGradientFill *)v7 setBaseNaturalSize:?];
  return v7;
}

- (CGPoint)normalizedPointForSize:(CGSize)size endPoint:(BOOL)point
{
  pointCopy = point;
  height = size.height;
  width = size.width;
  [(CRLTransformGradientFill *)self startPoint];
  v46 = v9;
  v47 = v8;
  [(CRLTransformGradientFill *)self endPoint];
  v50 = v11;
  v51 = v10;
  if ([(CRLGradientFill *)self gradientType])
  {
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    if (self)
    {
      [(CRLTransformGradientFill *)self transformForSize:width, height, 0.0];
      v12 = 0uLL;
      v14 = *&v54.a;
      v15 = *&v54.c;
      v13 = *&v54.tx;
    }

    v16 = vaddq_f64(v13, vmlaq_n_f64(vmulq_n_f64(v15, v46), v14, v47));
    v17 = 0uLL;
    v18 = 0uLL;
    if (self)
    {
      v48 = v16;
      [(CRLTransformGradientFill *)self transformForSize:width, height];
      v16 = v48;
      v17 = *&v54.a;
      v18 = *&v54.c;
      v12 = *&v54.tx;
    }

    v19 = v16.f64[1];
    v20 = vaddq_f64(v12, vmlaq_n_f64(vmulq_n_f64(v18, v50), v17, v51));
    v21 = v20.f64[1];
  }

  else
  {
    v22 = 0uLL;
    memset(&v54, 0, sizeof(v54));
    if (self)
    {
      [(CRLTransformGradientFill *)self transformForSize:width, height];
      v22 = 0uLL;
    }

    *&v53.c = v22;
    *&v53.tx = v22;
    *&v53.a = v22;
    v52 = v54;
    CGAffineTransformInvert(&v53, &v52);
    v23 = sub_10011F31C(v51, v50, v47);
    v52 = v53;
    v25 = sub_10012119C(&v52, v23, v24);
    v26 = v54.tx + v46 * v54.c + v54.a * v47;
    v27 = v54.ty + v46 * v54.d + v54.b * v47;
    v28 = v54.tx + v50 * v54.c + v54.a * v51;
    v29 = v54.ty + v50 * v54.d + v54.b * v51;
    v31 = sub_10011F2FC(v25, v30);
    v33 = v32;
    v34 = sub_10011F31C(v28, v29, v26);
    v36 = sub_10011F328(v31, v33, v34, v35);
    v37 = sub_10011F340(v31, v33, v36);
    v39 = v38;
    v40 = sub_100120ABC(v26, v27, v28, v29, 0.5);
    v42 = v41;
    v43 = sub_10011F340(v37, v39, -0.5);
    v49 = sub_10011F334(v40, v42, v43);
    v19 = v44;
    v45 = sub_10011F340(v37, v39, 0.5);
    v20.f64[0] = sub_10011F334(v40, v42, v45);
    v16.f64[0] = v49;
  }

  if (!pointCopy)
  {
    v20.f64[0] = v16.f64[0];
    v21 = v19;
  }

  result.x = v20.f64[0];
  result.y = v21;
  return result;
}

- (void)p_setBaseNaturalSize:(CGSize)size
{
  if (size.height <= 0.0)
  {
    size.height = 1.0;
  }

  if (size.width <= 0.0)
  {
    size.width = 1.0;
  }

  self->mBaseNaturalSize = size;
}

- (void)paintRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  shadingRef = [(CRLGradientFill *)self shadingRef];
  CGContextSaveGState(context);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  CGContextClipToRect(context, v16);
  if ([(CRLGradientFill *)self gradientType])
  {
    if (self)
    {
      [(CRLGradientFill *)self centeredRadialTransformInRect:x, y, width, height];
    }

    else
    {
      memset(&v15, 0, sizeof(v15));
    }

    CGContextConcatCTM(context, &v15);
  }

  else
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    MidX = CGRectGetMidX(v17);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    MinY = CGRectGetMinY(v18);
    CGContextTranslateCTM(context, MidX, MinY);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v13 = CGRectGetWidth(v19) / 200.0;
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v14 = CGRectGetHeight(v20);
    CGContextScaleCTM(context, v13, v14 / 100.0);
  }

  [(CRLGradientFill *)self p_setAlpha:context, *&v15.a, *&v15.c, *&v15.tx];
  CGContextSetInterpolationQuality(context, kCGInterpolationHigh);
  CGContextDrawShading(context, shadingRef);
  CGContextRestoreGState(context);
}

- (void)paintPath:(CGPath *)path inContext:(CGContext *)context
{
  BoundingBox = CGPathGetBoundingBox(path);

  [(CRLTransformGradientFill *)self paintPath:path naturalBounds:context inContext:0 isPDF:BoundingBox.origin.x, BoundingBox.origin.y, BoundingBox.size.width, BoundingBox.size.height];
}

- (void)paintPath:(CGPath *)path naturalBounds:(CGRect)bounds inContext:(CGContext *)context isPDF:(BOOL)f
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  CGContextSaveGState(context);
  CGContextAddPath(context, path);
  CGContextClip(context);
  CGContextTranslateCTM(context, x, y);
  if ((f || sub_100510804(context)) && [(CRLGradientFill *)self hasAlpha]|| sub_10051058C(context))
  {
    size = CGRectZero.size;
    origin = CGRectZero.origin;
    v17 = size;
    v15 = [(CRLGradientFill *)self p_beginBitmapWrapperContextInContext:context returningIntegralBounds:&origin];
    if (v15)
    {
      [(CRLTransformGradientFill *)self p_drawQuartzShadingInContext:v15 withGradientNaturalSize:width baseNaturalSize:height start:self->mBaseNaturalSize.width end:self->mBaseNaturalSize.height, self->mStart.x, self->mStart.y, self->mEnd.x, self->mEnd.y];
    }

    [(CRLGradientFill *)self p_endBitmapWrapperContext:v15 inContext:context withIntegralBounds:origin, v17];
  }

  else
  {
    [(CRLTransformGradientFill *)self p_drawQuartzShadingInContext:context withGradientNaturalSize:width baseNaturalSize:height start:self->mBaseNaturalSize.width end:self->mBaseNaturalSize.height, self->mStart.x, self->mStart.y, self->mEnd.x, self->mEnd.y];
  }

  CGContextRestoreGState(context);
}

- (CGPoint)startPointForPath:(id)path andBounds:(CGRect)bounds
{
  [(CRLTransformGradientFill *)self normalizedPointForSize:0 endPoint:bounds.size.width, bounds.size.height];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)endPointForPath:(id)path andBounds:(CGRect)bounds
{
  [(CRLTransformGradientFill *)self normalizedPointForSize:1 endPoint:bounds.size.width, bounds.size.height];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGSize)baseNaturalSizeForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  if ([(CRLGradientFill *)self gradientType:bounds.origin.x])
  {
    [(CRLTransformGradientFill *)self baseNaturalSize];
    width = v6;
    height = v7;
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (double)gradientAngleInDegrees
{
  v2 = sub_1001208D0(self->mEnd.x - self->mStart.x, self->mStart.y - self->mEnd.y) * 57.2957795;

  sub_1001208E0(v2);
  return result;
}

- (void)p_setDefaultValues
{
  p_mStart = &self->mStart;
  v4 = sub_100122154(50.0, 50.0);
  p_mStart->x = v4;
  p_mStart->y = v5;
  v6 = sub_10011F334(v4, v5, 0.0);
  self->mEnd.x = sub_100122154(v6, v7);
  self->mEnd.y = v8;
  self->mBaseNaturalSize = vdupq_n_s64(0x4059000000000000uLL);
}

- (CGPoint)p_scalePoint:(CGPoint)point toShapeWithNaturalSize:(CGSize)size
{
  v4 = point.x * size.width / self->mBaseNaturalSize.width;
  v5 = point.y * size.height / self->mBaseNaturalSize.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)p_scalePoint:(CGPoint)point fromShapeWithNaturalSize:(CGSize)size
{
  v4 = point.x * self->mBaseNaturalSize.width / size.width;
  v5 = point.y * self->mBaseNaturalSize.height / size.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)p_drawQuartzShadingInContext:(CGContext *)context withGradientNaturalSize:(CGSize)size baseNaturalSize:(CGSize)naturalSize start:(CGPoint)start end:(CGPoint)end
{
  y = end.y;
  x = end.x;
  v9 = start.y;
  v10 = start.x;
  if (self)
  {
    [(CRLTransformGradientFill *)self transformForSize:size.width, size.height, naturalSize.width, naturalSize.height];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  CGContextConcatCTM(context, &v17);
  CGContextTranslateCTM(context, v10, v9);
  v13 = sub_10011F31C(x, y, v10);
  v15 = sub_1001208D0(v13, v14);
  CGContextRotateCTM(context, v15);
  v16 = sub_100120090(v10, v9, x, y);
  CGContextScaleCTM(context, v16 / 100.0, v16 / 100.0);
  [(CRLGradientFill *)self p_setAlpha:context];
  CGContextSetInterpolationQuality(context, kCGInterpolationHigh);
  CGContextDrawShading(context, [(CRLGradientFill *)self shadingRef]);
}

- (CGPoint)startPoint
{
  x = self->mStart.x;
  y = self->mStart.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPoint
{
  x = self->mEnd.x;
  y = self->mEnd.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)baseNaturalSize
{
  width = self->mBaseNaturalSize.width;
  height = self->mBaseNaturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
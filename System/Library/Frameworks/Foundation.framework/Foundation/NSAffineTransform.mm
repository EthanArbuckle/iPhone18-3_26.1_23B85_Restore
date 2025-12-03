@interface NSAffineTransform
+ (NSAffineTransform)transform;
+ (NSAffineTransform)transformWithFlipUsingHeight:(double)height;
+ (NSAffineTransform)transformWithRotationInDegrees:(double)degrees;
+ (NSAffineTransform)transformWithRotationInRadians:(double)radians;
+ (NSAffineTransform)transformWithScale:(double)scale;
+ (NSAffineTransform)transformWithTransformStruct:(id *)struct;
+ (NSAffineTransform)transformWithXScale:(double)scale yScale:(double)yScale;
+ (NSAffineTransform)transformWithXTranslation:(double)translation yTranslation:(double)yTranslation;
- (BOOL)isEqual:(id)equal;
- (NSAffineTransform)init;
- (NSAffineTransform)initWithCoder:(id)coder;
- (NSAffineTransform)initWithTransform:(NSAffineTransform *)transform;
- (NSAffineTransformStruct)transformStruct;
- (NSPoint)transformPoint:(NSPoint)aPoint;
- (NSSize)transformSize:(NSSize)aSize;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)appendTransform:(NSAffineTransform *)transform;
- (void)encodeWithCoder:(id)coder;
- (void)invert;
- (void)prependTransform:(NSAffineTransform *)transform;
- (void)rotateByDegrees:(CGFloat)angle;
- (void)rotateByRadians:(CGFloat)angle;
- (void)setTransformStruct:(NSAffineTransformStruct *)transformStruct;
@end

@implementation NSAffineTransform

+ (NSAffineTransform)transform
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (NSAffineTransform)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSAffineTransform;
  result = [(NSAffineTransform *)&v3 init];
  *&result->_transformStruct.m11 = NSAffineTransformStructIdentity;
  *&result->_transformStruct.m21 = unk_181302550;
  *&result->_transformStruct.tX = xmmword_181302560;
  return result;
}

- (NSAffineTransform)initWithTransform:(NSAffineTransform *)transform
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [(NSAffineTransform *)self init];
  if (transform)
  {
    [(NSAffineTransform *)transform transformStruct];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  [(NSAffineTransform *)v4 setTransformStruct:v6];
  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithTransform:self];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (objc_opt_isKindOfClass())
  {
    if (equal)
    {
      [equal transformStruct];
    }

    if (self->_transformStruct.m11 == 0.0 && self->_transformStruct.m12 == 0.0 && self->_transformStruct.m21 == 0.0 && self->_transformStruct.m22 == 0.0 && self->_transformStruct.tX == 0.0)
    {
      return self->_transformStruct.tY == 0.0;
    }
  }

  return 0;
}

- (void)rotateByDegrees:(CGFloat)angle
{
  m11 = self->_transformStruct.m11;
  m12 = self->_transformStruct.m12;
  m21 = self->_transformStruct.m21;
  m22 = self->_transformStruct.m22;
  tX = self->_transformStruct.tX;
  tY = self->_transformStruct.tY;
  v10 = __sincos_stret(angle * 3.14159265 / 180.0);
  self->_transformStruct.m11 = v10.__sinval * m21 + v10.__cosval * m11;
  self->_transformStruct.m12 = v10.__sinval * m22 + v10.__cosval * m12;
  self->_transformStruct.m21 = v10.__cosval * m21 - v10.__sinval * m11;
  self->_transformStruct.m22 = v10.__cosval * m22 - v10.__sinval * m12;
  self->_transformStruct.tX = m21 * 0.0 + m11 * 0.0 + tX;
  self->_transformStruct.tY = m22 * 0.0 + m12 * 0.0 + tY;
}

- (void)rotateByRadians:(CGFloat)angle
{
  m11 = self->_transformStruct.m11;
  m12 = self->_transformStruct.m12;
  m21 = self->_transformStruct.m21;
  m22 = self->_transformStruct.m22;
  tX = self->_transformStruct.tX;
  tY = self->_transformStruct.tY;
  v10 = __sincos_stret(angle);
  self->_transformStruct.m11 = v10.__sinval * m21 + v10.__cosval * m11;
  self->_transformStruct.m12 = v10.__sinval * m22 + v10.__cosval * m12;
  self->_transformStruct.m21 = v10.__cosval * m21 - v10.__sinval * m11;
  self->_transformStruct.m22 = v10.__cosval * m22 - v10.__sinval * m12;
  self->_transformStruct.tX = m21 * 0.0 + m11 * 0.0 + tX;
  self->_transformStruct.tY = m22 * 0.0 + m12 * 0.0 + tY;
}

- (void)invert
{
  v11 = *MEMORY[0x1E69E9840];
  m11 = self->_transformStruct.m11;
  v3.f64[0] = self->_transformStruct.m22;
  v4 = *&self->_transformStruct.m12;
  v5 = vmuld_lane_f64(-v4.f64[0], v4, 1) + m11 * v3.f64[0];
  if (fabs(v5) <= 2.22044605e-16)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"NSAffineTransform: Transform has no inverse" userInfo:0]);
  }

  v6 = *&self->_transformStruct.tX;
  v9[0] = v3.f64[0] / v5;
  v9[1] = -v4.f64[0] / v5;
  v9[2] = -v4.f64[1] / v5;
  v9[3] = m11 / v5;
  v3.f64[1] = m11;
  v7 = vmulq_f64(v6, vnegq_f64(v3));
  v8 = vdivq_f64(vmlaq_f64(vextq_s8(v7, v7, 8uLL), v6, v4), vdupq_lane_s64(*&v5, 0));
  v10 = vextq_s8(v8, v8, 8uLL);
  [(NSAffineTransform *)self setTransformStruct:v9];
}

- (void)appendTransform:(NSAffineTransform *)transform
{
  v13 = *MEMORY[0x1E69E9840];
  if (transform)
  {
    [(NSAffineTransform *)transform transformStruct];
    v4 = v10;
    v5 = v11;
    v6 = v12;
  }

  else
  {
    v6 = 0uLL;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  tX = self->_transformStruct.tX;
  tY = self->_transformStruct.tY;
  v9 = vmlaq_n_f64(vmulq_n_f64(v5, self->_transformStruct.m22), v4, self->_transformStruct.m21);
  v10 = vmlaq_n_f64(vmulq_n_f64(v5, self->_transformStruct.m12), v4, self->_transformStruct.m11);
  v11 = v9;
  v12 = vaddq_f64(v6, vmlaq_n_f64(vmulq_n_f64(v5, tY), v4, tX));
  [(NSAffineTransform *)self setTransformStruct:&v10];
}

- (void)prependTransform:(NSAffineTransform *)transform
{
  v16 = *MEMORY[0x1E69E9840];
  if (transform)
  {
    [(NSAffineTransform *)transform transformStruct];
    v5 = v13.f64[1];
    v4 = v13.f64[0];
    v7 = v14.f64[1];
    v6 = v14.f64[0];
    v9 = v15.f64[1];
    v8 = v15.f64[0];
  }

  else
  {
    v9 = 0.0;
    v8 = 0.0;
    v7 = 0.0;
    v6 = 0.0;
    v5 = 0.0;
    v4 = 0.0;
  }

  v10 = *&self->_transformStruct.m11;
  v11 = *&self->_transformStruct.m21;
  v12 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v11, v9), v10, v8), *&self->_transformStruct.tX);
  v13 = vmlaq_n_f64(vmulq_n_f64(v11, v5), v10, v4);
  v14 = vmlaq_n_f64(vmulq_n_f64(v11, v7), v10, v6);
  v15 = v12;
  [(NSAffineTransform *)self setTransformStruct:&v13];
}

- (NSPoint)transformPoint:(NSPoint)aPoint
{
  v3 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(*&self->_transformStruct.m21, aPoint.y), *&self->_transformStruct.m11, aPoint.x), *&self->_transformStruct.tX);
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (NSSize)transformSize:(NSSize)aSize
{
  v3 = vmlaq_n_f64(vmulq_n_f64(*&self->_transformStruct.m21, aSize.height), *&self->_transformStruct.m11, aSize.width);
  v4 = v3.f64[1];
  v5 = v3.f64[0];
  result.height = v4;
  result.width = v5;
  return result;
}

- (NSAffineTransformStruct)transformStruct
{
  v3 = *&self->m22;
  *&retstr->m11 = *&self->m12;
  *&retstr->m21 = v3;
  *&retstr->tX = *&self->tY;
  return self;
}

- (void)setTransformStruct:(NSAffineTransformStruct *)transformStruct
{
  v3 = *&transformStruct->m11;
  v4 = *&transformStruct->m21;
  *&self->_transformStruct.tX = *&transformStruct->tX;
  *&self->_transformStruct.m21 = v4;
  *&self->_transformStruct.m11 = v3;
}

- (void)encodeWithCoder:(id)coder
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (![coder allowsKeyedCoding])
  {
    v19 = vcvt_hight_f32_f64(vcvt_f32_f64(*&self->_transformStruct.m11), *&self->_transformStruct.m21);
    v20[0] = vcvt_f32_f64(*&self->_transformStruct.tX);
    [coder encodeArrayOfObjCType:"f" count:6 at:&v19];
    return;
  }

  v5 = *&self->_transformStruct.m11;
  v6.f64[0] = self->_transformStruct.m21;
  if (self->_transformStruct.m12 != 0.0 || v6.f64[0] != 0.0)
  {
    v6.f64[1] = self->_transformStruct.m22;
    v19 = vrev32q_s8(vcvt_hight_f32_f64(vcvt_f32_f64(v5), v6));
    tY = self->_transformStruct.tY;
    *&v15 = self->_transformStruct.tX;
    LODWORD(v20[0]) = bswap32(v15);
    v13 = v20 + 4;
    v14 = 24;
LABEL_14:
    *&v16 = tY;
    *v13 = bswap32(v16);
    [coder encodeBytes:&v19 length:v14 forKey:@"NSTransformStruct"];
    return;
  }

  tX = self->_transformStruct.tX;
  tY = self->_transformStruct.tY;
  m22 = self->_transformStruct.m22;
  v10 = tX == 0.0;
  if (tY != 0.0)
  {
    v10 = 0;
  }

  if (v5.f64[0] != 1.0 || m22 != 1.0)
  {
    if (v10)
    {
      v19.i8[0] = 2;
      *&v12 = v5.f64[0];
      *(v19.i32 + 1) = bswap32(v12);
      v13 = &v19.i8[5];
      v14 = 9;
      tY = m22;
    }

    else
    {
      v5.f64[1] = self->_transformStruct.m22;
      *v19.f32 = vrev32_s8(vcvt_f32_f64(v5));
      *&v18 = tX;
      v19.i32[2] = bswap32(v18);
      v13 = (&v19 | 0xC);
      v14 = 16;
    }

    goto LABEL_14;
  }

  if (!v10)
  {
    v19.i8[0] = 1;
    *&v17 = tX;
    *(v19.i32 + 1) = bswap32(v17);
    v13 = &v19.i8[5];
    v14 = 9;
    goto LABEL_14;
  }
}

- (NSAffineTransform)initWithCoder:(id)coder
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = [(NSAffineTransform *)self init];
  if ([coder allowsKeyedCoding])
  {
    v15[0] = 0;
    v5 = [coder decodeBytesForKey:@"NSTransformStruct" returnedLength:v15];
    if (v5 && *v15)
    {
      switch(v15[0])
      {
        case 9uLL:
          v8 = *v5;
          if (v8 == 2)
          {
            v4->_transformStruct.m11 = COERCE_FLOAT(bswap32(*(v5 + 1)));
            v4->_transformStruct.m12 = 0.0;
            v4->_transformStruct.m21 = 0.0;
            v4->_transformStruct.m22 = COERCE_FLOAT(bswap32(*(v5 + 5)));
            v4->_transformStruct.tX = 0.0;
            v4->_transformStruct.tY = 0.0;
            return v4;
          }

          if (v8 == 1)
          {
            v4->_transformStruct.m11 = 1.0;
            v4->_transformStruct.m12 = 0.0;
            v4->_transformStruct.m21 = 0.0;
            v4->_transformStruct.m22 = 1.0;
            v4->_transformStruct.tX = COERCE_FLOAT(bswap32(*(v5 + 1)));
            v6 = *(v5 + 5);
            goto LABEL_13;
          }

          v13 = [NSString stringWithFormat:@"Unexpected encode state: %lu", *v15];
          v18 = @"NSLocalizedDescription";
          v19[0] = v13;
          v10 = MEMORY[0x1E695DF20];
          v11 = v19;
          v12 = &v18;
          break;
        case 0x10uLL:
          v4->_transformStruct.m11 = COERCE_FLOAT(bswap32(*v5));
          v4->_transformStruct.m12 = 0.0;
          v4->_transformStruct.m21 = 0.0;
          v4->_transformStruct.m22 = COERCE_FLOAT(bswap32(v5[1]));
          v4->_transformStruct.tX = COERCE_FLOAT(bswap32(v5[2]));
          v6 = v5[3];
          goto LABEL_13;
        case 0x18uLL:
          v4->_transformStruct.m11 = COERCE_FLOAT(bswap32(*v5));
          v4->_transformStruct.m12 = COERCE_FLOAT(bswap32(v5[1]));
          v4->_transformStruct.m21 = COERCE_FLOAT(bswap32(v5[2]));
          v4->_transformStruct.m22 = COERCE_FLOAT(bswap32(v5[3]));
          v4->_transformStruct.tX = COERCE_FLOAT(bswap32(v5[4]));
          v6 = v5[5];
LABEL_13:
          v4->_transformStruct.tY = COERCE_FLOAT(bswap32(v6));
          return v4;
        default:

          v9 = [NSString stringWithFormat:@"Unexpected byte length: %@", [NSNumber numberWithUnsignedInteger:*v15]];
          v16 = @"NSLocalizedDescription";
          v17 = v9;
          v10 = MEMORY[0x1E695DF20];
          v11 = &v17;
          v12 = &v16;
          break;
      }

      [coder failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(v10, "dictionaryWithObjects:forKeys:count:", v11, v12, 1))}];
      return 0;
    }
  }

  else
  {
    [coder decodeArrayOfObjCType:"f" count:6 at:v15];
    *&v4->_transformStruct.m11 = vcvtq_f64_f32(v15[0]);
    v7 = v15[2];
    *&v4->_transformStruct.m21 = vcvtq_f64_f32(v15[1]);
    *&v4->_transformStruct.tX = vcvtq_f64_f32(v7);
  }

  return v4;
}

- (id)debugDescription
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSAffineTransform;
  return [NSString stringWithFormat:@"%@ {m11:%g m12:%g m21:%g m22:%g tX:%g tY:%g\n"], [(NSAffineTransform *)&v3 debugDescription], *&self->_transformStruct.m11, *&self->_transformStruct.m12, *&self->_transformStruct.m21, *&self->_transformStruct.m22, *&self->_transformStruct.tX, *&self->_transformStruct.tY);
}

+ (NSAffineTransform)transformWithScale:(double)scale
{
  v6[6] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(self);
  *v6 = scale;
  v6[1] = 0;
  v6[2] = 0;
  *&v6[3] = scale;
  v6[4] = 0;
  v6[5] = 0;
  [v4 setTransformStruct:v6];
  return v4;
}

+ (NSAffineTransform)transformWithXScale:(double)scale yScale:(double)yScale
{
  v8[6] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(self);
  *v8 = scale;
  v8[1] = 0;
  v8[2] = 0;
  *&v8[3] = yScale;
  v8[4] = 0;
  v8[5] = 0;
  [v6 setTransformStruct:v8];
  return v6;
}

+ (NSAffineTransform)transformWithXTranslation:(double)translation yTranslation:(double)yTranslation
{
  v8[6] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(self);
  v8[0] = 0x3FF0000000000000;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0x3FF0000000000000;
  *&v8[4] = translation;
  *&v8[5] = yTranslation;
  [v6 setTransformStruct:v8];
  return v6;
}

+ (NSAffineTransform)transformWithRotationInDegrees:(double)degrees
{
  v7[6] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(self);
  v5 = __sincos_stret(degrees * 3.14159265 / 180.0);
  v7[0] = *&v5.__cosval;
  v7[1] = *&v5.__sinval;
  *&v7[2] = -v5.__sinval;
  v7[3] = *&v5.__cosval;
  v7[4] = 0;
  v7[5] = 0;
  [v4 setTransformStruct:v7];
  return v4;
}

+ (NSAffineTransform)transformWithRotationInRadians:(double)radians
{
  v7[6] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(self);
  v5 = __sincos_stret(radians);
  v7[0] = *&v5.__cosval;
  v7[1] = *&v5.__sinval;
  *&v7[2] = -v5.__sinval;
  v7[3] = *&v5.__cosval;
  v7[4] = 0;
  v7[5] = 0;
  [v4 setTransformStruct:v7];
  return v4;
}

+ (NSAffineTransform)transformWithTransformStruct:(id *)struct
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(self);
  v5 = *&struct->var2;
  v7[0] = *&struct->var0;
  v7[1] = v5;
  v7[2] = *&struct->var4;
  [v4 setTransformStruct:v7];
  return v4;
}

+ (NSAffineTransform)transformWithFlipUsingHeight:(double)height
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(self);
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = 0x3FF0000000000000;
  v7 = xmmword_181302530;
  heightCopy = height;
  [v4 setTransformStruct:v6];
  return v4;
}

@end
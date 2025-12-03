@interface VNHorizonObservation
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)transform;
- (CGAffineTransform)transformForImageWidth:(SEL)width height:(size_t)width;
- (VNHorizonObservation)initWithCoder:(id)coder;
- (double)angleInTopLeftOrigin:(BOOL)origin orientation:(unsigned int)orientation;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation VNHorizonObservation

- (void)setTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_transform.a = *&transform->a;
  *&self->_transform.c = v4;
  *&self->_transform.tx = v3;
}

- (CGAffineTransform)transform
{
  v3 = *&self[2].c;
  *&retstr->a = *&self[2].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].tx;
  return self;
}

- (CGAffineTransform)transformForImageWidth:(SEL)width height:(size_t)width
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  widthCopy = width;
  v8 = height;
  CGAffineTransformMakeTranslation(retstr, vcvtd_n_f64_u64(width, 1uLL), vcvtd_n_f64_u64(height, 1uLL));
  [(VNHorizonObservation *)self angle:*&retstr->a];
  CGAffineTransformRotate(&v15, &v14, v9);
  v10 = *&v15.c;
  *&retstr->a = *&v15.a;
  *&retstr->c = v10;
  *&retstr->tx = *&v15.tx;
  v11 = *&retstr->c;
  *&v14.a = *&retstr->a;
  *&v14.c = v11;
  *&v14.tx = *&retstr->tx;
  result = CGAffineTransformTranslate(&v15, &v14, widthCopy * -0.5, v8 * -0.5);
  v13 = *&v15.c;
  *&retstr->a = *&v15.a;
  *&retstr->c = v13;
  *&retstr->tx = *&v15.tx;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VNHorizonObservation;
    if ([(VNObservation *)&v13 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      [(VNHorizonObservation *)self transform];
      if (v5)
      {
        [(VNHorizonObservation *)v5 transform];
      }

      else
      {
        memset(&v11, 0, sizeof(v11));
      }

      if (CGAffineTransformEqualToTransform(&t1, &v11))
      {
        [(VNHorizonObservation *)self angle];
        v8 = v7;
        [(VNHorizonObservation *)v5 angle];
        v6 = v8 == v9;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = VNHorizonObservation;
  v3 = [(VNObservation *)&v9 hash];
  [(VNHorizonObservation *)self transform];
  v4 = VNHashCGAffineTransform(&v8) ^ __ROR8__(v3, 51);
  [(VNHorizonObservation *)self angle];
  v6 = v5;
  if (v5 == 0.0)
  {
    v6 = 0.0;
  }

  return *&v6 ^ __ROR8__(v4, 51);
}

- (id)vn_cloneObject
{
  v8.receiver = self;
  v8.super_class = VNHorizonObservation;
  vn_cloneObject = [(VNObservation *)&v8 vn_cloneObject];
  v4 = vn_cloneObject;
  if (vn_cloneObject)
  {
    v5 = *&self->_transform.c;
    v7[0] = *&self->_transform.a;
    v7[1] = v5;
    v7[2] = *&self->_transform.tx;
    [vn_cloneObject setTransform:v7];
    [v4 setAngle:self->_angle];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = VNHorizonObservation;
  [(VNObservation *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"angle" forKey:self->_angle];
  v5 = *&self->_transform.c;
  v6[0] = *&self->_transform.a;
  v6[1] = v5;
  v6[2] = *&self->_transform.tx;
  [coderCopy vn_encodeCGAffineTransform:v6 forKey:@"transform"];
}

- (VNHorizonObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = VNHorizonObservation;
  v5 = [(VNObservation *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"angle"];
    v5->_angle = v6;
    if (coderCopy)
    {
      [coderCopy vn_decodeCGAffineTransformForKey:@"transform"];
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
      v9 = 0u;
    }

    *&v5->_transform.a = v9;
    *&v5->_transform.c = v10;
    *&v5->_transform.tx = v11;
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)angleInTopLeftOrigin:(BOOL)origin orientation:(unsigned int)orientation
{
  [(VNHorizonObservation *)self angle];
  v6 = -result;
  if (((1 << orientation) & 0xB4) == 0)
  {
    v6 = result;
  }

  if (orientation <= 7)
  {
    return v6;
  }

  return result;
}

@end
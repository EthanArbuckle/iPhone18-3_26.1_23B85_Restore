@interface VNHorizonObservation
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)transform;
- (CGAffineTransform)transformForImageWidth:(SEL)a3 height:(size_t)width;
- (VNHorizonObservation)initWithCoder:(id)a3;
- (double)angleInTopLeftOrigin:(BOOL)a3 orientation:(unsigned int)a4;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation VNHorizonObservation

- (void)setTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_transform.a = *&a3->a;
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

- (CGAffineTransform)transformForImageWidth:(SEL)a3 height:(size_t)width
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v7 = width;
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
  result = CGAffineTransformTranslate(&v15, &v14, v7 * -0.5, v8 * -0.5);
  v13 = *&v15.c;
  *&retstr->a = *&v15.a;
  *&retstr->c = v13;
  *&retstr->tx = *&v15.tx;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = VNHorizonObservation;
    if ([(VNObservation *)&v13 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
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
  v3 = [(VNObservation *)&v8 vn_cloneObject];
  v4 = v3;
  if (v3)
  {
    v5 = *&self->_transform.c;
    v7[0] = *&self->_transform.a;
    v7[1] = v5;
    v7[2] = *&self->_transform.tx;
    [v3 setTransform:v7];
    [v4 setAngle:self->_angle];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = VNHorizonObservation;
  [(VNObservation *)&v7 encodeWithCoder:v4];
  [v4 encodeDouble:@"angle" forKey:self->_angle];
  v5 = *&self->_transform.c;
  v6[0] = *&self->_transform.a;
  v6[1] = v5;
  v6[2] = *&self->_transform.tx;
  [v4 vn_encodeCGAffineTransform:v6 forKey:@"transform"];
}

- (VNHorizonObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = VNHorizonObservation;
  v5 = [(VNObservation *)&v12 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"angle"];
    v5->_angle = v6;
    if (v4)
    {
      [v4 vn_decodeCGAffineTransformForKey:@"transform"];
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

- (double)angleInTopLeftOrigin:(BOOL)a3 orientation:(unsigned int)a4
{
  [(VNHorizonObservation *)self angle];
  v6 = -result;
  if (((1 << a4) & 0xB4) == 0)
  {
    v6 = result;
  }

  if (a4 <= 7)
  {
    return v6;
  }

  return result;
}

@end
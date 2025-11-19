@interface MDLTransformRotateYOp
- (MDLTransformRotateYOp)initWithName:(id)a3 inverse:(BOOL)a4 data:(id)a5;
- (double)double4x4AtTime:(uint64_t)a3@<X2>;
@end

@implementation MDLTransformRotateYOp

- (MDLTransformRotateYOp)initWithName:(id)a3 inverse:(BOOL)a4 data:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = MDLTransformRotateYOp;
  v11 = [(MDLTransformRotateYOp *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_animatedValue, a5);
    objc_storeStrong(&v12->_name, a3);
    v12->_inverse = a4;
    v13 = v12;
  }

  return v12;
}

- (double)double4x4AtTime:(uint64_t)a3@<X2>
{
  objc_msgSend_doubleAtTime_(*(a1 + 24), a2, a3);
  vars0 = 0u;
  v10 = 0u;
  v11 = 0u;
  v7.f64[0] = 0.0;
  sub_239ED2C10(&v10, v6 * 0.0174532925, 0, 1.0, v7);
  if (*(a1 + 8))
  {
    __invert_d4();
  }

  else
  {
    a4[4] = 0u;
    a4[5] = 0u;
    a4[6] = 0u;
    a4[7] = 0u;
    v9 = v11;
    *a4 = v10;
    a4[1] = v9;
    result = *&vars0;
    a4[2] = vars0;
    a4[3] = 0u;
  }

  return result;
}

@end
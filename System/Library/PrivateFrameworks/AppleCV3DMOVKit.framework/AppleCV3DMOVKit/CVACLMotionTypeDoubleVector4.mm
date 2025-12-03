@interface CVACLMotionTypeDoubleVector4
- (CVACLMotionTypeDoubleVector4)initWithFastPathXYZWDataV3:(_FastPathXYZWDataV3 *)v3;
@end

@implementation CVACLMotionTypeDoubleVector4

- (CVACLMotionTypeDoubleVector4)initWithFastPathXYZWDataV3:(_FastPathXYZWDataV3 *)v3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v3Copy = v3;
  v16.receiver = self;
  v16.super_class = CVACLMotionTypeDoubleVector4;
  v12 = [(CVACLMotionTypeDoubleVector4 *)&v16 init];
  v13 = v12;
  if (v12 == self)
  {
    v12->_y = v9;
    v12->_z = v8;
    v12->_w = v7;
    v12->_x = v3Copy;
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end
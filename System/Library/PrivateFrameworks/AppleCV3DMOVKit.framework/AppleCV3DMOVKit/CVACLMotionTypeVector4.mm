@interface CVACLMotionTypeVector4
- (CVACLMotionTypeVector4)initWithFastPathXYZWDataV3:(_FastPathXYZWDataV3 *)v3;
@end

@implementation CVACLMotionTypeVector4

- (CVACLMotionTypeVector4)initWithFastPathXYZWDataV3:(_FastPathXYZWDataV3 *)v3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v3Copy = v3;
  v20.receiver = self;
  v20.super_class = CVACLMotionTypeVector4;
  v12 = [(CVACLMotionTypeVector4 *)&v20 init];
  v13 = v12;
  if (v12 == self)
  {
    v15 = v3Copy;
    v16 = v9;
    v17 = v8;
    v12->_y = v16;
    v12->_z = v17;
    v18 = v7;
    v12->_w = v18;
    v12->_x = v15;
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end
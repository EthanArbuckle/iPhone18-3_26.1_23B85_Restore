@interface CVACLMotionTypeVector3
- (CVACLMotionTypeVector3)initWithFastPathXYZDataV3:(_FastPathXYZDataV3 *)a3;
@end

@implementation CVACLMotionTypeVector3

- (CVACLMotionTypeVector3)initWithFastPathXYZDataV3:(_FastPathXYZDataV3 *)a3
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v17.receiver = self;
  v17.super_class = CVACLMotionTypeVector3;
  v10 = [(CVACLMotionTypeVector3 *)&v17 init];
  v11 = v10;
  if (v10 == self)
  {
    v13 = v8;
    v14 = v7;
    v10->_x = v13;
    v10->_y = v14;
    v15 = v6;
    v10->_z = v15;
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end
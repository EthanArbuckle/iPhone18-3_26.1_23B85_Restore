@interface CVACLMotionTypeDoubleVector3
- (CVACLMotionTypeDoubleVector3)initWithFastPathXYZDataV3:(_FastPathXYZDataV3 *)v3;
@end

@implementation CVACLMotionTypeDoubleVector3

- (CVACLMotionTypeDoubleVector3)initWithFastPathXYZDataV3:(_FastPathXYZDataV3 *)v3
{
  v6 = v5;
  v7 = v4;
  v3Copy = v3;
  v14.receiver = self;
  v14.super_class = CVACLMotionTypeDoubleVector3;
  v10 = [(CVACLMotionTypeDoubleVector3 *)&v14 init];
  v11 = v10;
  if (v10 == self)
  {
    v10->_x = v3Copy;
    v10->_y = v7;
    v10->_z = v6;
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end
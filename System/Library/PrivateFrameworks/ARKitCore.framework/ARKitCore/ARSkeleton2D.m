@interface ARSkeleton2D
- (ARSkeleton2D)initWithCoder:(id)a3;
- (ARSkeleton2D)initWithDetectedSkeleton:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isJointTracked:(int64_t)a3;
- (simd_float2)landmarkForJointNamed:(ARSkeletonJointName)jointName;
@end

@implementation ARSkeleton2D

- (ARSkeleton2D)initWithDetectedSkeleton:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ARSkeleton2D;
  v6 = [(ARSkeleton *)&v9 initPrivate];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 3, a3);
  }

  return v7;
}

- (BOOL)isJointTracked:(int64_t)a3
{
  if (a3 < 0)
  {
    return 0;
  }

  if ([(ABPK2DDetectionResult *)self->_skeleton jointCount]- 1 >= a3)
  {
    return *([(ABPK2DDetectionResult *)self->_skeleton jointTrackingStates]+ 4 * a3) != 0;
  }

  return 0;
}

- (simd_float2)landmarkForJointNamed:(ARSkeletonJointName)jointName
{
  v4 = jointName;
  v5 = [(ARSkeleton2D *)self definition];
  v6 = [v5 indexForJointName:v4];

  if (v6 >= [(ARSkeleton2D *)self jointCount])
  {
    return vneg_f32(0x3F0000003FLL);
  }

  return [(ARSkeleton2D *)self jointLandmarks][8 * v6];
}

- (ARSkeleton2D)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ARSkeleton2D;
  v5 = [(ARSkeleton *)&v9 initPrivate];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"skeleton"];
    skeleton = v5->_skeleton;
    v5->_skeleton = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ABPK2DDetectionResult *)self->_skeleton isEqual:v4[3]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
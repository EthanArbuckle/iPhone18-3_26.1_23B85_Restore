@interface ARSkeleton2D
- (ARSkeleton2D)initWithCoder:(id)coder;
- (ARSkeleton2D)initWithDetectedSkeleton:(id)skeleton;
- (BOOL)isEqual:(id)equal;
- (BOOL)isJointTracked:(int64_t)tracked;
- (simd_float2)landmarkForJointNamed:(ARSkeletonJointName)jointName;
@end

@implementation ARSkeleton2D

- (ARSkeleton2D)initWithDetectedSkeleton:(id)skeleton
{
  skeletonCopy = skeleton;
  v9.receiver = self;
  v9.super_class = ARSkeleton2D;
  initPrivate = [(ARSkeleton *)&v9 initPrivate];
  v7 = initPrivate;
  if (initPrivate)
  {
    objc_storeStrong(initPrivate + 3, skeleton);
  }

  return v7;
}

- (BOOL)isJointTracked:(int64_t)tracked
{
  if (tracked < 0)
  {
    return 0;
  }

  if ([(ABPK2DDetectionResult *)self->_skeleton jointCount]- 1 >= tracked)
  {
    return *([(ABPK2DDetectionResult *)self->_skeleton jointTrackingStates]+ 4 * tracked) != 0;
  }

  return 0;
}

- (simd_float2)landmarkForJointNamed:(ARSkeletonJointName)jointName
{
  v4 = jointName;
  definition = [(ARSkeleton2D *)self definition];
  v6 = [definition indexForJointName:v4];

  if (v6 >= [(ARSkeleton2D *)self jointCount])
  {
    return vneg_f32(0x3F0000003FLL);
  }

  return [(ARSkeleton2D *)self jointLandmarks][8 * v6];
}

- (ARSkeleton2D)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ARSkeleton2D;
  initPrivate = [(ARSkeleton *)&v9 initPrivate];
  if (initPrivate)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"skeleton"];
    skeleton = initPrivate->_skeleton;
    initPrivate->_skeleton = v6;
  }

  return initPrivate;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ABPK2DDetectionResult *)self->_skeleton isEqual:equalCopy[3]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
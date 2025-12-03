@interface ARSkeleton3D
- (ARSkeleton3D)initWithCoder:(id)coder;
- (ARSkeleton3D)initWithCoreRESkeletonResult:(id)result;
- (BOOL)isEqual:(id)equal;
- (BOOL)isJointTracked:(int64_t)tracked;
- (simd_float4x4)localTransformForJointName:(ARSkeletonJointName)jointName;
- (simd_float4x4)modelTransformForJointName:(ARSkeletonJointName)jointName;
- (unint64_t)jointCount;
@end

@implementation ARSkeleton3D

- (ARSkeleton3D)initWithCoreRESkeletonResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = ARSkeleton3D;
  initPrivate = [(ARSkeleton *)&v9 initPrivate];
  v7 = initPrivate;
  if (initPrivate)
  {
    objc_storeStrong(initPrivate + 3, result);
  }

  return v7;
}

- (unint64_t)jointCount
{
  definition = [(ARSkeleton3D *)self definition];
  jointNames = [definition jointNames];
  v4 = [jointNames count];

  return v4;
}

- (BOOL)isJointTracked:(int64_t)tracked
{
  if (tracked < 0 || [(ARCoreRESkeletonResult *)self->_skeleton jointTransformCount]- 1 < tracked)
  {
    return 0;
  }

  skeleton = self->_skeleton;

  return [(ARCoreRESkeletonResult *)skeleton isJointTracked:tracked];
}

- (simd_float4x4)modelTransformForJointName:(ARSkeletonJointName)jointName
{
  v4 = jointName;
  definition = [(ARSkeleton3D *)self definition];
  v6 = [definition indexForJointName:v4];

  if (v6 >= [(ARSkeleton3D *)self jointCount])
  {
    v12.i64[0] = 0x3F0000003FLL;
    v12.i64[1] = 0x3F0000003FLL;
    v8 = vnegq_f32(v12);
    v9 = v8;
    v10 = v8;
    v11 = v8;
  }

  else
  {
    v7 = [(ARSkeleton3D *)self jointModelTransforms]+ (v6 << 6);
    v8 = v7->columns[0];
    v9 = v7->columns[1];
    v10 = v7->columns[2];
    v11 = v7->columns[3];
  }

  result.columns[3] = v11;
  result.columns[2] = v10;
  result.columns[1] = v9;
  result.columns[0] = v8;
  return result;
}

- (simd_float4x4)localTransformForJointName:(ARSkeletonJointName)jointName
{
  v4 = jointName;
  definition = [(ARSkeleton3D *)self definition];
  v6 = [definition indexForJointName:v4];

  if (v6 >= [(ARSkeleton3D *)self jointCount])
  {
    v12.i64[0] = 0x3F0000003FLL;
    v12.i64[1] = 0x3F0000003FLL;
    v8 = vnegq_f32(v12);
    v9 = v8;
    v10 = v8;
    v11 = v8;
  }

  else
  {
    v7 = [(ARSkeleton3D *)self jointLocalTransforms]+ (v6 << 6);
    v8 = v7->columns[0];
    v9 = v7->columns[1];
    v10 = v7->columns[2];
    v11 = v7->columns[3];
  }

  result.columns[3] = v11;
  result.columns[2] = v10;
  result.columns[1] = v9;
  result.columns[0] = v8;
  return result;
}

- (ARSkeleton3D)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ARSkeleton3D;
  initPrivate = [(ARSkeleton *)&v9 initPrivate];
  if (initPrivate)
  {
    v6 = [coderCopy decodeObjectForKey:@"skeleton"];
    skeleton = initPrivate->_skeleton;
    initPrivate->_skeleton = v6;
  }

  return initPrivate;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ARCoreRESkeletonResult *)self->_skeleton isEqual:equalCopy[3]];

  return v5;
}

@end
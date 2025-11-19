@interface ARSkeleton3D
- (ARSkeleton3D)initWithCoder:(id)a3;
- (ARSkeleton3D)initWithCoreRESkeletonResult:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isJointTracked:(int64_t)a3;
- (simd_float4x4)localTransformForJointName:(ARSkeletonJointName)jointName;
- (simd_float4x4)modelTransformForJointName:(ARSkeletonJointName)jointName;
- (unint64_t)jointCount;
@end

@implementation ARSkeleton3D

- (ARSkeleton3D)initWithCoreRESkeletonResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ARSkeleton3D;
  v6 = [(ARSkeleton *)&v9 initPrivate];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 3, a3);
  }

  return v7;
}

- (unint64_t)jointCount
{
  v2 = [(ARSkeleton3D *)self definition];
  v3 = [v2 jointNames];
  v4 = [v3 count];

  return v4;
}

- (BOOL)isJointTracked:(int64_t)a3
{
  if (a3 < 0 || [(ARCoreRESkeletonResult *)self->_skeleton jointTransformCount]- 1 < a3)
  {
    return 0;
  }

  skeleton = self->_skeleton;

  return [(ARCoreRESkeletonResult *)skeleton isJointTracked:a3];
}

- (simd_float4x4)modelTransformForJointName:(ARSkeletonJointName)jointName
{
  v4 = jointName;
  v5 = [(ARSkeleton3D *)self definition];
  v6 = [v5 indexForJointName:v4];

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
  v5 = [(ARSkeleton3D *)self definition];
  v6 = [v5 indexForJointName:v4];

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

- (ARSkeleton3D)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ARSkeleton3D;
  v5 = [(ARSkeleton *)&v9 initPrivate];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"skeleton"];
    skeleton = v5->_skeleton;
    v5->_skeleton = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ARCoreRESkeletonResult *)self->_skeleton isEqual:v4[3]];

  return v5;
}

@end
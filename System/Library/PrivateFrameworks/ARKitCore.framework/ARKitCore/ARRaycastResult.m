@interface ARRaycastResult
- (__n128)initWithWorldTransform:(__n128)a3 target:(__n128)a4 targetAlignment:(__n128)a5;
- (__n128)setLocalTransform:(__n128)a3;
- (id)_description:(BOOL)a3;
- (simd_float4x4)worldTransform;
@end

@implementation ARRaycastResult

- (__n128)initWithWorldTransform:(__n128)a3 target:(__n128)a4 targetAlignment:(__n128)a5
{
  v16.receiver = a1;
  v16.super_class = ARRaycastResult;
  v10 = [(ARRaycastResult *)&v16 init];
  if (v10)
  {
    *v10->_anon_30 = a2;
    *&v10->_anon_30[16] = a3;
    result = a5;
    *&v10->_anon_30[32] = a4;
    *&v10->_anon_30[48] = a5;
    *&v10[1].super.isa = a2;
    *&v10[1]._targetAlignment = a3;
    *&v10[1]._anchorIdentifier = a4;
    *v10[1]._anon_30 = a5;
    v10->_target = a7;
    v10->_targetAlignment = a8;
  }

  return result;
}

- (id)_description:(BOOL)a3
{
  v3 = a3;
  v5 = [(ARRaycastResult *)self targetAlignment];
  if (v5 > ARRaycastTargetAlignmentAny)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E817D798[v5];
  }

  v7 = [(ARRaycastResult *)self target];
  switch(v7)
  {
    case ARRaycastTargetEstimatedPlane:
      v8 = @"estimatedPlane";
      break;
    case ARRaycastTargetExistingPlaneInfinite:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"existingPlaneInfinite (%@)", v6];
      goto LABEL_9;
    case ARRaycastTargetExistingPlaneGeometry:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"existingPlaneGeometry (%@)", v6];
      v8 = LABEL_9:;
      break;
    default:
      v8 = 0;
      break;
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [(ARRaycastResult *)self worldTransform];
  v16 = ARMatrix4x4Description(v3, v12, v13, v14, v15);
  v17 = [v9 stringWithFormat:@"<%@: %p target=%@ worldTransform=%@>", v11, self, v8, v16];

  return v17;
}

- (simd_float4x4)worldTransform
{
  v2 = *self->_anon_30;
  v3 = *&self->_anon_30[16];
  v4 = *&self->_anon_30[32];
  v5 = *&self->_anon_30[48];
  result.columns[3] = v5;
  result.columns[2] = v4;
  result.columns[1] = v3;
  result.columns[0] = v2;
  return result;
}

- (__n128)setLocalTransform:(__n128)a3
{
  result[7] = a2;
  result[8] = a3;
  result[9] = a4;
  result[10] = a5;
  return result;
}

@end
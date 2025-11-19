@interface ARRaycastQuery
- (ARRaycastQuery)initWithOrigin:(simd_float3)origin direction:(simd_float3)direction allowingTarget:(ARRaycastTarget)target alignment:(ARRaycastTargetAlignment)alignment;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation ARRaycastQuery

- (ARRaycastQuery)initWithOrigin:(simd_float3)origin direction:(simd_float3)direction allowingTarget:(ARRaycastTarget)target alignment:(ARRaycastTargetAlignment)alignment
{
  v11.receiver = self;
  v11.super_class = ARRaycastQuery;
  result = [(ARRaycastQuery *)&v11 init];
  if (result)
  {
    *result->_origin = origin;
    *result->_direction = direction;
    result->_target = target;
    result->_targetAlignment = alignment;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(ARRaycastQuery *)self origin];
    v16 = v6;
    [v5 origin];
    v8 = vceqq_f32(v16, v7);
    v8.i32[3] = v8.i32[2];
    if ((vminvq_u32(v8) & 0x80000000) != 0 && (-[ARRaycastQuery direction](self, "direction"), v17 = v9, [v5 direction], v11 = vceqq_f32(v17, v10), v11.i32[3] = v11.i32[2], (vminvq_u32(v11) & 0x80000000) != 0) && (v12 = -[ARRaycastQuery target](self, "target"), v12 == objc_msgSend(v5, "target")))
    {
      v13 = [(ARRaycastQuery *)self targetAlignment];
      v14 = v13 == [v5 targetAlignment];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = [(ARRaycastQuery *)self targetAlignment];
  if (v3 > ARRaycastTargetAlignmentAny)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E817D780[v3];
  }

  v5 = [(ARRaycastQuery *)self target];
  switch(v5)
  {
    case ARRaycastTargetEstimatedPlane:
      v6 = @"estimatedPlane";
      break;
    case ARRaycastTargetExistingPlaneInfinite:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"existingPlaneInfinite (%@)", v4];
      goto LABEL_9;
    case ARRaycastTargetExistingPlaneGeometry:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"existingPlaneGeometry (%@)", v4];
      v6 = LABEL_9:;
      break;
    default:
      v6 = 0;
      break;
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [(ARRaycastQuery *)self origin];
  v11 = ARVector3Description(v10);
  [(ARRaycastQuery *)self direction];
  v13 = ARVector3Description(v12);
  v14 = [v7 stringWithFormat:@"<%@: %p origin=%@ direction=%@ target=%@>", v9, self, v11, v13, v6];

  return v14;
}

@end
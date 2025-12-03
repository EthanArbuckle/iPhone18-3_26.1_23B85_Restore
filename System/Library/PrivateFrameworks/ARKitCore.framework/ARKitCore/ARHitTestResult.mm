@interface ARHitTestResult
- (ARHitTestResult)initWithType:(unint64_t)type;
- (__n128)setLocalTransform:(__n128)transform;
- (__n128)setWorldTransform:(__n128)transform;
- (id)_description:(BOOL)_description;
- (simd_float4x4)localTransform;
- (simd_float4x4)worldTransform;
@end

@implementation ARHitTestResult

- (ARHitTestResult)initWithType:(unint64_t)type
{
  v10.receiver = self;
  v10.super_class = ARHitTestResult;
  result = [(ARHitTestResult *)&v10 init];
  if (result)
  {
    result->_type = type;
    result->_distance = 0.0;
    v5 = MEMORY[0x1E69E9B18];
    v6 = *MEMORY[0x1E69E9B18];
    v7 = *(MEMORY[0x1E69E9B18] + 16);
    *result->_anon_20 = *MEMORY[0x1E69E9B18];
    *&result->_anon_20[16] = v7;
    v8 = *(v5 + 32);
    v9 = *(v5 + 48);
    *&result->_anon_20[32] = v8;
    *&result->_anon_20[48] = v9;
    *&result[1].super.isa = v6;
    *&result[1]._distance = v7;
    *result[1]._anon_20 = v8;
    *&result[1]._anon_20[16] = v9;
  }

  return result;
}

- (id)_description:(BOOL)_description
{
  _descriptionCopy = _description;
  type = [(ARHitTestResult *)self type];
  if (type > 7)
  {
    if (type == 8)
    {
      v6 = @"existingPlane";
      goto LABEL_15;
    }

    if (type != 16)
    {
      if (type == 32)
      {
        v6 = @"existingPlaneUsingGeometry";
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v6 = @"existingPlaneUsingExtent";
  }

  else
  {
    if (type == 1)
    {
      v6 = @"featurePoint";
      goto LABEL_15;
    }

    if (type != 2)
    {
      if (type == 4)
      {
        v6 = @"estimatedVerticalPlane";
        goto LABEL_15;
      }

LABEL_12:
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", -[ARHitTestResult type](self, "type")];
      goto LABEL_15;
    }

    v6 = @"estimatedHorizontalPlane";
  }

LABEL_15:
  v7 = MEMORY[0x1E696AD60];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [(ARHitTestResult *)self distance];
  v11 = v10;
  [(ARHitTestResult *)self localTransform];
  v16 = ARMatrix4x4Description(_descriptionCopy, v12, v13, v14, v15);
  [(ARHitTestResult *)self worldTransform];
  v21 = ARMatrix4x4Description(_descriptionCopy, v17, v18, v19, v20);
  v22 = [v7 stringWithFormat:@"<%@: %p type=%@ distance=%f localTransform=%@ worldTransform=%@", v9, self, v6, v11, v16, v21];

  anchor = [(ARHitTestResult *)self anchor];

  if (anchor)
  {
    anchor2 = [(ARHitTestResult *)self anchor];
    [v22 appendFormat:@" anchor=%@", anchor2];
  }

  [v22 appendString:@">"];

  return v22;
}

- (simd_float4x4)localTransform
{
  v2 = *self->_anon_20;
  v3 = *&self->_anon_20[16];
  v4 = *&self->_anon_20[32];
  v5 = *&self->_anon_20[48];
  result.columns[3] = v5;
  result.columns[2] = v4;
  result.columns[1] = v3;
  result.columns[0] = v2;
  return result;
}

- (__n128)setLocalTransform:(__n128)transform
{
  result[2] = a2;
  result[3] = transform;
  result[4] = a4;
  result[5] = a5;
  return result;
}

- (simd_float4x4)worldTransform
{
  v2 = *&self[1].super.isa;
  v3 = *&self[1]._distance;
  v4 = *self[1]._anon_20;
  v5 = *&self[1]._anon_20[16];
  result.columns[3] = v5;
  result.columns[2] = v4;
  result.columns[1] = v3;
  result.columns[0] = v2;
  return result;
}

- (__n128)setWorldTransform:(__n128)transform
{
  result[6] = a2;
  result[7] = transform;
  result[8] = a4;
  result[9] = a5;
  return result;
}

@end
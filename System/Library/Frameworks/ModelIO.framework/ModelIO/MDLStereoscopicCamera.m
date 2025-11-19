@interface MDLStereoscopicCamera
- (MDLStereoscopicCamera)init;
- (matrix_float4x4)leftProjectionMatrix;
- (matrix_float4x4)leftViewMatrix;
- (matrix_float4x4)rightProjectionMatrix;
- (matrix_float4x4)rightViewMatrix;
@end

@implementation MDLStereoscopicCamera

- (MDLStereoscopicCamera)init
{
  v6.receiver = self;
  v6.super_class = MDLStereoscopicCamera;
  v2 = [(MDLCamera *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_interPupillaryDistance = 63.0;
    v4 = v2;
  }

  return v3;
}

- (matrix_float4x4)leftViewMatrix
{
  v2 = sub_239F161E0(self->super._camera, (self->_interPupillaryDistance * -0.01) / self->super._worldToMetersConversionScale);
  result.columns[3].i64[1] = v9;
  result.columns[3].i64[0] = v8;
  result.columns[2].i64[1] = v7;
  result.columns[2].i64[0] = v6;
  result.columns[1].i64[1] = v5;
  result.columns[1].i64[0] = v4;
  result.columns[0].i64[1] = v3;
  *result.columns[0].i64 = v2;
  return result;
}

- (matrix_float4x4)rightViewMatrix
{
  v2 = sub_239F161E0(self->super._camera, (self->_interPupillaryDistance * 0.01) / self->super._worldToMetersConversionScale);
  result.columns[3].i64[1] = v9;
  result.columns[3].i64[0] = v8;
  result.columns[2].i64[1] = v7;
  result.columns[2].i64[0] = v6;
  result.columns[1].i64[1] = v5;
  result.columns[1].i64[0] = v4;
  result.columns[0].i64[1] = v3;
  *result.columns[0].i64 = v2;
  return result;
}

- (matrix_float4x4)leftProjectionMatrix
{
  v2 = sub_239F1622C(self->super._camera, (self->_interPupillaryDistance * -0.01) / self->super._worldToMetersConversionScale);
  result.columns[3].i64[1] = v10;
  result.columns[3].i64[0] = v9;
  result.columns[2].i64[1] = v8;
  result.columns[2].i64[0] = v7;
  result.columns[1].i64[1] = v6;
  result.columns[1].i64[0] = v5;
  result.columns[0].i64[1] = v4;
  result.columns[0].f32[1] = v3;
  result.columns[0].f32[0] = v2;
  return result;
}

- (matrix_float4x4)rightProjectionMatrix
{
  v2 = sub_239F1622C(self->super._camera, (self->_interPupillaryDistance * 0.01) / self->super._worldToMetersConversionScale);
  result.columns[3].i64[1] = v10;
  result.columns[3].i64[0] = v9;
  result.columns[2].i64[1] = v8;
  result.columns[2].i64[0] = v7;
  result.columns[1].i64[1] = v6;
  result.columns[1].i64[0] = v5;
  result.columns[0].i64[1] = v4;
  result.columns[0].f32[1] = v3;
  result.columns[0].f32[0] = v2;
  return result;
}

@end
@interface GLKEffectPropertyTransform
- (GLKEffectPropertyTransform)init;
- (GLKMatrix3)normalMatrix;
- (GLKMatrix4)modelviewMatrix;
- (GLKMatrix4)projectionMatrix;
- (_GLKMatrix4)invModelviewMatrix;
- (_GLKMatrix4)mvpMatrix;
- (id)description;
- (void)bind;
- (void)dealloc;
- (void)loadMatrix:(int)matrix matrix:(_GLKMatrix4 *)a4;
- (void)setInvModelviewMatrix:(_GLKMatrix4 *)matrix;
- (void)setModelviewMatrix:(GLKMatrix4 *)modelviewMatrix;
- (void)setMvpMatrix:(_GLKMatrix4 *)matrix;
- (void)setProjectionMatrix:(GLKMatrix4 *)projectionMatrix;
- (void)setShaderBindings;
@end

@implementation GLKEffectPropertyTransform

- (GLKEffectPropertyTransform)init
{
  v3.receiver = self;
  v3.super_class = GLKEffectPropertyTransform;
  result = [(GLKEffectProperty *)&v3 init];
  if (result)
  {
    result->_invModelviewMatrix = GLKMatrix4Identity;
    result->_mvpMatrix = GLKMatrix4Identity;
    result->_modelviewMatrix = GLKMatrix4Identity;
    result->_projectionMatrix = GLKMatrix4Identity;
    *&result->_normalMatrix.m00 = *&GLKMatrix4Identity.m00;
    *&result->_normalMatrix.m[4] = 0x3F800000uLL;
    result->_normalMatrix.m22 = 1.0;
  }

  return result;
}

- (void)loadMatrix:(int)matrix matrix:(_GLKMatrix4 *)a4
{
  if (matrix == 1)
  {
    v8 = *&a4->m[12];
    v10 = *&a4->m00;
    v9 = *&a4->m[4];
    *&self->_modelviewMatrix.m[8] = *&a4->m[8];
    *&self->_modelviewMatrix.m[12] = v8;
    *&self->_modelviewMatrix.m00 = v10;
    *&self->_modelviewMatrix.m[4] = v9;
    [(GLKEffectProperty *)self setDirtyUniforms:[(GLKEffectProperty *)self dirtyUniforms]| 0x20000000000];
  }

  else
  {
    if (matrix)
    {
      return;
    }

    v5 = *&a4->m[12];
    v7 = *&a4->m00;
    v6 = *&a4->m[4];
    *&self->_projectionMatrix.m[8] = *&a4->m[8];
    *&self->_projectionMatrix.m[12] = v5;
    *&self->_projectionMatrix.m00 = v7;
    *&self->_projectionMatrix.m[4] = v6;
  }

  v11 = [(GLKEffectProperty *)self dirtyUniforms]| 0x40000000000;

  [(GLKEffectProperty *)self setDirtyUniforms:v11];
}

- (void)setShaderBindings
{
  params = 0;
  glGetIntegerv(0x8B8Du, &params);
  self->_modelviewMatrixLoc = glGetUniformLocation(params, "modelviewMatrix");
  self->_normalMatrixLoc = glGetUniformLocation(params, "normalMatrix");
  self->_mvpMatrixLoc = glGetUniformLocation(params, "mvpMatrix");
  [(GLKEffectPropertyTransform *)self dirtyAllUniforms];
}

- (_GLKMatrix4)mvpMatrix
{
  result = [(GLKEffectProperty *)self dirtyUniforms];
  if ((result & 0x40000000000) != 0)
  {
    v6 = *&self->_projectionMatrix.m00;
    v7 = *&self->_projectionMatrix.m[4];
    v8 = *&self->_projectionMatrix.m[8];
    v9 = *&self->_projectionMatrix.m[12];
    v10 = *&self->_modelviewMatrix.m00;
    v11 = *&self->_modelviewMatrix.m[4];
    v12 = *&self->_modelviewMatrix.m[8];
    v13 = vmulq_n_f32(v6, v10.f32[0]);
    v14 = vmulq_n_f32(v6, v11.f32[0]);
    v15 = vmulq_n_f32(v6, v12.f32[0]);
    v16 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(*&self->_modelviewMatrix.m[12])), v7, *&self->_modelviewMatrix.m[12], 1), v8, *&self->_modelviewMatrix.m[12], 2), v9, *&self->_modelviewMatrix.m[12], 3);
    *&self->_mvpMatrix.m00 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(v13, v7, *v10.f32, 1), v8, v10, 2), v9, v10, 3);
    *&self->_mvpMatrix.m[4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(v14, v7, *v11.f32, 1), v8, v11, 2), v9, v11, 3);
    *&self->_mvpMatrix.m[8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(v15, v7, *v12.f32, 1), v8, v12, 2), v9, v12, 3);
    *&self->_mvpMatrix.m[12] = v16;
  }

  v17 = *&self->_mvpMatrix.m[4];
  *&retstr->m00 = *&self->_mvpMatrix.m00;
  *&retstr->m[4] = v17;
  v18 = *&self->_mvpMatrix.m[12];
  *&retstr->m[8] = *&self->_mvpMatrix.m[8];
  *&retstr->m[12] = v18;
  return result;
}

- (GLKMatrix3)normalMatrix
{
  result = [(GLKEffectProperty *)self dirtyUniforms];
  if ((result & 0x20000000000) != 0)
  {
    if (self)
    {
      result = [(GLKEffectPropertyTransform *)self invModelviewMatrix];
    }

    else
    {
      memset(v8, 0, sizeof(v8));
    }

    v6 = v8;
    v9 = vld4q_f32(v6);
    v9.val[0].i32[3] = v9.val[1].i32[0];
    *&self->_normalMatrix.m00 = v9.val[0];
    *&self->_normalMatrix.m[4] = vextq_s8(vextq_s8(v9.val[1], v9.val[1], 0xCuLL), v9.val[2], 8uLL);
    LODWORD(self->_normalMatrix.m22) = v9.val[2].i32[2];
  }

  v7 = *&self->_normalMatrix.m[4];
  *&retstr->m00 = *&self->_normalMatrix.m00;
  *&retstr->m[4] = v7;
  retstr->m22 = self->_normalMatrix.m22;
  return result;
}

- (_GLKMatrix4)invModelviewMatrix
{
  result = [(GLKEffectProperty *)self dirtyUniforms];
  if ((result & 0x20000000000) != 0)
  {
    isInvertible = 0;
    v6 = *&self->_modelviewMatrix.m[4];
    *&v12.m00 = *&self->_modelviewMatrix.m00;
    *&v12.m[4] = v6;
    v7 = *&self->_modelviewMatrix.m[12];
    *&v12.m[8] = *&self->_modelviewMatrix.m[8];
    *&v12.m[12] = v7;
    result = GLKMatrix4Invert(&v13, &v12, &isInvertible);
    v8 = *&v13.m[4];
    *&self->_invModelviewMatrix.m00 = *&v13.m00;
    *&self->_invModelviewMatrix.m[4] = v8;
    v9 = *&v13.m[12];
    *&self->_invModelviewMatrix.m[8] = *&v13.m[8];
    *&self->_invModelviewMatrix.m[12] = v9;
  }

  v10 = *&self->_invModelviewMatrix.m[4];
  *&retstr->m00 = *&self->_invModelviewMatrix.m00;
  *&retstr->m[4] = v10;
  v11 = *&self->_invModelviewMatrix.m[12];
  *&retstr->m[8] = *&self->_invModelviewMatrix.m[8];
  *&retstr->m[12] = v11;
  return result;
}

- (void)setProjectionMatrix:(GLKMatrix4 *)projectionMatrix
{
  v4 = *&projectionMatrix->m[12];
  v6 = *&projectionMatrix->m00;
  v5 = *&projectionMatrix->m[4];
  *&self->_projectionMatrix.m[8] = *&projectionMatrix->m[8];
  *&self->_projectionMatrix.m[12] = v4;
  *&self->_projectionMatrix.m00 = v6;
  *&self->_projectionMatrix.m[4] = v5;
  v7 = [(GLKEffectProperty *)self dirtyUniforms]| 0x40000000000;

  [(GLKEffectProperty *)self setDirtyUniforms:v7];
}

- (void)setModelviewMatrix:(GLKMatrix4 *)modelviewMatrix
{
  v4 = *&modelviewMatrix->m[12];
  v6 = *&modelviewMatrix->m00;
  v5 = *&modelviewMatrix->m[4];
  *&self->_modelviewMatrix.m[8] = *&modelviewMatrix->m[8];
  *&self->_modelviewMatrix.m[12] = v4;
  *&self->_modelviewMatrix.m00 = v6;
  *&self->_modelviewMatrix.m[4] = v5;
  [(GLKEffectProperty *)self setDirtyUniforms:[(GLKEffectProperty *)self dirtyUniforms]| 0x20000000000];
  v7 = [(GLKEffectProperty *)self dirtyUniforms]| 0x40000000000;

  [(GLKEffectProperty *)self setDirtyUniforms:v7];
}

- (void)bind
{
  if ([(GLKEffectProperty *)self dirtyUniforms])
  {
    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x20000000000) != 0)
    {
      normalMatrixLoc = self->_normalMatrixLoc;
      if (normalMatrixLoc != -1)
      {
        [(GLKEffectPropertyTransform *)self normalMatrix];
        glUniformMatrix3fv(normalMatrixLoc, 1, 0, value);
      }

      glUniformMatrix4fv(self->_modelviewMatrixLoc, 1, 0, &self->_modelviewMatrix.m00);
    }

    if (([(GLKEffectProperty *)self dirtyUniforms]& 0x40000000000) != 0)
    {
      mvpMatrixLoc = self->_mvpMatrixLoc;
      [(GLKEffectPropertyTransform *)self mvpMatrix];
      glUniformMatrix4fv(mvpMatrixLoc, 1, 0, &v5);
    }

    [(GLKEffectProperty *)self setDirtyUniforms:0];
  }
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"%@ = %p\n{\n", objc_msgSend(objc_opt_class(), "description"), self];
  [v3 appendFormat:@"\tmodelviewMatrix\n\t{\n"];
  v4 = *&self->_modelviewMatrix.m[4];
  *&matrix.m00 = *&self->_modelviewMatrix.m00;
  *&matrix.m[4] = v4;
  v5 = *&self->_modelviewMatrix.m[12];
  *&matrix.m[8] = *&self->_modelviewMatrix.m[8];
  *&matrix.m[12] = v5;
  [v3 appendFormat:@"\t%@\n", NSStringFromGLKMatrix4(&matrix)];
  [v3 appendFormat:@"\t}\n"];
  [v3 appendFormat:@"\tprojectionMatrix\n\t{\n"];
  v6 = *&self->_projectionMatrix.m[4];
  *&matrix.m00 = *&self->_projectionMatrix.m00;
  *&matrix.m[4] = v6;
  v7 = *&self->_projectionMatrix.m[12];
  *&matrix.m[8] = *&self->_projectionMatrix.m[8];
  *&matrix.m[12] = v7;
  [v3 appendFormat:@"\t%@\n", NSStringFromGLKMatrix4(&matrix)];
  [v3 appendFormat:@"\t}\n"];
  [v3 appendFormat:@"\tnormalMatrix\n\t{\n"];
  v8 = *&self->_normalMatrix.m[4];
  *&matrix.m00 = *&self->_normalMatrix.m00;
  *&matrix.m[4] = v8;
  matrix.m20 = self->_normalMatrix.m22;
  [v3 appendFormat:@"\t%@\n", NSStringFromGLKMatrix3(&matrix)];
  [v3 appendFormat:@"\t}\n"];
  [v3 appendFormat:@"}"];
  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = GLKEffectPropertyTransform;
  [(GLKEffectProperty *)&v2 dealloc];
}

- (GLKMatrix4)modelviewMatrix
{
  v3 = *&self[1].m[8];
  *&retstr->m00 = *&self[1].m[4];
  *&retstr->m[4] = v3;
  v4 = *&self[2].m00;
  *&retstr->m[8] = *&self[1].m[12];
  *&retstr->m[12] = v4;
  return self;
}

- (GLKMatrix4)projectionMatrix
{
  v3 = *&self[2].m[8];
  *&retstr->m00 = *&self[2].m[4];
  *&retstr->m[4] = v3;
  v4 = *&self[3].m00;
  *&retstr->m[8] = *&self[2].m[12];
  *&retstr->m[12] = v4;
  return self;
}

- (void)setInvModelviewMatrix:(_GLKMatrix4 *)matrix
{
  v3 = *&matrix->m[12];
  v5 = *&matrix->m00;
  v4 = *&matrix->m[4];
  *&self->_invModelviewMatrix.m[8] = *&matrix->m[8];
  *&self->_invModelviewMatrix.m[12] = v3;
  *&self->_invModelviewMatrix.m00 = v5;
  *&self->_invModelviewMatrix.m[4] = v4;
}

- (void)setMvpMatrix:(_GLKMatrix4 *)matrix
{
  v3 = *&matrix->m[12];
  v5 = *&matrix->m00;
  v4 = *&matrix->m[4];
  *&self->_mvpMatrix.m[8] = *&matrix->m[8];
  *&self->_mvpMatrix.m[12] = v3;
  *&self->_mvpMatrix.m00 = v5;
  *&self->_mvpMatrix.m[4] = v4;
}

@end
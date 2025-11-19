@interface SKTransformNode
- (matrix_float3x3)rotationMatrix;
- (vector_float3)eulerAngles;
- (void)_didMakeBackingNode;
- (void)setEulerAngles:(vector_float3)euler;
- (void)setRotationMatrix:(matrix_float3x3)rotationMatrix;
- (void)setXRotation:(CGFloat)xRotation;
- (void)setYRotation:(CGFloat)yRotation;
@end

@implementation SKTransformNode

- (void)_didMakeBackingNode
{
  v3.receiver = self;
  v3.super_class = SKTransformNode;
  [(SKNode *)&v3 _didMakeBackingNode];
  self->_skcTransformLayer = [(SKNode *)self _backingNode];
}

- (void)setXRotation:(CGFloat)xRotation
{
  v3 = *self->_euler;
  v4 = xRotation;
  *&v3 = v4;
  [(SKTransformNode *)self setEulerAngles:*&v3];
}

- (void)setYRotation:(CGFloat)yRotation
{
  v3 = *self->_euler;
  v4 = yRotation;
  *(&v3 + 1) = v4;
  [(SKTransformNode *)self setEulerAngles:*&v3];
}

- (void)setEulerAngles:(vector_float3)euler
{
  v11 = v3;
  *self->_euler = v3;
  v5 = __sincosf_stret(0.5 * v3.f32[0]);
  v6 = __sincosf_stret(vmuls_lane_f32(0.5, *v11.f32, 1));
  v7 = __sincosf_stret(vmuls_lane_f32(0.5, v11, 2));
  v8.vector.f32[0] = ((v7.__cosval * v5.__sinval) * v6.__cosval) - ((v7.__sinval * v5.__cosval) * v6.__sinval);
  v8.vector.f32[1] = (v6.__cosval * (v7.__sinval * v5.__sinval)) + ((v7.__cosval * v5.__cosval) * v6.__sinval);
  v8.vector.f32[2] = ((v7.__sinval * v5.__cosval) * v6.__cosval) - ((v7.__cosval * v5.__sinval) * v6.__sinval);
  v8.vector.f32[3] = (v6.__sinval * (v7.__sinval * v5.__sinval)) + ((v7.__cosval * v5.__cosval) * v6.__cosval);
  skcTransformLayer = self->_skcTransformLayer;
  v10 = v8;

  SKCTransformNode::setQuaternion(skcTransformLayer, v10);
}

- (vector_float3)eulerAngles
{
  Quaternion = SKCTransformNode::getQuaternion(self->_skcTransformLayer);
  v3 = Quaternion.n128_f32[0];
  v22 = Quaternion.n128_u64[1];
  _S8 = Quaternion.n128_u32[1];
  _S9 = Quaternion.n128_u32[2];
  v6 = vmuls_lane_f32(Quaternion.n128_f32[1], Quaternion.n128_u64[0], 1);
  v7 = vmuls_lane_f32(Quaternion.n128_f32[1], Quaternion, 2);
  Quaternion.n128_f32[0] = (v7 + (Quaternion.n128_f32[3] * Quaternion.n128_f32[0])) + (v7 + (Quaternion.n128_f32[3] * Quaternion.n128_f32[0]));
  v8 = (v6 + (v3 * v3)) * -2.0 + 1.0;
  atan2f(Quaternion.n128_f32[0], v8);
  _V1.S[3] = HIDWORD(v22);
  __asm { FMLA            S0, S8, V1.S[3] }

  v15 = _S0 + _S0;
  if (v15 > 1.0)
  {
    v15 = 1.0;
  }

  if (v15 < -1.0)
  {
    v15 = -1.0;
  }

  asinf(v15);
  _V1.D[1] = v22;
  __asm
  {
    FMLA            S0, S9, V1.S[3]
    FMLA            S10, S9, V1.S[2]
  }

  v19 = _S10 * -2.0 + 1.0;
  atan2f(_S0 + _S0, v19);
  result.i64[1] = v21;
  result.i64[0] = v20;
  return result;
}

- (void)setRotationMatrix:(matrix_float3x3)rotationMatrix
{
  v3 = rotationMatrix.columns[2].f32[2] + (rotationMatrix.columns[0].f32[0] + rotationMatrix.columns[1].f32[1]);
  if (v3 >= 0.0)
  {
    v11 = sqrtf(v3 + 1.0);
    v12 = v11 + v11;
    v13 = vrecpe_f32(COERCE_UNSIGNED_INT(v11 + v11));
    v14 = vmul_f32(v13, vrecps_f32(COERCE_UNSIGNED_INT(v11 + v11), v13));
    v14.i32[0] = vmul_f32(v14, vrecps_f32(COERCE_UNSIGNED_INT(v11 + v11), v14)).u32[0];
    *v25.vector.f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(rotationMatrix.columns[1], rotationMatrix.columns[1], 8uLL), *rotationMatrix.columns[2].f32), vext_s8(*rotationMatrix.columns[2].f32, *&vextq_s8(rotationMatrix.columns[0], rotationMatrix.columns[0], 8uLL), 4uLL)), v14.f32[0]);
    v15.f32[0] = rotationMatrix.columns[0].f32[1] - rotationMatrix.columns[1].f32[0];
    v15.f32[1] = v12;
    v14.i32[1] = 0.25;
    *rotationMatrix.columns[0].f32 = vmul_f32(v15, v14);
  }

  else if (rotationMatrix.columns[0].f32[0] < rotationMatrix.columns[1].f32[1] || rotationMatrix.columns[0].f32[0] < rotationMatrix.columns[2].f32[2])
  {
    v5 = 1.0 - rotationMatrix.columns[0].f32[0];
    if (rotationMatrix.columns[1].f32[1] >= rotationMatrix.columns[2].f32[2])
    {
      v26 = sqrtf(rotationMatrix.columns[1].f32[1] + (v5 - rotationMatrix.columns[2].f32[2]));
      *&v27 = v26 + v26;
      v28 = vrecpe_f32(v27);
      v29 = vmul_f32(v28, vrecps_f32(v27, v28));
      v30.i32[0] = vmul_f32(v29, vrecps_f32(v27, v29)).u32[0];
      v29.f32[0] = rotationMatrix.columns[0].f32[1] + rotationMatrix.columns[1].f32[0];
      v29.i32[1] = v27;
      *rotationMatrix.columns[0].f32 = vmul_n_f32(vext_s8(vadd_f32(*rotationMatrix.columns[2].f32, vdup_laneq_s32(rotationMatrix.columns[1], 2)), vsub_f32(*rotationMatrix.columns[2].f32, *&vextq_s8(rotationMatrix.columns[0], rotationMatrix.columns[0], 8uLL)), 4uLL), v30.f32[0]);
      v30.i32[1] = 0.25;
      *v25.vector.f32 = vmul_f32(v29, v30);
    }

    else
    {
      v6 = sqrtf(rotationMatrix.columns[2].f32[2] + (v5 - rotationMatrix.columns[1].f32[1]));
      v7.f32[0] = v6 + v6;
      v8 = vrecpe_f32(COERCE_UNSIGNED_INT(v6 + v6));
      v9 = vmul_f32(v8, vrecps_f32(COERCE_UNSIGNED_INT(v6 + v6), v8));
      v9.i32[0] = vmul_f32(v9, vrecps_f32(COERCE_UNSIGNED_INT(v6 + v6), v9)).u32[0];
      *v25.vector.f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(rotationMatrix.columns[0], rotationMatrix.columns[0], 8uLL), *&vextq_s8(rotationMatrix.columns[1], rotationMatrix.columns[1], 8uLL)), *rotationMatrix.columns[2].f32), v9.f32[0]);
      v7.f32[1] = rotationMatrix.columns[0].f32[1] - rotationMatrix.columns[1].f32[0];
      __asm { FMOV            V0.2S, #0.25 }

      _D0.i32[1] = v9.i32[0];
      *rotationMatrix.columns[0].f32 = vmul_f32(v7, _D0);
    }
  }

  else
  {
    v16 = sqrtf(rotationMatrix.columns[0].f32[0] + ((1.0 - rotationMatrix.columns[1].f32[1]) - rotationMatrix.columns[2].f32[2]));
    v17.f32[0] = v16 + v16;
    v18 = vrecpe_f32(v17.u32[0]);
    v19 = vmul_f32(v18, vrecps_f32(v17.u32[0], v18));
    LODWORD(v20) = vmul_f32(v19, vrecps_f32(v17.u32[0], v19)).u32[0];
    v17.f32[1] = rotationMatrix.columns[0].f32[1] + rotationMatrix.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.f32[1] = v20;
    *v25.vector.f32 = vmul_f32(v17, _D5);
    rotationMatrix.columns[0].i32[0] = vadd_f32(*&vextq_s8(rotationMatrix.columns[0], rotationMatrix.columns[0], 8uLL), *rotationMatrix.columns[2].f32).u32[0];
    rotationMatrix.columns[0].i32[1] = vsub_f32(vdup_laneq_s32(*(&rotationMatrix + 16), 2), *(&rotationMatrix + 32)).i32[1];
    *rotationMatrix.columns[0].f32 = vmul_n_f32(*rotationMatrix.columns[0].f32, v20);
  }

  v25.vector.i64[1] = rotationMatrix.columns[0].i64[0];
  v31 = v25;
  SKCTransformNode::setQuaternion(self->_skcTransformLayer, v31);
}

- (matrix_float3x3)rotationMatrix
{
  _Q0 = SKCTransformNode::getQuaternion(self->_skcTransformLayer);
  _S5 = _Q0.n128_f32[1] + _Q0.n128_f32[1];
  __asm { FMLS            S3, S5, V0.S[1] }

  _S7 = vmuls_lane_f32(-2.0, _Q0, 2);
  __asm { FMLA            S3, S7, V0.S[2] }

  _S16 = _Q0.n128_f32[0] + _Q0.n128_f32[0];
  __asm
  {
    FMLA            S18, S16, V0.S[1]
    FMLA            S19, S16, V0.S[2]
    FMLA            S1, S16, V0.S[1]
    FMLA            S6, S7, V0.S[2]
    FMLA            S7, S5, V0.S[2]
    FMLA            S2, S16, V0.S[2]
    FMLA            S16, S5, V0.S[2]
  }

  _Q3.i32[1] = _S18;
  _Q3.i32[2] = _S19;
  HIDWORD(_D1) = _S6;
  LODWORD(v18) = _S7;
  HIDWORD(_D2) = _S16;
  __asm { FMLS            S4, S5, V0.S[1] }

  LODWORD(v21) = _S4;
  v22 = _Q3;
  result.columns[0] = v22;
  result.columns[2].i64[1] = v21;
  result.columns[2].i64[0] = _D2;
  result.columns[1].i64[1] = v18;
  result.columns[1].i64[0] = _D1;
  return result;
}

@end
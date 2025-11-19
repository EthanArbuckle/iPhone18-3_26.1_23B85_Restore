@interface MDLTransform
+ (__n128)globalTransformWithObject:(uint64_t)a3 atTime:(void *)a4;
+ (__n128)localTransformWithObject:(const char *)a3 atTime:(void *)a4;
- (CAAnimation)transformAnimation;
- (MDLTransform)init;
- (MDLTransform)initWithMatrix:(matrix_float4x4)matrix;
- (MDLTransform)initWithTransformComponent:(id)component;
- (MDLTransform)initWithTransformComponent:(id)component resetsTransform:(BOOL)resetsTransform;
- (NSArray)keyTimes;
- (__n128)localTransformAtTime:(uint64_t)a1;
- (__n128)matrix;
- (double)maximumTime;
- (double)minimumTime;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (matrix_float4x4)rotationMatrixAtTime:(NSTimeInterval)time;
- (uint64_t)setLocalTransform:(__n128)a3;
- (uint64_t)setLocalTransform:(__n128)a3 forTime:(__n128)a4;
- (uint64_t)setMatrix:(__n128)a3;
- (vector_float3)rotation;
- (vector_float3)rotationAtTime:(NSTimeInterval)time;
- (vector_float3)scale;
- (vector_float3)scaleAtTime:(NSTimeInterval)time;
- (vector_float3)shear;
- (vector_float3)shearAtTime:(NSTimeInterval)time;
- (vector_float3)translation;
- (vector_float3)translationAtTime:(NSTimeInterval)time;
- (void)setRotation:(vector_float3)rotation;
- (void)setScale:(vector_float3)scale;
- (void)setShear:(vector_float3)shear;
- (void)setTranslation:(vector_float3)translation;
@end

@implementation MDLTransform

- (MDLTransform)init
{
  v6.receiver = self;
  v6.super_class = MDLTransform;
  v2 = [(MDLTransform *)&v6 init];
  v3 = v2;
  if (v2)
  {
    sub_239E682E4(&v2->_transform);
    v4 = v3;
  }

  return v3;
}

- (id).cxx_construct
{
  *(self + 129) = 0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 18) = 0u;
  *(self + 19) = 0u;
  *(self + 20) = 0u;
  *(self + 21) = 0u;
  *(self + 22) = 0u;
  *(self + 23) = 0u;
  *(self + 24) = 0u;
  return self;
}

- (NSArray)keyTimes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_239ECBCF4(&self->_transform, &__p);
  v7 = __p;
  v6 = v14;
  if (v14 == __p)
  {
    v10 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v4, v5, 0.0);
    objc_msgSend_addObject_(v3, v11, v10);
  }

  else
  {
    do
    {
      v8 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v4, v5, *v7);
      objc_msgSend_addObject_(v3, v9, v8);

      ++v7;
    }

    while (v7 != v6);
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  return v3;
}

- (double)minimumTime
{
  result = self->_transform._startTime;
  if (result == 1.79769313e308)
  {
    return 0.0;
  }

  return result;
}

- (double)maximumTime
{
  result = self->_transform._greatestTime;
  if (result == 1.79769313e308)
  {
    return 0.0;
  }

  return result;
}

- (__n128)matrix
{
  result = *(a1 + 144);
  v2 = *(a1 + 160);
  v3 = *(a1 + 176);
  v4 = *(a1 + 192);
  return result;
}

- (uint64_t)setMatrix:(__n128)a3
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return sub_239ECB24C((a1 + 16), v6);
}

- (vector_float3)translation
{
  begin = self->_transform._keyedTranslation.__begin_;
  if (self->_transform._keyedTranslation.__end_ != begin)
  {
    v3 = begin[1];
  }

  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

- (void)setTranslation:(vector_float3)translation
{
  begin = self->_transform._keyedTranslation.__begin_;
  self->_transform._keyedTranslation.__end_ = begin;
  cap = self->_transform._keyedTranslation.__cap_;
  if (begin >= cap)
  {
    v6 = cap - begin;
    v7 = v6 >> 4;
    if ((v6 >> 4) <= 1)
    {
      v7 = 1;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFE0)
    {
      v8 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    sub_239E6861C(&self->_transform, v8);
  }

  *begin = 0x7FEFFFFFFFFFFFFFLL;
  begin[1] = v3;
  self->_transform._keyedTranslation.__end_ = begin + 2;

  sub_239ECAF44();
}

- (vector_float3)shear
{
  begin = self->_transform._keyedShear.__begin_;
  if (self->_transform._keyedShear.__end_ != begin)
  {
    v3 = begin[1];
  }

  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

- (void)setShear:(vector_float3)shear
{
  begin = self->_transform._keyedShear.__begin_;
  p_keyedShear = &self->_transform._keyedShear;
  v6 = begin;
  p_keyedShear->__end_ = begin;
  cap = p_keyedShear->__cap_;
  if (begin >= cap)
  {
    v9 = cap - v6;
    v10 = v9 >> 4;
    if ((v9 >> 4) <= 1)
    {
      v10 = 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_239E6861C(p_keyedShear, v11);
  }

  *v6 = 0x7FEFFFFFFFFFFFFFLL;
  *(v6 + 1) = v3;
  self->_transform._keyedShear.__end_ = v6 + 32;

  sub_239ECAF44();
}

- (vector_float3)scale
{
  begin = self->_transform._keyedScale.__begin_;
  if (self->_transform._keyedScale.__end_ == begin)
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  else
  {
    v3 = begin[1];
  }

  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

- (void)setScale:(vector_float3)scale
{
  begin = self->_transform._keyedScale.__begin_;
  p_keyedScale = &self->_transform._keyedScale;
  v6 = begin;
  p_keyedScale->__end_ = begin;
  cap = p_keyedScale->__cap_;
  if (begin >= cap)
  {
    v9 = cap - v6;
    v10 = v9 >> 4;
    if ((v9 >> 4) <= 1)
    {
      v10 = 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_239E6861C(p_keyedScale, v11);
  }

  *v6 = 0x7FEFFFFFFFFFFFFFLL;
  *(v6 + 1) = v3;
  self->_transform._keyedScale.__end_ = v6 + 32;

  sub_239ECAF44();
}

- (vector_float3)rotation
{
  begin = self->_transform._keyedRotation.__begin_;
  if (self->_transform._keyedRotation.__end_ != begin)
  {
    v3 = begin[1];
  }

  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

- (void)setRotation:(vector_float3)rotation
{
  begin = self->_transform._keyedRotation.__begin_;
  p_keyedRotation = &self->_transform._keyedRotation;
  v6 = begin;
  p_keyedRotation->__end_ = begin;
  cap = p_keyedRotation->__cap_;
  if (begin >= cap)
  {
    v9 = cap - v6;
    v10 = v9 >> 4;
    if ((v9 >> 4) <= 1)
    {
      v10 = 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_239E6861C(p_keyedRotation, v11);
  }

  *v6 = 0x7FEFFFFFFFFFFFFFLL;
  *(v6 + 1) = v3;
  self->_transform._keyedRotation.__end_ = v6 + 32;

  sub_239ECAF44();
}

- (vector_float3)scaleAtTime:(NSTimeInterval)time
{
  sub_239ECAE7C(&self->_transform, time);
  result.i64[1] = v4;
  result.i64[0] = v3;
  return result;
}

- (vector_float3)shearAtTime:(NSTimeInterval)time
{
  sub_239ECADB4(&self->_transform, time);
  result.i64[1] = v4;
  result.i64[0] = v3;
  return result;
}

- (vector_float3)translationAtTime:(NSTimeInterval)time
{
  sub_239ECACEC(&self->_transform, time);
  result.i64[1] = v4;
  result.i64[0] = v3;
  return result;
}

- (vector_float3)rotationAtTime:(NSTimeInterval)time
{
  sub_239ECAA64(&self->_transform, time);
  result.i64[1] = v4;
  result.i64[0] = v3;
  return result;
}

- (MDLTransform)initWithTransformComponent:(id)component
{
  v4 = component;
  v9 = objc_msgSend_init(self, v5, v6);
  if (v9)
  {
    objc_msgSend_localTransformAtTime_(v4, v7, v8, 0.0);
    v16[0] = v10;
    v16[1] = v11;
    v16[2] = v12;
    v16[3] = v13;
    sub_239ECB24C(&v9->_transform._keyedTranslation.__begin_, v16);
    v14 = v9;
  }

  return v9;
}

- (MDLTransform)initWithTransformComponent:(id)component resetsTransform:(BOOL)resetsTransform
{
  v5 = objc_msgSend_initWithTransformComponent_(self, a2, component);
  v6 = v5;
  if (v5)
  {
    v5->_transform._resetTransformStack = resetsTransform;
    v7 = v5;
  }

  return v6;
}

- (MDLTransform)initWithMatrix:(matrix_float4x4)matrix
{
  v4 = objc_msgSend_init(self, a2, v3, *matrix.columns, matrix.columns[1].i64[0], matrix.columns[1].i64[1], matrix.columns[2].i64[0], matrix.columns[2].i64[1], matrix.columns[3].i64[0], matrix.columns[3].i64[1]);
  v5 = v4;
  if (v4)
  {
    sub_239ECB24C((v4 + 16), &v8);
    v6 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  sub_239F1647C(v10 + 16, &self->_transform);
  return v10;
}

- (uint64_t)setLocalTransform:(__n128)a3 forTime:(__n128)a4
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  return sub_239ECB5B8((a1 + 16), v7, a6);
}

- (uint64_t)setLocalTransform:(__n128)a3
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return sub_239ECB24C((a1 + 16), v6);
}

- (__n128)localTransformAtTime:(uint64_t)a1
{
  sub_239ECAF50(a1 + 16);
  result = *(a1 + 144);
  v3 = *(a1 + 160);
  v4 = *(a1 + 176);
  v5 = *(a1 + 192);
  return result;
}

- (matrix_float4x4)rotationMatrixAtTime:(NSTimeInterval)time
{
  v3 = *&self[1]._transform._identity;
  v4 = *&self[2].super.isa;
  v5 = *&self[2]._transform._keyedTranslation.__begin_;
  v6 = *&self[2]._transform._keyedTranslation.__cap_;
  result.columns[3] = v6;
  result.columns[2] = v5;
  result.columns[1] = v4;
  result.columns[0] = v3;
  return result;
}

+ (__n128)localTransformWithObject:(const char *)a3 atTime:(void *)a4
{
  v5 = objc_msgSend_componentConformingToProtocol_(a4, a3, &unk_284D27B70);
  v8 = v5;
  if (v5)
  {
    objc_msgSend_localTransformAtTime_(v5, v6, v7, a1);
    v14 = v9;
  }

  else
  {
    v13 = *(MEMORY[0x277D860B8] + 16);
    v14 = *MEMORY[0x277D860B8];
    v11 = *(MEMORY[0x277D860B8] + 48);
    v12 = *(MEMORY[0x277D860B8] + 32);
  }

  return v14;
}

+ (__n128)globalTransformWithObject:(uint64_t)a3 atTime:(void *)a4
{
  v5 = a4;
  v9 = objc_msgSend_parent(v5, v6, v7);
  if (v9)
  {
    do
    {
      v10 = objc_msgSend_componentConformingToProtocol_(v9, v8, &unk_284D27B70);

      if (v10)
      {
        break;
      }

      v12 = objc_msgSend_parent(v9, v8, v11);

      v9 = v12;
    }

    while (v12);
  }

  v13 = objc_msgSend_componentConformingToProtocol_(v9, v8, &unk_284D27B70);
  if (objc_msgSend_resetsTransform(v13, v14, v15) || !v13)
  {
    objc_msgSend_localTransformWithObject_atTime_(MDLTransform, v16, v5, a1);
    v33 = v27;
  }

  else
  {
    objc_msgSend_globalTransformWithObject_atTime_(MDLTransform, v16, v9, a1);
    v31 = v18;
    v32 = v17;
    v29 = v20;
    v30 = v19;
    objc_msgSend_localTransformWithObject_atTime_(MDLTransform, v21, v5, a1);
    v22 = 0;
    v34[0] = v23;
    v34[1] = v24;
    v34[2] = v25;
    v34[3] = v26;
    memset(v35, 0, sizeof(v35));
    do
    {
      v35[v22] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(v34[v22])), v31, *&v34[v22], 1), v30, v34[v22], 2), v29, v34[v22], 3);
      ++v22;
    }

    while (v22 != 4);
    v33 = v35[0];
  }

  return v33;
}

- (CAAnimation)transformAnimation
{
  __p = 0;
  v44 = 0;
  v45 = 0;
  sub_239ECBCF4(&self->_transform, &__p);
  v4 = __p;
  v5 = v44 - __p;
  if (v44 != __p)
  {
    v6 = v5 >> 3;
    v7 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v3, v5 >> 3);
    v11 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v8, v6);
    v12 = 0;
    v13 = *__p;
    v14 = *(v44 - 1) - *__p;
    if (v6 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v6;
    }

    do
    {
      v16 = *(__p + v12);
      v17 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v9, v10, (v16 - v13) * (1.0 / v14));
      objc_msgSend_localTransformAtTime_(self, v18, v19, v16);
      v42[0] = vcvtq_f64_f32(*v20.f32);
      v42[1] = vcvt_hight_f64_f32(v20);
      v42[2] = vcvtq_f64_f32(*v21.f32);
      v42[3] = vcvt_hight_f64_f32(v21);
      v42[4] = vcvtq_f64_f32(*v22.f32);
      v42[5] = vcvt_hight_f64_f32(v22);
      v42[6] = vcvtq_f64_f32(*v23.f32);
      v42[7] = vcvt_hight_f64_f32(v23);
      v25 = objc_msgSend_valueWithCATransform3D_(MEMORY[0x277CCAE60], v24, v42);
      objc_msgSend_addObject_(v7, v26, v17);
      objc_msgSend_addObject_(v11, v27, v25);

      ++v12;
    }

    while (v15 != v12);
    v28 = objc_msgSend_animation(MEMORY[0x277CD9EC8], v9, v10);
    objc_msgSend_setKeyPath_(v28, v29, @"transform");
    objc_msgSend_setValues_(v28, v30, v11);
    objc_msgSend_setKeyTimes_(v28, v31, v7);
    objc_msgSend_setBeginTime_(v28, v32, v33, v13);
    objc_msgSend_setDuration_(v28, v34, v35, v14);
    objc_msgSend_setAdditive_(v28, v36, 0);
    objc_msgSend_setRemovedOnCompletion_(v28, v37, 0);
    LODWORD(v38) = 2139095039;
    objc_msgSend_setRepeatCount_(v28, v39, v40, v38);

    v4 = __p;
    if (!__p)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v28 = 0;
  if (__p)
  {
LABEL_7:
    v44 = v4;
    operator delete(v4);
  }

LABEL_8:

  return v28;
}

@end
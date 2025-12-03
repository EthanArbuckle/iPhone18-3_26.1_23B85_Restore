@interface MDLTransformStack
+ (__n128)globalTransformWithObject:(uint64_t)object atTime:(void *)time;
+ (__n128)localTransformWithObject:(const char *)object atTime:(void *)time;
- (BOOL)isScaleRotateTransformOrder;
- (CAAnimation)transformAnimation;
- (MDLAnimatedValue)animatedValueWithName:(NSString *)name;
- (NSArray)keyTimes;
- (double)maximumTime;
- (double)minimumTime;
- (id)animatedMatrix4x4WithName:(id)name shouldCreateIfMissing:(BOOL)missing;
- (id)animatedQuaternionWithName:(id)name shouldCreateIfMissing:(BOOL)missing;
- (id)animatedScalarWithName:(id)name shouldCreateIfMissing:(BOOL)missing;
- (id)animatedVector3WithName:(id)name shouldCreateIfMissing:(BOOL)missing;
- (id)animatedVector4WithName:(id)name shouldCreateIfMissing:(BOOL)missing;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decomposedTransformAnimation;
- (id)init;
- (matrix_float4x4)float4x4AtTime:(NSTimeInterval)time;
- (unint64_t)double4x4AtTime:(uint64_t)time@<X2>;
- (void)clearTransformStack;
- (void)setLocalTransform:(uint64_t)transform;
- (void)setLocalTransform:(uint64_t)transform forTime:(const char *)time;
@end

@implementation MDLTransformStack

- (id)init
{
  v9.receiver = self;
  v9.super_class = MDLTransformStack;
  v2 = [(MDLTransformStack *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    transformOps = v2->_transformOps;
    v2->_transformOps = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    animatedValues = v2->_animatedValues;
    v2->_animatedValues = v5;

    v7 = v2;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v104 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  *(v10 + 8) = self->_resetsTransform;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v11 = self->_animatedValues;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v98, v103, 16);
  if (v14)
  {
    v15 = *v99;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v99 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v98 + 1) + 8 * i);
        v18 = objc_msgSend_objectForKeyedSubscript_(self->_animatedValues, v13, v17);
        v21 = objc_msgSend_copy(v18, v19, v20);
        objc_msgSend_setObject_forKeyedSubscript_(*(v10 + 24), v22, v21, v17);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v98, v103, 16);
    }

    while (v14);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v23 = self->_transformOps;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v94, v102, 16);
  if (v25)
  {
    v26 = *v95;
    do
    {
      v27 = 0;
      do
      {
        if (*v95 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v94 + 1) + 8 * v27);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = objc_msgSend_name(v28, v29, v30);
          v34 = objc_msgSend_inverse(v28, v32, v33);
          v36 = objc_msgSend_addRotateXOp_inverse_(v10, v35, v31, v34);
LABEL_29:

          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = objc_msgSend_name(v28, v37, v38);
          v41 = objc_msgSend_inverse(v28, v39, v40);
          v43 = objc_msgSend_addRotateYOp_inverse_(v10, v42, v31, v41);
          goto LABEL_29;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = objc_msgSend_name(v28, v44, v45);
          v48 = objc_msgSend_inverse(v28, v46, v47);
          v50 = objc_msgSend_addRotateZOp_inverse_(v10, v49, v31, v48);
          goto LABEL_29;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = v28;
          v53 = objc_msgSend_name(v31, v51, v52);
          v56 = objc_msgSend_order(v31, v54, v55);
          v59 = objc_msgSend_inverse(v31, v57, v58);
          v61 = objc_msgSend_addRotateOp_order_inverse_(v10, v60, v53, v56, v59);

          goto LABEL_29;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = objc_msgSend_name(v28, v62, v63);
          v66 = objc_msgSend_inverse(v28, v64, v65);
          v68 = objc_msgSend_addTranslateOp_inverse_(v10, v67, v31, v66);
          goto LABEL_29;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = objc_msgSend_name(v28, v69, v70);
          v73 = objc_msgSend_inverse(v28, v71, v72);
          v75 = objc_msgSend_addScaleOp_inverse_(v10, v74, v31, v73);
          goto LABEL_29;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = objc_msgSend_name(v28, v76, v77);
          v80 = objc_msgSend_inverse(v28, v78, v79);
          v82 = objc_msgSend_addOrientOp_inverse_(v10, v81, v31, v80);
          goto LABEL_29;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = objc_msgSend_name(v28, v83, v84);
          v87 = objc_msgSend_inverse(v28, v85, v86);
          v89 = objc_msgSend_addMatrixOp_inverse_(v10, v88, v31, v87);
          goto LABEL_29;
        }

        NSLog(&cfstr_InternalErrorS.isa, v94);
LABEL_30:
        ++v27;
      }

      while (v25 != v27);
      v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v90, &v94, v102, 16);
      v25 = v91;
    }

    while (v91);
  }

  v92 = *MEMORY[0x277D85DE8];
  return v10;
}

- (double)minimumTime
{
  v22 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(self->_transformOps, a2, v2))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = self->_animatedValues;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v17, v21, 16);
    if (v7)
    {
      v8 = *v18;
      v9 = 1000000000.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v11 = objc_msgSend_objectForKey_(self->_animatedValues, v6, *(*(&v17 + 1) + 8 * i), v17);
          objc_msgSend_minimumTime(v11, v12, v13);
          if (v14 < v9)
          {
            v9 = v14;
          }
        }

        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v17, v21, 16);
      }

      while (v7);
    }

    else
    {
      v9 = 1000000000.0;
    }
  }

  else
  {
    v9 = 0.0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (double)maximumTime
{
  v22 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(self->_transformOps, a2, v2))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = self->_animatedValues;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v17, v21, 16);
    if (v7)
    {
      v8 = *v18;
      v9 = -1000000000.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v11 = objc_msgSend_objectForKey_(self->_animatedValues, v6, *(*(&v17 + 1) + 8 * i), v17);
          objc_msgSend_maximumTime(v11, v12, v13);
          if (v14 > v9)
          {
            v9 = v14;
          }
        }

        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v17, v21, 16);
      }

      while (v7);
    }

    else
    {
      v9 = -1000000000.0;
    }
  }

  else
  {
    v9 = 0.0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (NSArray)keyTimes
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (objc_msgSend_count(self->_transformOps, v4, v5))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = self->_animatedValues;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v27, v32, 16);
    if (v9)
    {
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = objc_msgSend_objectForKey_(self->_animatedValues, v8, *(*(&v27 + 1) + 8 * i), v27);
          v15 = objc_msgSend_keyTimes(v12, v13, v14);
          objc_msgSend_addObjectsFromArray_(v3, v16, v15);
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v27, v32, 16);
      }

      while (v9);
    }

    v18 = objc_msgSend_orderedSetWithArray_(MEMORY[0x277CBEB70], v17, v3);
    v20 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v19, @"self", 1);
    v31 = v20;
    v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, &v31, 1);
    v24 = objc_msgSend_sortedArrayUsingDescriptors_(v18, v23, v22);
  }

  else
  {
    v24 = v3;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)animatedVector3WithName:(id)name shouldCreateIfMissing:(BOOL)missing
{
  missingCopy = missing;
  nameCopy = name;
  v9 = objc_msgSend_objectForKey_(self->_animatedValues, v7, nameCopy);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !missingCopy;
  }

  if (!v10)
  {
    v11 = objc_msgSend_objectForKey_(self->_animatedValues, v8, nameCopy);

    if (v11)
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_opt_new();
      objc_msgSend_setObject_forKey_(self->_animatedValues, v12, v9, nameCopy);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v9;
  }

  else
  {
    NSLog(&cfstr_WarningIsNotOf.isa, nameCopy);
    v13 = 0;
  }

  return v13;
}

- (id)animatedVector4WithName:(id)name shouldCreateIfMissing:(BOOL)missing
{
  missingCopy = missing;
  nameCopy = name;
  v9 = objc_msgSend_objectForKey_(self->_animatedValues, v7, nameCopy);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !missingCopy;
  }

  if (!v10)
  {
    v11 = objc_msgSend_objectForKey_(self->_animatedValues, v8, nameCopy);

    if (v11)
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_opt_new();
      objc_msgSend_setObject_forKey_(self->_animatedValues, v12, v9, nameCopy);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v9;
  }

  else
  {
    NSLog(&cfstr_WarningIsNotOf_0.isa, nameCopy);
    v13 = 0;
  }

  return v13;
}

- (id)animatedQuaternionWithName:(id)name shouldCreateIfMissing:(BOOL)missing
{
  missingCopy = missing;
  nameCopy = name;
  v9 = objc_msgSend_objectForKey_(self->_animatedValues, v7, nameCopy);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !missingCopy;
  }

  if (!v10)
  {
    v11 = objc_msgSend_objectForKey_(self->_animatedValues, v8, nameCopy);

    if (v11)
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_opt_new();
      objc_msgSend_setObject_forKey_(self->_animatedValues, v12, v9, nameCopy);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v9;
  }

  else
  {
    NSLog(&cfstr_WarningIsNotOf_1.isa, nameCopy);
    v13 = 0;
  }

  return v13;
}

- (id)animatedMatrix4x4WithName:(id)name shouldCreateIfMissing:(BOOL)missing
{
  missingCopy = missing;
  nameCopy = name;
  v9 = objc_msgSend_objectForKey_(self->_animatedValues, v7, nameCopy);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !missingCopy;
  }

  if (!v10)
  {
    v11 = objc_msgSend_objectForKey_(self->_animatedValues, v8, nameCopy);

    if (v11)
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_opt_new();
      objc_msgSend_setObject_forKey_(self->_animatedValues, v12, v9, nameCopy);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v9;
  }

  else
  {
    NSLog(&cfstr_WarningIsNotOf_2.isa, nameCopy);
    v13 = 0;
  }

  return v13;
}

- (id)animatedScalarWithName:(id)name shouldCreateIfMissing:(BOOL)missing
{
  missingCopy = missing;
  nameCopy = name;
  v9 = objc_msgSend_objectForKey_(self->_animatedValues, v7, nameCopy);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !missingCopy;
  }

  if (!v10)
  {
    v11 = objc_msgSend_objectForKey_(self->_animatedValues, v8, nameCopy);

    if (v11)
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_opt_new();
      objc_msgSend_setObject_forKey_(self->_animatedValues, v12, v9, nameCopy);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v9;
  }

  else
  {
    NSLog(&cfstr_WarningIsNotOf_2.isa, nameCopy);
    v13 = 0;
  }

  return v13;
}

- (MDLAnimatedValue)animatedValueWithName:(NSString *)name
{
  v3 = objc_msgSend_objectForKey_(self->_animatedValues, a2, name);

  return v3;
}

- (matrix_float4x4)float4x4AtTime:(NSTimeInterval)time
{
  v26 = *(MEMORY[0x277D860B8] + 16);
  v28 = *MEMORY[0x277D860B8];
  v22 = *(MEMORY[0x277D860B8] + 48);
  v24 = *(MEMORY[0x277D860B8] + 32);
  if (objc_msgSend_count(self->_transformOps, a2, v3))
  {
    v7 = 0;
    do
    {
      v8 = objc_msgSend_objectAtIndexedSubscript_(self->_transformOps, v6, v7, *&v22, *&v24, *&v26, *&v28, v30, v31, v32, v33);
      objc_msgSend_float4x4AtTime_(v8, v9, v10, time);
      v11 = 0;
      v30 = v12;
      v31 = v13;
      v32 = v14;
      v33 = v15;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      do
      {
        *(&v34 + v11) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*(&v30 + v11))), v27, *(&v30 + v11), 1), v25, *(&v30 + v11), 2), v23, *(&v30 + v11), 3);
        v11 += 16;
      }

      while (v11 != 64);
      v26 = v35;
      v28 = v34;
      v22 = v37;
      v24 = v36;

      ++v7;
    }

    while (objc_msgSend_count(self->_transformOps, v16, v17) > v7);
  }

  v19 = v26;
  v18 = v28;
  v21 = v22;
  v20 = v24;
  result.columns[3] = v21;
  result.columns[2] = v20;
  result.columns[1] = v19;
  result.columns[0] = v18;
  return result;
}

- (unint64_t)double4x4AtTime:(uint64_t)time@<X2>
{
  v36 = MEMORY[0x277D860A0];
  v37 = *(MEMORY[0x277D860A0] + 80);
  a4[4] = *(MEMORY[0x277D860A0] + 64);
  a4[5] = v37;
  v38 = v36[7];
  a4[6] = v36[6];
  a4[7] = v38;
  v39 = v36[1];
  *a4 = *v36;
  a4[1] = v39;
  v40 = v36[3];
  a4[2] = v36[2];
  a4[3] = v40;
  result = objc_msgSend_count(*(self + 16), a2, time);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v44 = objc_msgSend_objectAtIndexedSubscript_(*(self + 16), v42, i, *&v65);
      v47 = v44;
      if (v44)
      {
        objc_msgSend_double4x4AtTime_(v44, v45, v46, a5);
      }

      v48 = 0;
      v50 = *a4;
      v49 = a4[1];
      v52 = a4[2];
      v51 = a4[3];
      v54 = a4[4];
      v53 = a4[5];
      v56 = a4[6];
      v55 = a4[7];
      a30 = 0u;
      a31 = 0u;
      a32 = 0u;
      a33 = 0u;
      a26 = 0u;
      a27 = 0u;
      a28 = 0u;
      a29 = 0u;
      v69 = 0u;
      vars0 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      do
      {
        v58 = *(&a26 + v48);
        v57 = *(&a26 + v48 + 16);
        v59 = (&v65 + v48);
        *v59 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v50, v58.f64[0]), v52, v58, 1), v54, v57.f64[0]), v56, v57, 1);
        v59[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v49, v58.f64[0]), v51, v58, 1), v53, v57.f64[0]), v55, v57, 1);
        v48 += 32;
      }

      while (v48 != 128);
      v60 = vars0;
      a4[4] = v69;
      a4[5] = v60;
      a4[6] = 0u;
      a4[7] = 0u;
      v61 = v66;
      *a4 = v65;
      a4[1] = v61;
      v62 = v68;
      a4[2] = v67;
      a4[3] = v62;

      result = objc_msgSend_count(*(self + 16), v63, v64);
    }
  }

  return result;
}

- (void)setLocalTransform:(uint64_t)transform forTime:(const char *)time
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = objc_opt_class();
  v7 = NSStringFromClass(v4);
  v5 = NSStringFromSelector(time);
  objc_msgSend_raise_format_(v3, v6, @"ModelIOException", @"[%@ %@]:set local transform forTime not yet supported", v7, v5);
}

- (void)setLocalTransform:(uint64_t)transform
{
  objc_msgSend_clearTransformStack(self, a2, transform);
  v17 = objc_msgSend_animatedMatrix4x4WithName_shouldCreateIfMissing_(self, v8, @"transform", 1);
  objc_msgSend_setFloat4x4_atTime_(v17, v9, v10, a4, a5, a6, a7, 0.0);
  v12 = objc_msgSend_addMatrixOp_inverse_(self, v11, @"transform", 0);
}

+ (__n128)localTransformWithObject:(const char *)object atTime:(void *)time
{
  v5 = objc_msgSend_componentConformingToProtocol_(time, object, &unk_284D27B70);
  v8 = v5;
  if (v5)
  {
    objc_msgSend_localTransformAtTime_(v5, v6, v7, self);
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

+ (__n128)globalTransformWithObject:(uint64_t)object atTime:(void *)time
{
  timeCopy = time;
  v9 = objc_msgSend_parent(timeCopy, v6, v7);
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
    objc_msgSend_localTransformWithObject_atTime_(MDLTransformStack, v16, timeCopy, self);
    v33 = v27;
  }

  else
  {
    objc_msgSend_globalTransformWithObject_atTime_(MDLTransformStack, v16, v9, self);
    v31 = v18;
    v32 = v17;
    v29 = v20;
    v30 = v19;
    objc_msgSend_localTransformWithObject_atTime_(MDLTransformStack, v21, timeCopy, self);
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

- (void)clearTransformStack
{
  objc_msgSend_removeAllObjects(self->_transformOps, a2, v2);
  animatedValues = self->_animatedValues;

  objc_msgSend_removeAllObjects(animatedValues, v4, v5);
}

- (BOOL)isScaleRotateTransformOrder
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = self->_transformOps;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v17, v21, 16);
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = 0;
  v6 = *v18;
  do
  {
    v7 = 0;
    v8 = v5;
    do
    {
      if (*v18 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v17 + 1) + 8 * v7);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = 1;
        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (objc_msgSend_order(v9, v11, v12, v17) != 1)
        {
          goto LABEL_22;
        }

LABEL_10:
        if (v8 > 5)
        {
          goto LABEL_30;
        }

LABEL_13:
        v5 = 4;
        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = 3;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = 2;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_10;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5 = 5;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
LABEL_22:
              if (v8)
              {
                goto LABEL_30;
              }

              v5 = 6;
              goto LABEL_24;
            }

            v5 = 0;
          }
        }
      }

LABEL_24:
      if (v8 >= v5)
      {
LABEL_30:
        v14 = 0;
        goto LABEL_31;
      }

      ++v7;
      v8 = v5;
    }

    while (v4 != v7);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v10, &v17, v21, 16);
    v4 = v13;
  }

  while (v13);
LABEL_29:
  v14 = 1;
LABEL_31:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)decomposedTransformAnimation
{
  v4 = objc_msgSend_keyTimes(self, a2, v2);
  if (!objc_msgSend_count(v4, v5, v6))
  {
    v144 = 0;
    goto LABEL_24;
  }

  v9 = MEMORY[0x277CBEB18];
  v10 = objc_msgSend_count(v4, v7, v8);
  v12 = objc_msgSend_arrayWithCapacity_(v9, v11, v10);
  v158 = objc_msgSend_animation(MEMORY[0x277CD9EC8], v13, v14);
  objc_msgSend_setKeyPath_(v158, v15, @"position");
  v16 = MEMORY[0x277CBEB18];
  v19 = objc_msgSend_count(v4, v17, v18);
  v161 = objc_msgSend_arrayWithCapacity_(v16, v20, v19);
  v157 = objc_msgSend_animation(MEMORY[0x277CD9EC8], v21, v22);
  objc_msgSend_setKeyPath_(v157, v23, @"orientation");
  v24 = MEMORY[0x277CBEB18];
  v27 = objc_msgSend_count(v4, v25, v26);
  v160 = objc_msgSend_arrayWithCapacity_(v24, v28, v27);
  v156 = objc_msgSend_animation(MEMORY[0x277CD9EC8], v29, v30);
  objc_msgSend_setKeyPath_(v156, v31, @"scale");
  v32 = MEMORY[0x277CBEB18];
  v35 = objc_msgSend_count(v4, v33, v34);
  v37 = objc_msgSend_arrayWithCapacity_(v32, v36, v35);
  v39 = objc_msgSend_objectAtIndex_(v4, v38, 0);
  objc_msgSend_doubleValue(v39, v40, v41);
  v43 = v42;

  v46 = objc_msgSend_count(v4, v44, v45);
  v48 = objc_msgSend_objectAtIndex_(v4, v47, v46 - 1);
  objc_msgSend_doubleValue(v48, v49, v50);
  v52 = v51;

  v55 = 0;
  v56 = v52 - v43;
  __asm { FMOV            V1.4S, #1.0 }

  v159 = _Q1;
  while (v55 < objc_msgSend_count(v4, v53, v54))
  {
    v63 = objc_msgSend_objectAtIndex_(v4, v62, v55);
    objc_msgSend_doubleValue(v63, v64, v65);
    v67 = v66;

    v70 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v68, v69, (v67 - v43) * (1.0 / v56));
    objc_msgSend_localTransformAtTime_(self, v71, v72, v67);
    v80 = vmlaq_f32(vnegq_f32(vmulq_f32(v76, vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL))), v77, vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL));
    v81 = vmulq_f32(vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL), v75);
    if ((vaddv_f32(*v81.f32) + v81.f32[2]) >= 0.0)
    {
      v82 = 1.0;
    }

    else
    {
      v82 = -1.0;
    }

    v83 = vmulq_f32(v75, v75);
    v84 = vmulq_f32(v76, v76);
    v85 = vadd_f32(vzip1_s32(*v83.i8, *v84.i8), vzip2_s32(*v83.i8, *v84.i8));
    v86 = vextq_s8(v83, v83, 8uLL);
    *v86.f32 = vsqrt_f32(vadd_f32(v85, vzip1_s32(*v86.f32, *&vextq_s8(v84, v84, 8uLL))));
    v87 = vmulq_f32(v77, v77);
    v86.i32[2] = sqrtf(vaddv_f32(*v87.f32) + v87.f32[2]);
    v88 = vmulq_n_f32(v86, v82);
    v89 = vmulq_f32(v75, vdivq_f32(v159, vdupq_lane_s32(*v88.i8, 0)));
    v90 = vmulq_f32(v76, vdivq_f32(v159, vdupq_lane_s32(*v88.i8, 1)));
    v162 = v88;
    v91 = vmulq_f32(v77, vdivq_f32(v159, vdupq_laneq_s32(v88, 2)));
    v92 = *v89.i32 + *&v90.i32[1];
    v93 = (*v89.i32 + *&v90.i32[1]) + *&v91.i32[2];
    if (v93 <= 0.0)
    {
      if (*v89.i32 <= *&v90.i32[1] || *v89.i32 <= *&v91.i32[2])
      {
        if (*&v90.i32[1] > *&v91.i32[2])
        {
          v96.f32[0] = *v90.i32 + *&v89.i32[1];
          v97 = *&v91.i32[2] + *v89.i32;
          v98 = (*&v90.i32[1] + 1.0) - (*&v91.i32[2] + *v89.i32);
          v99 = vzip2q_s32(v89, v90).u64[0];
          v96.f32[1] = (*&v90.i32[1] + 1.0) - v97;
          *&v96.u32[2] = vext_s8(vadd_f32(*v91.i8, v99), vsub_f32(*v91.i8, v99), 4uLL);
          v163 = v98;
          v164 = v96;
          goto LABEL_18;
        }

        v104 = vzip2q_s32(v89, v90).u64[0];
        *v89.i32 = *&v91.i32[2] + 1.0;
        v105 = vdup_lane_s32(*v90.i8, 0);
        *v94.f32 = vadd_f32(*v91.i8, v104);
        v105.f32[0] = v92;
        v106 = vsub_f32(*v89.i8, v105);
        v163 = v106.f32[0];
        *&v94.u32[2] = v106;
      }

      else
      {
        *&v100 = (*v89.i32 + 1.0) - (*&v91.i32[2] + *&v90.i32[1]);
        *&v101 = *v90.i32 + *&v89.i32[1];
        *&v102 = *v91.i32 + *&v89.i32[2];
        *&v103 = *&v90.i32[2] - *&v91.i32[1];
        v163 = *&v100;
        v94.i64[0] = __PAIR64__(v101, v100);
        v94.i64[1] = __PAIR64__(v103, v102);
      }
    }

    else
    {
      *v94.f32 = vsub_f32(*&vzip2q_s32(v90, vuzp1q_s32(v90, v91)), *&vtrn2q_s32(v91, vzip2q_s32(v91, v89)));
      v94.f32[2] = *&v89.i32[1] - *v90.i32;
      v163 = v93 + 1.0;
      v94.f32[3] = v93 + 1.0;
    }

    v164 = v94;
LABEL_18:
    v107 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v73, v74, *&v78, *(&v78 + 1), v79, 0.0);
    objc_msgSend_addObject_(v161, v108, v107);
    v109 = vmulq_n_f32(v164, 0.5 / sqrtf(v163));
    v112 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v110, v111, v109.f32[0], v109.f32[1], v109.f32[2], v109.f32[3]);

    objc_msgSend_addObject_(v160, v113, v112);
    v116 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v114, v115, *v162.i32, *&v162.i32[1], *&v162.i32[2], 0.0);

    objc_msgSend_addObject_(v37, v117, v116);
    objc_msgSend_addObject_(v12, v118, v70);

    ++v55;
  }

  v119 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v62, 3);
  objc_msgSend_setValues_(v158, v120, v161);
  objc_msgSend_addObject_(v119, v121, v158);
  objc_msgSend_setValues_(v157, v122, v160);
  objc_msgSend_addObject_(v119, v123, v157);
  objc_msgSend_setValues_(v156, v124, v37);
  objc_msgSend_addObject_(v119, v125, v156);
  v128 = 0;
  v129 = *MEMORY[0x277CDA230];
  while (v128 < objc_msgSend_count(v119, v126, v127))
  {
    v132 = objc_msgSend_objectAtIndex_(v119, v130, v128);
    objc_msgSend_setFillMode_(v132, v133, v129);
    objc_msgSend_setKeyTimes_(v132, v134, v12);
    objc_msgSend_setBeginTime_(v132, v135, v136, v43);
    objc_msgSend_setDuration_(v132, v137, v138, v56);
    objc_msgSend_setAdditive_(v132, v139, 0);
    objc_msgSend_setRemovedOnCompletion_(v132, v140, 0);
    LODWORD(v141) = 1.0;
    objc_msgSend_setRepeatCount_(v132, v142, v143, v141);

    ++v128;
  }

  v144 = objc_msgSend_animation(MEMORY[0x277CD9E00], v130, v131);
  objc_msgSend_setAnimations_(v144, v145, v119);
  objc_msgSend_setBeginTime_(v144, v146, v147, v43);
  objc_msgSend_setDuration_(v144, v148, v149, v56);
  objc_msgSend_setFillMode_(v144, v150, v129);
  objc_msgSend_setRemovedOnCompletion_(v144, v151, 0);
  LODWORD(v152) = 2139095039;
  objc_msgSend_setRepeatCount_(v144, v153, v154, v152);

LABEL_24:

  return v144;
}

- (CAAnimation)transformAnimation
{
  v238 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_isScaleRotateTransformOrder(self, a2, v2) & 1) == 0)
  {
    v190 = objc_msgSend_decomposedTransformAnimation(self, v4, v5);
    goto LABEL_83;
  }

  v6 = MEMORY[0x277CBEB18];
  v7 = objc_msgSend_count(self->_transformOps, v4, v5);
  v221 = objc_msgSend_arrayWithCapacity_(v6, v8, v7);
  v235 = 0u;
  v236 = 0u;
  v233 = 0u;
  v234 = 0u;
  obj = self->_transformOps;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v233, v237, 16);
  if (!v10)
  {
    v11 = 0.0;
    v12 = 0.0;
    goto LABEL_71;
  }

  v223 = *v234;
  v220 = *MEMORY[0x277CDA230];
  v11 = 0.0;
  v12 = 0.0;
  do
  {
    v224 = v10;
    for (i = 0; i != v224; ++i)
    {
      if (*v234 != v223)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v233 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = objc_msgSend_animatedValue(v14, v15, v16);
        v20 = objc_msgSend_keyTimes(v17, v18, v19);

        v23 = @"position";
        if (!v20)
        {
          goto LABEL_64;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = objc_msgSend_animatedValue(v14, v24, v25);
          v20 = objc_msgSend_keyTimes(v26, v27, v28);

          if (objc_msgSend_order(v14, v29, v30) == 1)
          {
            v23 = @"eulerAngles";
          }

          else
          {
            v23 = @"transform";
          }

          if (!v20)
          {
            goto LABEL_64;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = objc_msgSend_animatedValue(v14, v31, v32);
            v20 = objc_msgSend_keyTimes(v33, v34, v35);

            v23 = @"eulerAngles.x";
            if (!v20)
            {
              goto LABEL_64;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = objc_msgSend_animatedValue(v14, v36, v37);
              v20 = objc_msgSend_keyTimes(v38, v39, v40);

              v23 = @"eulerAngles.y";
              if (!v20)
              {
                goto LABEL_64;
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v43 = objc_msgSend_animatedValue(v14, v41, v42);
                v20 = objc_msgSend_keyTimes(v43, v44, v45);

                v23 = @"eulerAngles.z";
                if (!v20)
                {
                  goto LABEL_64;
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v48 = objc_msgSend_animatedValue(v14, v46, v47);
                  v20 = objc_msgSend_keyTimes(v48, v49, v50);

                  v23 = @"orientation";
                  if (!v20)
                  {
                    goto LABEL_64;
                  }
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v53 = objc_msgSend_animatedValue(v14, v51, v52);
                    v20 = objc_msgSend_keyTimes(v53, v54, v55);

                    v23 = @"scale";
                    if (!v20)
                    {
                      goto LABEL_64;
                    }
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v20 = 0;
                      goto LABEL_64;
                    }

                    v58 = objc_msgSend_animatedValue(v14, v56, v57);
                    v20 = objc_msgSend_keyTimes(v58, v59, v60);

                    v23 = @"transform";
                    if (!v20)
                    {
                      goto LABEL_64;
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (!objc_msgSend_count(v20, v21, v22))
      {
        goto LABEL_64;
      }

      v63 = objc_msgSend_animation(MEMORY[0x277CD9EC8], v61, v62);
      objc_msgSend_setKeyPath_(v63, v64, v23);
      v65 = MEMORY[0x277CBEB18];
      v68 = objc_msgSend_count(v20, v66, v67);
      v70 = objc_msgSend_arrayWithCapacity_(v65, v69, v68);
      v71 = MEMORY[0x277CBEB18];
      v74 = objc_msgSend_count(v20, v72, v73);
      v76 = objc_msgSend_arrayWithCapacity_(v71, v75, v74);
      v78 = objc_msgSend_objectAtIndex_(v20, v77, 0);
      objc_msgSend_doubleValue(v78, v79, v80);
      v82 = v81;

      v85 = objc_msgSend_count(v20, v83, v84);
      v87 = objc_msgSend_objectAtIndex_(v20, v86, v85 - 1);
      objc_msgSend_doubleValue(v87, v88, v89);
      v91 = v90;

      v94 = v91 - v82;
      if (v94 == 0.0)
      {
        goto LABEL_63;
      }

      v95 = objc_msgSend_count(v221, v92, v93);
      v98 = 0;
      if (v12 > v82 || v95 == 0)
      {
        v12 = v82;
      }

      if (v11 < v94)
      {
        v11 = v94;
      }

      while (v98 < objc_msgSend_count(v20, v96, v97, *&v216, *&v217, *&v218, *&v219))
      {
        v101 = objc_msgSend_objectAtIndex_(v20, v100, v98);
        objc_msgSend_doubleValue(v101, v102, v103);
        v105 = v104;

        v108 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v106, v107, (v105 - v82) * (1.0 / v94));
        objc_msgSend_addObject_(v70, v109, v108);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_44;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (objc_msgSend_order(v14, v122, v123) == 1)
          {
            v126 = objc_msgSend_animatedValue(v14, v124, v125);
            objc_msgSend_float3AtTime_(v126, v127, v128, v105);
            v130 = v129 * 0.0174532925;
            v132 = v131 * 0.0174532925;
            v134 = v133 * 0.0174532925;
            v120 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v135, v136, v130, v132, v134, 0.0);
          }

          else
          {
            objc_msgSend_float4x4AtTime_(v14, v124, v125, v105);
            v225 = vcvtq_f64_f32(*v140.f32);
            v226 = vcvt_hight_f64_f32(v140);
            v227 = vcvtq_f64_f32(*v141.f32);
            v228 = vcvt_hight_f64_f32(v141);
            v229 = vcvtq_f64_f32(*v142.f32);
            v230 = vcvt_hight_f64_f32(v142);
            v231 = vcvtq_f64_f32(*v143.f32);
            v232 = vcvt_hight_f64_f32(v143);
            v120 = objc_msgSend_valueWithCATransform3D_(MEMORY[0x277CCAE60], v144, &v225);
          }

          objc_msgSend_addObject_(v76, v137, v120);
          goto LABEL_45;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v145 = MEMORY[0x277CCABB0];
          v146 = objc_msgSend_animatedValue(v14, v138, v139);
          objc_msgSend_floatAtTime_(v146, v147, v148, v105);
          v150 = v149 * 0.0174532925;
          *&v150 = v150;
          v120 = objc_msgSend_numberWithFloat_(v145, v151, v152, v150);

          objc_msgSend_addObject_(v76, v153, v120);
          goto LABEL_45;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v156 = objc_msgSend_animatedValue(v14, v154, v155);
          objc_msgSend_floatQuaternionAtTime_(v156, v157, v158, v105);
          v120 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v163, v164, v162, v159, v160, v161);

          objc_msgSend_addObject_(v76, v165, v120);
          goto LABEL_45;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_44:
          v112 = objc_msgSend_animatedValue(v14, v110, v111);
          objc_msgSend_float3AtTime_(v112, v113, v114, v105);
          v120 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v118, v119, v117, v115, v116, 0.0);

          objc_msgSend_addObject_(v76, v121, v120);
LABEL_45:

          goto LABEL_46;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v168 = objc_msgSend_animatedValue(v14, v166, v167);
          objc_msgSend_float4x4AtTime_(v168, v169, v170, v105);
          v216 = v171;
          v217 = v172;
          v218 = v173;
          v219 = v174;

          v225 = vcvtq_f64_f32(*v216.f32);
          v226 = vcvt_hight_f64_f32(v216);
          v227 = vcvtq_f64_f32(*v217.f32);
          v228 = vcvt_hight_f64_f32(v217);
          v229 = vcvtq_f64_f32(*v218.f32);
          v230 = vcvt_hight_f64_f32(v218);
          v231 = vcvtq_f64_f32(*v219.f32);
          v232 = vcvt_hight_f64_f32(v219);
          v120 = objc_msgSend_valueWithCATransform3D_(MEMORY[0x277CCAE60], v175, &v225);
          objc_msgSend_addObject_(v76, v176, v120);
          goto LABEL_45;
        }

LABEL_46:

        ++v98;
      }

      objc_msgSend_setValues_(v63, v100, v76);
      objc_msgSend_setFillMode_(v63, v177, v220);
      objc_msgSend_setKeyTimes_(v63, v178, v70);
      objc_msgSend_setBeginTime_(v63, v179, v180, v82);
      objc_msgSend_setDuration_(v63, v181, v182, v94);
      objc_msgSend_setAdditive_(v63, v183, 0);
      objc_msgSend_setRemovedOnCompletion_(v63, v184, 0);
      LODWORD(v185) = 1.0;
      objc_msgSend_setRepeatCount_(v63, v186, v187, v185);
      objc_msgSend_addObject_(v221, v188, v63);
LABEL_63:

LABEL_64:
    }

    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v189, &v233, v237, 16);
  }

  while (v10);
LABEL_71:

  if (objc_msgSend_count(v221, v191, v192))
  {
    if (objc_msgSend_count(v221, v193, v194) != 1)
    {
      goto LABEL_75;
    }

    v190 = objc_msgSend_objectAtIndex_(v221, v195, 0);
    objc_msgSend_beginTime(v190, v197, v198);
    if (v201 <= 0.0)
    {
      LODWORD(v201) = 2139095039;
      objc_msgSend_setRepeatCount_(v190, v199, v200, v201);
    }

    else
    {

LABEL_75:
      v190 = objc_msgSend_animation(MEMORY[0x277CD9E00], v195, v196);
      objc_msgSend_setAnimations_(v190, v202, v221);
      v205 = 0.0;
      if (v12 <= 0.0)
      {
        v205 = v12;
      }

      objc_msgSend_setBeginTime_(v190, v203, v204, v205);
      v208 = v12 + v11;
      if (v12 <= 0.0)
      {
        v208 = v11;
      }

      objc_msgSend_setDuration_(v190, v206, v207, v208);
      objc_msgSend_setFillMode_(v190, v209, *MEMORY[0x277CDA230]);
      objc_msgSend_setRemovedOnCompletion_(v190, v210, 0);
      LODWORD(v211) = 2139095039;
      objc_msgSend_setRepeatCount_(v190, v212, v213, v211);
    }
  }

  else
  {
    v190 = 0;
  }

LABEL_83:
  v214 = *MEMORY[0x277D85DE8];

  return v190;
}

@end
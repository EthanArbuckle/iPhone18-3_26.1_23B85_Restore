@interface BKSHIDEventHitTestLayerInformation
+ (BKSHIDEventHitTestLayerInformation)new;
+ (id)build:(id)build;
- (BKSHIDEventHitTestLayerInformation)init;
- (BOOL)isEqual:(id)equal;
- (CATransform3D)cumulativeContentsTransform;
- (CATransform3D)cumulativeLayerTransform;
- (CATransform3D)cumulativeTransform;
- (float)backgroundAverage;
- (float)backgroundAverageContrastThreshold;
- (float)backgroundStandardDeviation;
- (float)cumulativeOpacity;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_initWithCopyOf:(void *)of;
- (void)_updateCCHmacContext:(id *)context;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation BKSHIDEventHitTestLayerInformation

void __52__BKSHIDEventHitTestLayerInformation_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_validMask"];
  [v2 addField:"_cumulativeLayerTransform"];
  [v2 addField:"_cumulativeContentsTransform"];
  [v2 addField:"_cumulativeOpacity"];
  [v2 addField:"_hasInsecureFilter"];
  [v2 addField:"_detectedOcclusion"];
  [v2 addField:"_backgroundAverage"];
  [v2 addField:"_backgroundStandardDeviation"];
  [v2 addField:"_backgroundAverageContrastThreshold"];
}

- (void)_updateCCHmacContext:(id *)context
{
  CCHmacUpdate(context, &self->_validMask, 8uLL);
  CCHmacUpdate(context, &self->_cumulativeOpacity, 4uLL);
  CCHmacUpdate(context, &self->_cumulativeLayerTransform, 0x80uLL);
  CCHmacUpdate(context, &self->_cumulativeContentsTransform, 0x80uLL);
  CCHmacUpdate(context, &self->_hasInsecureFilter, 1uLL);
  CCHmacUpdate(context, &self->_detectedOcclusion, 1uLL);
  CCHmacUpdate(context, &self->_backgroundAverage, 4uLL);
  CCHmacUpdate(context, &self->_backgroundStandardDeviation, 4uLL);

  CCHmacUpdate(context, &self->_backgroundAverageContrastThreshold, 4uLL);
}

- (float)backgroundAverageContrastThreshold
{
  result = 0.0;
  if ((self->_validMask & 8) != 0)
  {
    return self->_backgroundAverageContrastThreshold;
  }

  return result;
}

- (float)backgroundStandardDeviation
{
  result = 0.0;
  if ((self->_validMask & 8) != 0)
  {
    return self->_backgroundStandardDeviation;
  }

  return result;
}

- (float)backgroundAverage
{
  result = 1.0;
  if ((self->_validMask & 8) != 0)
  {
    return self->_backgroundAverage;
  }

  return result;
}

- (float)cumulativeOpacity
{
  result = 1.0;
  if ((self->_validMask & 2) != 0)
  {
    return self->_cumulativeOpacity;
  }

  return result;
}

- (CATransform3D)cumulativeContentsTransform
{
  if ((LOBYTE(self->m12) & 0x20) != 0)
  {
    v3 = *&self[1].m43;
    *&retstr->m31 = *&self[1].m41;
    *&retstr->m33 = v3;
    v4 = *&self[2].m13;
    *&retstr->m41 = *&self[2].m11;
    *&retstr->m43 = v4;
    v5 = *&self[1].m23;
    *&retstr->m11 = *&self[1].m21;
    *&retstr->m13 = v5;
    v6 = *&self[1].m33;
    *&retstr->m21 = *&self[1].m31;
    *&retstr->m23 = v6;
  }

  else
  {
    *&retstr->m22 = 0u;
    *&retstr->m32 = 0u;
    *&retstr->m42 = 0u;
    *&retstr->m34 = 0u;
    *&retstr->m24 = 0u;
    *&retstr->m14 = 0u;
    *&retstr->m12 = 0u;
    retstr->m11 = 1.0;
    retstr->m22 = 1.0;
    retstr->m33 = 1.0;
    retstr->m44 = 1.0;
  }

  return self;
}

- (CATransform3D)cumulativeLayerTransform
{
  if ((LOBYTE(self->m12) & 0x10) != 0)
  {
    v3 = *&self->m43;
    *&retstr->m31 = *&self->m41;
    *&retstr->m33 = v3;
    v4 = *&self[1].m13;
    *&retstr->m41 = *&self[1].m11;
    *&retstr->m43 = v4;
    v5 = *&self->m23;
    *&retstr->m11 = *&self->m21;
    *&retstr->m13 = v5;
    v6 = *&self->m33;
    *&retstr->m21 = *&self->m31;
    *&retstr->m23 = v6;
  }

  else
  {
    *&retstr->m22 = 0u;
    *&retstr->m32 = 0u;
    *&retstr->m42 = 0u;
    *&retstr->m34 = 0u;
    *&retstr->m24 = 0u;
    *&retstr->m14 = 0u;
    *&retstr->m12 = 0u;
    retstr->m11 = 1.0;
    retstr->m22 = 1.0;
    retstr->m33 = 1.0;
    retstr->m44 = 1.0;
  }

  return self;
}

- (CATransform3D)cumulativeTransform
{
  *&retstr->m22 = 0u;
  *&retstr->m32 = 0u;
  *&retstr->m42 = 0u;
  *&retstr->m34 = 0u;
  *&retstr->m24 = 0u;
  *&retstr->m14 = 0u;
  *&retstr->m12 = 0u;
  retstr->m11 = 1.0;
  retstr->m22 = 1.0;
  retstr->m33 = 1.0;
  retstr->m44 = 1.0;
  return self;
}

- (id)_init
{
  v22 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventHitTestLayerInformation cannot be subclassed"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v6 = NSStringFromSelector(sel__init);
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          *buf = 138544642;
          v11 = v6;
          v12 = 2114;
          v13 = v8;
          v14 = 2048;
          v15 = v1;
          v16 = 2114;
          v17 = @"BKSHIDEventHitTestLayerInformation.m";
          v18 = 1024;
          v19 = 83;
          v20 = 2114;
          v21 = v5;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v5 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1863A04F4);
      }
    }

    v9.receiver = v1;
    v9.super_class = BKSHIDEventHitTestLayerInformation;
    result = objc_msgSendSuper2(&v9, sel_init);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__BKSHIDEventHitTestLayerInformation_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:0 block:v6];
}

void __67__BKSHIDEventHitTestLayerInformation_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromBKSHIDEventHitTestLayerInformationMask(*(*(a1 + 40) + 8));
  [v2 appendString:v3 withName:@"validMask"];

  v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 289) withName:@"detectedOcclusion"];
  v5 = *(a1 + 40);
  v6 = *(v5 + 8);
  if ((v6 & 0x10) != 0)
  {
    v10 = *(a1 + 32);
    v11 = *(v5 + 112);
    v30 = *(v5 + 96);
    v31 = v11;
    v12 = *(v5 + 144);
    v32 = *(v5 + 128);
    v33 = v12;
    v13 = *(v5 + 48);
    v26 = *(v5 + 32);
    v27 = v13;
    v14 = *(v5 + 80);
    v28 = *(v5 + 64);
    v29 = v14;
    v15 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v26];
    v16 = [v10 appendObject:v15 withName:@"cumulativeLayerTransform"];

    v5 = *(a1 + 40);
    v6 = *(v5 + 8);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v17 = *(a1 + 32);
  v18 = *(v5 + 240);
  v30 = *(v5 + 224);
  v31 = v18;
  v19 = *(v5 + 272);
  v32 = *(v5 + 256);
  v33 = v19;
  v20 = *(v5 + 176);
  v26 = *(v5 + 160);
  v27 = v20;
  v21 = *(v5 + 208);
  v28 = *(v5 + 192);
  v29 = v21;
  v22 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v26];
  v23 = [v17 appendObject:v22 withName:@"cumulativeContentsTransform"];

  v5 = *(a1 + 40);
  v6 = *(v5 + 8);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v24 = [*(a1 + 32) appendFloat:@"cumulativeOpacity" withName:*(v5 + 16)];
  v5 = *(a1 + 40);
  v6 = *(v5 + 8);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_11:
  v25 = [*(a1 + 32) appendBool:*(v5 + 288) withName:@"hasInsecureFilter"];
  v5 = *(a1 + 40);
  if ((*(v5 + 8) & 8) == 0)
  {
    return;
  }

LABEL_6:
  v7 = [*(a1 + 32) appendFloat:@"backgroundAverage" withName:*(v5 + 20)];
  v8 = [*(a1 + 32) appendFloat:@"backgroundStandardDeviation" withName:*(*(a1 + 40) + 24)];
  v9 = [*(a1 + 32) appendFloat:@"backgroundAverageContrastThreshold" withName:*(*(a1 + 40) + 28)];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDEventHitTestLayerInformation alloc];

  return [(BKSHIDEventHitTestLayerInformation *)v4 _initWithCopyOf:?];
}

- (void)_initWithCopyOf:(void *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(BKSHIDEventHitTestLayerInformation *)of _init];
    of = _init;
    if (_init)
    {
      *(_init + 1) = v3[1];
      v5 = *(v3 + 2);
      v6 = *(v3 + 3);
      v7 = *(v3 + 5);
      *(_init + 4) = *(v3 + 4);
      *(_init + 5) = v7;
      *(_init + 2) = v5;
      *(_init + 3) = v6;
      v8 = *(v3 + 6);
      v9 = *(v3 + 7);
      v10 = *(v3 + 9);
      *(_init + 8) = *(v3 + 8);
      *(_init + 9) = v10;
      *(_init + 6) = v8;
      *(_init + 7) = v9;
      v11 = *(v3 + 17);
      v13 = *(v3 + 14);
      v12 = *(v3 + 15);
      *(_init + 16) = *(v3 + 16);
      *(_init + 17) = v11;
      *(_init + 14) = v13;
      *(_init + 15) = v12;
      v14 = *(v3 + 10);
      v15 = *(v3 + 11);
      v16 = *(v3 + 13);
      *(_init + 12) = *(v3 + 12);
      *(_init + 13) = v16;
      *(_init + 10) = v14;
      *(_init + 11) = v15;
      *(_init + 4) = *(v3 + 4);
      *(_init + 288) = *(v3 + 288);
      *(_init + 289) = *(v3 + 289);
      *(_init + 5) = *(v3 + 5);
      *(_init + 6) = *(v3 + 6);
      *(_init + 7) = *(v3 + 7);
    }
  }

  return of;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSHIDEventHitTestLayerInformation alloc];

  return [(BKSHIDEventHitTestLayerInformation *)v4 _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && *(equalCopy + 1) == self->_validMask && (vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(equalCopy + 2), *&self->_cumulativeLayerTransform.m11), vceqq_f64(*(equalCopy + 3), *&self->_cumulativeLayerTransform.m13)), vuzp1q_s32(vceqq_f64(*(equalCopy + 4), *&self->_cumulativeLayerTransform.m21), vceqq_f64(*(equalCopy + 5), *&self->_cumulativeLayerTransform.m23))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(equalCopy + 6), *&self->_cumulativeLayerTransform.m31), vceqq_f64(*(equalCopy + 7), *&self->_cumulativeLayerTransform.m33)), vuzp1q_s32(vceqq_f64(*(equalCopy + 8), *&self->_cumulativeLayerTransform.m41), vceqq_f64(*(equalCopy + 9), *&self->_cumulativeLayerTransform.m43))))) & 1) != 0 && (vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(equalCopy + 10), *&self->_cumulativeContentsTransform.m11), vceqq_f64(*(equalCopy + 11), *&self->_cumulativeContentsTransform.m13)), vuzp1q_s32(vceqq_f64(*(equalCopy + 12), *&self->_cumulativeContentsTransform.m21), vceqq_f64(*(equalCopy + 13), *&self->_cumulativeContentsTransform.m23))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(equalCopy + 14), *&self->_cumulativeContentsTransform.m31), vceqq_f64(*(equalCopy + 15), *&self->_cumulativeContentsTransform.m33)), vuzp1q_s32(vceqq_f64(*(equalCopy + 16), *&self->_cumulativeContentsTransform.m41), vceqq_f64(*(equalCopy + 17), *&self->_cumulativeContentsTransform.m43))))) & 1) != 0 && *(equalCopy + 4) == self->_cumulativeOpacity && equalCopy[288] == self->_hasInsecureFilter && equalCopy[289] == self->_detectedOcclusion && *(equalCopy + 5) == self->_backgroundAverage && *(equalCopy + 6) == self->_backgroundStandardDeviation && *(equalCopy + 7) == self->_backgroundAverageContrastThreshold;

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_validMask];
  v4 = [v3 hash];

  v5 = *&self->_cumulativeLayerTransform.m33;
  v35[4] = *&self->_cumulativeLayerTransform.m31;
  v35[5] = v5;
  v6 = *&self->_cumulativeLayerTransform.m43;
  v35[6] = *&self->_cumulativeLayerTransform.m41;
  v35[7] = v6;
  v7 = *&self->_cumulativeLayerTransform.m13;
  v35[0] = *&self->_cumulativeLayerTransform.m11;
  v35[1] = v7;
  v8 = *&self->_cumulativeLayerTransform.m23;
  v35[2] = *&self->_cumulativeLayerTransform.m21;
  v35[3] = v8;
  v9 = [MEMORY[0x1E696B098] valueWithBytes:v35 objCType:"{CATransform3D=dddddddddddddddd}"];
  v10 = [v9 hash] ^ v4;

  v11 = *&self->_cumulativeContentsTransform.m33;
  v34[4] = *&self->_cumulativeContentsTransform.m31;
  v34[5] = v11;
  v12 = *&self->_cumulativeContentsTransform.m43;
  v34[6] = *&self->_cumulativeContentsTransform.m41;
  v34[7] = v12;
  v13 = *&self->_cumulativeContentsTransform.m13;
  v34[0] = *&self->_cumulativeContentsTransform.m11;
  v34[1] = v13;
  v14 = *&self->_cumulativeContentsTransform.m23;
  v34[2] = *&self->_cumulativeContentsTransform.m21;
  v34[3] = v14;
  v15 = [MEMORY[0x1E696B098] valueWithBytes:v34 objCType:"{CATransform3D=dddddddddddddddd}"];
  v16 = [v15 hash];

  *&v17 = self->_cumulativeOpacity;
  v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  v19 = v10 ^ v16 ^ [v18 hash];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasInsecureFilter];
  v21 = [v20 hash];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_detectedOcclusion];
  v23 = v21 ^ [v22 hash];

  *&v24 = self->_backgroundAverage;
  v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
  v26 = v19 ^ v23 ^ [v25 hash];

  *&v27 = self->_backgroundStandardDeviation;
  v28 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
  v29 = [v28 hash];

  *&v30 = self->_backgroundAverageContrastThreshold;
  v31 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
  v32 = v29 ^ [v31 hash];

  return v26 ^ v32;
}

- (BKSHIDEventHitTestLayerInformation)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDEventHitTestLayerInformation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDEventHitTestLayerInformation.m";
    v17 = 1024;
    v18 = 72;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (BKSHIDEventHitTestLayerInformation)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDEventHitTestLayerInformation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDEventHitTestLayerInformation.m";
    v17 = 1024;
    v18 = 77;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)build:(id)build
{
  buildCopy = build;
  _init = [(BKSHIDEventHitTestLayerInformation *)[BKSMutableHIDEventHitTestLayerInformation alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end
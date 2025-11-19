@interface BKSWindowServerHitTestSecurityAnalysis
+ (BKSWindowServerHitTestSecurityAnalysis)new;
+ (id)build:(id)a3;
+ (id)securityAnalysisFromCAHitTestDictionary:(id)a3 errorString:(id *)a4;
- (BKSWindowServerHitTestSecurityAnalysis)init;
- (BOOL)isEqual:(id)a3;
- (CATransform3D)cumulativeLayerTransform;
- (id)_init;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_initWithCopyOf:(void *)a1;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation BKSWindowServerHitTestSecurityAnalysis

void __56__BKSWindowServerHitTestSecurityAnalysis_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_cumulativeLayerTransform"];
  [v2 addField:"_cumulativeOpacity"];
  [v2 addField:"_hasInsecureFilter"];
  [v2 addField:"_parentsHaveInsecureLayerProperties"];
  [v2 addField:"_occlusionMask"];
  [v2 addField:"_occlusionPercentage"];
  [v2 addField:"_occlusionType"];
}

- (void)_initWithCopyOf:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(BKSWindowServerHitTestSecurityAnalysis *)a1 _init];
    a1 = v4;
    if (v4)
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 24);
      v7 = *(v3 + 40);
      *(v4 + 56) = *(v3 + 56);
      *(v4 + 40) = v7;
      *(v4 + 24) = v6;
      *(v4 + 8) = v5;
      v8 = *(v3 + 72);
      v9 = *(v3 + 88);
      v10 = *(v3 + 104);
      *(v4 + 120) = *(v3 + 120);
      *(v4 + 104) = v10;
      *(v4 + 88) = v9;
      *(v4 + 72) = v8;
      *(v4 + 34) = *(v3 + 34);
      v4[140] = v3[140];
      v4[141] = v3[141];
      *(v4 + 36) = *(v3 + 36);
      *(v4 + 37) = *(v3 + 37);
      *(v4 + 19) = *(v3 + 19);
    }
  }

  return a1;
}

- (id)_init
{
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        [v4 handleFailureInMethod:sel__init object:v1 file:@"BKSWindowServerHitTestSecurityAnalysis.m" lineNumber:144 description:@"BKSWindowServerHitTestSecurityAnalysis cannot be subclassed"];
      }
    }

    v5.receiver = v1;
    v5.super_class = BKSWindowServerHitTestSecurityAnalysis;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  return result;
}

- (CATransform3D)cumulativeLayerTransform
{
  v3 = *&self->m34;
  *&retstr->m31 = *&self->m32;
  *&retstr->m33 = v3;
  v4 = *&self->m44;
  *&retstr->m41 = *&self->m42;
  *&retstr->m43 = v4;
  v5 = *&self->m14;
  *&retstr->m11 = *&self->m12;
  *&retstr->m13 = v5;
  v6 = *&self->m24;
  *&retstr->m21 = *&self->m22;
  *&retstr->m23 = v6;
  return self;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = MEMORY[0x1E696B098];
  v5 = *&self->_cumulativeLayerTransform.m33;
  v22 = *&self->_cumulativeLayerTransform.m31;
  v23 = v5;
  v6 = *&self->_cumulativeLayerTransform.m43;
  v24 = *&self->_cumulativeLayerTransform.m41;
  v25 = v6;
  v7 = *&self->_cumulativeLayerTransform.m13;
  v18 = *&self->_cumulativeLayerTransform.m11;
  v19 = v7;
  v8 = *&self->_cumulativeLayerTransform.m23;
  v20 = *&self->_cumulativeLayerTransform.m21;
  v21 = v8;
  v9 = a3;
  v10 = [v4 valueWithCATransform3D:&v18];
  v11 = [v9 appendObject:v10 withName:{@"cumulativeLayerTransform", v18, v19, v20, v21, v22, v23, v24, v25}];

  v12 = [v9 appendFloat:@"cumulativeOpacity" withName:self->_cumulativeOpacity];
  v13 = [v9 appendBool:self->_hasInsecureFilter withName:@"hasInsecureFilter"];
  v14 = [v9 appendBool:self->_parentsHaveInsecureLayerProperties withName:@"parentsHaveInsecureLayerProperties"];
  v15 = [v9 appendInt:self->_occlusionMask withName:@"occlusionMask"];
  v16 = [v9 appendFloat:@"occlusionPercentage" withName:self->_occlusionPercentage];
  v17 = NSStringFromBKSWindowServerHitTestOcclusionType(self->_occlusionType);
  [v9 appendString:v17 withName:@"occlusionType"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKSMutableWindowServerHitTestSecurityAnalysis alloc];

  return [(BKSWindowServerHitTestSecurityAnalysis *)v4 _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    v11 = (vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(v5 + 8), *&self->_cumulativeLayerTransform.m11), vceqq_f64(*(v5 + 24), *&self->_cumulativeLayerTransform.m13)), vuzp1q_s32(vceqq_f64(*(v5 + 40), *&self->_cumulativeLayerTransform.m21), vceqq_f64(*(v5 + 56), *&self->_cumulativeLayerTransform.m23))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(v5 + 72), *&self->_cumulativeLayerTransform.m31), vceqq_f64(*(v5 + 88), *&self->_cumulativeLayerTransform.m33)), vuzp1q_s32(vceqq_f64(*(v5 + 104), *&self->_cumulativeLayerTransform.m41), vceqq_f64(*(v5 + 120), *&self->_cumulativeLayerTransform.m43))))) & 1) != 0 && (v7 = *(v5 + 34), cumulativeOpacity = self->_cumulativeOpacity, BSFloatEqualToFloat()) && *(v6 + 140) == self->_hasInsecureFilter && *(v6 + 141) == self->_parentsHaveInsecureLayerProperties && *(v6 + 36) == self->_occlusionMask && (v9 = v6[37], occlusionPercentage = self->_occlusionPercentage, BSFloatEqualToFloat()) && *(v6 + 19) == self->_occlusionType;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = *&self->_cumulativeLayerTransform.m33;
  v16[4] = *&self->_cumulativeLayerTransform.m31;
  v16[5] = v3;
  v4 = *&self->_cumulativeLayerTransform.m43;
  v16[6] = *&self->_cumulativeLayerTransform.m41;
  v16[7] = v4;
  v5 = *&self->_cumulativeLayerTransform.m13;
  v16[0] = *&self->_cumulativeLayerTransform.m11;
  v16[1] = v5;
  v6 = *&self->_cumulativeLayerTransform.m23;
  v16[2] = *&self->_cumulativeLayerTransform.m21;
  v16[3] = v6;
  v7 = [MEMORY[0x1E696B098] valueWithBytes:v16 objCType:"{CATransform3D=dddddddddddddddd}"];
  [v7 hash];

  *&v8 = self->_cumulativeOpacity;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [v9 hash];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_occlusionMask];
  [v10 hash];

  *&v11 = self->_occlusionPercentage;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  [v12 hash];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_occlusionType];
  [v13 hash];

  v14 = (self->_parentsHaveInsecureLayerProperties + self->_hasInsecureFilter) & 3;
  return BSHashPurifyNS();
}

- (BKSWindowServerHitTestSecurityAnalysis)init
{
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSWindowServerHitTestSecurityAnalysis init]"];
  [v3 handleFailureInFunction:v4 file:@"BKSWindowServerHitTestSecurityAnalysis.m" lineNumber:133 description:@"cannot directly allocate BKSWindowServerHitTestSecurityAnalysis"];

  return 0;
}

+ (BKSWindowServerHitTestSecurityAnalysis)new
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSWindowServerHitTestSecurityAnalysis new]"];
  [v2 handleFailureInFunction:v3 file:@"BKSWindowServerHitTestSecurityAnalysis.m" lineNumber:138 description:@"cannot directly allocate BKSWindowServerHitTestSecurityAnalysis"];

  return 0;
}

+ (id)build:(id)a3
{
  v3 = a3;
  v4 = [(BKSWindowServerHitTestSecurityAnalysis *)[BKSMutableWindowServerHitTestSecurityAnalysis alloc] _init];
  v3[2](v3, v4);

  v5 = [v4 copy];

  return v5;
}

+ (id)securityAnalysisFromCAHitTestDictionary:(id)a3 errorString:(id *)a4
{
  v5 = a3;
  *a4 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v6 = getkCAWindowServerHitTestSecurityAnalysisOcclusionTypeSymbolLoc_ptr;
  v43 = getkCAWindowServerHitTestSecurityAnalysisOcclusionTypeSymbolLoc_ptr;
  if (!getkCAWindowServerHitTestSecurityAnalysisOcclusionTypeSymbolLoc_ptr)
  {
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = __getkCAWindowServerHitTestSecurityAnalysisOcclusionTypeSymbolLoc_block_invoke;
    v38 = &unk_1E6F476B0;
    v39 = &v40;
    v7 = QuartzCoreLibrary_11890();
    v41[3] = dlsym(v7, "kCAWindowServerHitTestSecurityAnalysisOcclusionType");
    getkCAWindowServerHitTestSecurityAnalysisOcclusionTypeSymbolLoc_ptr = *(v39[1] + 24);
    v6 = v41[3];
  }

  _Block_object_dispose(&v40, 8);
  if (!v6)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCAWindowServerHitTestSecurityAnalysisOcclusionType(void)"];
    [v28 handleFailureInFunction:v29 file:@"BKSWindowServerHitTestSecurityAnalysis.m" lineNumber:28 description:{@"%s", dlerror()}];
    goto LABEL_44;
  }

  v8 = [v5 objectForKeyedSubscript:*v6];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v8 unsignedIntValue];
        v40 = 0;
        v41 = &v40;
        v42 = 0x2020000000;
        v15 = getkCAWindowServerHitTestSecurityAnalysisOcclusionPercentSymbolLoc_ptr;
        v43 = getkCAWindowServerHitTestSecurityAnalysisOcclusionPercentSymbolLoc_ptr;
        if (!getkCAWindowServerHitTestSecurityAnalysisOcclusionPercentSymbolLoc_ptr)
        {
          v35 = MEMORY[0x1E69E9820];
          v36 = 3221225472;
          v37 = __getkCAWindowServerHitTestSecurityAnalysisOcclusionPercentSymbolLoc_block_invoke;
          v38 = &unk_1E6F476B0;
          v39 = &v40;
          v16 = QuartzCoreLibrary_11890();
          v41[3] = dlsym(v16, "kCAWindowServerHitTestSecurityAnalysisOcclusionPercent");
          getkCAWindowServerHitTestSecurityAnalysisOcclusionPercentSymbolLoc_ptr = *(v39[1] + 24);
          v15 = v41[3];
        }

        _Block_object_dispose(&v40, 8);
        if (!v15)
        {
          v28 = [MEMORY[0x1E696AAA8] currentHandler];
          v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCAWindowServerHitTestSecurityAnalysisOcclusionPercent(void)"];
          [v28 handleFailureInFunction:v29 file:@"BKSWindowServerHitTestSecurityAnalysis.m" lineNumber:29 description:{@"%s", dlerror()}];
          goto LABEL_44;
        }

        v17 = [v5 objectForKeyedSubscript:*v15];
        v18 = objc_opt_class();
        v19 = v17;
        if (v18)
        {
          if (objc_opt_isKindOfClass())
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        v25 = v20;

        if (v25)
        {
          [v25 floatValue];
          v11 = v26;

          v13 = 0;
          goto LABEL_33;
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"occlusionTypeMask is %X, but there is no percentage", v12];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"occlusionType is unexpected class:%@", objc_opt_class()];
      }

      *a4 = v14 = 0;
      goto LABEL_36;
    }

    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v9 = getkCAWindowServerOcclusionTypeLayerSymbolLoc_ptr;
    v43 = getkCAWindowServerOcclusionTypeLayerSymbolLoc_ptr;
    if (!getkCAWindowServerOcclusionTypeLayerSymbolLoc_ptr)
    {
      v35 = MEMORY[0x1E69E9820];
      v36 = 3221225472;
      v37 = __getkCAWindowServerOcclusionTypeLayerSymbolLoc_block_invoke;
      v38 = &unk_1E6F476B0;
      v39 = &v40;
      v10 = QuartzCoreLibrary_11890();
      v41[3] = dlsym(v10, "kCAWindowServerOcclusionTypeLayer");
      getkCAWindowServerOcclusionTypeLayerSymbolLoc_ptr = *(v39[1] + 24);
      v9 = v41[3];
    }

    _Block_object_dispose(&v40, 8);
    if (v9)
    {
      v11 = 0;
      if ([v8 isEqual:*v9])
      {
        LODWORD(v12) = 0;
        v13 = 3;
LABEL_33:
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __94__BKSWindowServerHitTestSecurityAnalysis_securityAnalysisFromCAHitTestDictionary_errorString___block_invoke;
        v30[3] = &unk_1E6F47688;
        v32 = v13;
        v33 = v12;
        v34 = v11;
        v31 = v5;
        v14 = [(BKSWindowServerHitTestSecurityAnalysis *)BKSMutableWindowServerHitTestSecurityAnalysis build:v30];

        goto LABEL_36;
      }

      v40 = 0;
      v41 = &v40;
      v42 = 0x2020000000;
      v21 = getkCAWindowServerOcclusionTypeClippedSymbolLoc_ptr;
      v43 = getkCAWindowServerOcclusionTypeClippedSymbolLoc_ptr;
      if (!getkCAWindowServerOcclusionTypeClippedSymbolLoc_ptr)
      {
        v35 = MEMORY[0x1E69E9820];
        v36 = 3221225472;
        v37 = __getkCAWindowServerOcclusionTypeClippedSymbolLoc_block_invoke;
        v38 = &unk_1E6F476B0;
        v39 = &v40;
        v22 = QuartzCoreLibrary_11890();
        v41[3] = dlsym(v22, "kCAWindowServerOcclusionTypeClipped");
        getkCAWindowServerOcclusionTypeClippedSymbolLoc_ptr = *(v39[1] + 24);
        v21 = v41[3];
      }

      _Block_object_dispose(&v40, 8);
      if (v21)
      {
        if ([v8 isEqual:*v21])
        {
          LODWORD(v12) = 0;
          v13 = 2;
          goto LABEL_33;
        }

        v40 = 0;
        v41 = &v40;
        v42 = 0x2020000000;
        v12 = getkCAWindowServerOcclusionTypeBorderSymbolLoc_ptr;
        v43 = getkCAWindowServerOcclusionTypeBorderSymbolLoc_ptr;
        if (!getkCAWindowServerOcclusionTypeBorderSymbolLoc_ptr)
        {
          v35 = MEMORY[0x1E69E9820];
          v36 = 3221225472;
          v37 = __getkCAWindowServerOcclusionTypeBorderSymbolLoc_block_invoke;
          v38 = &unk_1E6F476B0;
          v39 = &v40;
          v23 = QuartzCoreLibrary_11890();
          v41[3] = dlsym(v23, "kCAWindowServerOcclusionTypeBorder");
          getkCAWindowServerOcclusionTypeBorderSymbolLoc_ptr = *(v39[1] + 24);
          v12 = v41[3];
        }

        _Block_object_dispose(&v40, 8);
        if (v12)
        {
          v24 = [v8 isEqual:*v12];
          LODWORD(v12) = 0;
          v13 = v24;
          goto LABEL_33;
        }

        v28 = [MEMORY[0x1E696AAA8] currentHandler];
        v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCAWindowServerOcclusionTypeBorder(void)"];
        [v28 handleFailureInFunction:v29 file:@"BKSWindowServerHitTestSecurityAnalysis.m" lineNumber:27 description:{@"%s", dlerror()}];
      }

      else
      {
        v28 = [MEMORY[0x1E696AAA8] currentHandler];
        v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCAWindowServerOcclusionTypeClipped(void)"];
        [v28 handleFailureInFunction:v29 file:@"BKSWindowServerHitTestSecurityAnalysis.m" lineNumber:26 description:{@"%s", dlerror()}];
      }
    }

    else
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCAWindowServerOcclusionTypeLayer(void)"];
      [v28 handleFailureInFunction:v29 file:@"BKSWindowServerHitTestSecurityAnalysis.m" lineNumber:25 description:{@"%s", dlerror()}];
    }

LABEL_44:

    __break(1u);
    return result;
  }

  v14 = 0;
LABEL_36:

  return v14;
}

void __94__BKSWindowServerHitTestSecurityAnalysis_securityAnalysisFromCAHitTestDictionary_errorString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setOcclusionType:*(a1 + 40)];
  [v3 setOcclusionMask:*(a1 + 48)];
  LODWORD(v4) = *(a1 + 52);
  [v3 setOcclusionPercentage:v4];
  v5 = *(a1 + 32);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v6 = getkCAWindowServerHitTestSecurityAnalysisCumulativeLayerTransformSymbolLoc_ptr;
  v38 = getkCAWindowServerHitTestSecurityAnalysisCumulativeLayerTransformSymbolLoc_ptr;
  if (!getkCAWindowServerHitTestSecurityAnalysisCumulativeLayerTransformSymbolLoc_ptr)
  {
    *&v27 = MEMORY[0x1E69E9820];
    *(&v27 + 1) = 3221225472;
    *&v28 = __getkCAWindowServerHitTestSecurityAnalysisCumulativeLayerTransformSymbolLoc_block_invoke;
    *(&v28 + 1) = &unk_1E6F476B0;
    *&v29 = &v35;
    v7 = QuartzCoreLibrary_11890();
    v36[3] = dlsym(v7, "kCAWindowServerHitTestSecurityAnalysisCumulativeLayerTransform");
    getkCAWindowServerHitTestSecurityAnalysisCumulativeLayerTransformSymbolLoc_ptr = *(*(v29 + 8) + 24);
    v6 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (v6)
  {
    v8 = [v5 objectForKeyedSubscript:*v6];
    v9 = v8;
    if (v8)
    {
      [v8 CATransform3DValue];
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
    }

    [v3 setCumulativeLayerTransform:&v27];
    v10 = *(a1 + 32);
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v11 = getkCAWindowServerHitTestSecurityAnalysisCumulativeOpacitySymbolLoc_ptr;
    v38 = getkCAWindowServerHitTestSecurityAnalysisCumulativeOpacitySymbolLoc_ptr;
    if (!getkCAWindowServerHitTestSecurityAnalysisCumulativeOpacitySymbolLoc_ptr)
    {
      *&v27 = MEMORY[0x1E69E9820];
      *(&v27 + 1) = 3221225472;
      *&v28 = __getkCAWindowServerHitTestSecurityAnalysisCumulativeOpacitySymbolLoc_block_invoke;
      *(&v28 + 1) = &unk_1E6F476B0;
      *&v29 = &v35;
      v12 = QuartzCoreLibrary_11890();
      v13 = dlsym(v12, "kCAWindowServerHitTestSecurityAnalysisCumulativeOpacity");
      *(*(v29 + 8) + 24) = v13;
      getkCAWindowServerHitTestSecurityAnalysisCumulativeOpacitySymbolLoc_ptr = *(*(v29 + 8) + 24);
      v11 = v36[3];
    }

    _Block_object_dispose(&v35, 8);
    if (v11)
    {
      v14 = [v10 objectForKeyedSubscript:*v11];
      [v14 floatValue];
      [v3 setCumulativeOpacity:?];

      v15 = *(a1 + 32);
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v16 = getkCAWindowServerHitTestSecurityAnalysisParentsHaveInsecureLayerPropertiesSymbolLoc_ptr;
      v38 = getkCAWindowServerHitTestSecurityAnalysisParentsHaveInsecureLayerPropertiesSymbolLoc_ptr;
      if (!getkCAWindowServerHitTestSecurityAnalysisParentsHaveInsecureLayerPropertiesSymbolLoc_ptr)
      {
        *&v27 = MEMORY[0x1E69E9820];
        *(&v27 + 1) = 3221225472;
        *&v28 = __getkCAWindowServerHitTestSecurityAnalysisParentsHaveInsecureLayerPropertiesSymbolLoc_block_invoke;
        *(&v28 + 1) = &unk_1E6F476B0;
        *&v29 = &v35;
        v17 = QuartzCoreLibrary_11890();
        v18 = dlsym(v17, "kCAWindowServerHitTestSecurityAnalysisParentsHaveInsecureLayerProperties");
        *(*(v29 + 8) + 24) = v18;
        getkCAWindowServerHitTestSecurityAnalysisParentsHaveInsecureLayerPropertiesSymbolLoc_ptr = *(*(v29 + 8) + 24);
        v16 = v36[3];
      }

      _Block_object_dispose(&v35, 8);
      if (v16)
      {
        v19 = [v15 objectForKeyedSubscript:*v16];
        [v3 setParentsHaveInsecureLayerProperties:{objc_msgSend(v19, "BOOLValue")}];

        v20 = *(a1 + 32);
        v35 = 0;
        v36 = &v35;
        v37 = 0x2020000000;
        v21 = getkCAWindowServerHitTestSecurityAnalysisIsInsecureFilteredSymbolLoc_ptr;
        v38 = getkCAWindowServerHitTestSecurityAnalysisIsInsecureFilteredSymbolLoc_ptr;
        if (!getkCAWindowServerHitTestSecurityAnalysisIsInsecureFilteredSymbolLoc_ptr)
        {
          *&v27 = MEMORY[0x1E69E9820];
          *(&v27 + 1) = 3221225472;
          *&v28 = __getkCAWindowServerHitTestSecurityAnalysisIsInsecureFilteredSymbolLoc_block_invoke;
          *(&v28 + 1) = &unk_1E6F476B0;
          *&v29 = &v35;
          v22 = QuartzCoreLibrary_11890();
          v23 = dlsym(v22, "kCAWindowServerHitTestSecurityAnalysisIsInsecureFiltered");
          *(*(v29 + 8) + 24) = v23;
          getkCAWindowServerHitTestSecurityAnalysisIsInsecureFilteredSymbolLoc_ptr = *(*(v29 + 8) + 24);
          v21 = v36[3];
        }

        _Block_object_dispose(&v35, 8);
        if (v21)
        {
          v24 = [v20 objectForKeyedSubscript:*v21];
          [v3 setHasInsecureFilter:{objc_msgSend(v24, "BOOLValue")}];

          return;
        }

        v25 = [MEMORY[0x1E696AAA8] currentHandler];
        v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCAWindowServerHitTestSecurityAnalysisIsInsecureFiltered(void)"];
        [v25 handleFailureInFunction:v26 file:@"BKSWindowServerHitTestSecurityAnalysis.m" lineNumber:33 description:{@"%s", dlerror()}];
      }

      else
      {
        v25 = [MEMORY[0x1E696AAA8] currentHandler];
        v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCAWindowServerHitTestSecurityAnalysisParentsHaveInsecureLayerProperties(void)"];
        [v25 handleFailureInFunction:v26 file:@"BKSWindowServerHitTestSecurityAnalysis.m" lineNumber:32 description:{@"%s", dlerror()}];
      }
    }

    else
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCAWindowServerHitTestSecurityAnalysisCumulativeOpacity(void)"];
      [v25 handleFailureInFunction:v26 file:@"BKSWindowServerHitTestSecurityAnalysis.m" lineNumber:31 description:{@"%s", dlerror()}];
    }
  }

  else
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCAWindowServerHitTestSecurityAnalysisCumulativeLayerTransform(void)"];
    [v25 handleFailureInFunction:v26 file:@"BKSWindowServerHitTestSecurityAnalysis.m" lineNumber:30 description:{@"%s", dlerror()}];
  }

  __break(1u);
}

@end
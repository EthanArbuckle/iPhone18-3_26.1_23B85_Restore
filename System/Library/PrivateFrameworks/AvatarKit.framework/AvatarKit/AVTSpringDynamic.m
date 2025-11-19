@interface AVTSpringDynamic
+ (void)enumerateDynamicsInHierarchy:(void *)a3 forAvatar:(void *)a4 usingBlock:;
- (NSString)description;
- (void)evaluateAtTime:(double)a3 physicsController:(id)a4;
- (void)resetTarget;
@end

@implementation AVTSpringDynamic

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(VFXNode *)self->_dynamicNode name];
  v6 = [v3 stringWithFormat:@"<%@ %p | Spring %@>", v4, self, v5];

  return v6;
}

+ (void)enumerateDynamicsInHierarchy:(void *)a3 forAvatar:(void *)a4 usingBlock:
{
  v5 = a4;
  v6 = a3;
  objc_opt_self();
  v7 = [v6 avatarNode];
  v8 = [v6 specializationSettings];

  v9 = [v8 objectForKeyedSubscript:@"dynamics"];
  v10 = [v9 objectForKeyedSubscript:@"dynamic nodes"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__AVTSpringDynamic_enumerateDynamicsInHierarchy_forAvatar_usingBlock___block_invoke;
  v13[3] = &unk_1E7F47E08;
  v14 = v7;
  v15 = v5;
  v11 = v5;
  v12 = v7;
  [v10 enumerateKeysAndObjectsUsingBlock:v13];
}

void __70__AVTSpringDynamic_enumerateDynamicsInHierarchy_forAvatar_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"spring"];
  if (v6)
  {
    v7 = [*(a1 + 32) childNodeWithName:v5 recursively:1];
    if (v7)
    {
      v8 = [v6 objectForKeyedSubscript:@"target"];
      v9 = [*(a1 + 32) childNodeWithName:v8 recursively:1];
      if (v9)
      {
        v10 = [v6 objectForKeyedSubscript:@"duration"];
        v11 = [v6 objectForKeyedSubscript:@"bounce"];
        if (v10)
        {
          [v10 floatValue];
          v13 = v12;
        }

        else
        {
          v13 = 0.5;
        }

        v40 = v11;
        if (v11)
        {
          [v11 floatValue];
          v16 = v15;
        }

        else
        {
          v16 = 0.5;
        }

        v17 = objc_opt_new();
        objc_storeStrong((v17 + 8), v7);
        v18 = [v7 presentationNode];
        v19 = *(v17 + 16);
        *(v17 + 16) = v18;

        v20 = [v7 parentNode];
        v21 = [v20 presentationNode];
        v22 = *(v17 + 24);
        *(v17 + 24) = v21;

        v23 = [v9 presentationNode];
        v24 = *(v17 + 32);
        *(v17 + 32) = v23;

        *(v17 + 160) = 1;
        v25 = [[AVTMassSpringDamperSystem alloc] initWithPerceptualDuration:v13 bounce:v16];
        v26 = *(v17 + 64);
        *(v17 + 64) = v25;

        v27 = [v6 objectForKeyedSubscript:@"XYZ max offsets"];
        if ([v27 count] == 3)
        {
          *(v17 + 40) = 1;
          [v27 objectAtIndexedSubscript:0];
          v28 = v39 = v9;
          [v28 floatValue];
          v37 = v29;
          [v27 objectAtIndexedSubscript:1];
          v30 = v38 = v10;
          [v30 floatValue];
          v36 = v31;
          v32 = [v27 objectAtIndexedSubscript:2];
          [v32 floatValue];
          v33 = v37;
          DWORD1(v33) = v36;
          DWORD2(v33) = v34;
          *(v17 + 48) = v33;

          v10 = v38;
          v9 = v39;
        }

        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v14 = avt_default_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v42 = v8;
          _os_log_impl(&dword_1BB472000, v14, OS_LOG_TYPE_DEFAULT, "Failed to find spring target named '%@'", buf, 0xCu);
        }
      }
    }

    else
    {
      v8 = avt_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = v5;
        _os_log_impl(&dword_1BB472000, v8, OS_LOG_TYPE_DEFAULT, "Failed to find spring node named '%@'", buf, 0xCu);
      }
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)evaluateAtTime:(double)a3 physicsController:(id)a4
{
  [(VFXNode *)self->_targetPresentationNode worldPosition];
  if (self->_shouldReset)
  {
    self->_shouldReset = 0;
    self->_beginTime = a3;
    *self->_beginVelocity = 0u;
    *self->_beginWorldPosition = v6;
    *self->_endWorldPosition = v6;
  }

  else
  {
    v7 = *self->_endWorldPosition;
    v8 = vcgtq_f32(vabdq_f32(v7, v6), vdupq_n_s32(0x3A83126Fu));
    v8.i32[3] = v8.i32[2];
    if ((vmaxvq_u32(v8) & 0x80000000) != 0)
    {
      v23 = v6;
      [(AVTMassSpringDamperSystem *)self->_system float3VelocityAtTime:*self->_beginWorldPosition initialValue:*self->_beginVelocity initialVelocity:v7 targetValue:?];
      v11 = v12;
      v10 = *self->_lastWorldPosition;
      if (self->_hasMaxOffsets)
      {
        v21 = *self->_lastWorldPosition;
        v22 = v12;
        [(VFXNode *)self->_dynamicPresentationNode convertVector:0 fromNode:*vsubq_f32(v10, v23).i64];
        v13 = *&self->_maxOffsets[7];
        v15 = vdivq_f32(v14, v13);
        v16 = vmulq_f32(v15, v15);
        v17 = v16.f32[2] + vaddv_f32(*v16.f32);
        v10 = v21;
        v11 = v22;
        v7 = v23;
        if (v17 > 1.0)
        {
          v18 = vrsqrte_f32(LODWORD(v17));
          v19 = vmul_f32(v18, vrsqrts_f32(LODWORD(v17), vmul_f32(v18, v18)));
          [(VFXNode *)self->_dynamicPresentationNode convertVector:0 toNode:*vmulq_f32(v13, vmulq_n_f32(v15, vmul_f32(v19, vrsqrts_f32(LODWORD(v17), vmul_f32(v19, v19))).f32[0])).i64, *v21.i64];
          v11 = v22;
          v7 = v23;
          v10 = vaddq_f32(v23, v20);
        }
      }

      else
      {
        v7 = v23;
      }

      lastEvaluationTime = self->_lastEvaluationTime;
      self->_beginTime = lastEvaluationTime;
      *self->_beginVelocity = v11;
      *self->_beginWorldPosition = v10;
      *self->_endWorldPosition = v7;
    }

    else
    {
      lastEvaluationTime = self->_beginTime;
      v11 = *self->_beginVelocity;
      v10 = *self->_beginWorldPosition;
    }

    *v6.i64 = [(AVTMassSpringDamperSystem *)self->_system float3ValueAtTime:v10 initialValue:v11 initialVelocity:v7 targetValue:?];
  }

  *self->_lastWorldPosition = v6;
  [(VFXNode *)self->_dynamicParentPresentationNode convertPosition:0 fromNode:?];
  [(VFXNode *)self->_dynamicNode setPosition:?];
  self->_lastEvaluationTime = a3;
}

- (void)resetTarget
{
  dynamicParentPresentationNode = self->_dynamicParentPresentationNode;
  [(VFXNode *)self->_targetPresentationNode worldPosition];
  [(VFXNode *)dynamicParentPresentationNode convertPosition:0 fromNode:?];
  dynamicNode = self->_dynamicNode;

  [(VFXNode *)dynamicNode setPosition:?];
}

@end
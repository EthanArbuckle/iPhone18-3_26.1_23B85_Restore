@interface AVTPhysicalizedSkeletonDynamic
+ (void)enumerateDynamicsInHierarchy:(void *)hierarchy forAvatar:(void *)avatar usingBlock:;
- (NSString)description;
- (void)evaluateAtTime:(double)time physicsController:(id)controller;
- (void)resetTarget;
@end

@implementation AVTPhysicalizedSkeletonDynamic

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  rootJoint = self->_rootJoint;
  name = [(VFXNode *)self->_drivingNode name];
  v7 = [v3 stringWithFormat:@"<%@ %p | Skeleton %p driven by %@>", v4, self, rootJoint, name];

  return v7;
}

+ (void)enumerateDynamicsInHierarchy:(void *)hierarchy forAvatar:(void *)avatar usingBlock:
{
  avatarCopy = avatar;
  hierarchyCopy = hierarchy;
  objc_opt_self();
  avatarNode = [hierarchyCopy avatarNode];
  v8 = [avatarNode childNodeWithName:@"head_JNT" recursively:1];
  specializationSettings = [hierarchyCopy specializationSettings];

  v10 = [specializationSettings objectForKeyedSubscript:@"dynamics"];
  v11 = [v10 objectForKeyedSubscript:@"dynamic nodes"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__AVTPhysicalizedSkeletonDynamic_enumerateDynamicsInHierarchy_forAvatar_usingBlock___block_invoke;
  v15[3] = &unk_1E7F47DE0;
  v16 = avatarNode;
  v17 = v8;
  v18 = avatarCopy;
  v12 = avatarCopy;
  v13 = v8;
  v14 = avatarNode;
  [v11 enumerateKeysAndObjectsUsingBlock:v15];
}

void __84__AVTPhysicalizedSkeletonDynamic_enumerateDynamicsInHierarchy_forAvatar_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v81 = *MEMORY[0x1E69E9840];
  v67 = a2;
  v63 = a3;
  v65 = [v63 objectForKeyedSubscript:@"physicalized skeleton"];
  v5 = v65;
  if (v65)
  {
    obj = [*(a1 + 32) childNodeWithName:v67 recursively:1];
    if (!obj)
    {
      v20 = avt_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v76) = 138412290;
        *(&v76 + 4) = v67;
        _os_log_impl(&dword_1BB472000, v20, OS_LOG_TYPE_DEFAULT, "Failed to find physicalized skeleton driving node named '%@'", &v76, 0xCu);
      }

      goto LABEL_44;
    }

    v61 = [v65 objectForKeyedSubscript:@"chain root"];
    v6 = [*(a1 + 32) childNodeWithName:v61 recursively:1];
    v62 = v6;
    if (!v6)
    {
      v21 = avt_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v76) = 138412290;
        *(&v76 + 4) = v61;
        _os_log_impl(&dword_1BB472000, v21, OS_LOG_TYPE_DEFAULT, "Failed to find joint hierarchy for physicalized skeleton root joint named '%@'", &v76, 0xCu);
      }

      goto LABEL_43;
    }

    *&v76 = 0;
    *(&v76 + 1) = &v76;
    v77 = 0x3032000000;
    v78 = __Block_byref_object_copy__0;
    v79 = __Block_byref_object_dispose__0;
    v80 = 0;
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __84__AVTPhysicalizedSkeletonDynamic_enumerateDynamicsInHierarchy_forAvatar_usingBlock___block_invoke_103;
    v72[3] = &unk_1E7F47DB8;
    v72[4] = &v76;
    [v6 enumerateHierarchyUsingBlock:v72];
    [v65 objectForKeyedSubscript:@"targets"];
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v7 = v69 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (v8)
    {
      v9 = *v69;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v69 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(a1 + 32) childNodeWithName:*(*(&v68 + 1) + 8 * i) recursively:1];
          if (v11)
          {
            v12 = *(*(&v76 + 1) + 40);
            if (!v12)
            {
              v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v14 = *(*(&v76 + 1) + 40);
              *(*(&v76 + 1) + 40) = v13;

              v12 = *(*(&v76 + 1) + 40);
            }

            [v12 addObject:v11];
          }

          else
          {
            v15 = avt_default_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v74 = v67;
              _os_log_impl(&dword_1BB472000, v15, OS_LOG_TYPE_DEFAULT, "Failed to find physicalized skeleton target named '%@'", buf, 0xCu);
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v68 objects:v75 count:16];
      }

      while (v8);
    }

    if (![*(*(&v76 + 1) + 40) count])
    {
      v17 = avt_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v74 = v61;
        _os_log_impl(&dword_1BB472000, v17, OS_LOG_TYPE_DEFAULT, "Failed to find any target node for physicalized skeleton root joint named '%@'", buf, 0xCu);
      }

      goto LABEL_42;
    }

    v16 = [v63 objectForKeyedSubscript:@"simulation factor"];
    v17 = v16;
    if (v16)
    {
      [v16 floatValue];
      v19 = v18;
    }

    else
    {
      v19 = 0.5;
    }

    v22 = objc_opt_new();
    *(v22 + 8) = v19;
    objc_storeStrong((v22 + 16), *(a1 + 40));
    objc_storeStrong((v22 + 24), obj);
    objc_storeStrong((v22 + 32), v62);
    v23 = [*(*(&v76 + 1) + 40) copy];
    v24 = *(v22 + 40);
    *(v22 + 40) = v23;

    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 80) = 0u;
    v25 = [v65 objectForKeyedSubscript:@"rotation up down"];
    v66 = [v65 objectForKeyedSubscript:@"rotation left right"];
    v26 = [v65 objectForKeyedSubscript:@"rotation forward back"];
    v27 = v25;
    if (v25)
    {
      v28 = [v25 objectAtIndexedSubscript:0];
      [v28 floatValue];
      v58 = v29;
      v30 = [v25 objectAtIndexedSubscript:1];
      [v30 floatValue];
      v55 = v31;
      v32 = [v25 objectAtIndexedSubscript:2];
      [v32 floatValue];
      v33 = v58;
      DWORD1(v33) = v55;
      DWORD2(v33) = v34;
      *(v22 + 48) = v33;
    }

    if (v66)
    {
      v35 = [v66 objectAtIndexedSubscript:0];
      [v35 floatValue];
      v59 = v36;
      v37 = [v66 objectAtIndexedSubscript:1];
      [v37 floatValue];
      v56 = v38;
      v39 = [v66 objectAtIndexedSubscript:2];
      [v39 floatValue];
      v40 = v59;
      DWORD1(v40) = v56;
      DWORD2(v40) = v41;
      *(v22 + 64) = v40;
    }

    if (v26)
    {
      v42 = [v26 objectAtIndexedSubscript:0];
      [v42 floatValue];
      v60 = v43;
      v44 = [v26 objectAtIndexedSubscript:1];
      [v44 floatValue];
      v57 = v45;
      v46 = [v26 objectAtIndexedSubscript:2];
      [v46 floatValue];
      v47 = v60;
      DWORD1(v47) = v57;
      DWORD2(v47) = v48;
      *(v22 + 80) = v47;
    }

    v49 = [obj name];
    v50 = [v49 hasPrefix:@"L_"];

    if (v50)
    {
      v51 = 1;
    }

    else
    {
      v52 = [obj name];
      v53 = [v52 hasPrefix:@"R_"];

      if (!v53)
      {
        *(v22 + 96) = 0;
        goto LABEL_41;
      }

      v51 = 2;
    }

    *(v22 + 96) = v51;
LABEL_41:
    (*(*(a1 + 48) + 16))();

LABEL_42:
    _Block_object_dispose(&v76, 8);

LABEL_43:
    v20 = v61;
LABEL_44:

    v5 = v65;
  }

  v54 = *MEMORY[0x1E69E9840];
}

void __84__AVTPhysicalizedSkeletonDynamic_enumerateDynamicsInHierarchy_forAvatar_usingBlock___block_invoke_103(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 name];
  v4 = [v3 containsString:@"_DDV"];

  if (v4)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v5 addObject:v9];
  }
}

- (void)evaluateAtTime:(double)time physicsController:(id)controller
{
  v34 = *MEMORY[0x1E69E9840];
  simulationFactor = self->_simulationFactor;
  [controller offsetFromRestingPositionForNode:self->_drivingNode inCoordinateSpaceOfNode:self->_referenceNode];
  v23 = v5;
  side = self->_side;
  v26 = *self->_leftRightRotation;
  v27 = *self->_forwardBackRotation;
  v25 = *self->_upDownRotation;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = self->_targetNodes;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v11 = v8;
    v9.i64[0] = side;
    v10.i64[0] = 2;
    v12 = vdupq_lane_s64(vceqq_s64(v9, v10).i64[0], 0);
    v13 = vmulq_n_f32(v23, simulationFactor);
    *v14.i32 = -*v13.i32;
    v14.i32[1] = v13.i32[1];
    v14.i64[1] = __PAIR64__(v23.u32[3], v13.u32[2]);
    v15 = vbslq_s8(v12, v14, v13);
    v16 = vnegq_f32(v15);
    v15.i32[3] = 0;
    v17 = vmaxnmq_f32(v15, 0);
    v17.i32[3] = 0;
    v16.i32[3] = 0;
    v18 = vmaxnmq_f32(v16, 0);
    v18.i32[3] = 0;
    v19 = vsubq_f32(vminnmq_f32(v17, xmmword_1BB4F0560), vminnmq_f32(v18, xmmword_1BB4F0560));
    *&v28 = vaddq_f32(vmulq_lane_f32(v25, *v19.f32, 1), vaddq_f32(vmulq_n_f32(v26, v19.f32[0]), vmulq_laneq_f32(v27, v19, 2))).u64[0];
    v20 = *v30;
    do
    {
      v21 = 0;
      do
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v29 + 1) + 8 * v21++) setEulerAngles:{v28, *&v23}];
      }

      while (v11 != v21);
      v11 = [(NSArray *)v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v11);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)resetTarget
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_targetNodes;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setEulerAngles:{0.0, v8}];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end
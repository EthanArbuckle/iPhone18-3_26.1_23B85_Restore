@interface AVTAvatarBodyPose
+ (id)neutralPose;
+ (id)posesInPosePack:(id)pack;
- (AVTAvatarBodyPose)initWithDictionaryRepresentation:(id)representation;
- (AVTAvatarBodyPose)initWithSceneKitHierarchy:(id)hierarchy;
- (AVTAvatarBodyPose)initWithSceneKitRootJoints:(id)joints;
- (AVTAvatarBodyPose)initWithSceneKitSceneAtURL:(id)l;
- (void)_applyBodyPoseWithDictionaryRepresentation:(id)representation skeletonRootJoint:(id)joint;
- (void)_applyBodyPoseWithDictionaryRepresentationA:(id)a dictionaryRepresentationB:(id)b dictionaryRepresentationC:(id)c dictionaryRepresentationD:(id)d variantIntensityX:(float)x variantIntensityY:(float)y skeletonRootJoint:(id)joint;
- (void)_applyBodyPoseWithDictionaryRepresentationA:(id)a dictionaryRepresentationB:(id)b variantIntensity:(float)intensity skeletonRootJoint:(id)joint;
- (void)applyToBodySkeletonWithRootJoint:(id)joint ageBodyPoseVariantIntensity:(float)intensity shoulderWidthBodyPoseVariantIntensity:(float)variantIntensity;
@end

@implementation AVTAvatarBodyPose

+ (id)neutralPose
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__AVTAvatarBodyPose_neutralPose__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (neutralPose_onceToken != -1)
  {
    dispatch_once(&neutralPose_onceToken, block);
  }

  v2 = neutralPose_neutralPose;

  return v2;
}

uint64_t __32__AVTAvatarBodyPose_neutralPose__block_invoke(uint64_t a1)
{
  if (kAVTBodyPosePackMemojiEditor_block_invoke_onceToken != -1)
  {
    __32__AVTAvatarBodyPose_neutralPose__block_invoke_cold_1();
  }

  v2 = objc_alloc(*(a1 + 32));
  v3 = [v2 initWithDictionaryRepresentation:kAVTBodyPosePackMemojiEditor_block_invoke_kAVTPrecompiledNeutralBodyPoseRepresentation];
  v4 = neutralPose_neutralPose;
  neutralPose_neutralPose = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void __32__AVTAvatarBodyPose_neutralPose__block_invoke_2()
{
  v0 = kAVTBodyPosePackMemojiEditor_block_invoke_kAVTPrecompiledNeutralBodyPoseRepresentation;
  kAVTBodyPosePackMemojiEditor_block_invoke_kAVTPrecompiledNeutralBodyPoseRepresentation = &unk_1F39E3520;
}

+ (id)posesInPosePack:(id)pack
{
  packCopy = pack;
  if ([packCopy isEqualToString:@"memojiEditor"])
  {
    if (posesInPosePack__onceToken != -1)
    {
      +[AVTAvatarBodyPose posesInPosePack:];
    }

    v4 = posesInPosePack__poses;
  }

  else
  {
    v5 = avt_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(AVTAvatarBodyPose *)packCopy posesInPosePack:v5];
    }

    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

void __37__AVTAvatarBodyPose_posesInPosePack___block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = posesInPosePack__poses;
  posesInPosePack__poses = v0;

  v2 = [AVTStickerConfiguration stickerConfigurationsForMemojiInStickerPack:@"memojiEditorCarousel"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        [v7 loadIfNeeded];
        v8 = posesInPosePack__poses;
        v9 = [v7 bodyPose];
        [v8 addObject:v9];

        [v7 unload];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (AVTAvatarBodyPose)initWithSceneKitRootJoints:(id)joints
{
  jointsCopy = joints;
  v16.receiver = self;
  v16.super_class = AVTAvatarBodyPose;
  v5 = [(AVTAvatarBodyPose *)&v16 init];
  if (v5)
  {
    v6 = _AVTPoseRoundingBehaviour();
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__AVTAvatarBodyPose_initWithSceneKitRootJoints___block_invoke;
    v13[3] = &unk_1E7F48F58;
    v14 = v6;
    v8 = v7;
    v15 = v8;
    v9 = v6;
    [jointsCopy enumerateKeysAndObjectsUsingBlock:v13];
    dictionaryRepresentation = v5->_dictionaryRepresentation;
    v5->_dictionaryRepresentation = v8;
    v11 = v8;
  }

  return v5;
}

void __48__AVTAvatarBodyPose_initWithSceneKitRootJoints___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x1E695DF90];
  v7 = a2;
  v8 = objc_alloc_init(v6);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__AVTAvatarBodyPose_initWithSceneKitRootJoints___block_invoke_2;
  v11[3] = &unk_1E7F48F30;
  v12 = v5;
  v13 = v8;
  v14 = *(a1 + 32);
  v9 = v8;
  v10 = v5;
  [v10 enumerateChildNodesUsingBlock:v11];
  [*(a1 + 40) setObject:v9 forKeyedSubscript:v7];
}

void __48__AVTAvatarBodyPose_initWithSceneKitRootJoints___block_invoke_2(uint64_t a1, void *a2)
{
  v114[16] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 name];
  v5 = [v3 parentNode];
  if ([v4 isEqualToString:@"L_eye_JNT"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"R_eye_JNT"))
  {
    goto LABEL_27;
  }

  [v3 simdTransform];
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = *(a1 + 32);
  if (v5 != v14)
  {
    [v14 simdConvertTransform:v5 fromNode:{*v6.i64, *v7.i64, *v8.i64, *v9.i64}];
    v10 = v15;
    v11 = v16;
    v12 = v17;
    v13 = v18;
  }

  v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), vnegq_f32(v11)), v12, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
  v20 = vmulq_f32(v10, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
  *v19.i32 = vaddv_f32(*v20.f32);
  v21 = -1.0;
  if ((v20.f32[2] + *v19.i32) >= 0.0)
  {
    v21 = 1.0;
  }

  v22 = vmulq_f32(v10, v10);
  v23 = vmulq_f32(v11, v11);
  v24 = vadd_f32(vzip1_s32(*v22.i8, *v23.i8), vzip2_s32(*v22.i8, *v23.i8));
  v25 = vextq_s8(v22, v22, 8uLL);
  *v25.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v25.f32, *&vextq_s8(v23, v23, 8uLL)), v24));
  v26 = vmulq_f32(v12, v12);
  v25.i32[2] = sqrtf(v26.f32[2] + vaddv_f32(*v26.f32));
  v27 = vmulq_n_f32(v25, v21);
  v28 = vdivq_f32(v10, vdupq_lane_s32(*v27.f32, 0));
  v29 = vdivq_f32(v11, vdupq_lane_s32(*v27.f32, 1));
  v30 = vdivq_f32(v12, vdupq_laneq_s32(v27, 2));
  v31 = v30.f32[2] + (*v28.i32 + v29.f32[1]);
  if (v31 <= 0.0)
  {
    if (*v28.i32 <= v29.f32[1] || *v28.i32 <= v30.f32[2])
    {
      if (v29.f32[1] > v30.f32[2])
      {
        v34 = v29;
        v34.f32[1] = (v29.f32[1] + 1.0) - *v28.i32;
        v34.i32[3] = v30.i32[0];
        v35 = vzip2q_s32(vzip1q_s32(v28, v30), vtrn1q_s32(v30, v28));
        v36 = vaddq_f32(v29, v35);
        v37 = vsubq_f32(v34, v35);
        v30 = vtrn2q_s32(vrev64q_s32(v36), v37);
        v32 = *&v37.i32[1];
        goto LABEL_18;
      }

      *v30.f32 = vadd_f32(*v30.f32, *&vzip2q_s32(v28, v29));
      v32 = ((v30.f32[2] + 1.0) - *v28.i32) - v29.f32[1];
      v30.f32[2] = v32;
      v40 = *&v28.i32[1] - v29.f32[0];
    }

    else
    {
      v32 = ((*v28.i32 + 1.0) - v29.f32[1]) - v30.f32[2];
      *&v38 = v29.f32[0] + *&v28.i32[1];
      v39 = v30.f32[0] + *&v28.i32[2];
      v40 = v29.f32[2] - v30.f32[1];
      v30.i64[0] = __PAIR64__(v38, LODWORD(v32));
      v30.f32[2] = v39;
    }

    v30.f32[3] = v40;
    goto LABEL_18;
  }

  *v30.f32 = vsub_f32(*&vzip2q_s32(v29, vuzp1q_s32(v29, v30)), *&vtrn2q_s32(v30, vzip2q_s32(v30, v28)));
  v30.f32[2] = *&v28.i32[1] - v29.f32[0];
  v32 = v31 + 1.0;
  v30.f32[3] = v31 + 1.0;
LABEL_18:
  v41 = vmulq_n_f32(v30, 0.5 / sqrtf(v32));
  v42 = *MEMORY[0x1E69E9B18];
  v43 = *(MEMORY[0x1E69E9B18] + 16);
  v44 = *(MEMORY[0x1E69E9B18] + 32);
  v45 = vmulq_f32(v41, v41);
  v46 = vaddq_f32(v45, v45);
  v47 = vmulq_laneq_f32(v41, v41, 3);
  v48 = vmuls_lane_f32(v41.f32[0], *v41.f32, 1);
  v49 = vmuls_lane_f32(v41.f32[1], v41, 2);
  v50 = vmuls_lane_f32(v41.f32[0], v41, 2);
  v42.f32[0] = (1.0 - v46.f32[1]) - v46.f32[2];
  v42.f32[1] = (v48 + v47.f32[2]) + (v48 + v47.f32[2]);
  v42.f32[2] = (v50 - v47.f32[1]) + (v50 - v47.f32[1]);
  v43.f32[0] = (v48 - v47.f32[2]) + (v48 - v47.f32[2]);
  v46.f32[0] = 1.0 - v46.f32[0];
  v43.f32[1] = v46.f32[0] - v46.f32[2];
  v43.f32[2] = (v49 + v47.f32[0]) + (v49 + v47.f32[0]);
  v44.f32[0] = (v50 + v47.f32[1]) + (v50 + v47.f32[1]);
  v44.f32[1] = (v49 - v47.f32[0]) + (v49 - v47.f32[0]);
  v44.f32[2] = v46.f32[0] - v46.f32[1];
  v51 = vaddq_f32(v13, *(MEMORY[0x1E69E9B18] + 48));
  v51.i32[3] = HIDWORD(*(MEMORY[0x1E69E9B18] + 48));
  v52 = vabdq_f32(v10, vmulq_n_f32(v42, v27.f32[0]));
  v53 = vdupq_n_s32(0x358637BDu);
  v54 = vandq_s8(vandq_s8(vandq_s8(vcgeq_f32(v53, vabdq_f32(v11, vmulq_lane_f32(v43, *v27.f32, 1))), vcgeq_f32(v53, vabdq_f32(v13, v51))), vcgeq_f32(v53, vabdq_f32(v12, vmulq_laneq_f32(v44, v27, 2)))), vcgeq_f32(v53, v52));
  if ((vminvq_u32(v54) & 0x80000000) != 0)
  {
    if (v5 == *(a1 + 32))
    {
      [v3 simdPosition];
      v110 = v71;
      [v3 simdOrientation];
      v108 = v72;
      [v3 simdScale];
      v13 = v110;
      v27 = v73;
    }

    else
    {
      v108 = v41;
    }

    v111 = v13;
    v106 = v27;
    __asm { FMOV            V0.4S, #-1.0 }

    v79 = vcgtq_f32(vdupq_n_s32(0x358637BDu), vabsq_f32(vaddq_f32(v27, _Q0)));
    v79.i32[3] = v79.i32[2];
    v80 = vminvq_u32(v79);
    v79.i32[0] = v13.i32[0];
    v102 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:*v79.i64];
    LODWORD(v81) = v111.i32[1];
    if ((v80 & 0x80000000) != 0)
    {
      v113[0] = v102;
      v101 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:v81];
      v113[1] = v101;
      LODWORD(v89) = v111.i32[2];
      v70 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:v89];
      v113[2] = v70;
      v68 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:*v108.i64];
      v113[3] = v68;
      LODWORD(v90) = v108.i32[1];
      v67 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:v90];
      v113[4] = v67;
      v104 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:{COERCE_DOUBLE(__PAIR64__(v108.u32[1], v108.u32[2]))}];
      v113[5] = v104;
      v69 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:{COERCE_DOUBLE(__PAIR64__(v108.u32[1], v108.u32[3]))}];
      v113[6] = v69;
      v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:7];
      [*(a1 + 40) setObject:v66 forKeyedSubscript:v4];
    }

    else
    {
      v112[0] = v102;
      v101 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:v81];
      v112[1] = v101;
      LODWORD(v82) = v111.i32[2];
      v70 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:v82];
      v112[2] = v70;
      v100 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:*v108.i64];
      v112[3] = v100;
      LODWORD(v83) = v108.i32[1];
      v98 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:v83];
      v112[4] = v98;
      v104 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:{COERCE_DOUBLE(__PAIR64__(v108.u32[1], v108.u32[2]))}];
      v112[5] = v104;
      v84 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:{COERCE_DOUBLE(__PAIR64__(v108.u32[1], v108.u32[3]))}];
      v112[6] = v84;
      v66 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:*v106.i64];
      v112[7] = v66;
      HIDWORD(v85) = v106.i32[1];
      LODWORD(v85) = v106.i32[1];
      v86 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:v85];
      v112[8] = v86;
      v87 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:{COERCE_DOUBLE(__PAIR64__(v106.u32[1], v106.u32[2]))}];
      v112[9] = v87;
      v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:10];
      [*(a1 + 40) setObject:v88 forKeyedSubscript:v4];

      v67 = v98;
      v69 = v84;

      v68 = v100;
    }
  }

  else
  {
    v96 = v5;
    v54.i32[0] = v10.i32[0];
    v107 = v12;
    v109 = v13;
    v103 = v10;
    v105 = v11;
    v102 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:*v54.i64];
    v114[0] = v102;
    HIDWORD(v55) = v103.i32[1];
    LODWORD(v55) = v103.i32[1];
    v101 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:v55];
    v114[1] = v101;
    v95 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:{COERCE_DOUBLE(__PAIR64__(v103.u32[1], v103.u32[2]))}];
    v114[2] = v95;
    v99 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:{COERCE_DOUBLE(__PAIR64__(v103.u32[1], v103.u32[3]))}];
    v114[3] = v99;
    v97 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:*v105.i64];
    v114[4] = v97;
    HIDWORD(v56) = v105.i32[1];
    LODWORD(v56) = v105.i32[1];
    v104 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:v56];
    v114[5] = v104;
    v94 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:{COERCE_DOUBLE(__PAIR64__(v105.u32[1], v105.u32[2]))}];
    v114[6] = v94;
    v92 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:{COERCE_DOUBLE(__PAIR64__(v105.u32[1], v105.u32[3]))}];
    v114[7] = v92;
    v105.i64[0] = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:*v107.i64];
    v114[8] = v105.i64[0];
    HIDWORD(v57) = v107.i32[1];
    LODWORD(v57) = v107.i32[1];
    v93 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:v57];
    v114[9] = v93;
    v58 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:{COERCE_DOUBLE(__PAIR64__(v107.u32[1], v107.u32[2]))}];
    v114[10] = v58;
    v59 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:{COERCE_DOUBLE(__PAIR64__(v107.u32[1], v107.u32[3]))}];
    v114[11] = v59;
    v60 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:*v109.i64];
    v114[12] = v60;
    HIDWORD(v61) = v109.i32[1];
    LODWORD(v61) = v109.i32[1];
    v62 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:v61];
    v114[13] = v62;
    v63 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:{COERCE_DOUBLE(__PAIR64__(v109.u32[1], v109.u32[2]))}];
    v114[14] = v63;
    v64 = [MEMORY[0x1E696AD98] avt_numberWithFloat:*(a1 + 48) roundingBehavior:{COERCE_DOUBLE(__PAIR64__(v109.u32[1], v109.u32[3]))}];
    v114[15] = v64;
    v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:16];
    [*(a1 + 40) setObject:v65 forKeyedSubscript:v4];

    v66 = v92;
    v5 = v96;

    v67 = v97;
    v68 = v99;

    v69 = v94;
    v70 = v95;
  }

LABEL_27:
  v91 = *MEMORY[0x1E69E9840];
}

- (AVTAvatarBodyPose)initWithSceneKitHierarchy:(id)hierarchy
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [hierarchy childNodesPassingTest:&__block_literal_global_1934 recursively:1];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        name = [v10 name];
        v12 = [name isEqualToString:@"bodyRoot_JNT"];

        if (v12)
        {
          [v4 setObject:v10 forKeyedSubscript:@"none"];
        }

        else
        {
          name2 = [v10 name];
          v14 = [name2 rangeOfString:@"_variant_"];
          v16 = v15;

          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            name3 = [v10 name];
            v18 = [name3 substringFromIndex:v14 + v16];

            [v4 setObject:v10 forKeyedSubscript:v18];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v19 = [(AVTAvatarBodyPose *)self initWithSceneKitRootJoints:v4];
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t __47__AVTAvatarBodyPose_initWithSceneKitHierarchy___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 hasPrefix:@"bodyRoot_JNT"];

  return v3;
}

- (AVTAvatarBodyPose)initWithSceneKitSceneAtURL:(id)l
{
  lCopy = l;
  v11 = 0;
  v5 = [MEMORY[0x1E697A8C8] avt_newSceneWithURL:lCopy options:0 error:&v11];
  v6 = v11;
  [v5 avt_fixQuirksOfNewUSDSchemaWithOptions:0 handler:0];
  if (v6)
  {
    v7 = avt_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(AVTAvatarPoseAnimation *)lCopy initWithSceneKitSceneAtURL:v6 usdaMetadata:v7];
    }
  }

  rootNode = [v5 rootNode];
  v9 = [(AVTAvatarBodyPose *)self initWithSceneKitHierarchy:rootNode];

  return v9;
}

- (AVTAvatarBodyPose)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = AVTAvatarBodyPose;
  v6 = [(AVTAvatarBodyPose *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionaryRepresentation, representation);
  }

  return v7;
}

- (void)applyToBodySkeletonWithRootJoint:(id)joint ageBodyPoseVariantIntensity:(float)intensity shoulderWidthBodyPoseVariantIntensity:(float)variantIntensity
{
  jointCopy = joint;
  v8 = +[AVTAvatarBodyPose neutralPose];

  if (v8 == self)
  {
    v9 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:@"none"];
    [(AVTAvatarBodyPose *)self _applyBodyPoseWithDictionaryRepresentation:v9 skeletonRootJoint:jointCopy];
    goto LABEL_9;
  }

  if (variantIntensity == 0.0)
  {
    v9 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:@"none"];
    v10 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:@"age_child"];
    selfCopy2 = self;
    v12 = v9;
    v13 = v10;
    *&v14 = intensity;
  }

  else
  {
    v9 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:@"none"];
    dictionaryRepresentation = self->_dictionaryRepresentation;
    if (intensity != 0.0)
    {
      v10 = [(NSDictionary *)dictionaryRepresentation objectForKeyedSubscript:@"age_child"];
      v16 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:@"wide_shoulders_adult"];
      v17 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:@"wide_shoulders_child"];
      *&v18 = intensity;
      *&v19 = variantIntensity;
      [(AVTAvatarBodyPose *)self _applyBodyPoseWithDictionaryRepresentationA:v9 dictionaryRepresentationB:v10 dictionaryRepresentationC:v16 dictionaryRepresentationD:v17 variantIntensityX:jointCopy variantIntensityY:v18 skeletonRootJoint:v19];

      goto LABEL_8;
    }

    v10 = [(NSDictionary *)dictionaryRepresentation objectForKeyedSubscript:@"wide_shoulders_adult"];
    selfCopy2 = self;
    v12 = v9;
    v13 = v10;
    *&v14 = variantIntensity;
  }

  [(AVTAvatarBodyPose *)selfCopy2 _applyBodyPoseWithDictionaryRepresentationA:v12 dictionaryRepresentationB:v13 variantIntensity:jointCopy skeletonRootJoint:v14];
LABEL_8:

LABEL_9:
}

- (void)_applyBodyPoseWithDictionaryRepresentation:(id)representation skeletonRootJoint:(id)joint
{
  representationCopy = representation;
  jointCopy = joint;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__AVTAvatarBodyPose__applyBodyPoseWithDictionaryRepresentation_skeletonRootJoint___block_invoke;
  v9[3] = &unk_1E7F47EA0;
  v10 = representationCopy;
  v11 = jointCopy;
  v7 = jointCopy;
  v8 = representationCopy;
  [v7 enumerateHierarchyUsingBlock:v9];
}

void __82__AVTAvatarBodyPose__applyBodyPoseWithDictionaryRepresentation_skeletonRootJoint___block_invoke(uint64_t a1, void *a2)
{
  v63 = a2;
  v3 = [v63 name];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v5 = v4;
    if (v4)
    {
      if ([v4 count] == 16)
      {
        v6 = AVTAvatarPoseRepresentationGetTransform(v5).n128_u64[0];
        v55 = v7;
        v57 = *&v6;
        v53 = v8;
        v60 = v9;
      }

      else
      {
        v10 = v5;
        v11 = [v10 objectAtIndexedSubscript:0];
        [v11 floatValue];
        v61 = v12;
        v13 = [v10 objectAtIndexedSubscript:1];
        [v13 floatValue];
        v58 = v14;
        v15 = [v10 objectAtIndexedSubscript:2];

        [v15 floatValue];
        v16 = v61;
        v16.i32[1] = v58;
        v16.i32[2] = v17;
        v62 = v16;

        v18 = v10;
        v19 = [v18 objectAtIndexedSubscript:3];
        [v19 floatValue];
        v54 = v20;
        v21 = [v18 objectAtIndexedSubscript:4];
        [v21 floatValue];
        v59 = v22;
        v23 = [v18 objectAtIndexedSubscript:5];
        [v23 floatValue];
        v56 = v24;
        v25 = [v18 objectAtIndexedSubscript:6];

        [v25 floatValue];
        v26 = v54;
        v26.f32[1] = v59;
        v26.f32[2] = v56;
        v50 = v26;
        v26.i32[3] = v27;
        v49 = v26;

        v28 = v18;
        if ([v28 count] == 10)
        {
          v29 = [v28 objectAtIndexedSubscript:7];
          [v29 floatValue];
          v51 = v30;
          v31 = [v28 objectAtIndexedSubscript:8];
          [v31 floatValue];
          v48 = v32;
          v33 = [v28 objectAtIndexedSubscript:9];
          [v33 floatValue];
          v34 = v51;
          v34.i32[1] = v48;
          v34.i32[2] = v35;
          v52 = v34;
        }

        else
        {
          __asm { FMOV            V0.4S, #1.0 }

          v52 = _Q0;
        }

        v41 = *MEMORY[0x1E69E9B18];
        v42 = *(MEMORY[0x1E69E9B18] + 16);
        v43 = vmulq_f32(v49, v49);
        v44 = vaddq_f32(v43, v43);
        v45 = vmulq_laneq_f32(v50, v49, 3);
        v41.f32[0] = (1.0 - v44.f32[1]) - v44.f32[2];
        v41.f32[1] = ((v54.f32[0] * v59) + v45.f32[2]) + ((v54.f32[0] * v59) + v45.f32[2]);
        v41.f32[2] = ((v54.f32[0] * v56) - v45.f32[1]) + ((v54.f32[0] * v56) - v45.f32[1]);
        v42.f32[0] = ((v54.f32[0] * v59) - v45.f32[2]) + ((v54.f32[0] * v59) - v45.f32[2]);
        v44.f32[0] = 1.0 - v44.f32[0];
        v42.f32[1] = v44.f32[0] - v44.f32[2];
        v42.f32[2] = ((v59 * v56) + v45.f32[0]) + ((v59 * v56) + v45.f32[0]);
        v46 = *(MEMORY[0x1E69E9B18] + 32);
        v46.f32[0] = ((v54.f32[0] * v56) + v45.f32[1]) + ((v54.f32[0] * v56) + v45.f32[1]);
        v46.f32[1] = ((v59 * v56) - v45.f32[0]) + ((v59 * v56) - v45.f32[0]);
        v46.f32[2] = v44.f32[0] - v44.f32[1];
        *&v55 = vmulq_lane_f32(v42, *v52.f32, 1).u64[0];
        *&v57 = vmulq_n_f32(v41, v52.f32[0]).u64[0];
        *&v53 = vmulq_laneq_f32(v46, v52, 2).u64[0];
        *&v60 = vaddq_f32(v62, *(MEMORY[0x1E69E9B18] + 48)).u64[0];
      }

      v47 = [v63 parentNode];
      [v47 convertTransform:*(a1 + 40) fromNode:{v57, v55, v53, v60}];
      [v63 setTransform:?];
    }
  }
}

- (void)_applyBodyPoseWithDictionaryRepresentationA:(id)a dictionaryRepresentationB:(id)b variantIntensity:(float)intensity skeletonRootJoint:(id)joint
{
  aCopy = a;
  bCopy = b;
  jointCopy = joint;
  if (intensity == 0.0)
  {
    selfCopy2 = self;
    v14 = aCopy;
  }

  else
  {
    if (intensity != 1.0)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __126__AVTAvatarBodyPose__applyBodyPoseWithDictionaryRepresentationA_dictionaryRepresentationB_variantIntensity_skeletonRootJoint___block_invoke;
      v15[3] = &unk_1E7F48FA0;
      v16 = aCopy;
      v17 = bCopy;
      intensityCopy = intensity;
      v18 = jointCopy;
      [v18 enumerateHierarchyUsingBlock:v15];

      goto LABEL_6;
    }

    selfCopy2 = self;
    v14 = bCopy;
  }

  [(AVTAvatarBodyPose *)selfCopy2 _applyBodyPoseWithDictionaryRepresentation:v14 skeletonRootJoint:jointCopy];
LABEL_6:
}

void __126__AVTAvatarBodyPose__applyBodyPoseWithDictionaryRepresentationA_dictionaryRepresentationB_variantIntensity_skeletonRootJoint___block_invoke(uint64_t a1, void *a2)
{
  v124 = a2;
  v3 = [v124 name];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v5 = [*(a1 + 40) objectForKeyedSubscript:v3];
    v6 = v5;
    if (v4)
    {
      _ZF = v5 == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (!_ZF)
    {
      if ([v4 count] == 16 || objc_msgSend(v6, "count") == 16)
      {
        Transform = AVTAvatarPoseRepresentationGetTransform(v4);
        v107 = v9;
        v112 = Transform;
        v101 = v10;
        v118 = v11;
        v12 = AVTAvatarPoseRepresentationGetTransform(v6);
        v13 = *(a1 + 56);
        v113 = vmlaq_n_f32(vmulq_n_f32(v12, v13), v112, 1.0 - v13).u64[0];
        v108 = vmlaq_n_f32(vmulq_n_f32(v14, v13), v107, 1.0 - v13).u64[0];
        v102 = vmlaq_n_f32(vmulq_n_f32(v15, v13), v101, 1.0 - v13).u64[0];
        v17 = vmlaq_n_f32(vmulq_n_f32(v16, v13), v118, 1.0 - v13).u64[0];
      }

      else
      {
        v18 = v4;
        v19 = [v18 objectAtIndexedSubscript:0];
        [v19 floatValue];
        v119 = v20;
        v21 = [v18 objectAtIndexedSubscript:1];
        [v21 floatValue];
        v114 = v22;
        v23 = [v18 objectAtIndexedSubscript:2];

        [v23 floatValue];
        v109 = v24;
        v25 = v119;
        v25.i32[1] = v114;
        v120 = v25;

        v26 = v18;
        v27 = [v26 objectAtIndexedSubscript:3];
        [v27 floatValue];
        v115 = v28;
        v29 = [v26 objectAtIndexedSubscript:4];
        [v29 floatValue];
        v98 = v30;
        v31 = [v26 objectAtIndexedSubscript:5];
        [v31 floatValue];
        v95 = v32;
        v33 = [v26 objectAtIndexedSubscript:6];

        [v33 floatValue];
        v103 = v34;
        v35 = v115;
        v35.vector.i32[1] = v98;
        v35.vector.i32[2] = v95;
        v116 = v35;

        v36 = v26;
        v37 = [v36 count];
        __asm { FMOV            V0.4S, #1.0 }

        v96 = _Q0;
        v99 = _Q0;
        if (v37 == 10)
        {
          v42 = [v36 objectAtIndexedSubscript:7];
          [v42 floatValue];
          v100 = v43;
          v44 = [v36 objectAtIndexedSubscript:8];
          [v44 floatValue];
          v91 = v45;
          v46 = [v36 objectAtIndexedSubscript:9];
          [v46 floatValue];
          v47 = v100;
          v47.i32[1] = v91;
          v47.i32[2] = v48;
          v99 = v47;
        }

        v49 = v120;
        v49.i32[2] = v109;
        v121 = v49;
        v50 = v116;
        v50.vector.i32[3] = v103;
        v117 = v50;

        v51 = v6;
        v52 = [v51 objectAtIndexedSubscript:0];
        [v52 floatValue];
        v110 = v53;
        v54 = [v51 objectAtIndexedSubscript:1];
        [v54 floatValue];
        v104 = v55;
        v56 = [v51 objectAtIndexedSubscript:2];

        [v56 floatValue];
        v57 = v110;
        v57.i32[1] = v104;
        v57.i32[2] = v58;
        v111 = v57;

        v59 = v51;
        v60 = [v59 objectAtIndexedSubscript:3];
        [v60 floatValue];
        v105 = v61;
        v62 = [v59 objectAtIndexedSubscript:4];
        [v62 floatValue];
        v92 = v63;
        v64 = [v59 objectAtIndexedSubscript:5];
        [v64 floatValue];
        v90 = v65;
        v66 = [v59 objectAtIndexedSubscript:6];

        [v66 floatValue];
        v67.i64[0] = __PAIR64__(v92, v105);
        v67.i64[1] = __PAIR64__(v68, v90);
        v106 = v67;

        v69 = v59;
        if ([v69 count] == 10)
        {
          v70 = [v69 objectAtIndexedSubscript:7];
          [v70 floatValue];
          v97 = v71;
          v72 = [v69 objectAtIndexedSubscript:8];
          [v72 floatValue];
          v93 = v73;
          v74 = [v69 objectAtIndexedSubscript:9];
          [v74 floatValue];
          v75 = v97;
          v75.i32[1] = v93;
          v75.i32[2] = v76;
          v96 = v75;
        }

        v94 = *(a1 + 56);
        v122 = vmlaq_n_f32(v121, vsubq_f32(v111, v121), v94);
        v77 = vmulq_f32(v117, v106);
        v78 = vextq_s8(v77, v77, 8uLL);
        v77.f32[0] = vaddv_f32(vadd_f32(*v77.f32, *v78.f32));
        v78.i64[0] = 0;
        _simd_slerp_internal(v117, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v77, v78)), 0), vnegq_f32(v106), v106), v94);
        v79 = vmlaq_n_f32(v99, vsubq_f32(v96, v99), v94);
        v80 = *MEMORY[0x1E69E9B18];
        v81 = *(MEMORY[0x1E69E9B18] + 16);
        v83 = vmulq_f32(v82, v82);
        v84 = vaddq_f32(v83, v83);
        v85 = vmulq_laneq_f32(v82, v82, 3);
        v86 = vmuls_lane_f32(v82.f32[0], *v82.f32, 1);
        v87 = vmuls_lane_f32(v82.f32[0], v82, 2);
        v80.f32[0] = (1.0 - v84.f32[1]) - v84.f32[2];
        v80.f32[1] = (v86 + v85.f32[2]) + (v86 + v85.f32[2]);
        v80.f32[2] = (v87 - v85.f32[1]) + (v87 - v85.f32[1]);
        v81.f32[0] = (v86 - v85.f32[2]) + (v86 - v85.f32[2]);
        v84.f32[0] = 1.0 - v84.f32[0];
        v81.f32[1] = v84.f32[0] - v84.f32[2];
        v82.f32[0] = vmuls_lane_f32(v82.f32[1], v82, 2);
        v81.f32[2] = (v82.f32[0] + v85.f32[0]) + (v82.f32[0] + v85.f32[0]);
        v88 = *(MEMORY[0x1E69E9B18] + 32);
        v88.f32[0] = (v87 + v85.f32[1]) + (v87 + v85.f32[1]);
        v88.f32[1] = (v82.f32[0] - v85.f32[0]) + (v82.f32[0] - v85.f32[0]);
        v88.f32[2] = v84.f32[0] - v84.f32[1];
        v108 = vmulq_lane_f32(v81, *v79.f32, 1).u64[0];
        v113 = vmulq_n_f32(v80, v79.f32[0]).u64[0];
        v102 = vmulq_laneq_f32(v88, v79, 2).u64[0];
        v17 = vaddq_f32(v122, *(MEMORY[0x1E69E9B18] + 48)).u64[0];
      }

      v123 = *&v17;
      v89 = [v124 parentNode];
      [v89 convertTransform:*(a1 + 48) fromNode:{*&v113, *&v108, *&v102, v123}];
      [v124 setTransform:?];
    }
  }
}

- (void)_applyBodyPoseWithDictionaryRepresentationA:(id)a dictionaryRepresentationB:(id)b dictionaryRepresentationC:(id)c dictionaryRepresentationD:(id)d variantIntensityX:(float)x variantIntensityY:(float)y skeletonRootJoint:(id)joint
{
  aCopy = a;
  bCopy = b;
  cCopy = c;
  dCopy = d;
  jointCopy = joint;
  if (x == 0.0)
  {
    selfCopy4 = self;
    v23 = aCopy;
    v24 = cCopy;
LABEL_5:
    *&v21 = y;
    goto LABEL_6;
  }

  if (x == 1.0)
  {
    selfCopy4 = self;
    v23 = bCopy;
    v24 = dCopy;
    goto LABEL_5;
  }

  if (y == 0.0)
  {
    selfCopy4 = self;
    v23 = aCopy;
    v24 = bCopy;
  }

  else
  {
    if (y != 1.0)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __197__AVTAvatarBodyPose__applyBodyPoseWithDictionaryRepresentationA_dictionaryRepresentationB_dictionaryRepresentationC_dictionaryRepresentationD_variantIntensityX_variantIntensityY_skeletonRootJoint___block_invoke;
      v25[3] = &unk_1E7F48FC8;
      v26 = aCopy;
      v27 = bCopy;
      v28 = cCopy;
      v29 = dCopy;
      xCopy = x;
      yCopy = y;
      [jointCopy enumerateHierarchyUsingBlock:v25];

      goto LABEL_7;
    }

    selfCopy4 = self;
    v23 = cCopy;
    v24 = dCopy;
  }

  *&v21 = x;
LABEL_6:
  [(AVTAvatarBodyPose *)selfCopy4 _applyBodyPoseWithDictionaryRepresentationA:v23 dictionaryRepresentationB:v24 variantIntensity:jointCopy skeletonRootJoint:v21];
LABEL_7:
}

void __197__AVTAvatarBodyPose__applyBodyPoseWithDictionaryRepresentationA_dictionaryRepresentationB_dictionaryRepresentationC_dictionaryRepresentationD_variantIntensityX_variantIntensityY_skeletonRootJoint___block_invoke(uint64_t a1, void *a2)
{
  v243 = a2;
  v3 = [v243 name];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v5 = [*(a1 + 40) objectForKeyedSubscript:v3];
    v6 = [*(a1 + 48) objectForKeyedSubscript:v3];
    v7 = [*(a1 + 56) objectForKeyedSubscript:v3];
    v8 = v7;
    if (v4 && v5 && v6 && v7)
    {
      if ([v4 count] == 16 || objc_msgSend(v5, "count") == 16 || objc_msgSend(v6, "count") == 16)
      {
        Transform = AVTAvatarPoseRepresentationGetTransform(v4);
        v225 = v9;
        v232 = v10;
        v238 = v11;
        v181 = AVTAvatarPoseRepresentationGetTransform(v5);
        v189 = v12;
        v199 = v13;
        v206 = v14;
        v185 = AVTAvatarPoseRepresentationGetTransform(v6);
        v194 = v15;
        v202 = v16;
        v213 = v17;
        v18 = AVTAvatarPoseRepresentationGetTransform(v8);
        v19 = *(a1 + 64);
        v20 = *(a1 + 68);
        v24 = vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v18, v19), v185, 1.0 - v19), v20), vmlaq_n_f32(vmulq_n_f32(v181, v19), Transform, 1.0 - v19), 1.0 - v20).u64[0];
        v25 = vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v21, v19), v194, 1.0 - v19), v20), vmlaq_n_f32(vmulq_n_f32(v189, v19), v225, 1.0 - v19), 1.0 - v20).u64[0];
        v26 = vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v22, v19), v202, 1.0 - v19), v20), vmlaq_n_f32(vmulq_n_f32(v199, v19), v232, 1.0 - v19), 1.0 - v20).u64[0];
        v27 = vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v23, v19), v213, 1.0 - v19), v20), vmlaq_n_f32(vmulq_n_f32(v206, v19), v238, 1.0 - v19), 1.0 - v20).u64[0];
      }

      else
      {
        v28 = v4;
        v29 = [v28 objectAtIndexedSubscript:0];
        [v29 floatValue];
        v239 = v30;
        v31 = [v28 objectAtIndexedSubscript:1];
        [v31 floatValue];
        v220 = v32;
        v33 = [v28 objectAtIndexedSubscript:2];

        [v33 floatValue];
        v190 = v34;

        v35 = v28;
        v207 = [v35 objectAtIndexedSubscript:3];
        [v207 floatValue];
        v233 = v36;
        v37 = [v35 objectAtIndexedSubscript:4];
        [v37 floatValue];
        v226 = v38;
        v39 = [v35 objectAtIndexedSubscript:5];
        [v39 floatValue];
        v214 = v40;
        v41 = [v35 objectAtIndexedSubscript:6];

        [v41 floatValue];
        v186 = v42;

        v43 = v35;
        v44 = [v43 count];
        __asm { FMOV            V0.4S, #1.0 }

        v200 = _Q0;
        v203 = _Q0;
        if (v44 == 10)
        {
          v50 = [v43 objectAtIndexedSubscript:7];
          [v50 floatValue];
          v204 = v51;
          v52 = [v43 objectAtIndexedSubscript:8];
          [v52 floatValue];
          v208 = v53;
          v54 = [v43 objectAtIndexedSubscript:9];
          [v54 floatValue];
          v55 = v204;
          v55.i32[1] = v208;
          v55.i32[2] = v56;
          v203 = v55;
        }

        v57 = v233;
        v57.i32[1] = v226;
        v234 = v57;

        v58 = v5;
        v59 = [v58 objectAtIndexedSubscript:0];
        [v59 floatValue];
        v209 = v60;
        v61 = [v58 objectAtIndexedSubscript:1];
        [v61 floatValue];
        v195 = v62;
        v63 = [v58 objectAtIndexedSubscript:2];

        [v63 floatValue];
        v177 = v64;

        v65 = v58;
        v182 = [v65 objectAtIndexedSubscript:3];
        [v182 floatValue];
        v227 = v66;
        v67 = [v65 objectAtIndexedSubscript:4];
        [v67 floatValue];
        v169 = v68;
        v69 = [v65 objectAtIndexedSubscript:5];
        [v69 floatValue];
        v172 = v70;
        v71 = [v65 objectAtIndexedSubscript:6];

        [v71 floatValue];
        v175 = v72;
        v73 = v227;
        v73.i32[1] = v169;
        v228 = v73;

        v74 = v65;
        v183 = v200;
        if ([v74 count] == 10)
        {
          v75 = [v74 objectAtIndexedSubscript:7];
          [v75 floatValue];
          v184 = v76;
          v77 = [v74 objectAtIndexedSubscript:8];
          [v77 floatValue];
          v170 = v78;
          v79 = [v74 objectAtIndexedSubscript:9];
          [v79 floatValue];
          v80 = v184;
          v80.i32[1] = v170;
          v80.i32[2] = v81;
          v183 = v80;
        }

        v82 = v239;
        v82.i32[1] = v220;
        v240 = v82;
        v83 = v234;
        v83.i32[2] = v214;
        v235 = v83;
        v84 = v209;
        v84.i32[1] = v195;
        v210 = v84;
        v85 = v228;
        v85.i32[2] = v172;
        v229 = v85;

        v86 = v6;
        v87 = [v86 objectAtIndexedSubscript:0];
        [v87 floatValue];
        v221 = v88;
        v89 = [v86 objectAtIndexedSubscript:1];
        [v89 floatValue];
        v215 = v90;
        v91 = [v86 objectAtIndexedSubscript:2];

        [v91 floatValue];
        v173 = v92;
        v93 = v221;
        v93.i32[1] = v215;
        v222 = v93;

        v94 = v86;
        v196 = [v94 objectAtIndexedSubscript:3];
        [v196 floatValue];
        v216 = v95;
        v96 = [v94 objectAtIndexedSubscript:4];
        [v96 floatValue];
        v167 = v97;
        v98 = [v94 objectAtIndexedSubscript:5];
        [v98 floatValue];
        v166 = v99;
        v100 = [v94 objectAtIndexedSubscript:6];

        [v100 floatValue];
        v171 = v101;
        v102 = v216;
        v102.i32[1] = v167;
        v102.i32[2] = v166;
        v217 = v102;

        v103 = v94;
        v197 = v200;
        if ([v103 count] == 10)
        {
          v104 = [v103 objectAtIndexedSubscript:7];
          [v104 floatValue];
          v198 = v105;
          v106 = [v103 objectAtIndexedSubscript:8];
          [v106 floatValue];
          v168 = v107;
          v108 = [v103 objectAtIndexedSubscript:9];
          [v108 floatValue];
          v109 = v198;
          v109.i32[1] = v168;
          v109.i32[2] = v110;
          v197 = v109;
        }

        v111 = v240;
        v111.i32[2] = v190;
        v241 = v111;
        v112 = v235;
        v112.i32[3] = v186;
        v236 = v112;
        v113 = v210;
        v113.i32[2] = v177;
        v211 = v113;
        v114 = v229;
        v114.i32[3] = v175;
        v230 = v114;
        v115 = v222;
        v115.i32[2] = v173;
        v223 = v115;
        v116 = v217;
        v116.i32[3] = v171;
        v218 = v116;

        v117 = v8;
        v118 = [v117 objectAtIndexedSubscript:0];
        [v118 floatValue];
        v187 = v119;
        v120 = [v117 objectAtIndexedSubscript:1];
        [v120 floatValue];
        v191 = v121;
        v122 = [v117 objectAtIndexedSubscript:2];

        [v122 floatValue];
        v123 = v187;
        v123.i32[1] = v191;
        v123.i32[2] = v124;
        v188 = v123;

        v125 = v117;
        v178 = [v125 objectAtIndexedSubscript:3];
        [v178 floatValue];
        v192 = v126;
        v127 = [v125 objectAtIndexedSubscript:4];
        [v127 floatValue];
        v176 = v128;
        v129 = [v125 objectAtIndexedSubscript:5];
        [v129 floatValue];
        v174 = v130;
        v131 = [v125 objectAtIndexedSubscript:6];

        [v131 floatValue];
        v132.i64[0] = __PAIR64__(v176, v192);
        v132.i64[1] = __PAIR64__(v133, v174);
        v193 = v132;

        v134 = v125;
        if ([v134 count] == 10)
        {
          v135 = [v134 objectAtIndexedSubscript:7];
          [v135 floatValue];
          v201 = v136;
          v137 = [v134 objectAtIndexedSubscript:8];
          [v137 floatValue];
          v179 = v138;
          v139 = [v134 objectAtIndexedSubscript:9];
          [v139 floatValue];
          v140 = v201;
          v140.i32[1] = v179;
          v140.i32[2] = v141;
          v200 = v140;
        }

        v142 = *(a1 + 64);
        v242 = vmlaq_n_f32(v241, vsubq_f32(v211, v241), v142);
        v143 = vmulq_f32(v236, v230);
        v144 = vadd_f32(*v143.i8, *&vextq_s8(v143, v143, 8uLL));
        v145 = v142;
        v205 = vmlaq_n_f32(v203, vsubq_f32(v183, v203), v142);
        v146 = vmulq_f32(v218, v193);
        *v146.i8 = vadd_f32(*v146.i8, *&vextq_s8(v146, v146, 8uLL));
        *v143.i8 = vzip1_s32(*v146.i8, v144);
        v147 = vzip2_s32(*v146.i8, v144);
        v148 = vnegq_f32(v230);
        *v143.i8 = vmvn_s8(vcgez_f32(vadd_f32(*v143.i8, v147)));
        v212 = v143.i8[0];
        v180 = v145;
        v224 = vmlaq_n_f32(v223, vsubq_f32(v188, v223), v145);
        if (v143.i8[4])
        {
          v149 = -1;
        }

        else
        {
          v149 = 0;
        }

        _simd_slerp_internal(v236, vbslq_s8(vdupq_n_s32(v149), v148, v230), v145);
        v237 = v150;
        v151 = vnegq_f32(v193);
        if (v212)
        {
          v152 = -1;
        }

        else
        {
          v152 = 0;
        }

        _simd_slerp_internal(v218, vbslq_s8(vdupq_n_s32(v152), v151, v193), v180);
        v231 = *(a1 + 68);
        v154 = vmulq_f32(v237, v153);
        v155 = vextq_s8(v154, v154, 8uLL);
        *v154.f32 = vadd_f32(*v154.f32, *v155.f32);
        v154.f32[0] = vaddv_f32(*v154.f32);
        v155.i64[0] = 0;
        _simd_slerp_internal(v237, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v154, v155)), 0), vnegq_f32(v153), v153), v231);
        v156 = vmlaq_n_f32(v205, vsubq_f32(vmlaq_n_f32(v197, vsubq_f32(v200, v197), v180), v205), v231);
        v157 = *MEMORY[0x1E69E9B18];
        v158 = *(MEMORY[0x1E69E9B18] + 16);
        v160 = vmulq_f32(v159, v159);
        v161 = vaddq_f32(v160, v160);
        v162 = vmulq_laneq_f32(v159, v159, 3);
        v163 = vmuls_lane_f32(v159.f32[0], *v159.f32, 1);
        v164 = vmuls_lane_f32(v159.f32[0], v159, 2);
        v157.f32[0] = (1.0 - v161.f32[1]) - v161.f32[2];
        v157.f32[1] = (v163 + v162.f32[2]) + (v163 + v162.f32[2]);
        v157.f32[2] = (v164 - v162.f32[1]) + (v164 - v162.f32[1]);
        v158.f32[0] = (v163 - v162.f32[2]) + (v163 - v162.f32[2]);
        v161.f32[0] = 1.0 - v161.f32[0];
        v158.f32[1] = v161.f32[0] - v161.f32[2];
        v159.f32[0] = vmuls_lane_f32(v159.f32[1], v159, 2);
        v158.f32[2] = (v159.f32[0] + v162.f32[0]) + (v159.f32[0] + v162.f32[0]);
        v165 = *(MEMORY[0x1E69E9B18] + 32);
        v165.f32[0] = (v164 + v162.f32[1]) + (v164 + v162.f32[1]);
        v165.f32[1] = (v159.f32[0] - v162.f32[0]) + (v159.f32[0] - v162.f32[0]);
        v165.f32[2] = v161.f32[0] - v161.f32[1];
        v24 = vmulq_n_f32(v157, v156.f32[0]).u64[0];
        v25 = vmulq_lane_f32(v158, *v156.f32, 1).u64[0];
        v26 = vmulq_laneq_f32(v165, v156, 2).u64[0];
        v27 = vaddq_f32(vmlaq_n_f32(v242, vsubq_f32(v224, v242), v231), *(MEMORY[0x1E69E9B18] + 48)).u64[0];
      }

      [v243 setWorldTransform:{*&v24, *&v25, *&v26, *&v27}];
    }
  }
}

+ (void)posesInPosePack:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1BB472000, a2, OS_LOG_TYPE_ERROR, "Error: Failed to find pose pack named %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
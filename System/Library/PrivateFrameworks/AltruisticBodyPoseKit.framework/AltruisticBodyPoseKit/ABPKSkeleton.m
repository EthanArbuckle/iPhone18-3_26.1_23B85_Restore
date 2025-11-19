@interface ABPKSkeleton
- (ABPKSkeleton)initWithType:(int64_t)a3;
- (__n128)cameraRootTransform;
- (__n128)deviceRootTransform;
- (__n128)renderingCameraRootTransform;
- (__n128)setCameraRootTransform:(__n128)a3;
- (__n128)setDeviceRootTransform:(__n128)a3;
- (__n128)setRenderingCameraRootTransform:(__n128)a3;
- (float)computeHeight;
- (id).cxx_construct;
- (id)description;
- (id)toDictionary;
- (void)getGlobalJointDataForSkeletonWithPosition:(ABPKSkeleton *)self withOrientation:(SEL)a2;
- (void)getLocalJointDataForSkeletonWithPosition:(ABPKSkeleton *)self withOrientation:(SEL)a2;
- (void)scaleTransform:(id *)a3 withScale:(float)a4;
- (void)setLocalPoses:(const ABPKTransform *)a3 andUpdateModelPoses:(BOOL)a4;
- (void)setModelPoses:(id *)a3 andUpdateLocalPoses:(BOOL)a4;
- (void)setModelPosesFromDict:(id)a3 andUpdateLocalPoses:(BOOL)a4;
- (void)transformModelPoses:(int)a3 andUpdateLocalPoses:(float32x4_t)a4;
- (void)updateJointPosesAndRootTransformUsingDepthEstimatedScale;
- (void)updateLocalPosesFromModelPoses;
- (void)updateModelPosesFromLocalPoses;
@end

@implementation ABPKSkeleton

- (ABPKSkeleton)initWithType:(int64_t)a3
{
  v17.receiver = self;
  v17.super_class = ABPKSkeleton;
  v4 = [(ABPKSkeleton *)&v17 init];
  v5 = v4;
  if (!v4)
  {
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v4->_skeletonType = a3;
  if (a3 > 4 || a3 == 1)
  {
    v13 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEFAULT, " ERROR: Unsupported ABPKSkeletonType in ABPKSkeleton:initWithType ", &v15, 2u);
    }

    goto LABEL_12;
  }

  v6 = [[ABPKSkeletonDefinition alloc] initWithType:a3];
  skeletonDefinition = v5->_skeletonDefinition;
  v5->_skeletonDefinition = v6;

  v8 = [(ABPKSkeleton *)v5 skeletonDefinition];
  std::vector<ABPKTransform>::vector[abi:ne200100](&v15, [v8 jointCount]);
  begin = v5->_localPoses.__begin_;
  if (begin)
  {
    v5->_localPoses.__end_ = begin;
    operator delete(begin);
    v5->_localPoses.__begin_ = 0;
    v5->_localPoses.__end_ = 0;
    v5->_localPoses.__cap_ = 0;
  }

  *&v5->_localPoses.__begin_ = v15;
  v5->_localPoses.__cap_ = v16;
  v15 = 0uLL;
  v16 = 0;

  v10 = [(ABPKSkeleton *)v5 skeletonDefinition];
  std::vector<simd_float4x4>::vector[abi:ne200100](&v15, [v10 jointCount]);
  v11 = v5->_modelPoses.__begin_;
  if (v11)
  {
    v5->_modelPoses.__end_ = v11;
    operator delete(v11);
    v5->_modelPoses.__begin_ = 0;
    v5->_modelPoses.__end_ = 0;
    v5->_modelPoses.__cap_ = 0;
  }

  *&v5->_modelPoses.__begin_ = v15;
  v5->_modelPoses.__cap_ = v16;
  v16 = 0;
  v15 = 0uLL;

  v12 = v5;
LABEL_13:

  return v12;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = 0;
  v5 = 48;
  while (v4 < [(ABPKSkeletonDefinition *)self->_skeletonDefinition jointCount])
  {
    v6 = [(ABPKSkeletonDefinition *)self->_skeletonDefinition jointName:v4];
    v7 = [v3 stringByAppendingFormat:@"%@ : (%f, %f, %f)\n", v6, COERCE_FLOAT(*(self->_modelPoses.__begin_ + v5)), COERCE_FLOAT(HIDWORD(*(self->_modelPoses.__begin_ + v5))), COERCE_FLOAT(*(self->_modelPoses.__begin_ + v5 + 8))];

    ++v4;
    v5 += 64;
    v3 = v7;
  }

  return v3;
}

- (void)getLocalJointDataForSkeletonWithPosition:(ABPKSkeleton *)self withOrientation:(SEL)a2
{
  v4 = v3;
  v5 = v2;
  if ([(ABPKSkeletonDefinition *)self->_skeletonDefinition jointCount])
  {
    v7 = 0;
    v8 = 0;
    do
    {
      *(v5 + 16 * v8) = *(self->_localPoses.__begin_ + v7 + 16);
      *(v4 + 16 * v8++) = *(self->_localPoses.__begin_ + v7);
      v7 += 32;
    }

    while ([(ABPKSkeletonDefinition *)self->_skeletonDefinition jointCount]> v8);
  }
}

- (void)getGlobalJointDataForSkeletonWithPosition:(ABPKSkeleton *)self withOrientation:(SEL)a2
{
  v4 = v3;
  v5 = v2;
  if ([(ABPKSkeletonDefinition *)self->_skeletonDefinition jointCount])
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v10 = *(self->_modelPoses.__begin_ + v7);
      *(v5 + 16 * v8) = v10.columns[3];
      *&v9 = simd_quaternion(v10);
      *(v4 + 16 * v8++) = v9;
      v7 += 64;
    }

    while ([(ABPKSkeletonDefinition *)self->_skeletonDefinition jointCount]> v8);
  }
}

- (void)setModelPoses:(id *)a3 andUpdateLocalPoses:(BOOL)a4
{
  v4 = a4;
  v7 = [(ABPKSkeleton *)self skeletonDefinition];
  v8 = [v7 jointCount];
  if (v8)
  {
    memmove(self->_modelPoses.__begin_, a3, v8 << 6);
  }

  if (v4)
  {

    [(ABPKSkeleton *)self updateLocalPosesFromModelPoses];
  }
}

- (void)setModelPosesFromDict:(id)a3 andUpdateLocalPoses:(BOOL)a4
{
  v4 = a4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__ABPKSkeleton_setModelPosesFromDict_andUpdateLocalPoses___block_invoke;
  v6[3] = &unk_278C71898;
  v6[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v6];
  if (v4)
  {
    [(ABPKSkeleton *)self updateLocalPosesFromModelPoses];
  }
}

void __58__ABPKSkeleton_setModelPosesFromDict_andUpdateLocalPoses___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v22 = a2;
  v5 = a3;
  v23 = *MEMORY[0x277D860B8];
  v24 = *(MEMORY[0x277D860B8] + 16);
  v21 = *(MEMORY[0x277D860B8] + 48);
  v25 = *(MEMORY[0x277D860B8] + 32);
  v6 = [v5 objectForKey:@"translation"];
  v7 = [v6 objectAtIndexedSubscript:0];
  [v7 floatValue];
  v20 = v8;

  v9 = [v6 objectAtIndexedSubscript:1];
  [v9 floatValue];
  v19 = v10;

  v11 = [v6 objectAtIndexedSubscript:2];
  [v11 floatValue];
  v18 = v12;

  v13 = *(a1 + 32);
  v14 = [*(v13 + 72) indexOfJointWithName:v22];
  *&v15 = __PAIR64__(v19, v20);
  *(&v15 + 1) = __PAIR64__(HIDWORD(v21), v18);
  v16 = (*(v13 + 32) + (v14 << 6));
  *v16 = v23;
  v16[1] = v24;
  v16[2] = v25;
  v16[3] = v15;

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setLocalPoses:(const ABPKTransform *)a3 andUpdateModelPoses:(BOOL)a4
{
  v4 = a4;
  v7 = [(ABPKSkeleton *)self skeletonDefinition];
  v8 = [v7 jointCount];
  if (v8)
  {
    memmove(self->_localPoses.__begin_, a3, 32 * v8);
  }

  if (v4)
  {

    [(ABPKSkeleton *)self updateModelPosesFromLocalPoses];
  }
}

- (void)updateLocalPosesFromModelPoses
{
  for (i = 0; ; ++i)
  {
    v4 = [(ABPKSkeleton *)self skeletonDefinition:*&v17];
    v5 = [v4 jointCount];

    if (i >= v5)
    {
      break;
    }

    v6 = [(ABPKSkeleton *)self skeletonDefinition];
    v7 = [v6 parentJoint:i];

    begin = self->_modelPoses.__begin_;
    v9 = (begin + 64 * i);
    if (v7 == -1)
    {
      *&v16 = simd_quaternion(*v9->f32);
      *(self->_localPoses.__begin_ + 2 * i) = v16;
      v15 = v9[3];
    }

    else
    {
      v23 = __invert_f4(*(begin + v7));
      v10 = 0;
      v11 = v9[1];
      v12 = v9[2];
      v13 = v9[3];
      v18 = *v9;
      v19 = v11;
      v20 = v12;
      v21 = v13;
      do
      {
        v22.columns[v10 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23.columns[0], COERCE_FLOAT(*(&v18 + v10 * 4))), v23.columns[1], *&v18.f32[v10], 1), v23.columns[2], *(&v18 + v10 * 4), 2), v23.columns[3], *(&v18 + v10 * 4), 3);
        v10 += 4;
      }

      while (v10 != 16);
      v17 = v22.columns[3];
      *&v14 = simd_quaternion(v22);
      v15 = v17;
      *(self->_localPoses.__begin_ + 2 * i) = v14;
    }

    *(self->_localPoses.__begin_ + 2 * i + 1) = v15;
  }
}

- (void)updateModelPosesFromLocalPoses
{
  v39 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = [(ABPKSkeleton *)self skeletonDefinition];
  v4 = [v3 parentChildOrder];

  v5 = [v4 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v5)
  {
    v6 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v32 + 1) + 8 * v7) intValue];
        v9 = [(ABPKSkeleton *)self skeletonDefinition];
        v10 = [v9 parentJoint:v8];

        v11 = self->_localPoses.__begin_ + 32 * v8;
        *&v12 = simd_matrix4x4(*v11);
        if (v10 == -1)
        {
          v28 = (self->_modelPoses.__begin_ + 64 * v8);
          *v28 = v12;
          v28[1] = v13;
          v28[2] = v14;
          v28[3] = v15;
          v29 = *(self->_localPoses.__begin_ + 2 * v8 + 1);
          v30 = self->_modelPoses.__begin_ + 64 * v8;
          HIDWORD(v29) = *(v30 + 15);
          *(v30 + 3) = v29;
        }

        else
        {
          v16 = 0;
          v17 = *(v11 + 1);
          HIDWORD(v17) = HIDWORD(v15);
          begin = self->_modelPoses.__begin_;
          v19 = (begin + 64 * v10);
          v20 = *v19;
          v21 = v19[1];
          v22 = v19[2];
          v23 = v19[3];
          v36[0] = v12;
          v36[1] = v13;
          v36[2] = v14;
          v36[3] = v17;
          do
          {
            v37[v16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, COERCE_FLOAT(v36[v16])), v21, *&v36[v16], 1), v22, v36[v16], 2), v23, v36[v16], 3);
            ++v16;
          }

          while (v16 != 4);
          v24 = v37[1];
          v25 = v37[2];
          v26 = v37[3];
          v27 = (begin + 64 * v8);
          *v27 = v37[0];
          v27[1] = v24;
          v27[2] = v25;
          v27[3] = v26;
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v4 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v5);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)scaleTransform:(id *)a3 withScale:(float)a4
{
  v4 = vmulq_n_f32(*(a3 + 3), a4);
  v4.i32[3] = 1.0;
  *(a3 + 3) = v4;
}

- (void)updateJointPosesAndRootTransformUsingDepthEstimatedScale
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_estimatedScale == -1.0)
  {
    v2 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v2, OS_LOG_TYPE_DEFAULT, " Estimated scale not valid, no need to scale poses. ", buf, 2u);
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [(ABPKSkeleton *)self skeletonDefinition];
    v5 = [v4 parentChildOrder];

    v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v6)
    {
      v7 = *v18;
      do
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v17 + 1) + 8 * v8) intValue];
          v10 = (self->_modelPoses.__begin_ + 64 * v9);
          v11 = vmulq_n_f32(v10[3], self->_estimatedScale);
          v11.i32[3] = 1.0;
          v10[3] = v11;
          v12 = (self->_localPoses.__begin_ + 32 * v9);
          v12[1] = vmulq_n_f32(v12[1], self->_estimatedScale);
          ++v8;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v6);
    }

    estimatedScale = self->_estimatedScale;
    v14 = vmulq_n_f32(*&self->_anon_50[48], estimatedScale);
    v14.i32[3] = 1.0;
    *&self->_anon_50[48] = v14;
    v15 = vmulq_n_f32(*&self->_anon_90[48], estimatedScale);
    v15.i32[3] = 1.0;
    *&self->_anon_90[48] = v15;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)transformModelPoses:(int)a3 andUpdateLocalPoses:(float32x4_t)a4
{
  v7 = *(a1 + 4);
  for (i = *(a1 + 5); v7 != i; v7 += 4)
  {
    v9 = 0;
    v10 = v7[1];
    v11 = v7[2];
    v12 = v7[3];
    v16[0] = *v7;
    v16[1] = v10;
    v16[2] = v11;
    v16[3] = v12;
    do
    {
      v17[v9] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, COERCE_FLOAT(v16[v9])), a5, *&v16[v9], 1), a6, v16[v9], 2), a7, v16[v9], 3);
      ++v9;
    }

    while (v9 != 4);
    v13 = v17[1];
    v14 = v17[2];
    v15 = v17[3];
    *v7 = v17[0];
    v7[1] = v13;
    v7[2] = v14;
    v7[3] = v15;
  }

  if (a3)
  {
    return [a1 updateLocalPosesFromModelPoses];
  }

  return a1;
}

- (id)toDictionary
{
  v41[3] = *MEMORY[0x277D85DE8];
  v32 = objc_opt_new();
  v33 = objc_opt_new();
  v2 = 0;
  for (i = 0; [(ABPKSkeletonDefinition *)self->_skeletonDefinition jointCount]> i; ++i)
  {
    v4 = objc_opt_new();
    v5 = (self->_modelPoses.__begin_ + v2);
    v35 = v5[1];
    v36 = *v5;
    v34 = v5[2];
    v38 = v5[3];
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    v41[0] = v6;
    HIDWORD(v7) = v38.i32[1];
    LODWORD(v7) = v38.i32[1];
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    v41[1] = v8;
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(v38.u32[1], v38.u32[2]))}];
    v41[2] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];

    [v4 setObject:v10 forKeyedSubscript:@"translation"];
    v43.columns[1] = v35;
    v43.columns[0] = v36;
    v43.columns[2] = v34;
    v43.columns[3] = v38;
    *v11.i64 = simd_quaternion(v43);
    v39 = v11;
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    v40[0] = v12;
    HIDWORD(v13) = v39.i32[1];
    LODWORD(v13) = v39.i32[1];
    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    v40[1] = v14;
    v15 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(v39.u32[1], v39.u32[3]))}];
    v40[2] = v15;
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(v39.u32[1], v39.u32[2]))}];
    v40[3] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];

    [v4 setObject:v17 forKeyedSubscript:@"orientation"];
    v18 = [(ABPKSkeletonDefinition *)self->_skeletonDefinition jointName:i];
    [v33 setObject:v4 forKeyedSubscript:v18];

    v2 += 64;
  }

  v19 = objc_opt_new();
  [(ABPKSkeleton *)self cameraRootTransform];
  v24 = simdMatrix4x4ToNSMat(v20, v21, v22, v23);
  [v19 setObject:v24 forKeyedSubscript:@"camera_root_transform"];

  [(ABPKSkeleton *)self deviceRootTransform];
  v29 = simdMatrix4x4ToNSMat(v25, v26, v27, v28);
  [v19 setObject:v29 forKeyedSubscript:@"device_root_transform"];

  [v32 setObject:v33 forKeyedSubscript:@"pose"];
  [v32 setObject:v19 forKeyedSubscript:@"root_transforms"];

  v30 = *MEMORY[0x277D85DE8];

  return v32;
}

- (float)computeHeight
{
  if ([(ABPKSkeleton *)self skeletonType]== 3)
  {
    estimatedScale = self->_estimatedScale;
    if (estimatedScale == -1.0)
    {
      return 1.8;
    }

    else
    {
      return estimatedScale * 1.8;
    }
  }

  else
  {
    if ([(ABPKSkeleton *)self skeletonType]!= 4)
    {
      v5 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_ERROR, " Invalid skeleton type specified. Returning height = 0 ", buf, 2u);
      }
    }

    v6 = [(ABPKSkeleton *)self skeletonDefinition];
    v7 = [v6 indexOfJointWithName:@"leftfoot"];

    v8 = [(ABPKSkeleton *)self skeletonDefinition];
    v9 = [v8 indexOfJointWithName:@"leftleg"];

    v10 = [(ABPKSkeleton *)self skeletonDefinition];
    v11 = [v10 indexOfJointWithName:@"leftupleg"];

    v12 = [(ABPKSkeleton *)self skeletonDefinition];
    v13 = [v12 indexOfJointWithName:@"hips"];

    v14 = [(ABPKSkeleton *)self skeletonDefinition];
    v15 = [v14 indexOfJointWithName:@"spine7"];

    v16 = [(ABPKSkeleton *)self skeletonDefinition];
    v17 = [v16 indexOfJointWithName:@"neck1"];

    v18 = [(ABPKSkeleton *)self skeletonDefinition];
    v19 = [v18 indexOfJointWithName:@"head"];

    v20 = vsubq_f32(*([(ABPKSkeleton *)self modelPoses]+ (v7 << 6) + 48), *([(ABPKSkeleton *)self modelPoses]+ (v9 << 6) + 48));
    v37 = vmulq_f32(v20, v20);
    v21 = vsubq_f32(*([(ABPKSkeleton *)self modelPoses]+ (v9 << 6) + 48), *([(ABPKSkeleton *)self modelPoses]+ (v11 << 6) + 48));
    v22 = vmulq_f32(v21, v21);
    v23 = vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v37, v37, 8uLL), *&vextq_s8(v22, v22, 8uLL)), vadd_f32(vzip1_s32(*v37.i8, *v22.i8), vzip2_s32(*v37.i8, *v22.i8)))));
    v24.i32[0] = *([(ABPKSkeleton *)self modelPoses]+ (v13 << 6) + 52);
    v38 = v24;
    v25.i32[0] = *([(ABPKSkeleton *)self modelPoses]+ (v11 << 6) + 52);
    v26 = vsubq_f32(v38, v25);
    v27 = vmulq_f32(v26, v26);
    v28 = v23 + sqrtf(v27.f32[2] + vaddv_f32(*v27.f32));
    v29 = vsubq_f32(*([(ABPKSkeleton *)self modelPoses]+ (v13 << 6) + 48), *([(ABPKSkeleton *)self modelPoses]+ (v15 << 6) + 48));
    v30 = vmulq_f32(v29, v29);
    v31 = v28 + sqrtf(v30.f32[2] + vaddv_f32(*v30.f32));
    v32 = vsubq_f32(*([(ABPKSkeleton *)self modelPoses]+ (v15 << 6) + 48), *([(ABPKSkeleton *)self modelPoses]+ (v17 << 6) + 48));
    v33 = vmulq_f32(v32, v32);
    v34 = v31 + sqrtf(v33.f32[2] + vaddv_f32(*v33.f32));
    v35 = vsubq_f32(*([(ABPKSkeleton *)self modelPoses]+ (v17 << 6) + 48), *([(ABPKSkeleton *)self modelPoses]+ (v19 << 6) + 48));
    v36 = vmulq_f32(v35, v35);
    return v34 + sqrtf(v36.f32[2] + vaddv_f32(*v36.f32));
  }
}

- (__n128)cameraRootTransform
{
  result = *(a1 + 80);
  v2 = *(a1 + 96);
  v3 = *(a1 + 112);
  v4 = *(a1 + 128);
  return result;
}

- (__n128)setCameraRootTransform:(__n128)a3
{
  result[5] = a2;
  result[6] = a3;
  result[7] = a4;
  result[8] = a5;
  return result;
}

- (__n128)renderingCameraRootTransform
{
  result = *(a1 + 144);
  v2 = *(a1 + 160);
  v3 = *(a1 + 176);
  v4 = *(a1 + 192);
  return result;
}

- (__n128)setRenderingCameraRootTransform:(__n128)a3
{
  result[9] = a2;
  result[10] = a3;
  result[11] = a4;
  result[12] = a5;
  return result;
}

- (__n128)deviceRootTransform
{
  result = *(a1 + 208);
  v2 = *(a1 + 224);
  v3 = *(a1 + 240);
  v4 = *(a1 + 256);
  return result;
}

- (__n128)setDeviceRootTransform:(__n128)a3
{
  result[13] = a2;
  result[14] = a3;
  result[15] = a4;
  result[16] = a5;
  return result;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end
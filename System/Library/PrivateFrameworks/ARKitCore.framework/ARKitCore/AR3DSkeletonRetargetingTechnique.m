@interface AR3DSkeletonRetargetingTechnique
- (AR3DSkeletonRetargetingTechnique)init;
- (BOOL)isEqual:(id)a3;
- (id)_retargetSkeleton:(id)a3;
- (id)processData:(id)a3;
- (void)prepare:(BOOL)a3;
- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4;
@end

@implementation AR3DSkeletonRetargetingTechnique

- (AR3DSkeletonRetargetingTechnique)init
{
  v6.receiver = self;
  v6.super_class = AR3DSkeletonRetargetingTechnique;
  v2 = [(ARTechnique *)&v6 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(1);
    resultSemaphore = v2->_resultSemaphore;
    v2->_resultSemaphore = v3;
  }

  return v2;
}

- (void)prepare:(BOOL)a3
{
  if (!self->_abpkRetargeting)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698A948]);
    abpkRetargeting = self->_abpkRetargeting;
    self->_abpkRetargeting = v4;
  }
}

- (id)processData:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _ARLogGeneral_2();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v29 = v7;
    v30 = 2048;
    v31 = self;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Process Data", buf, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    v10 = [v8 detectedSkeletons];
    v11 = [v9 initWithCapacity:{objc_msgSend(v10, "count")}];

    v12 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.bodytracking.multipleBodyAnchors"];
    [v8 timestamp];
    kdebug_trace();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [v8 detectedSkeletons];
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
LABEL_6:
      v17 = 0;
      while (1)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(AR3DSkeletonRetargetingTechnique *)self _retargetSkeleton:*(*(&v23 + 1) + 8 * v17)];
        if (v18)
        {
          v19 = v18;
          [v11 addObject:v18];

          if (!v12)
          {
            break;
          }
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v15)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    [v8 timestamp];
    kdebug_trace();
    dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v20 = objc_opt_new();
    [(AR3DSkeletonRetargetingTechnique *)self setLatestResults:v20];

    v21 = [(AR3DSkeletonRetargetingTechnique *)self latestResults];
    [v21 setRetargetedSkeletons:v11];

    dispatch_semaphore_signal(self->_resultSemaphore);
  }

  return v4;
}

- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v7 = [(AR3DSkeletonRetargetingTechnique *)self latestResults];

  if (v7)
  {
    v8 = [v6 imageData];
    [v8 cameraIntrinsics];
    v33 = v10;
    v34 = v9;
    v32 = v11;
    v12 = [(AR3DSkeletonRetargetingTechnique *)self latestResults];
    [v12 setCameraIntrinsics:{v34, v33, v32}];

    v13 = [v6 imageData];
    [v13 imageResolution];
    v15 = v14;
    v17 = v16;
    v18 = [(AR3DSkeletonRetargetingTechnique *)self latestResults];
    [v18 setImageResolution:{v15, v17}];

    v19 = [(AR3DSkeletonRetargetingTechnique *)self latestResults];
    v20 = [v19 retargetedSkeletons];
    v21 = [v20 firstObject];

    v22 = [v6 resultDataOfClass:objc_opt_class()];
    v23 = [v22 firstObject];

    if (v23 && ([v23 estimatedScaleFactor], v24 > 0.0))
    {
      [v23 estimatedScaleFactor];
      [v21 setEstimatedScaleFactor:v25];
      [v23 visionTransform];
      [v21 setVisionTransform:?];
      v26 = [(ARTechnique *)self delegate];
      v27 = [(AR3DSkeletonRetargetingTechnique *)self latestResults];
      v37[0] = v27;
      v28 = v37;
      v29 = v26;
    }

    else
    {
      v29 = objc_opt_new();
      [v29 setTimestamp:a3];
      [v29 setRetargetedSkeletons:MEMORY[0x1E695E0F0]];
      v26 = [(ARTechnique *)self delegate];
      v36 = v29;
      v28 = &v36;
      v27 = v26;
    }

    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    [v26 technique:self didOutputResultData:v30 timestamp:v6 context:a3];

    [(AR3DSkeletonRetargetingTechnique *)self setLatestResults:0];
  }

  else
  {
    v21 = objc_opt_new();
    v23 = [(ARTechnique *)self delegate];
    v35 = v21;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    [v23 technique:self didOutputResultData:v31 timestamp:v6 context:a3];
  }

  dispatch_semaphore_signal(self->_resultSemaphore);
}

- (id)_retargetSkeleton:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E698A918]);
  v6 = [v4 joints];
  v7 = [v4 jointCount];
  v8 = [v4 skeletonDetectionResult2D];
  v9 = [v5 initWithJoints:v6 numberOfJoints:v7 referenceDetectionResult:v8];

  v10 = [(ABPKRetargeting *)self->_abpkRetargeting processData:v9];
  [v10 jointTransformCount];
  MEMORY[0x1EEE9AC00]();
  v12 = &buf[-16 * v11 - 16];
  if ([v10 jointTransformCount])
  {
    v13 = 0;
    v14 = 0;
    v15 = v12 + 16;
    __asm { FMOV            V0.4S, #1.0 }

    v33 = _Q0;
    do
    {
      v15[1] = *([v10 localJointTransformsSRT] + v13 + 32);
      v21 = *([v10 localJointTransformsSRT] + v13 + 16);
      *(v15 - 1) = v33;
      *v15 = v21;
      ++v14;
      v15 += 3;
      v13 += 48;
    }

    while (v14 < [v10 jointTransformCount]);
  }

  v22 = _ARLogGeneral_2();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    *buf = 138543618;
    v35 = v24;
    v36 = 2048;
    v37 = self;
    _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Creating result", buf, 0x16u);
  }

  v25 = [ARCoreRESkeletonResult alloc];
  v26 = [v10 jointModelTransforms];
  v27 = [v10 jointTransformCount];
  LODWORD(v28) = 981668463;
  v29 = [v4 createResultScaledByFactor:v28];
  v30 = [v10 identifier];
  v31 = [(ARCoreRESkeletonResult *)v25 initWithModelJointTransforms:v26 localJointTransformsSRT:v12 numberOfTransforms:v27 liftedSkeletonData:v29 identifier:v30];

  return v31;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

@end
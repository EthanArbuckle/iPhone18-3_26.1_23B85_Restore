@interface AR3DSkeletonRetargetingTechnique
- (AR3DSkeletonRetargetingTechnique)init;
- (BOOL)isEqual:(id)equal;
- (id)_retargetSkeleton:(id)skeleton;
- (id)processData:(id)data;
- (void)prepare:(BOOL)prepare;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
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

- (void)prepare:(BOOL)prepare
{
  if (!self->_abpkRetargeting)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698A948]);
    abpkRetargeting = self->_abpkRetargeting;
    self->_abpkRetargeting = v4;
  }
}

- (id)processData:(id)data
{
  v32 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = _ARLogGeneral_2();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v29 = v7;
    v30 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Process Data", buf, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = dataCopy;
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    detectedSkeletons = [v8 detectedSkeletons];
    v11 = [v9 initWithCapacity:{objc_msgSend(detectedSkeletons, "count")}];

    v12 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.bodytracking.multipleBodyAnchors"];
    [v8 timestamp];
    kdebug_trace();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    detectedSkeletons2 = [v8 detectedSkeletons];
    v14 = [detectedSkeletons2 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(detectedSkeletons2);
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
          v15 = [detectedSkeletons2 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

    latestResults = [(AR3DSkeletonRetargetingTechnique *)self latestResults];
    [latestResults setRetargetedSkeletons:v11];

    dispatch_semaphore_signal(self->_resultSemaphore);
  }

  return dataCopy;
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  v37[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  latestResults = [(AR3DSkeletonRetargetingTechnique *)self latestResults];

  if (latestResults)
  {
    imageData = [contextCopy imageData];
    [imageData cameraIntrinsics];
    v33 = v10;
    v34 = v9;
    v32 = v11;
    latestResults2 = [(AR3DSkeletonRetargetingTechnique *)self latestResults];
    [latestResults2 setCameraIntrinsics:{v34, v33, v32}];

    imageData2 = [contextCopy imageData];
    [imageData2 imageResolution];
    v15 = v14;
    v17 = v16;
    latestResults3 = [(AR3DSkeletonRetargetingTechnique *)self latestResults];
    [latestResults3 setImageResolution:{v15, v17}];

    latestResults4 = [(AR3DSkeletonRetargetingTechnique *)self latestResults];
    retargetedSkeletons = [latestResults4 retargetedSkeletons];
    firstObject = [retargetedSkeletons firstObject];

    v22 = [contextCopy resultDataOfClass:objc_opt_class()];
    firstObject2 = [v22 firstObject];

    if (firstObject2 && ([firstObject2 estimatedScaleFactor], v24 > 0.0))
    {
      [firstObject2 estimatedScaleFactor];
      [firstObject setEstimatedScaleFactor:v25];
      [firstObject2 visionTransform];
      [firstObject setVisionTransform:?];
      delegate = [(ARTechnique *)self delegate];
      latestResults5 = [(AR3DSkeletonRetargetingTechnique *)self latestResults];
      v37[0] = latestResults5;
      v28 = v37;
      v29 = delegate;
    }

    else
    {
      v29 = objc_opt_new();
      [v29 setTimestamp:timestamp];
      [v29 setRetargetedSkeletons:MEMORY[0x1E695E0F0]];
      delegate = [(ARTechnique *)self delegate];
      v36 = v29;
      v28 = &v36;
      latestResults5 = delegate;
    }

    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    [delegate technique:self didOutputResultData:v30 timestamp:contextCopy context:timestamp];

    [(AR3DSkeletonRetargetingTechnique *)self setLatestResults:0];
  }

  else
  {
    firstObject = objc_opt_new();
    firstObject2 = [(ARTechnique *)self delegate];
    v35 = firstObject;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    [firstObject2 technique:self didOutputResultData:v31 timestamp:contextCopy context:timestamp];
  }

  dispatch_semaphore_signal(self->_resultSemaphore);
}

- (id)_retargetSkeleton:(id)skeleton
{
  v38 = *MEMORY[0x1E69E9840];
  skeletonCopy = skeleton;
  v5 = objc_alloc(MEMORY[0x1E698A918]);
  joints = [skeletonCopy joints];
  jointCount = [skeletonCopy jointCount];
  skeletonDetectionResult2D = [skeletonCopy skeletonDetectionResult2D];
  v9 = [v5 initWithJoints:joints numberOfJoints:jointCount referenceDetectionResult:skeletonDetectionResult2D];

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
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Creating result", buf, 0x16u);
  }

  v25 = [ARCoreRESkeletonResult alloc];
  jointModelTransforms = [v10 jointModelTransforms];
  jointTransformCount = [v10 jointTransformCount];
  LODWORD(v28) = 981668463;
  v29 = [skeletonCopy createResultScaledByFactor:v28];
  identifier = [v10 identifier];
  v31 = [(ARCoreRESkeletonResult *)v25 initWithModelJointTransforms:jointModelTransforms localJointTransformsSRT:v12 numberOfTransforms:jointTransformCount liftedSkeletonData:v29 identifier:identifier];

  return v31;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

@end
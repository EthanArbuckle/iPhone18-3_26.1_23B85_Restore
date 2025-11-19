@interface AR3DSkeletonLiftingTechnique
- (AR3DSkeletonLiftingTechnique)init;
- (double)requiredTimeInterval;
- (id)processEspressoTensor:(id)a3;
- (void)_prepareOnce:(BOOL)a3;
@end

@implementation AR3DSkeletonLiftingTechnique

- (AR3DSkeletonLiftingTechnique)init
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _ARLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v11 = v5;
    v12 = 2048;
    v13 = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Initializing", buf, 0x16u);
  }

  v6 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.humanpose3d");
  v9.receiver = self;
  v9.super_class = AR3DSkeletonLiftingTechnique;
  v7 = [(ARMLImageProcessingTechnique *)&v9 initWithDispatchQueue:v6 networkInputScaleBeforeRotation:1 delegateInference:1.0, 32.0];

  return v7;
}

- (void)_prepareOnce:(BOOL)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = CreateABPK3DLiftingAlgorithm();
  liftingAlgorithm = self->_liftingAlgorithm;
  self->_liftingAlgorithm = v4;

  if (!self->_liftingAlgorithm)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [AR3DSkeletonLiftingTechnique _prepareOnce:];
    }

    v6 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v7 = _ARLogGeneral();
    v8 = v7;
    if (v6 == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138543618;
        v18 = v10;
        v19 = 2048;
        v20 = self;
        _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: ABPK3DLiftingAlgorithm could not be initialized!", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138543618;
      v18 = v12;
      v19 = 2048;
      v20 = self;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: ABPK3DLiftingAlgorithm could not be initialized!", buf, 0x16u);
    }

    if (ARSkipCrashOnCrash(void)::onceToken != -1)
    {
      [AR3DSkeletonLiftingTechnique _prepareOnce:];
    }

    if ((ARSkipCrashOnCrash(void)::skipCrashOnCrash & 1) == 0)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ABPK3DLiftingAlgorithm could not be initialized!"];
      v15 = [v13 stringWithFormat:@"ARCrash: %@", v14];

      v16 = v15;
      qword_1EBF41A28 = strdup([v15 UTF8String]);
      if (!ARInternalOSBuild())
      {
        abort();
      }

      ARAbortWithError(v15);
    }
  }
}

- (double)requiredTimeInterval
{
  if ([AR3DSkeletonLiftingTechnique requiredTimeInterval]::onceToken != -1)
  {
    [AR3DSkeletonLiftingTechnique requiredTimeInterval];
  }

  return *&[AR3DSkeletonLiftingTechnique requiredTimeInterval]::sTimeInterval;
}

uint64_t __52__AR3DSkeletonLiftingTechnique_requiredTimeInterval__block_invoke()
{
  result = ARIsANEVersionEqualOrPriorToH12();
  v1 = 0.008;
  if (result)
  {
    v1 = 0.015;
  }

  [AR3DSkeletonLiftingTechnique requiredTimeInterval]::sTimeInterval = *&v1;
  return result;
}

- (id)processEspressoTensor:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _ARLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v44 = v7;
    v45 = 2048;
    v46 = self;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ProcessEspressoTensor", buf, 0x16u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_13;
  }

  v8 = v4;
  if (ARIsANEVersionEqualOrPriorToH12())
  {
    [v8 trackedDetectionResult];
  }

  else
  {
    [v8 rawDetectionResult];
  }
  v9 = ;
  v11 = v9;
  if (!v9)
  {
    goto LABEL_11;
  }

  v12 = [v9 liftingData];
  v13 = [v12 liftingData3D] == 0;

  if (v13)
  {
    goto LABEL_11;
  }

  [v8 timestamp];
  [(AR3DSkeletonLiftingTechnique *)self _startMLRunNetworkSignpostWithTimestamp:?];
  liftingAlgorithm = self->_liftingAlgorithm;
  [v8 timestamp];
  LODWORD(liftingAlgorithm) = [(ABPK3DLiftingAlgorithm *)liftingAlgorithm runLiftingModelWithData:v11 atTimestamp:?];
  [v8 timestamp];
  [(AR3DSkeletonLiftingTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];
  if (liftingAlgorithm)
  {
    goto LABEL_11;
  }

  if (ARIsANEVersionEqualOrPriorToH12())
  {
LABEL_19:
    v29 = [AR3DSkeletonDetectionResult alloc];
    v30 = [(ABPK3DLiftingAlgorithm *)self->_liftingAlgorithm getLiftingResults];
    v15 = -[AR3DSkeletonDetectionResult initWithJoints:numberOfJoints:referenceDetectionResult:](v29, "initWithJoints:numberOfJoints:referenceDetectionResult:", [v30 joints], 17, v11);

    v10 = objc_opt_new();
    if (v15)
    {
      v42 = v15;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    }

    else
    {
      v31 = MEMORY[0x1E695E0F0];
    }

    [v10 setDetectedSkeletons:v31];
    if (v15)
    {
    }

    [v8 timestamp];
    [v10 setTimestamp:?];
    goto LABEL_12;
  }

  v17 = [v8 trackedDetectionResult];
  v18 = v17 == 0;

  if (!v18)
  {
    v41 = objc_alloc(MEMORY[0x1E698A8F8]);
    v38 = [v8 trackedDetectionResult];
    v40 = [v38 rawJointsOutput];
    v37 = [v8 rawDetectionResult];
    v39 = [v37 jointTrackingStates];
    v36 = [v8 rawDetectionResult];
    v19 = [v36 jointCount];
    v35 = [v8 rawDetectionResult];
    [v35 imageResolution];
    v21 = v20;
    v23 = v22;
    v24 = [v8 rawDetectionResult];
    v25 = [v24 rotation];
    v26 = [v8 trackedDetectionResult];
    v27 = [v26 liftingData];
    v28 = [v41 initWithJoints:v40 trackingStates:v39 numberOfJoints:v19 imageResolution:v25 rotation:v27 croppedRect:v21 liftingData:{v23, 0.0, 0.0, 1.0, 1.0}];

    v11 = v28;
    goto LABEL_19;
  }

  v32 = _ARLogGeneral();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    *buf = 138543618;
    v44 = v34;
    v45 = 2048;
    v46 = self;
    _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: trackedDetectionResult is nil, bailing out", buf, 0x16u);
  }

LABEL_11:
  v15 = 0;
  v10 = 0;
LABEL_12:

LABEL_13:

  return v10;
}

@end
@interface ARNormalTechnique
- (ARNormalTechnique)init;
- (id)processData:(id)a3;
- (void)dealloc;
@end

@implementation ARNormalTechnique

- (ARNormalTechnique)init
{
  v5.receiver = self;
  v5.super_class = ARNormalTechnique;
  v2 = [(ARTechnique *)&v5 init];
  if (v2)
  {
    v2->_session = CV3DNormalEstimationCreate();
    v3 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.planeEstimation.normalsKernelSize"];
    v2->_kernelSize = [v3 unsignedIntValue];
  }

  return v2;
}

- (id)processData:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = ARNormalTechnique;
  v4 = [(ARTechnique *)&v46 processData:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = v4;
    goto LABEL_4;
  }

  v7 = v4;
  if (![v7 normalsBuffer])
  {
    [v7 depthBufferSize];
    v10 = ARCreateCVPixelBufferFromPool(&self->_normalPixelBufferPool, 1380410945, self, @"Normals map", v8, v9);
    if (v10)
    {
      v11 = v10;
      [v7 timestamp];
      kdebug_trace();
      v12 = [v7 sourceImageData];
      [v12 cameraIntrinsics];
      v44 = v14;
      v45 = v13;
      v42 = v15;
      v16 = [v7 sourceImageData];
      [v16 imageResolution];
      v18 = v17;
      v20 = v19;
      [v7 depthBufferSize];
      ARAdjustIntrinsicsForViewportSize(v45, v44, v42, v18, v20, v21, v22);
      v43 = v23;

      [v7 depthBuffer];
      if (CV3DNormalEstimationSessionCompute())
      {
        [v7 setNormalsBuffer:v11];
LABEL_29:
        [v7 timestamp];
        kdebug_trace();
        CVPixelBufferRelease(v11);
        goto LABEL_4;
      }

      if (ARShouldUseLogTypeError_onceToken_12 != -1)
      {
        [ARNormalTechnique processData:];
      }

      v32 = ARShouldUseLogTypeError_internalOSVersion_12;
      v33 = _ARLogTechnique_7();
      v34 = v33;
      if (v32 == 1)
      {
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          *buf = 138543874;
          v48 = v36;
          v49 = 2048;
          v50 = self;
          v51 = 2112;
          v52 = 0;
          v37 = "%{public}@ <%p>: Failed to compute normals: %@";
          v38 = v34;
          v39 = OS_LOG_TYPE_ERROR;
LABEL_27:
          _os_log_impl(&dword_1C241C000, v38, v39, v37, buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v41 = objc_opt_class();
        v36 = NSStringFromClass(v41);
        *buf = 138543874;
        v48 = v36;
        v49 = 2048;
        v50 = self;
        v51 = 2112;
        v52 = 0;
        v37 = "Error: %{public}@ <%p>: Failed to compute normals: %@";
        v38 = v34;
        v39 = OS_LOG_TYPE_INFO;
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    if (ARShouldUseLogTypeError_onceToken_12 != -1)
    {
      [ARNormalTechnique processData:];
    }

    v24 = ARShouldUseLogTypeError_internalOSVersion_12;
    v25 = _ARLogTechnique_7();
    v26 = v25;
    if (v24 == 1)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138543618;
        v48 = v28;
        v49 = 2048;
        v50 = self;
        v29 = "%{public}@ <%p>: CVPixelBuffer to store normals could not be created from pool";
        v30 = v26;
        v31 = OS_LOG_TYPE_ERROR;
LABEL_23:
        _os_log_impl(&dword_1C241C000, v30, v31, v29, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v40 = objc_opt_class();
      v28 = NSStringFromClass(v40);
      *buf = 138543618;
      v48 = v28;
      v49 = 2048;
      v50 = self;
      v29 = "Error: %{public}@ <%p>: CVPixelBuffer to store normals could not be created from pool";
      v30 = v26;
      v31 = OS_LOG_TYPE_INFO;
      goto LABEL_23;
    }
  }

LABEL_4:

  return v4;
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_normalPixelBufferPool);
  CV3DNormalEstimationSessionRelease();
  v3.receiver = self;
  v3.super_class = ARNormalTechnique;
  [(ARNormalTechnique *)&v3 dealloc];
}

@end
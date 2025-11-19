@interface ARAppClipCodeTechnique
- (ARAppClipCodeTechnique)initWithIgnoreURLLimitation:(BOOL)a3;
- (BOOL)deterministicMode;
- (BOOL)isEqual:(id)a3;
- (id)processData:(id)a3;
- (void)dealloc;
- (void)prepare:(BOOL)a3;
- (void)setPowerUsage:(unint64_t)a3;
@end

@implementation ARAppClipCodeTechnique

- (ARAppClipCodeTechnique)initWithIgnoreURLLimitation:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = ARAppClipCodeTechnique;
  v4 = [(ARImageBasedTechnique *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_ignoreURLLimitation = a3;
    v6 = objc_opt_new();
    decodedURLs = v5->_decodedURLs;
    v5->_decodedURLs = v6;

    v8 = objc_alloc_init(getBCSAppClipCodeURLDecoderClass());
    urlDecoder = v5->_urlDecoder;
    v5->_urlDecoder = v8;

    v5->_prepared = 0;
    v10 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.accresults");
    resultDispatchingQueue = v5->_resultDispatchingQueue;
    v5->_resultDispatchingQueue = v10;
  }

  return v5;
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_appClipCodeSession)
  {
    v3 = _ARLogTechnique();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      appClipCodeSession = self->_appClipCodeSession;
      *buf = 138543874;
      v12 = v5;
      v13 = 2048;
      v14 = self;
      v15 = 2048;
      v16 = appClipCodeSession;
      _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Releasing app clip code session: %p …", buf, 0x20u);
    }

    AppC3DRelease();
    v7 = _ARLogTechnique();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543618;
      v12 = v9;
      v13 = 2048;
      v14 = self;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: App clip code session released", buf, 0x16u);
    }
  }

  v10.receiver = self;
  v10.super_class = ARAppClipCodeTechnique;
  [(ARAppClipCodeTechnique *)&v10 dealloc];
}

- (void)prepare:(BOOL)a3
{
  v42 = *MEMORY[0x1E69E9840];
  if (self->_prepared)
  {
    v4 = _ARLogTechnique();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      *buf = 138543618;
      v37 = v6;
      v38 = 2048;
      v39 = self;
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: App clip code session already exists, not recreating it.", buf, 0x16u);
    }
  }

  else
  {
    v7 = a3;
    kdebug_trace();
    if ([(NSMutableDictionary *)self->_decodedURLs count])
    {
      [(NSMutableDictionary *)self->_decodedURLs removeAllObjects];
    }

    AppC3DConfigCreate();
    v8 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.appClipCodeTracking.performanceTestMode"];
    if (v8 == 2)
    {
      AppC3DConfigSetTrackingConfig();
    }

    if ([ARAppClipCodeTechnique shouldRunCameraOrScannerPerformanceTestingMode:0])
    {
      v9 = _ARLogTechnique();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = @"scanner";
        *buf = 138543874;
        v37 = v11;
        if (v8 == 1)
        {
          v12 = @"camera";
        }

        v38 = 2048;
        v39 = self;
        v40 = 2112;
        *v41 = v12;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Running in '%@' performance test mode", buf, 0x20u);
      }

      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    AppC3DConfigSetTrackingMode();
    if (v33)
    {
      if (ARShouldUseLogTypeError_onceToken_5 != -1)
      {
        [ARAppClipCodeTechnique prepare:];
      }

      v14 = ARShouldUseLogTypeError_internalOSVersion_5;
      v15 = _ARLogTechnique();
      v16 = v15;
      if (v14 == 1)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          *buf = 138544130;
          v37 = v18;
          v38 = 2048;
          v39 = self;
          v40 = 1024;
          *v41 = v13;
          *&v41[4] = 2112;
          *&v41[6] = v33;
          _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not set app clip code config tracking mode to: %d failed with error: %@", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138544130;
        v37 = v20;
        v38 = 2048;
        v39 = self;
        v40 = 1024;
        *v41 = v13;
        *&v41[4] = 2112;
        *&v41[6] = v33;
        _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not set app clip code config tracking mode to: %d failed with error: %@", buf, 0x26u);
      }

      AppC3DConfigRelease();
      v21 = [(ARTechnique *)self delegate];
      v22 = ARErrorWithCodeAndUserInfo(151, 0);
      [v21 technique:self didFailWithError:v22];
    }

    else
    {
      AppC3DConfigSetMaxNumberCodesToTrack();
      v34 = *MEMORY[0x1E698AAE0];
      v23 = [MEMORY[0x1E696AD98] numberWithBool:v7];
      v35 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      appClipCodeTrackingOptions = self->_appClipCodeTrackingOptions;
      self->_appClipCodeTrackingOptions = v24;

      AppC3DCreate();
      AppC3DConfigRelease();
      AppC3DSetUpdateCallback();
      [(ARAppClipCodeTechnique *)self setPowerUsage:[(ARTechnique *)self powerUsage]];
      v26 = [(ARAppClipCodeTechnique *)self deterministicMode];
      v27 = _ARLogTechnique();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
      if (v26)
      {
        if (v28)
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138543618;
          v37 = v30;
          v38 = 2048;
          v39 = self;
          _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: prepared for deterministic mode.", buf, 0x16u);
        }
      }

      else if (v28)
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138543618;
        v37 = v32;
        v38 = 2048;
        v39 = self;
        _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: prepared for non-deterministic mode.", buf, 0x16u);
      }

      self->_prepared = 1;
    }

    kdebug_trace();
  }
}

- (id)processData:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25.receiver = self;
    v25.super_class = ARAppClipCodeTechnique;
    v7 = [(ARImageBasedTechnique *)&v25 processData:v4];
    goto LABEL_13;
  }

  v24.receiver = self;
  v24.super_class = ARAppClipCodeTechnique;
  v5 = [(ARImageBasedTechnique *)&v24 processData:v4];
  v6 = v4;
  v7 = v6;
  if (self->_prepared)
  {
    [v6 visionTransform];
    IsZero = ARMatrix4x4IsZero(v8, v9, v10, v11);
    [v7 timestamp];
    if (!IsZero)
    {
      kdebug_trace();
      v29 = 0;
      memset(v28, 0, sizeof(v28));
      [v7 cameraIntrinsics];
      [v7 visionTransform];
      v21 = [ARAppClipCodeTechnique shouldRunCameraOrScannerPerformanceTestingMode:ARMatrix4x4RowMajorRotationAndTranslation(v27];
      [v7 pixelBuffer];
      [v7 timestamp];
      if (v21)
      {
        AppC3DProcessCameraFrameData();
      }

      else
      {
        AppC3DProcess();
      }

      v22 = v7;

      goto LABEL_12;
    }

    [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
    [v7 timestamp];
    kdebug_trace();
  }

  else
  {
    [v6 timestamp];
    [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
  }

  v13 = v7;
LABEL_12:

LABEL_13:

  return v7;
}

- (BOOL)deterministicMode
{
  v2 = [(NSDictionary *)self->_appClipCodeTrackingOptions objectForKey:*MEMORY[0x1E698AAE0]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSDictionary *)self->_appClipCodeTrackingOptions isEqual:v4[12]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPowerUsage:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = ARAppClipCodeTechnique;
  [(ARTechnique *)&v9 setPowerUsage:?];
  if (self->_appClipCodeSession)
  {
    if (a3 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2 * (a3 == 2);
    }

    AppC3DSetPerformanceMode();
    v6 = _ARLogTechnique();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544130;
      v11 = v8;
      v12 = 2048;
      v13 = self;
      v14 = 2048;
      v15 = self;
      v16 = 1024;
      v17 = v5;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ARAppClipCodeTechnique(%p): Setting performance mode %i.", buf, 0x26u);
    }
  }
}

@end
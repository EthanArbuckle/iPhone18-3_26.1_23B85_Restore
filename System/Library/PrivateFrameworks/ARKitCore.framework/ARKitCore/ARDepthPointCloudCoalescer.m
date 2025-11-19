@interface ARDepthPointCloudCoalescer
- (ADAggregationParameters)aggregationParameters;
- (ARDepthPointCloudCoalescer)init;
- (id)_createModifiedParametersIfNecessary:(id)a3;
- (id)depthPointCloudWithPose:(id)a3 imageData:(id)a4;
- (void)addDepthPointCloudData:(id)a3;
- (void)setAggregationParameters:(id)a3;
@end

@implementation ARDepthPointCloudCoalescer

- (ARDepthPointCloudCoalescer)init
{
  v5.receiver = self;
  v5.super_class = ARDepthPointCloudCoalescer;
  v2 = [(ARDepthPointCloudCoalescer *)&v5 init];
  v2->_aggregatorLock._os_unfair_lock_opaque = 0;
  v3 = objc_opt_new();
  [v3 setAggregationSize:4];
  [v3 setMaxPointCloudAge:0.5];
  [(ARDepthPointCloudCoalescer *)v2 setAggregationParameters:v3];

  return v2;
}

- (ADAggregationParameters)aggregationParameters
{
  v2 = [(ADAggregationParameters *)self->_aggregationParameters copy];

  return v2;
}

- (void)setAggregationParameters:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 ar_isEqualToParameters:self->_aggregationParameters] & 1) == 0)
  {
    v5 = [v4 copy];
    aggregationParameters = self->_aggregationParameters;
    self->_aggregationParameters = v5;

    v7 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.jasper.aggregationBankCount"];
    if (v7 >= 1)
    {
      [(ADAggregationParameters *)self->_aggregationParameters setAggregationSize:v7];
    }

    v8 = _ARLogGeneral_39();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v12 = 138543618;
      v13 = v10;
      v14 = 2048;
      v15 = self;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: The aggregation parameters changed, deleting the aggregator", &v12, 0x16u);
    }

    os_unfair_lock_lock(&self->_aggregatorLock);
    aggregator = self->_aggregator;
    self->_aggregator = 0;

    os_unfair_lock_unlock(&self->_aggregatorLock);
  }
}

- (id)_createModifiedParametersIfNecessary:(id)a3
{
  v4 = aggregationSizeForPointCloud(a3);
  v5 = [(ADAggregationParameters *)self->_aggregationParameters aggregationSize];
  aggregationParameters = self->_aggregationParameters;
  if (v5 == v4)
  {
    v7 = aggregationParameters;
  }

  else
  {
    v7 = [(ADAggregationParameters *)aggregationParameters copy];
    [(ADAggregationParameters *)v7 setAggregationSize:v4];
  }

  return v7;
}

- (void)addDepthPointCloudData:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_aggregatorLock);
  aggregator = self->_aggregator;
  if (!aggregator || (-[ADPointCloudAggregator aggregationParameters](aggregator, "aggregationParameters"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 aggregationSize], v8 = aggregationSizeForPointCloud(v4), v6, v7 != v8))
  {
    v9 = [(ARDepthPointCloudCoalescer *)self _createModifiedParametersIfNecessary:v4];
    v10 = _ARLogGeneral_39();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = self->_aggregator;
      v34 = 138543874;
      v35 = v12;
      v36 = 2048;
      v37 = self;
      v38 = 2048;
      v39 = v13;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: About to create a new ADPointCloudAggregator; old: (%p)", &v34, 0x20u);
    }

    v14 = [objc_alloc(MEMORY[0x1E698C198]) initWithAggregationParameters:v9];
    v15 = self->_aggregator;
    self->_aggregator = v14;

    v16 = _ARLogGeneral_39();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = self->_aggregator;
      v20 = [(ADPointCloudAggregator *)v19 aggregationParameters];
      v21 = [v20 aggregationSize];
      v22 = [(ADPointCloudAggregator *)self->_aggregator aggregationParameters];
      [v22 maxPointCloudAge];
      v34 = 138544386;
      v35 = v18;
      v36 = 2048;
      v37 = self;
      v38 = 2048;
      v39 = v19;
      v40 = 1024;
      v41 = v21;
      v42 = 2048;
      v43 = v23;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Created a new ADPointCloudAggregator (%p) with Size:%u Age:%lf", &v34, 0x30u);
    }
  }

  [v4 timestamp];
  v24 = [v4 pointCloud];
  [v24 length];
  kdebug_trace();

  v25 = self->_aggregator;
  v26 = [v4 pointCloud];
  [v4 timestamp];
  v28 = v27;
  v29 = MEMORY[0x1E698C198];
  [v4 visionCameraTransform];
  [v29 transformMetersToMillimiters:?];
  [(ADPointCloudAggregator *)v25 pushPointCloud:v26 timestamp:v28 worldToCameraTransform:v30, v31, v32, v33];

  kdebug_trace();
  os_unfair_lock_unlock(&self->_aggregatorLock);
}

- (id)depthPointCloudWithPose:(id)a3 imageData:(id)a4
{
  v75 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_aggregatorLock);
  aggregator = self->_aggregator;
  if (!aggregator)
  {
    v22 = 0;
    goto LABEL_35;
  }

  v9 = [(ADPointCloudAggregator *)aggregator aggregationParameters];
  [v9 aggregationSize];
  CVPixelBufferGetWidth([v7 pixelBuffer]);
  CVPixelBufferGetHeight([v7 pixelBuffer]);
  [v7 timestamp];
  kdebug_trace();
  v10 = [v7 calibrationData];
  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E698C160]);
    v12 = [v11 ar_initWithImageData:v7 calibrationData:v10];

    if (v12)
    {
      goto LABEL_15;
    }

    if (ARShouldUseLogTypeError_onceToken_45 != -1)
    {
      [ARDepthPointCloudCoalescer depthPointCloudWithPose:imageData:];
    }

    v13 = ARShouldUseLogTypeError_internalOSVersion_45;
    v14 = _ARLogGeneral_39();
    v15 = v14;
    if (v13 == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138544130;
        v68 = v17;
        v69 = 2048;
        v70 = self;
        v71 = 2114;
        v72 = v19;
        v73 = 2114;
        v74 = v21;
        _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: failed to create %{public}@ from calibration data, using last known %{public}@ calibration", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138544130;
      v68 = v24;
      v69 = 2048;
      v70 = self;
      v71 = 2114;
      v72 = v26;
      v73 = 2114;
      v74 = v28;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: failed to create %{public}@ from calibration data, using last known %{public}@ calibration", buf, 0x2Au);
    }
  }

  v29 = [v7 adCameraCalibration];
  v30 = v29 == 0;

  if (v30)
  {
LABEL_25:
    if (ARShouldUseLogTypeError_onceToken_45 != -1)
    {
      [ARDepthPointCloudCoalescer depthPointCloudWithPose:imageData:];
    }

    v51 = ARShouldUseLogTypeError_internalOSVersion_45;
    v52 = _ARLogGeneral_39();
    v53 = v52;
    if (v51 == 1)
    {
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v54 = objc_opt_class();
        v55 = NSStringFromClass(v54);
        v56 = [v7 cameraType];
        *buf = 138543874;
        v68 = v55;
        v69 = 2048;
        v70 = self;
        v71 = 2114;
        v72 = v56;
        _os_log_impl(&dword_1C241C000, v53, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not update aggregator calibration for image: %{public}@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      v59 = [v7 cameraType];
      *buf = 138543874;
      v68 = v58;
      v69 = 2048;
      v70 = self;
      v71 = 2114;
      v72 = v59;
      _os_log_impl(&dword_1C241C000, v53, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not update aggregator calibration for image: %{public}@", buf, 0x20u);
    }

    v12 = 0;
    if (v6)
    {
      goto LABEL_16;
    }

LABEL_33:
    v65 = *(MEMORY[0x1E69E9B18] + 48);
    v66 = *(MEMORY[0x1E69E9B18] + 32);
    goto LABEL_34;
  }

  v31 = MEMORY[0x1E698C160];
  v32 = [v7 adCameraCalibration];
  v12 = [v31 ar_calibrationWithImageData:v7 adCalibrationData:v32];

  if (!v12)
  {
    if (ARShouldUseLogTypeError_onceToken_45 != -1)
    {
      [ARDepthPointCloudCoalescer depthPointCloudWithPose:imageData:];
    }

    v36 = ARShouldUseLogTypeError_internalOSVersion_45;
    v37 = _ARLogGeneral_39();
    v38 = v37;
    if (v36 == 1)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        *buf = 138544130;
        v68 = v40;
        v69 = 2048;
        v70 = self;
        v71 = 2114;
        v72 = v42;
        v73 = 2114;
        v74 = v44;
        _os_log_impl(&dword_1C241C000, v38, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: failed to create %{public}@ from calibration data, using last known %{public}@ calibration", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      *buf = 138544130;
      v68 = v46;
      v69 = 2048;
      v70 = self;
      v71 = 2114;
      v72 = v48;
      v73 = 2114;
      v74 = v50;
      _os_log_impl(&dword_1C241C000, v38, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: failed to create %{public}@ from calibration data, using last known %{public}@ calibration", buf, 0x2Au);
    }

    goto LABEL_25;
  }

LABEL_15:
  [(ADPointCloudAggregator *)self->_aggregator setColorCameraCalibration:v12];
  [v12 cameraToPlatformTransform];
  ARMatrix4x4FromMatrix4x3();
  v78 = __invert_f4(v77);
  [(ADPointCloudAggregator *)self->_aggregator setJasperToCameraTransform:*v78.columns[0].i64, *v78.columns[1].i64, *v78.columns[2].i64, *v78.columns[3].i64];
  if (!v6)
  {
    goto LABEL_33;
  }

LABEL_16:
  v33 = MEMORY[0x1E698C198];
  [v6 visionCameraTransform];
  [v33 transformMetersToMillimiters:?];
  v65 = v35;
  v66 = v34;
LABEL_34:
  v60 = self->_aggregator;
  [v6 timestamp];
  v22 = [ADPointCloudAggregator aggregateForTime:v60 worldToCameraTransform:"aggregateForTime:worldToCameraTransform:"];
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  kdebug_trace();
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  kdebug_trace();
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  kdebug_trace();
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  [(ADPointCloudAggregator *)self->_aggregator jasperToCameraTransform];
  kdebug_trace();
  v61 = [(ADPointCloudAggregator *)self->_aggregator colorCameraCalibration];
  [v61 intrinsicMatrix];
  v62 = [(ADPointCloudAggregator *)self->_aggregator colorCameraCalibration];
  [v62 intrinsicMatrix];
  v63 = [(ADPointCloudAggregator *)self->_aggregator colorCameraCalibration];
  [v63 intrinsicMatrix];
  kdebug_trace();

  [v22 length];
  kdebug_trace();

LABEL_35:
  os_unfair_lock_unlock(&self->_aggregatorLock);

  return v22;
}

@end
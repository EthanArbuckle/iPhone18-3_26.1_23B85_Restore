@interface ADCameraCalibration(ARAdditions)
+ (id)ar_calibrationWithImageData:()ARAdditions adCalibrationData:;
+ (id)ar_initWithCVACameraCalibrationData:()ARAdditions;
- (id)ar_initWithImageData:()ARAdditions calibrationData:;
- (id)ar_initWithImageData:()ARAdditions cameraToPlatformTransform:pixelSize:referenceDimensions:distortionCenter:lensDistortionLookupTable:inverseLensDistortionLookupTable:;
@end

@implementation ADCameraCalibration(ARAdditions)

+ (id)ar_calibrationWithImageData:()ARAdditions adCalibrationData:
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 pixelBuffer];
  if (v8)
  {
    v9 = v8;
    Width = CVPixelBufferGetWidth(v8);
    Height = CVPixelBufferGetHeight(v9);
  }

  else
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
  }

  [v7 referenceDimensions];
  if (Width == v13 && Height == v12)
  {
    v33 = v7;
    goto LABEL_21;
  }

  v15 = [v7 distortionModel];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (ARShouldUseLogTypeError_onceToken_43 != -1)
    {
      +[ADCameraCalibration(ARAdditions) ar_calibrationWithImageData:adCalibrationData:];
    }

    v34 = ARShouldUseLogTypeError_internalOSVersion_43;
    v35 = _ARLogGeneral_36();
    v36 = v35;
    if (v34 == 1)
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        *buf = 138543618;
        v49 = v38;
        v50 = 2048;
        v51 = a1;
        v39 = "%{public}@ <%p>: Unsupported distoration model to scale for imageData";
        v40 = v36;
        v41 = OS_LOG_TYPE_ERROR;
LABEL_18:
        _os_log_impl(&dword_1C241C000, v40, v41, v39, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v42 = objc_opt_class();
      v38 = NSStringFromClass(v42);
      *buf = 138543618;
      v49 = v38;
      v50 = 2048;
      v51 = a1;
      v39 = "Error: %{public}@ <%p>: Unsupported distoration model to scale for imageData";
      v40 = v36;
      v41 = OS_LOG_TYPE_INFO;
      goto LABEL_18;
    }

    v33 = 0;
    goto LABEL_20;
  }

  v16 = objc_alloc(MEMORY[0x1E698C160]);
  [v6 extrinsicMatrixToDeviceType:*MEMORY[0x1E6986930]];
  v46 = v18;
  v47 = v17;
  v44 = v20;
  v45 = v19;
  [v7 pixelSize];
  v22 = v21;
  [v7 referenceDimensions];
  v24 = v23;
  v26 = v25;
  [v15 distortionCenter];
  v28 = v27;
  v30 = v29;
  v31 = [v15 lensDistortionLookupTable];
  v32 = [v15 inverseLensDistortionLookupTable];
  v33 = [v16 ar_initWithImageData:v6 cameraToPlatformTransform:v31 pixelSize:v32 referenceDimensions:v47 distortionCenter:v46 lensDistortionLookupTable:v45 inverseLensDistortionLookupTable:{v44, v22, v24, v26, v28, v30}];

LABEL_20:
LABEL_21:

  return v33;
}

+ (id)ar_initWithCVACameraCalibrationData:()ARAdditions
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    if (ARShouldUseLogTypeError_onceToken_43 != -1)
    {
      +[ADCameraCalibration(ARAdditions) ar_calibrationWithImageData:adCalibrationData:];
    }

    v29 = ARShouldUseLogTypeError_internalOSVersion_43;
    v30 = _ARLogGeneral_36();
    v31 = v30;
    if (v29 == 1)
    {
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138543618;
      v55 = v33;
      v56 = 2048;
      v57 = a1;
      v34 = "%{public}@ <%p>: calibrationData is nil";
LABEL_22:
      v42 = v31;
      v43 = OS_LOG_TYPE_ERROR;
LABEL_28:
      _os_log_impl(&dword_1C241C000, v42, v43, v34, buf, 0x16u);

      goto LABEL_29;
    }

    if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    v38 = objc_opt_class();
    v33 = NSStringFromClass(v38);
    *buf = 138543618;
    v55 = v33;
    v56 = 2048;
    v57 = a1;
    v34 = "Error: %{public}@ <%p>: calibrationData is nil";
LABEL_27:
    v42 = v31;
    v43 = OS_LOG_TYPE_INFO;
    goto LABEL_28;
  }

  v6 = [v4 lensDistortionLookupTable];

  if (!v6)
  {
    if (ARShouldUseLogTypeError_onceToken_43 != -1)
    {
      +[ADCameraCalibration(ARAdditions) ar_calibrationWithImageData:adCalibrationData:];
    }

    v35 = ARShouldUseLogTypeError_internalOSVersion_43;
    v36 = _ARLogGeneral_36();
    v31 = v36;
    if (v35 == 1)
    {
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v37 = objc_opt_class();
      v33 = NSStringFromClass(v37);
      *buf = 138543618;
      v55 = v33;
      v56 = 2048;
      v57 = a1;
      v34 = "%{public}@ <%p>: lensDistortionLookupTable is nil";
      goto LABEL_22;
    }

    if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    v44 = objc_opt_class();
    v33 = NSStringFromClass(v44);
    *buf = 138543618;
    v55 = v33;
    v56 = 2048;
    v57 = a1;
    v34 = "Error: %{public}@ <%p>: lensDistortionLookupTable is nil";
    goto LABEL_27;
  }

  v7 = [v5 inverseLensDistortionLookupTable];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E698C178]);
    [v5 lensDistortionCenter];
    v10 = v9;
    v12 = v11;
    v13 = [v5 lensDistortionLookupTable];
    v14 = [v5 inverseLensDistortionLookupTable];
    v15 = [v8 initWithDistortionCenter:v13 lensDistortionLookupTable:v14 inverseLensDistortionLookupTable:{v10, v12}];

    v16 = objc_alloc(MEMORY[0x1E698C160]);
    [v5 intrinsicMatrix];
    v53 = v17;
    v51 = v19;
    v52 = v18;
    [v5 extrinsicMatrix];
    v49 = v21;
    v50 = v20;
    v47 = v23;
    v48 = v22;
    [v5 pixelSize];
    v25 = v24;
    [v5 intrinsicMatrixReferenceDimensions];
    v28 = [v16 initWithIntrinsics:v15 cameraToPlatformTransform:v53 pixelSize:v52 forReferenceDimensions:v51 withDistortionModel:{v50, v49, v48, v47, v25, v26, v27}];

    goto LABEL_30;
  }

  if (ARShouldUseLogTypeError_onceToken_43 != -1)
  {
    +[ADCameraCalibration(ARAdditions) ar_calibrationWithImageData:adCalibrationData:];
  }

  v39 = ARShouldUseLogTypeError_internalOSVersion_43;
  v40 = _ARLogGeneral_36();
  v31 = v40;
  if (v39 != 1)
  {
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    v45 = objc_opt_class();
    v33 = NSStringFromClass(v45);
    *buf = 138543618;
    v55 = v33;
    v56 = 2048;
    v57 = a1;
    v34 = "Error: %{public}@ <%p>: inverseLensDistortionLookupTable is nil";
    goto LABEL_27;
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v41 = objc_opt_class();
    v33 = NSStringFromClass(v41);
    *buf = 138543618;
    v55 = v33;
    v56 = 2048;
    v57 = a1;
    v34 = "%{public}@ <%p>: inverseLensDistortionLookupTable is nil";
    goto LABEL_22;
  }

LABEL_29:

  v28 = 0;
LABEL_30:

  return v28;
}

- (id)ar_initWithImageData:()ARAdditions calibrationData:
{
  v6 = *MEMORY[0x1E6986930];
  v7 = a4;
  v8 = a3;
  [v8 extrinsicMatrixToDeviceType:v6];
  v29 = v10;
  v30 = v9;
  v27 = v12;
  v28 = v11;
  [v7 pixelSize];
  v14 = v13;
  [v7 intrinsicMatrixReferenceDimensions];
  v16 = v15;
  v18 = v17;
  [v7 lensDistortionCenter];
  v20 = v19;
  v22 = v21;
  v23 = [v7 lensDistortionLookupTable];
  v24 = [v7 inverseLensDistortionLookupTable];

  v25 = [a1 ar_initWithImageData:v8 cameraToPlatformTransform:v23 pixelSize:v24 referenceDimensions:v30 distortionCenter:v29 lensDistortionLookupTable:v28 inverseLensDistortionLookupTable:{v27, v14, v16, v18, v20, v22}];

  return v25;
}

- (id)ar_initWithImageData:()ARAdditions cameraToPlatformTransform:pixelSize:referenceDimensions:distortionCenter:lensDistortionLookupTable:inverseLensDistortionLookupTable:
{
  v23 = a12;
  v24 = a11;
  v25 = a10;
  [v25 imageResolution];
  v27 = v26 / a7;
  v28 = a14 * (v26 / a7);
  [v25 imageResolution];
  v30 = [objc_alloc(MEMORY[0x1E698C178]) initWithDistortionCenter:v24 lensDistortionLookupTable:v23 inverseLensDistortionLookupTable:{v28, -(v29 - a8 * v27) * -0.5 + a15 * v27}];

  v31 = a1;
  [v25 cameraIntrinsics];
  v42 = v33;
  v43 = v32;
  v41 = v34;
  [v25 imageResolution];
  v36 = v35;
  v38 = v37;

  v39 = [v31 initWithIntrinsics:v30 cameraToPlatformTransform:v43 pixelSize:v42 forReferenceDimensions:v41 withDistortionModel:{a2, a3, a4, a5, a6, v36, v38}];

  return v39;
}

@end
@interface ARPersonSegmentationTechnique
- (ARPersonSegmentationTechnique)init;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLoadedModelVersionCorrect:(id)a3;
- (__CVBuffer)_createCopyWithCVPixelBufferPoolForBuffer:(__CVBuffer *)a3;
- (id)resultDataClasses;
- (id)runNeuralNetworkWithImageData:(id)a3 originalImageData:(id)a4 regionOfInterest:(CGSize)a5 rotationOfResultTensor:(int64_t)a6;
- (void)_prepareOnce:(BOOL)a3;
- (void)dealloc;
@end

@implementation ARPersonSegmentationTechnique

- (ARPersonSegmentationTechnique)init
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.personsegmentationtechnique");
  v9.receiver = self;
  v9.super_class = ARPersonSegmentationTechnique;
  v4 = [(ARMLImageProcessingTechnique *)&v9 initWithDispatchQueue:v3 networkInputScaleBeforeRotation:1 delegateInference:256.0, 192.0];
  if (v4)
  {
    v5 = _ARLogTechnique_10();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138543618;
      v11 = v7;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Running person segmentation by ARPersonSegmentationTechnique.", buf, 0x16u);
    }

    v4->_outputSegmentationCopyPixelBufferPool = 0;
    v4->_scaledSegmentationOutputPixelBufferPool = 0;
    v4->_disableTemporalSegmentation = 0;
  }

  return v4;
}

- (void)_prepareOnce:(BOOL)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E69C9CD0]);
  [v4 setRunByE5RT:1];
  [v4 setEngineType:1];
  v5 = [objc_alloc(MEMORY[0x1E69C9CC0]) initWithNetworkConfiguration:v4];
  algorithm = self->_algorithm;
  self->_algorithm = v5;

  v7 = objc_alloc_init(MEMORY[0x1E69C9CB8]);
  imageInputData = self->_imageInputData;
  self->_imageInputData = v7;

  if (self->_algorithm)
  {
    goto LABEL_15;
  }

  if (ARShouldUseLogTypeError_onceToken_14 != -1)
  {
    [ARPersonSegmentationTechnique _prepareOnce:];
  }

  v9 = ARShouldUseLogTypeError_internalOSVersion_14;
  v10 = _ARLogGeneral_5();
  v11 = v10;
  if (v9 == 1)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543618;
      v22 = v13;
      v23 = 2048;
      v24 = self;
      v14 = "%{public}@ <%p>: SIPeopleSegmentationAlgorithm could not be initialized!";
      v15 = v11;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_9:
      _os_log_impl(&dword_1C241C000, v15, v16, v14, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v17 = objc_opt_class();
    v13 = NSStringFromClass(v17);
    *buf = 138543618;
    v22 = v13;
    v23 = 2048;
    v24 = self;
    v14 = "Error: %{public}@ <%p>: SIPeopleSegmentationAlgorithm could not be initialized!";
    v15 = v11;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_9;
  }

  if (ARSkipCrashOnCrash_onceToken != -1)
  {
    [ARPersonSegmentationTechnique _prepareOnce:];
  }

  if ((ARSkipCrashOnCrash_skipCrashOnCrash & 1) == 0)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SIPeopleSegmentationAlgorithm could not be initialized!"];
    v20 = [v18 stringWithFormat:@"ARCrash: %@", v19];

    qword_1EBF41A28 = strdup([v20 UTF8String]);
    if (!ARInternalOSBuild())
    {
      abort();
    }

    ARAbortWithError(v20);
  }

LABEL_15:
  if ([(ARPersonSegmentationTechnique *)self disableTemporalSegmentation])
  {
    [(SIPeopleSegmentationAlgorithm *)self->_algorithm setSnapEveryFrameCount:1];
  }
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_outputSegmentationCopyPixelBufferPool);
  CVPixelBufferPoolRelease(self->_scaledSegmentationOutputPixelBufferPool);
  v3.receiver = self;
  v3.super_class = ARPersonSegmentationTechnique;
  [(ARMLImageProcessingTechnique *)&v3 dealloc];
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ARPersonSegmentationTechnique;
  if ([(ARTechnique *)&v7 isEqual:v4])
  {
    v5 = self->_disableTemporalSegmentation == v4[376];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isLoadedModelVersionCorrect:(id)a3
{
  v4.receiver = self;
  v4.super_class = ARPersonSegmentationTechnique;
  return [(ARMLImageProcessingTechnique *)&v4 ARMLVerifyLoadedModelVersion:a3 deviceName:@"D" major:1 minor:4];
}

- (id)runNeuralNetworkWithImageData:(id)a3 originalImageData:(id)a4 regionOfInterest:(CGSize)a5 rotationOfResultTensor:(int64_t)a6
{
  height = a5.height;
  width = a5.width;
  v106 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  if (self->_algorithm)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = MEMORY[0x1E695E0F0];
    goto LABEL_50;
  }

  [v11 imageResolution];
  IsLandscape = CGSizeAspectRatioIsLandscape(v15, v16);
  v18 = [(ARMLImageProcessingTechnique *)self getDeviceOrientationFromImageData:v12];
  v19 = _ARLogTechnique_10();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v12 timestamp];
    v24 = v23;
    [v11 imageResolution];
    v26 = v25;
    [v11 imageResolution];
    v28 = v27;
    [v12 imageResolution];
    v30 = v29;
    [v12 imageResolution];
    *buf = 138545410;
    v89 = v22;
    v90 = 2048;
    v91 = self;
    v92 = 2048;
    v93 = v24;
    v94 = 2048;
    v95 = v26;
    v96 = 2048;
    v97 = v28;
    v98 = 2048;
    v99 = v30;
    v100 = 2048;
    v101 = v31;
    v102 = 2048;
    v103 = width;
    v104 = 2048;
    v105 = height;
    _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: [%f] Got imageData %fx%f, originalImageData %fx%f, ROI: %fx%f", buf, 0x5Cu);
  }

  v32 = !IsLandscape;
  [(SIPeopleSegmentationAlgorithm *)self->_algorithm switchConfiguration:v32];
  if (IsLandscape)
  {
    v33 = 360;
  }

  else
  {
    v33 = 368;
  }

  v34 = (&self->super.super.super.super.isa + v33);
  v35 = *(&self->super.super.super.super.isa + v33);
  if (!v35)
  {
    v36 = objc_alloc(MEMORY[0x1E69C9CC8]);
    v37 = [(SIPeopleSegmentationAlgorithm *)self->_algorithm networkConfiguration];
    v38 = [v36 initWithConfig:v37];
    v39 = *v34;
    *v34 = v38;

    v35 = *v34;
  }

  v40 = v35;
  [v11 timestamp];
  [(ARPersonSegmentationTechnique *)self _startMLRunNetworkSignpostWithTimestamp:?];
  -[SIImageInputData setInputImageBuffer:](self->_imageInputData, "setInputImageBuffer:", [v11 pixelBuffer]);
  [(SIPeopleSegmentationAlgorithm *)self->_algorithm runWithInput:self->_imageInputData output:v40 resolutionConfiguration:v32];
  [v11 timestamp];
  [(ARPersonSegmentationTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];
  [v11 timestamp];
  v42 = v41;
  v43 = [(SIImageInputData *)self->_imageInputData inputImageBuffer];
  v44 = v43;
  if (v43)
  {
    v45 = CVPixelBufferGetWidth(v43);
    v46 = CVPixelBufferGetHeight(v44);
    v47 = v45;
    v48 = v46;
  }

  else
  {
    v47 = *MEMORY[0x1E695F060];
    v48 = *(MEMORY[0x1E695F060] + 8);
  }

  [(ARPersonSegmentationTechnique *)self _startMLCreateResultSignpostWithTimestamp:v18 orientation:v42 outputSize:v47, v48];
  [(SIPeopleSegmentationAlgorithm *)self->_algorithm getOutputResolution];
  v50 = v49;
  v52 = v51;
  v53 = objc_opt_new();
  if (v50 == width && v52 == height)
  {
    [v53 setPixelBuffer:{objc_msgSend(v40, "segmentation")}];
    goto LABEL_20;
  }

  v61 = ARCreateCVPixelBufferFromPool(&self->_scaledSegmentationOutputPixelBufferPool, 1278226488, self, @"Scaled Segmentation", width, height);
  v62 = v61;
  if (v61)
  {
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v84 = __121__ARPersonSegmentationTechnique_runNeuralNetworkWithImageData_originalImageData_regionOfInterest_rotationOfResultTensor___block_invoke;
    v85 = &__block_descriptor_40_e5_v8__0l;
    v86 = v61;
    v63 = ARResizeBufferWithNearestNeighbors([v40 segmentation], v61, 1uLL);
    if (!v63)
    {
      [v53 setPixelBuffer:v62];
      v84(v83);
LABEL_20:
      segmentationRotationTechnique = self->_segmentationRotationTechnique;
      if (!segmentationRotationTechnique || [(ARImageRotationTechnique *)segmentationRotationTechnique rotationAngle]!= a6 || [(ARImageRotationTechnique *)self->_segmentationRotationTechnique mirrorMode])
      {
        v55 = [[ARImageRotationTechnique alloc] initWithRotation:a6 mirror:0];
        v56 = self->_segmentationRotationTechnique;
        self->_segmentationRotationTechnique = v55;
      }

      v57 = [(ARImageRotationTechnique *)self->_segmentationRotationTechnique processData:v53];
      v58 = [v57 pixelBuffer];
      LODWORD(v58) = v58 == [v40 segmentation];
      v59 = [v57 pixelBuffer];
      if (v58)
      {
        v60 = [(ARPersonSegmentationTechnique *)self _createCopyWithCVPixelBufferPoolForBuffer:v59];
      }

      else
      {
        v60 = CVPixelBufferRetain(v59);
      }

      v69 = v60;
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __121__ARPersonSegmentationTechnique_runNeuralNetworkWithImageData_originalImageData_regionOfInterest_rotationOfResultTensor___block_invoke_26;
      v82[3] = &__block_descriptor_40_e5_v8__0l;
      v82[4] = v60;
      v70 = [ARSegmentationData alloc];
      [v12 timestamp];
      v71 = [(ARSegmentationData *)v70 initWithTimestamp:v69 segmentationBuffer:?];
      v87 = v71;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
      [v11 timestamp];
      [(ARPersonSegmentationTechnique *)self _endMLCreateResultSignpostWithTimestamp:?];

      __121__ARPersonSegmentationTechnique_runNeuralNetworkWithImageData_originalImageData_regionOfInterest_rotationOfResultTensor___block_invoke_26(v82);
      goto LABEL_49;
    }

    if (ARShouldUseLogTypeError_onceToken_14 != -1)
    {
      [ARPersonSegmentationTechnique runNeuralNetworkWithImageData:originalImageData:regionOfInterest:rotationOfResultTensor:];
    }

    v64 = ARShouldUseLogTypeError_internalOSVersion_14;
    v65 = _ARLogTechnique_10();
    v66 = v65;
    if (v64 == 1)
    {
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v67 = objc_opt_class();
        v68 = NSStringFromClass(v67);
        *buf = 138543874;
        v89 = v68;
        v90 = 2048;
        v91 = self;
        v92 = 1024;
        LODWORD(v93) = v63;
        _os_log_impl(&dword_1C241C000, v66, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to resample pixel buffer: %i", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      v77 = objc_opt_class();
      v78 = NSStringFromClass(v77);
      *buf = 138543874;
      v89 = v78;
      v90 = 2048;
      v91 = self;
      v92 = 1024;
      LODWORD(v93) = v63;
      _os_log_impl(&dword_1C241C000, v66, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to resample pixel buffer: %i", buf, 0x1Cu);
    }

    v84(v83);
  }

  else
  {
    if (ARShouldUseLogTypeError_onceToken_14 != -1)
    {
      [ARPersonSegmentationTechnique runNeuralNetworkWithImageData:originalImageData:regionOfInterest:rotationOfResultTensor:];
    }

    v72 = ARShouldUseLogTypeError_internalOSVersion_14;
    v73 = _ARLogTechnique_10();
    v74 = v73;
    if (v72 == 1)
    {
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v75 = objc_opt_class();
        v76 = NSStringFromClass(v75);
        *buf = 138543618;
        v89 = v76;
        v90 = 2048;
        v91 = self;
        _os_log_impl(&dword_1C241C000, v74, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to create scaled person segmentation buffer", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      v79 = objc_opt_class();
      v80 = NSStringFromClass(v79);
      *buf = 138543618;
      v89 = v80;
      v90 = 2048;
      v91 = self;
      _os_log_impl(&dword_1C241C000, v74, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to create scaled person segmentation buffer", buf, 0x16u);
    }
  }

  v14 = 0;
LABEL_49:

LABEL_50:

  return v14;
}

- (__CVBuffer)_createCopyWithCVPixelBufferPoolForBuffer:(__CVBuffer *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v8 = ARCreateCVPixelBufferFromPool(&self->_outputSegmentationCopyPixelBufferPool, PixelFormatType, self, @"Copied person segmentation output", Width, Height);
  if (!v8)
  {
    if (ARShouldUseLogTypeError_onceToken_14 != -1)
    {
      [ARPersonSegmentationTechnique _prepareOnce:];
    }

    v18 = ARShouldUseLogTypeError_internalOSVersion_14;
    v19 = _ARLogTechnique_10();
    v20 = v19;
    if (v18 == 1)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v29 = 138543618;
        v30 = v22;
        v31 = 2048;
        v32 = self;
        v23 = "%{public}@ <%p>: Failed to create a copied buffer for person segmentation result";
        v24 = v20;
        v25 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&dword_1C241C000, v24, v25, v23, &v29, 0x16u);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v26 = objc_opt_class();
      v22 = NSStringFromClass(v26);
      v29 = 138543618;
      v30 = v22;
      v31 = 2048;
      v32 = self;
      v23 = "Error: %{public}@ <%p>: Failed to create a copied buffer for person segmentation result";
      v24 = v20;
      v25 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }

    return 0;
  }

  v9 = v8;
  if ((ARPixelBufferCopy(a3, v8) & 1) == 0)
  {
    if (ARShouldUseLogTypeError_onceToken_14 != -1)
    {
      [ARPersonSegmentationTechnique _prepareOnce:];
    }

    v10 = ARShouldUseLogTypeError_internalOSVersion_14;
    v11 = _ARLogTechnique_10();
    v12 = v11;
    if (v10 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v29 = 138543618;
        v30 = v14;
        v31 = 2048;
        v32 = self;
        v15 = "%{public}@ <%p>: Failed to copy for person segmentation result";
        v16 = v12;
        v17 = OS_LOG_TYPE_ERROR;
LABEL_19:
        _os_log_impl(&dword_1C241C000, v16, v17, v15, &v29, 0x16u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v14 = NSStringFromClass(v27);
      v29 = 138543618;
      v30 = v14;
      v31 = 2048;
      v32 = self;
      v15 = "Error: %{public}@ <%p>: Failed to copy for person segmentation result";
      v16 = v12;
      v17 = OS_LOG_TYPE_INFO;
      goto LABEL_19;
    }

    CVPixelBufferRelease(v9);
    return 0;
  }

  return v9;
}

@end
@interface ARDepthEstimationTechnique
- (ARDepthEstimationTechnique)init;
- (id)_fullDescription;
- (id)createResultDataFromTensors:(id *)tensors numberOfOutputTensors:(unint64_t)outputTensors imageDataForNeuralNetwork:(id)network inputImageData:(id)data rotationNeeded:(int64_t)needed regionOfInterest:(CGSize)interest;
- (id)resultDataClasses;
- (void)dealloc;
@end

@implementation ARDepthEstimationTechnique

- (ARDepthEstimationTechnique)init
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.depthestimationtechnique");
  v4 = [objc_alloc(MEMORY[0x1E698C130]) initWithInputPrioritization:1];
  inferenceDescriptor = [v4 inferenceDescriptor];
  colorInput = [inferenceDescriptor colorInput];
  name = [colorInput name];

  inferenceDescriptor2 = [v4 inferenceDescriptor];
  depthOutput = [inferenceDescriptor2 depthOutput];
  name2 = [depthOutput name];

  inferenceDescriptor3 = [v4 inferenceDescriptor];
  networkURL = [inferenceDescriptor3 networkURL];

  inferenceDescriptor4 = [v4 inferenceDescriptor];
  colorInput2 = [inferenceDescriptor4 colorInput];
  imageDescriptor = [colorInput2 imageDescriptor];
  [imageDescriptor sizeForLayout:1];
  v17 = v16;
  v19 = v18;

  v27[0] = name;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v26 = name2;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  path = [networkURL path];
  v25.receiver = self;
  v25.super_class = ARDepthEstimationTechnique;
  v23 = [(ARMLImageProcessingTechnique *)&v25 initWithDispatchQueue:v3 inputTensorNames:v20 outputTensorNames:v21 networkInputScaleBeforeRotation:path networkFilePath:v17, v19];

  if (v23)
  {
    v23->_outputPixelBufferPool = 0;
    v23->_scaledOutputPixelBufferPool = 0;
    v23->_alphaChannelPixelBufferPool = 0;
  }

  return v23;
}

- (void)dealloc
{
  outputPixelBufferPool = self->_outputPixelBufferPool;
  if (outputPixelBufferPool)
  {
    CVPixelBufferPoolRelease(outputPixelBufferPool);
    self->_outputPixelBufferPool = 0;
  }

  scaledOutputPixelBufferPool = self->_scaledOutputPixelBufferPool;
  if (scaledOutputPixelBufferPool)
  {
    CVPixelBufferPoolRelease(scaledOutputPixelBufferPool);
    self->_scaledOutputPixelBufferPool = 0;
  }

  v5.receiver = self;
  v5.super_class = ARDepthEstimationTechnique;
  [(ARMLImageProcessingTechnique *)&v5 dealloc];
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)_fullDescription
{
  v3 = MEMORY[0x1E696AD60];
  v16.receiver = self;
  v16.super_class = ARDepthEstimationTechnique;
  _fullDescription = [(ARImageBasedTechnique *)&v16 _fullDescription];
  v5 = [v3 stringWithFormat:@"%@\n", _fullDescription];

  _fullDescription2 = [(ARImageRotationTechnique *)self->_rotationTechnique _fullDescription];
  v7 = [_fullDescription2 description];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
  [v5 appendFormat:@"\tRotation Technique: %@\n\n", v8];

  v9 = CVPixelBufferPoolGetPixelBufferAttributes(self->_outputPixelBufferPool);
  v10 = [v9 description];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
  [v5 appendFormat:@"\tOutputPixelBufferPool attr: %@\n", v11];

  v12 = CVPixelBufferPoolGetPixelBufferAttributes(self->_scaledOutputPixelBufferPool);
  v13 = [v12 description];
  v14 = [v13 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
  [v5 appendFormat:@"\tScaledOutputPixelBufferPool attr: %@\n", v14];

  return v5;
}

- (id)createResultDataFromTensors:(id *)tensors numberOfOutputTensors:(unint64_t)outputTensors imageDataForNeuralNetwork:(id)network inputImageData:(id)data rotationNeeded:(int64_t)needed regionOfInterest:(CGSize)interest
{
  height = interest.height;
  width = interest.width;
  v60 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  var0 = tensors->var0;
  v15 = tensors->var3[0];
  var4 = tensors->var4;
  var5 = tensors->var5;
  v18 = ARCreateCVPixelBufferFromPool(&self->_outputPixelBufferPool, 1717855600, self, @"Estimated Depth Map", var4, var5);
  v19 = v18;
  if (!v18)
  {
    goto LABEL_35;
  }

  CVPixelBufferLockBaseAddress(v18, 0);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v19);
  BaseAddress = CVPixelBufferGetBaseAddress(v19);
  [dataCopy imageResolution];
  v23 = v22;
  [dataCopy cameraIntrinsics];
  if (needed == -90 || needed == 90)
  {
    v26 = height;
  }

  else
  {
    v26 = width;
  }

  if (var5)
  {
    v27 = 0;
    v28 = v26;
    v29 = v28 / v23;
    v30 = (v29 * v24) / 191.40249;
    do
    {
      v31 = var4;
      v32 = BaseAddress;
      for (i = var0; v31; --v31)
      {
        v34 = *i++;
        *v32++ = v34 * v30;
      }

      ++v27;
      var0 = (var0 + v15);
      BaseAddress = (BaseAddress + BytesPerRow);
    }

    while (v27 != var5);
  }

  CVPixelBufferUnlockBaseAddress(v19, 0);
  if (var4 == width && var5 == height)
  {
    v36 = v19;
    goto LABEL_25;
  }

  v36 = ARCreateCVPixelBufferFromPool(&self->_scaledOutputPixelBufferPool, 1717855600, self, @"Scaled Depth", width, height);
  if (!v36)
  {
    CVPixelBufferRelease(v19);
LABEL_35:
    v50 = 0;
    goto LABEL_36;
  }

  v37 = ARResizeBufferWithNearestNeighbors(v19, v36, 4uLL);
  if (v37)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARDepthEstimationTechnique createResultDataFromTensors:numberOfOutputTensors:imageDataForNeuralNetwork:inputImageData:rotationNeeded:regionOfInterest:];
    }

    v38 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v39 = _ARLogTechnique();
    v40 = v39;
    if (v38 == 1)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v54 = 138543874;
        v55 = v42;
        v56 = 2048;
        selfCopy2 = self;
        v58 = 1024;
        v59 = v37;
        _os_log_impl(&dword_1C241C000, v40, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to resample pixel buffer: %i", &v54, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      v54 = 138543874;
      v55 = v52;
      v56 = 2048;
      selfCopy2 = self;
      v58 = 1024;
      v59 = v37;
      _os_log_impl(&dword_1C241C000, v40, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to resample pixel buffer: %i", &v54, 0x1Cu);
    }

    CVPixelBufferRelease(v19);
    CVPixelBufferRelease(v36);
    goto LABEL_35;
  }

  CVPixelBufferRelease(v19);
LABEL_25:
  v43 = objc_opt_new();
  [v43 setPixelBuffer:v36];
  CVPixelBufferRelease(v36);
  rotationTechnique = self->_rotationTechnique;
  if (!rotationTechnique || [(ARImageRotationTechnique *)rotationTechnique rotationAngle]!= needed || [(ARImageRotationTechnique *)self->_rotationTechnique mirrorMode])
  {
    v45 = [[ARImageRotationTechnique alloc] initWithRotation:needed mirror:0];
    v46 = self->_rotationTechnique;
    self->_rotationTechnique = v45;
  }

  v47 = [(ARImageRotationTechnique *)self->_rotationTechnique processData:v43];
  v48 = [ARMLDepthData alloc];
  [dataCopy timestamp];
  v50 = -[ARMLDepthData initWithTimestamp:depthBuffer:source:](v48, "initWithTimestamp:depthBuffer:source:", [v47 pixelBuffer], 1, v49);

LABEL_36:

  return v50;
}

@end
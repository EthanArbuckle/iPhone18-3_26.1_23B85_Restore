@interface ARExposureLightEstimationTechnique
- (ARExposureLightEstimationTechnique)init;
- (BOOL)isBusy;
- (id).cxx_construct;
- (id)processData:(id)data;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
@end

@implementation ARExposureLightEstimationTechnique

- (ARExposureLightEstimationTechnique)init
{
  v6.receiver = self;
  v6.super_class = ARExposureLightEstimationTechnique;
  v2 = [(ARTechnique *)&v6 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(1);
    resultSemaphore = v2->_resultSemaphore;
    v2->_resultSemaphore = v3;
  }

  return v2;
}

- (BOOL)isBusy
{
  v3 = dispatch_semaphore_wait(self->_resultSemaphore, 0);
  if (!v3)
  {
    dispatch_semaphore_signal(self->_resultSemaphore);
  }

  return v3 != 0;
}

- (id)processData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v5 = dataCopy;
    temperature = [v5 temperature];
    self->_temperature = arkit::mapColorTemperature(temperature, v7);
    [v5 exposureTargetOffset];
    v10 = ARMapExposureOffset(v8);
    self->_lightIntensity = arkit::ExponentialSmoother<float>::step(&self->_smoother, &v10, 1.0 / [v5 captureFramesPerSecond], 0.016667, 0.2);
    dispatch_semaphore_signal(self->_resultSemaphore);
  }

  return dataCopy;
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  v14[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v7 = objc_opt_new();
  v8 = [[ARLightEstimate alloc] initWithAmbientIntensity:self->_lightIntensity * 1000.0 temperature:self->_temperature];
  [v7 setLightEstimate:v8];

  dispatch_semaphore_signal(self->_resultSemaphore);
  lightEstimate = [v7 lightEstimate];
  [lightEstimate ambientIntensity];
  kdebug_trace();

  delegate = [(ARTechnique *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(ARTechnique *)self delegate];
    v14[0] = v7;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [delegate2 technique:self didOutputResultData:v13 timestamp:contextCopy context:timestamp];
  }
}

- (id).cxx_construct
{
  *(self + 72) = 0;
  *(self + 76) = 0;
  return self;
}

@end
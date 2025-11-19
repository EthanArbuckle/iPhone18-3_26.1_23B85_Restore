@interface ARExposureLightEstimationTechnique
- (ARExposureLightEstimationTechnique)init;
- (BOOL)isBusy;
- (id).cxx_construct;
- (id)processData:(id)a3;
- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4;
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

- (id)processData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v5 = v4;
    v6 = [v5 temperature];
    self->_temperature = arkit::mapColorTemperature(v6, v7);
    [v5 exposureTargetOffset];
    v10 = ARMapExposureOffset(v8);
    self->_lightIntensity = arkit::ExponentialSmoother<float>::step(&self->_smoother, &v10, 1.0 / [v5 captureFramesPerSecond], 0.016667, 0.2);
    dispatch_semaphore_signal(self->_resultSemaphore);
  }

  return v4;
}

- (void)requestResultDataAtTimestamp:(double)a3 context:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v7 = objc_opt_new();
  v8 = [[ARLightEstimate alloc] initWithAmbientIntensity:self->_lightIntensity * 1000.0 temperature:self->_temperature];
  [v7 setLightEstimate:v8];

  dispatch_semaphore_signal(self->_resultSemaphore);
  v9 = [v7 lightEstimate];
  [v9 ambientIntensity];
  kdebug_trace();

  v10 = [(ARTechnique *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(ARTechnique *)self delegate];
    v14[0] = v7;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v12 technique:self didOutputResultData:v13 timestamp:v6 context:a3];
  }
}

- (id).cxx_construct
{
  *(self + 72) = 0;
  *(self + 76) = 0;
  return self;
}

@end
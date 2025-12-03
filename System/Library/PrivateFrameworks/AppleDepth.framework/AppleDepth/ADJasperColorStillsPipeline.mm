@interface ADJasperColorStillsPipeline
- (ADJasperColorStillsPipeline)init;
- (ADJasperColorStillsPipeline)initWithParameters:(id)parameters;
- (int64_t)postProcessDepth:(__CVBuffer *)depth depthOutput:(__CVBuffer *)output depthUnits:(unint64_t)units;
- (int64_t)postProcessWithDepth:(__CVBuffer *)depth depthOutput:(__CVBuffer *)output;
- (int64_t)processJasperToColorCorrectionIntermediateResultWithBackendEspressoFeaturesOutput:(const float *)output frontendEspressoFeaturesInput:(float *)input featuresDimensions:(id)dimensions;
- (int64_t)projectJasperPoints:(id)points cropTo:(CGRect)to rotateBy:(int64_t)by projectedPointsBuffer:(__CVBuffer *)buffer;
- (int64_t)projectJasperPointsForJasperToColorTransformCorrection:(id)correction cropTo:(CGRect)to rotateBy:(int64_t)by projectedPointsBuffer:(__CVBuffer *)buffer;
- (uint64_t)postProcessJasperToColorCorrectionWithAngles:(__n128)angles errors:(__n128)errors originalTransform:(__n128)transform correctedTransform:(float)correctedTransform colorCameraCalibration:(uint64_t)calibration colorImageScale:(double *)scale transformCorrectionResults:(double *)results;
- (uint64_t)postProcessJasperToColorTransformCorrection:(float32x4_t)correction originalTransform:(float32x4_t)transform correctedTransform:(__n128)correctedTransform;
@end

@implementation ADJasperColorStillsPipeline

- (uint64_t)postProcessJasperToColorCorrectionWithAngles:(__n128)angles errors:(__n128)errors originalTransform:(__n128)transform correctedTransform:(float)correctedTransform colorCameraCalibration:(uint64_t)calibration colorImageScale:(double *)scale transformCorrectionResults:(double *)results
{
  v18 = a11;
  kdebug_trace();
  v19 = -22953;
  if (scale && results)
  {
    [v18 intrinsicMatrix];
    self[20] = 500.0 / (correctedTransform * v20);
    v21 = objc_opt_new();
    [v21 setRotation:*scale];
    [v21 setStd:*results];
    if (a12)
    {
      v22 = v21;
      *a12 = v21;
    }

    v19 = [self postProcessJasperToColorTransformCorrection:v21 originalTransform:a10 correctedTransform:{a2.n128_f64[0], angles.n128_f64[0], errors.n128_f64[0], transform.n128_f64[0], *&a2, *&angles, *&errors, *&transform}];
  }

  kdebug_trace();

  return v19;
}

- (int64_t)processJasperToColorCorrectionIntermediateResultWithBackendEspressoFeaturesOutput:(const float *)output frontendEspressoFeaturesInput:(float *)input featuresDimensions:(id)dimensions
{
  dimensionsCopy = dimensions;
  if ([dimensionsCopy count])
  {
    v8 = [dimensionsCopy objectAtIndexedSubscript:0];
    unsignedIntValue = [v8 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 1;
  }

  if ([dimensionsCopy count] < 2)
  {
    unsignedIntValue2 = 1;
  }

  else
  {
    v10 = [dimensionsCopy objectAtIndexedSubscript:1];
    unsignedIntValue2 = [v10 unsignedIntValue];
  }

  if ([dimensionsCopy count] < 3)
  {
    goto LABEL_10;
  }

  v12 = [dimensionsCopy objectAtIndexedSubscript:2];
  unsignedIntValue3 = [v12 unsignedIntValue];

  if (unsignedIntValue3)
  {
    if (unsignedIntValue3 == 1)
    {
LABEL_10:
      memcpy(input, output, 4 * unsignedIntValue2 * unsignedIntValue);
      goto LABEL_11;
    }

    if (unsignedIntValue2 && unsignedIntValue)
    {
      v15 = unsignedIntValue2 * unsignedIntValue;
      if (unsignedIntValue > 0xF)
      {
        v24 = 0;
        for (i = 0; i != unsignedIntValue3; ++i)
        {
          v26 = 0;
          v27 = 0;
          v28 = v24;
          v29 = i;
          do
          {
            v30 = unsignedIntValue;
            v31 = i + unsignedIntValue3 * v26;
            v32 = v28;
            do
            {
              input[v31] = output[v32];
              v31 += unsignedIntValue3;
              ++v32;
              --v30;
            }

            while (v30);
            ++v27;
            v29 += unsignedIntValue;
            v28 += unsignedIntValue;
            v26 += unsignedIntValue;
          }

          while (v27 != unsignedIntValue2);
          v24 += v15;
        }
      }

      else
      {
        v16 = 0;
        for (j = 0; j != unsignedIntValue3; ++j)
        {
          v18 = 0;
          v19 = v16;
          v20 = j;
          do
          {
            v21 = v19;
            v22 = v20;
            v23 = unsignedIntValue;
            do
            {
              input[v22] = output[v21];
              v22 += unsignedIntValue3;
              ++v21;
              --v23;
            }

            while (v23);
            ++v18;
            v20 += unsignedIntValue * unsignedIntValue3;
            v19 += unsignedIntValue;
          }

          while (v18 != unsignedIntValue2);
          v16 += v15;
        }
      }
    }
  }

LABEL_11:

  return 0;
}

- (uint64_t)postProcessJasperToColorTransformCorrection:(float32x4_t)correction originalTransform:(float32x4_t)transform correctedTransform:(__n128)correctedTransform
{
  v10 = a7;
  v11 = v10;
  if (v10)
  {
    [v10 std];
    v13 = vmulq_f32(v12, self[4]);
    if (((v13.f32[2] + vaddv_f32(*v13.f32)) / 3.0) <= self[5].f32[1])
    {
      [v11 rotation];
      [ADUtils calcRotationMatrix:*vmulq_n_f32(v18, self[5].f32[0]).i64];
      v16 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, a2.f32[0]), v20, *a2.f32, 1), v21, a2, 2);
      correctionCopy = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, correction.f32[0]), v20, *correction.f32, 1), v21, correction, 2);
      transformCopy = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, transform.f32[0]), v20, *transform.f32, 1), v21, transform, 2);
    }

    else
    {
      correctionCopy = correction;
      transformCopy = transform;
      v16 = a2;
    }

    v17 = 0;
    *a8 = v16;
    *(a8 + 16) = correctionCopy;
    *(a8 + 32) = transformCopy;
    *(a8 + 48) = correctedTransform;
  }

  else
  {
    v17 = -22953;
  }

  return v17;
}

- (int64_t)postProcessDepth:(__CVBuffer *)depth depthOutput:(__CVBuffer *)output depthUnits:(unint64_t)units
{
  kdebug_trace();
  v7 = [ADUtils postProcessDepth:depth depthOutput:output];
  kdebug_trace();
  return v7;
}

- (int64_t)postProcessWithDepth:(__CVBuffer *)depth depthOutput:(__CVBuffer *)output
{
  kdebug_trace();
  v6 = [ADUtils postProcessDepth:depth depthOutput:output];
  kdebug_trace();
  return v6;
}

- (int64_t)projectJasperPointsForJasperToColorTransformCorrection:(id)correction cropTo:(CGRect)to rotateBy:(int64_t)by projectedPointsBuffer:(__CVBuffer *)buffer
{
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  correctionCopy = correction;
  kdebug_trace();
  pointCloudFilterForTransformCorrection = [(ADJasperColorStillsPipelineParameters *)self->_pipelineParameters pointCloudFilterForTransformCorrection];
  v15 = [correctionCopy projectJasperPointsFilteredBy:pointCloudFilterForTransformCorrection croppedBy:by rotatedBy:buffer andScaledInto:{x, y, width, height}];

  kdebug_trace();
  return v15;
}

- (int64_t)projectJasperPoints:(id)points cropTo:(CGRect)to rotateBy:(int64_t)by projectedPointsBuffer:(__CVBuffer *)buffer
{
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  pointsCopy = points;
  kdebug_trace();
  pointCloudFilter = [(ADJasperColorStillsPipelineParameters *)self->_pipelineParameters pointCloudFilter];
  v15 = [pointsCopy projectJasperPointsFilteredBy:pointCloudFilter croppedBy:by rotatedBy:buffer andScaledInto:{x, y, width, height}];

  kdebug_trace();
  return v15;
}

- (ADJasperColorStillsPipeline)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v30 = 335684784;
  v31 = 0u;
  v32 = 0u;
  kdebug_trace();
  v29.receiver = self;
  v29.super_class = ADJasperColorStillsPipeline;
  v5 = [(ADJasperColorStillsPipeline *)&v29 init];
  if (v5)
  {
    if (!parametersCopy)
    {
      parametersCopy = objc_opt_new();
    }

    objc_storeStrong(&v5->_pipelineParameters, parametersCopy);
    v5->_STDThreshold = 6.0;
    *v5->_STDWeights = xmmword_240406F60;
    deviceName = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
    v7 = [ADDeviceConfiguration getLidarType:deviceName];

    if (v7 == 2)
    {
      v5->_STDThreshold = 10.0;
      v8 = @"SIPNetFrontend";
      v9 = @"SIPNetBackend";
      v10 = @"NMPPeridot";
    }

    else
    {
      v8 = @"SIJNetFrontend";
      v9 = @"SIJNetBackend";
      v10 = @"NMP";
    }

    v11 = [ADNetworkProvider providerForNetwork:v10];
    networkProvider = v5->_networkProvider;
    v5->_networkProvider = v11;

    v13 = [ADNetworkProvider providerForNetwork:v9];
    correctionBackendNetworkProvider = v5->_correctionBackendNetworkProvider;
    v5->_correctionBackendNetworkProvider = v13;

    v15 = [ADNetworkProvider providerForNetwork:v8];
    correctionFrontendNetworkProvider = v5->_correctionFrontendNetworkProvider;
    v5->_correctionFrontendNetworkProvider = v15;

    if (!v5->_networkProvider)
    {
      v27 = 0;
      goto LABEL_11;
    }

    v17 = [[ADEspressoStillImageInferenceDescriptor alloc] initWithNetworkProvider:v5->_networkProvider];
    inferenceDesc = v5->_inferenceDesc;
    v5->_inferenceDesc = v17;

    v19 = [[ADEspressoJasperToColorTransformCorrectionBackendInfrerenceDescriptor alloc] initWithNetworkProvider:v5->_correctionBackendNetworkProvider];
    correctionBackendInferenceDesc = v5->_correctionBackendInferenceDesc;
    v5->_correctionBackendInferenceDesc = v19;

    v21 = [[ADEspressoJasperToColorTransformCorrectionFrontendInfrerenceDescriptor alloc] initWithNetworkProvider:v5->_correctionFrontendNetworkProvider];
    correctionFrontendInferenceDesc = v5->_correctionFrontendInferenceDesc;
    v5->_correctionFrontendInferenceDesc = v21;

    depthOutput = [(ADEspressoStillImageInferenceDescriptor *)v5->_inferenceDesc depthOutput];
    imageDescriptor = [depthOutput imageDescriptor];
    v25 = [imageDescriptor cloneWithDifferentFormat:1717856627];
    processedDepthDesc = v5->_processedDepthDesc;
    v5->_processedDepthDesc = v25;
  }

  v27 = v5;
LABEL_11:
  kdebug_trace();

  return v27;
}

- (ADJasperColorStillsPipeline)init
{
  v3 = objc_opt_new();
  v4 = [(ADJasperColorStillsPipeline *)self initWithParameters:v3];

  return v4;
}

@end
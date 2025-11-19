@interface ADJasperColorStillsPipeline
- (ADJasperColorStillsPipeline)init;
- (ADJasperColorStillsPipeline)initWithParameters:(id)a3;
- (int64_t)postProcessDepth:(__CVBuffer *)a3 depthOutput:(__CVBuffer *)a4 depthUnits:(unint64_t)a5;
- (int64_t)postProcessWithDepth:(__CVBuffer *)a3 depthOutput:(__CVBuffer *)a4;
- (int64_t)processJasperToColorCorrectionIntermediateResultWithBackendEspressoFeaturesOutput:(const float *)a3 frontendEspressoFeaturesInput:(float *)a4 featuresDimensions:(id)a5;
- (int64_t)projectJasperPoints:(id)a3 cropTo:(CGRect)a4 rotateBy:(int64_t)a5 projectedPointsBuffer:(__CVBuffer *)a6;
- (int64_t)projectJasperPointsForJasperToColorTransformCorrection:(id)a3 cropTo:(CGRect)a4 rotateBy:(int64_t)a5 projectedPointsBuffer:(__CVBuffer *)a6;
- (uint64_t)postProcessJasperToColorCorrectionWithAngles:(__n128)a3 errors:(__n128)a4 originalTransform:(__n128)a5 correctedTransform:(float)a6 colorCameraCalibration:(uint64_t)a7 colorImageScale:(double *)a8 transformCorrectionResults:(double *)a9;
- (uint64_t)postProcessJasperToColorTransformCorrection:(float32x4_t)a3 originalTransform:(float32x4_t)a4 correctedTransform:(__n128)a5;
@end

@implementation ADJasperColorStillsPipeline

- (uint64_t)postProcessJasperToColorCorrectionWithAngles:(__n128)a3 errors:(__n128)a4 originalTransform:(__n128)a5 correctedTransform:(float)a6 colorCameraCalibration:(uint64_t)a7 colorImageScale:(double *)a8 transformCorrectionResults:(double *)a9
{
  v18 = a11;
  kdebug_trace();
  v19 = -22953;
  if (a8 && a9)
  {
    [v18 intrinsicMatrix];
    a1[20] = 500.0 / (a6 * v20);
    v21 = objc_opt_new();
    [v21 setRotation:*a8];
    [v21 setStd:*a9];
    if (a12)
    {
      v22 = v21;
      *a12 = v21;
    }

    v19 = [a1 postProcessJasperToColorTransformCorrection:v21 originalTransform:a10 correctedTransform:{a2.n128_f64[0], a3.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0], *&a2, *&a3, *&a4, *&a5}];
  }

  kdebug_trace();

  return v19;
}

- (int64_t)processJasperToColorCorrectionIntermediateResultWithBackendEspressoFeaturesOutput:(const float *)a3 frontendEspressoFeaturesInput:(float *)a4 featuresDimensions:(id)a5
{
  v7 = a5;
  if ([v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v8 unsignedIntValue];
  }

  else
  {
    v9 = 1;
  }

  if ([v7 count] < 2)
  {
    v11 = 1;
  }

  else
  {
    v10 = [v7 objectAtIndexedSubscript:1];
    v11 = [v10 unsignedIntValue];
  }

  if ([v7 count] < 3)
  {
    goto LABEL_10;
  }

  v12 = [v7 objectAtIndexedSubscript:2];
  v13 = [v12 unsignedIntValue];

  if (v13)
  {
    if (v13 == 1)
    {
LABEL_10:
      memcpy(a4, a3, 4 * v11 * v9);
      goto LABEL_11;
    }

    if (v11 && v9)
    {
      v15 = v11 * v9;
      if (v9 > 0xF)
      {
        v24 = 0;
        for (i = 0; i != v13; ++i)
        {
          v26 = 0;
          v27 = 0;
          v28 = v24;
          v29 = i;
          do
          {
            v30 = v9;
            v31 = i + v13 * v26;
            v32 = v28;
            do
            {
              a4[v31] = a3[v32];
              v31 += v13;
              ++v32;
              --v30;
            }

            while (v30);
            ++v27;
            v29 += v9;
            v28 += v9;
            v26 += v9;
          }

          while (v27 != v11);
          v24 += v15;
        }
      }

      else
      {
        v16 = 0;
        for (j = 0; j != v13; ++j)
        {
          v18 = 0;
          v19 = v16;
          v20 = j;
          do
          {
            v21 = v19;
            v22 = v20;
            v23 = v9;
            do
            {
              a4[v22] = a3[v21];
              v22 += v13;
              ++v21;
              --v23;
            }

            while (v23);
            ++v18;
            v20 += v9 * v13;
            v19 += v9;
          }

          while (v18 != v11);
          v16 += v15;
        }
      }
    }
  }

LABEL_11:

  return 0;
}

- (uint64_t)postProcessJasperToColorTransformCorrection:(float32x4_t)a3 originalTransform:(float32x4_t)a4 correctedTransform:(__n128)a5
{
  v10 = a7;
  v11 = v10;
  if (v10)
  {
    [v10 std];
    v13 = vmulq_f32(v12, a1[4]);
    if (((v13.f32[2] + vaddv_f32(*v13.f32)) / 3.0) <= a1[5].f32[1])
    {
      [v11 rotation];
      [ADUtils calcRotationMatrix:*vmulq_n_f32(v18, a1[5].f32[0]).i64];
      v16 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, a2.f32[0]), v20, *a2.f32, 1), v21, a2, 2);
      v15 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, a3.f32[0]), v20, *a3.f32, 1), v21, a3, 2);
      v14 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, a4.f32[0]), v20, *a4.f32, 1), v21, a4, 2);
    }

    else
    {
      v15 = a3;
      v14 = a4;
      v16 = a2;
    }

    v17 = 0;
    *a8 = v16;
    *(a8 + 16) = v15;
    *(a8 + 32) = v14;
    *(a8 + 48) = a5;
  }

  else
  {
    v17 = -22953;
  }

  return v17;
}

- (int64_t)postProcessDepth:(__CVBuffer *)a3 depthOutput:(__CVBuffer *)a4 depthUnits:(unint64_t)a5
{
  kdebug_trace();
  v7 = [ADUtils postProcessDepth:a3 depthOutput:a4];
  kdebug_trace();
  return v7;
}

- (int64_t)postProcessWithDepth:(__CVBuffer *)a3 depthOutput:(__CVBuffer *)a4
{
  kdebug_trace();
  v6 = [ADUtils postProcessDepth:a3 depthOutput:a4];
  kdebug_trace();
  return v6;
}

- (int64_t)projectJasperPointsForJasperToColorTransformCorrection:(id)a3 cropTo:(CGRect)a4 rotateBy:(int64_t)a5 projectedPointsBuffer:(__CVBuffer *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  kdebug_trace();
  v14 = [(ADJasperColorStillsPipelineParameters *)self->_pipelineParameters pointCloudFilterForTransformCorrection];
  v15 = [v13 projectJasperPointsFilteredBy:v14 croppedBy:a5 rotatedBy:a6 andScaledInto:{x, y, width, height}];

  kdebug_trace();
  return v15;
}

- (int64_t)projectJasperPoints:(id)a3 cropTo:(CGRect)a4 rotateBy:(int64_t)a5 projectedPointsBuffer:(__CVBuffer *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  kdebug_trace();
  v14 = [(ADJasperColorStillsPipelineParameters *)self->_pipelineParameters pointCloudFilter];
  v15 = [v13 projectJasperPointsFilteredBy:v14 croppedBy:a5 rotatedBy:a6 andScaledInto:{x, y, width, height}];

  kdebug_trace();
  return v15;
}

- (ADJasperColorStillsPipeline)initWithParameters:(id)a3
{
  v4 = a3;
  v30 = 335684784;
  v31 = 0u;
  v32 = 0u;
  kdebug_trace();
  v29.receiver = self;
  v29.super_class = ADJasperColorStillsPipeline;
  v5 = [(ADJasperColorStillsPipeline *)&v29 init];
  if (v5)
  {
    if (!v4)
    {
      v4 = objc_opt_new();
    }

    objc_storeStrong(&v5->_pipelineParameters, v4);
    v5->_STDThreshold = 6.0;
    *v5->_STDWeights = xmmword_240406F60;
    v6 = [(ADPipelineParameters *)v5->_pipelineParameters deviceName];
    v7 = [ADDeviceConfiguration getLidarType:v6];

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

    v23 = [(ADEspressoStillImageInferenceDescriptor *)v5->_inferenceDesc depthOutput];
    v24 = [v23 imageDescriptor];
    v25 = [v24 cloneWithDifferentFormat:1717856627];
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
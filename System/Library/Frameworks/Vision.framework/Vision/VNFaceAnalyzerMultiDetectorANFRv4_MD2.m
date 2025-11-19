@interface VNFaceAnalyzerMultiDetectorANFRv4_MD2
+ (id)_inferenceDescriptorForModelConfiguredWithOptions:(id)a3 error:(id *)a4;
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3;
+ (id)espressoModelPathForConfigurationOptions:(id)a3 error:(id *)a4;
+ (unsigned)networkRequiredInputImagePixelFormatForConfigurationOptions:(id)a3;
@end

@implementation VNFaceAnalyzerMultiDetectorANFRv4_MD2

+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3
{
  v3 = [a1 _inferenceDescriptorForModelConfiguredWithOptions:a3 error:0];
  v4 = [v3 onlyInputImage];
  v5 = [v4 name];

  return v5;
}

+ (unsigned)networkRequiredInputImagePixelFormatForConfigurationOptions:(id)a3
{
  v3 = [a1 _inferenceDescriptorForModelConfiguredWithOptions:a3 error:0];
  v4 = [v3 onlyInputImage];
  v5 = [v4 pixelFormatType];

  return v5;
}

+ (id)espressoModelPathForConfigurationOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [VNValidationUtilities computeDeviceForKey:@"VNDetectorInternalOption_ModelComputeDevice" inOptions:v6 error:a4];
  if (v7)
  {
    v8 = [a1 _inferenceDescriptorForModelConfiguredWithOptions:v6 error:a4];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 modelPathForComputeDevice:v7 error:a4];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_inferenceDescriptorForModelConfiguredWithOptions:(id)a3 error:(id *)a4
{
  v4 = [MEMORY[0x1E69DF910] FPrev4_0FArev1_4_MD2AndReturnError:a4];

  return v4;
}

@end
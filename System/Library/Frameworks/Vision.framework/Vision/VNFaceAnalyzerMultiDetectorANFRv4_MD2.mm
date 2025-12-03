@interface VNFaceAnalyzerMultiDetectorANFRv4_MD2
+ (id)_inferenceDescriptorForModelConfiguredWithOptions:(id)options error:(id *)error;
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)options;
+ (id)espressoModelPathForConfigurationOptions:(id)options error:(id *)error;
+ (unsigned)networkRequiredInputImagePixelFormatForConfigurationOptions:(id)options;
@end

@implementation VNFaceAnalyzerMultiDetectorANFRv4_MD2

+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)options
{
  v3 = [self _inferenceDescriptorForModelConfiguredWithOptions:options error:0];
  onlyInputImage = [v3 onlyInputImage];
  name = [onlyInputImage name];

  return name;
}

+ (unsigned)networkRequiredInputImagePixelFormatForConfigurationOptions:(id)options
{
  v3 = [self _inferenceDescriptorForModelConfiguredWithOptions:options error:0];
  onlyInputImage = [v3 onlyInputImage];
  pixelFormatType = [onlyInputImage pixelFormatType];

  return pixelFormatType;
}

+ (id)espressoModelPathForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [VNValidationUtilities computeDeviceForKey:@"VNDetectorInternalOption_ModelComputeDevice" inOptions:optionsCopy error:error];
  if (v7)
  {
    v8 = [self _inferenceDescriptorForModelConfiguredWithOptions:optionsCopy error:error];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 modelPathForComputeDevice:v7 error:error];
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

+ (id)_inferenceDescriptorForModelConfiguredWithOptions:(id)options error:(id *)error
{
  v4 = [MEMORY[0x1E69DF910] FPrev4_0FArev1_4_MD2AndReturnError:error];

  return v4;
}

@end
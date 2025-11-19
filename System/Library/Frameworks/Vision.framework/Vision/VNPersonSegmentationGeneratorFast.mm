@interface VNPersonSegmentationGeneratorFast
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3;
+ (id)outputMaskBlobNameToRequestKey;
+ (id)outputMaskBlobNames;
@end

@implementation VNPersonSegmentationGeneratorFast

+ (id)outputMaskBlobNameToRequestKey
{
  if (+[VNPersonSegmentationGeneratorFast outputMaskBlobNameToRequestKey]::onceToken != -1)
  {
    dispatch_once(&+[VNPersonSegmentationGeneratorFast outputMaskBlobNameToRequestKey]::onceToken, &__block_literal_global_39_23805);
  }

  v3 = +[VNPersonSegmentationGeneratorFast outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey;

  return v3;
}

void __67__VNPersonSegmentationGeneratorFast_outputMaskBlobNameToRequestKey__block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = VNPersonSegmentationGeneratorFastOutputBlobNameMask;
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = +[VNPersonSegmentationGeneratorFast outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey;
  +[VNPersonSegmentationGeneratorFast outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey = v2;
}

+ (id)outputMaskBlobNames
{
  if (+[VNPersonSegmentationGeneratorFast outputMaskBlobNames]::onceToken != -1)
  {
    dispatch_once(&+[VNPersonSegmentationGeneratorFast outputMaskBlobNames]::onceToken, &__block_literal_global_23809);
  }

  v3 = +[VNPersonSegmentationGeneratorFast outputMaskBlobNames]::outputMaskBlobNames;

  return v3;
}

void __56__VNPersonSegmentationGeneratorFast_outputMaskBlobNames__block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = VNPersonSegmentationGeneratorFastOutputBlobNameMask;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];
  v1 = +[VNPersonSegmentationGeneratorFast outputMaskBlobNames]::outputMaskBlobNames;
  +[VNPersonSegmentationGeneratorFast outputMaskBlobNames]::outputMaskBlobNames = v0;
}

+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3
{
  v3 = [a1 inputImageBlobName];

  return v3;
}

@end
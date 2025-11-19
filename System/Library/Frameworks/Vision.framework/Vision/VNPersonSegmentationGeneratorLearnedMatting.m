@interface VNPersonSegmentationGeneratorLearnedMatting
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3;
+ (id)outputMaskBlobNameToRequestKey;
+ (id)outputMaskBlobNames;
@end

@implementation VNPersonSegmentationGeneratorLearnedMatting

+ (id)outputMaskBlobNameToRequestKey
{
  if (+[VNPersonSegmentationGeneratorLearnedMatting outputMaskBlobNameToRequestKey]::onceToken != -1)
  {
    dispatch_once(&+[VNPersonSegmentationGeneratorLearnedMatting outputMaskBlobNameToRequestKey]::onceToken, &__block_literal_global_39_19877);
  }

  v3 = +[VNPersonSegmentationGeneratorLearnedMatting outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey;

  return v3;
}

void __77__VNPersonSegmentationGeneratorLearnedMatting_outputMaskBlobNameToRequestKey__block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = VNPersonSegmentationGeneratorLearnedMattingOutputBlobNameMask;
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = +[VNPersonSegmentationGeneratorLearnedMatting outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey;
  +[VNPersonSegmentationGeneratorLearnedMatting outputMaskBlobNameToRequestKey]::outputMaskBlobNameToRequestKey = v2;
}

+ (id)outputMaskBlobNames
{
  if (+[VNPersonSegmentationGeneratorLearnedMatting outputMaskBlobNames]::onceToken != -1)
  {
    dispatch_once(&+[VNPersonSegmentationGeneratorLearnedMatting outputMaskBlobNames]::onceToken, &__block_literal_global_19881);
  }

  v3 = +[VNPersonSegmentationGeneratorLearnedMatting outputMaskBlobNames]::outputMaskBlobNames;

  return v3;
}

void __66__VNPersonSegmentationGeneratorLearnedMatting_outputMaskBlobNames__block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = VNPersonSegmentationGeneratorLearnedMattingOutputBlobNameMask;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];
  v1 = +[VNPersonSegmentationGeneratorLearnedMatting outputMaskBlobNames]::outputMaskBlobNames;
  +[VNPersonSegmentationGeneratorLearnedMatting outputMaskBlobNames]::outputMaskBlobNames = v0;
}

+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3
{
  v3 = [a1 inputImageBlobName];

  return v3;
}

@end
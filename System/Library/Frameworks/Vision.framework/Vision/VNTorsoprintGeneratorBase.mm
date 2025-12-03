@interface VNTorsoprintGeneratorBase
+ (CGSize)torsoprintInputImageSizeForFaceOrientation:(int)orientation;
+ (Class)detectorClassForConfigurationOptions:(id)options error:(id *)error;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
@end

@implementation VNTorsoprintGeneratorBase

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (objc_opt_class() == self)
  {
    v13 = @"VNComputeStageMain";
    v8 = +[VNComputeDeviceUtilities mostPerformantComputeDevice];
    v12 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    v14[0] = v9;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___VNTorsoprintGeneratorBase;
    v7 = objc_msgSendSuper2(&v11, sel_supportedComputeStageDevicesForOptions_error_, optionsCopy, error);
  }

  return v7;
}

+ (Class)detectorClassForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (!v6)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_13;
  }

  if (![v6 specifiesRequestClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  requestRevision = [v6 requestRevision];
  if (requestRevision <= 3737841670)
  {
    if (requestRevision == 1 || requestRevision == 3737841666 || requestRevision == 3737841670)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((requestRevision - 3737841671) >= 2)
  {
LABEL_9:
    if (error)
    {
      [VNError errorForUnsupportedRequestSpecifier:v6];
      *error = v8 = 0;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_12:
  v8 = objc_opt_class();
LABEL_13:

  return v8;
}

+ (CGSize)torsoprintInputImageSizeForFaceOrientation:(int)orientation
{
  v3 = 0.0;
  v4 = 0.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end
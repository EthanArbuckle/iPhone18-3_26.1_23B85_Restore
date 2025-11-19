@interface VNOpticalFlowGenerator
+ (Class)detectorClassForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)supportedOutputPixelFormatsForOptions:(id)a3 error:(id *)a4;
- (id)validatedImageBuffersFromOptions:(id)a3 error:(id *)a4;
@end

@implementation VNOpticalFlowGenerator

+ (id)supportedOutputPixelFormatsForOptions:(id)a3 error:(id *)a4
{
  if (+[VNOpticalFlowGenerator supportedOutputPixelFormatsForOptions:error:]::onceToken != -1)
  {
    dispatch_once(&+[VNOpticalFlowGenerator supportedOutputPixelFormatsForOptions:error:]::onceToken, &__block_literal_global_11961);
  }

  v5 = +[VNOpticalFlowGenerator supportedOutputPixelFormatsForOptions:error:]::outputPixelFormats;

  return v5;
}

void __70__VNOpticalFlowGenerator_supportedOutputPixelFormatsForOptions_error___block_invoke()
{
  v0 = +[VNOpticalFlowGenerator supportedOutputPixelFormatsForOptions:error:]::outputPixelFormats;
  +[VNOpticalFlowGenerator supportedOutputPixelFormatsForOptions:error:]::outputPixelFormats = &unk_1F19C1FD8;
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__VNOpticalFlowGenerator_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNOpticalFlowGenerator configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNOpticalFlowGenerator configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNOpticalFlowGenerator configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __63__VNOpticalFlowGenerator_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNOpticalFlowGenerator;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNDetectorOption_PreferBackgroundProcessing"];
  v3 = [v2 copy];
  v4 = +[VNOpticalFlowGenerator configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNOpticalFlowGenerator configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (Class)detectorClassForConfigurationOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:v5 error:a4];
  if (!v6)
  {
    goto LABEL_11;
  }

  if ([v6 specifiesRequestClass:objc_opt_class()])
  {
    if ([v6 requestRevision] != 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    v8 = objc_opt_class();
    goto LABEL_12;
  }

  if ([v6 specifiesRequestClass:objc_opt_class()])
  {
    v7 = [v6 requestRevision];
    if (v7 == 1 || v7 == 2)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  if (a4)
  {
    [VNError errorForUnsupportedRequestSpecifier:v6];
    *a4 = v8 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v8 = 0;
LABEL_12:

  return v8;
}

- (id)validatedImageBuffersFromOptions:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v20 = 0;
  v7 = [VNValidationUtilities getArray:&v20 forKey:@"VNDetectorProcessOption_InputImageBuffers" inOptions:v6 withElementsOfClass:objc_opt_class() requiredMinimumCount:2 allowedMaximumCount:2 error:a4];
  v8 = v20;
  v9 = v8;
  if (v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v11)
    {
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v10);
          }

          if (![(VNDetector *)self validateImageBuffer:*(*(&v16 + 1) + 8 * i) error:a4])
          {

            goto LABEL_12;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v14 = v10;
  }

  else
  {
LABEL_12:
    v14 = 0;
  }

  return v14;
}

@end
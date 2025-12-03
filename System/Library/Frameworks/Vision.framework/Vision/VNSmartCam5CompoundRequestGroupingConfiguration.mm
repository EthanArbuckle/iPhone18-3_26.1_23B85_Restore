@interface VNSmartCam5CompoundRequestGroupingConfiguration
- (BOOL)preferBackgroundProcessing;
- (VNSmartCam5CompoundRequestGroupingConfiguration)initWithImageCropAndScaleOption:(unint64_t)option;
- (id)detectorConfigurationOptions;
- (id)processingDevice;
@end

@implementation VNSmartCam5CompoundRequestGroupingConfiguration

- (BOOL)preferBackgroundProcessing
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_originalRequests;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) preferBackgroundProcessing])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)processingDevice
{
  anyObject = [(NSMutableSet *)self->_originalRequests anyObject];
  processingDevice = [anyObject processingDevice];

  return processingDevice;
}

- (id)detectorConfigurationOptions
{
  v2 = [(NSMutableDictionary *)self->_detectorConfigurationOptions copy];

  return v2;
}

- (VNSmartCam5CompoundRequestGroupingConfiguration)initWithImageCropAndScaleOption:(unint64_t)option
{
  v11.receiver = self;
  v11.super_class = VNSmartCam5CompoundRequestGroupingConfiguration;
  v4 = [(VNSmartCam5CompoundRequestGroupingConfiguration *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_imageCropAndScaleOption = option;
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    originalRequests = v5->_originalRequests;
    v5->_originalRequests = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    detectorConfigurationOptions = v5->_detectorConfigurationOptions;
    v5->_detectorConfigurationOptions = v8;
  }

  return v5;
}

@end
@interface VNCoreSceneUnderstandingCompoundRequestDetectorConfigurations
- (VNCoreSceneUnderstandingCompoundRequestDetectorConfigurations)init;
- (id)allConfigurations;
- (id)configurationForRequest:(id)request;
@end

@implementation VNCoreSceneUnderstandingCompoundRequestDetectorConfigurations

- (id)allConfigurations
{
  allValues = [(NSMutableDictionary *)self->_configurations allValues];
  v3 = [allValues copy];

  return v3;
}

- (id)configurationForRequest:(id)request
{
  requestCopy = request;
  [requestCopy regionOfInterest];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (objc_opt_respondsToSelector())
  {
    v13 = ([requestCopy methodForSelector:sel_imageCropAndScaleOption])(requestCopy, sel_imageCropAndScaleOption);
  }

  else
  {
    v13 = 2;
  }

  v21 = 0;
  v14 = [requestCopy applicableDetectorClassAndOptions:&v21 forRevision:objc_msgSend(requestCopy error:{"resolvedRevision"), 0}];
  v15 = v21;
  [VNError VNAssert:v14 != 0 log:@"detector class could not be resolved"];
  v16 = [v14 computeDeviceForComputeStage:@"VNComputeStageMain" configurationOptions:v15 error:0];
  [VNError VNAssert:v16 != 0 log:@"main stage compute device could not be resolved"];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[%g, %g, %g, %g]:%@:%u", v6, v8, v10, v12, v16, v13];
  v18 = [(NSMutableDictionary *)self->_configurations objectForKeyedSubscript:v17];
  if (!v18)
  {
    v18 = [[VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration alloc] initWithMainStageComputeDevice:v16];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  [(VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration *)v18 addOriginalRequest:requestCopy];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
  [(VNCoreSceneUnderstandingCompoundRequestDetectorConfiguration *)v18 setDetectorConfigurationOption:@"VNDetectorProcessOption_ImageCropAndScaleOption" value:v19];

  return v18;
}

- (VNCoreSceneUnderstandingCompoundRequestDetectorConfigurations)init
{
  v6.receiver = self;
  v6.super_class = VNCoreSceneUnderstandingCompoundRequestDetectorConfigurations;
  v2 = [(VNCoreSceneUnderstandingCompoundRequestDetectorConfigurations *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    configurations = v2->_configurations;
    v2->_configurations = v3;
  }

  return v2;
}

@end
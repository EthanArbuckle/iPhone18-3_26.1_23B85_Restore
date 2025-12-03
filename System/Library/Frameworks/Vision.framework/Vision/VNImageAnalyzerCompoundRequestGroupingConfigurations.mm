@interface VNImageAnalyzerCompoundRequestGroupingConfigurations
- (VNImageAnalyzerCompoundRequestGroupingConfigurations)initWithDetectorModel:(unint64_t)model;
- (void)groupingConfigurationForRequest:(uint64_t)request kind:;
@end

@implementation VNImageAnalyzerCompoundRequestGroupingConfigurations

- (VNImageAnalyzerCompoundRequestGroupingConfigurations)initWithDetectorModel:(unint64_t)model
{
  v9.receiver = self;
  v9.super_class = VNImageAnalyzerCompoundRequestGroupingConfigurations;
  v4 = [(VNImageAnalyzerCompoundRequestGroupingConfigurations *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_detectorModel = model;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    groupingConfigurations = v5->_groupingConfigurations;
    v5->_groupingConfigurations = v6;
  }

  return v5;
}

- (void)groupingConfigurationForRequest:(uint64_t)request kind:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    [v5 regionOfInterest];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    frameworkClass = [v6 frameworkClass];
    resolvedRevision = [v6 resolvedRevision];
    v17 = [VNImageAnalyzerMultiDetector modelForRequestClass:frameworkClass revision:resolvedRevision];
    v37 = 0;
    v18 = [v6 applicableDetectorClassAndOptions:&v37 forRevision:resolvedRevision error:0];
    v19 = v37;
    [VNError VNAssert:v18 != 0 log:@"detector class could not be resolved"];
    if (objc_opt_respondsToSelector())
    {
      v20 = ([v6 methodForSelector:sel_imageCropAndScaleOption])(v6, sel_imageCropAndScaleOption);
    }

    else
    {
      v20 = 2;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v6 useImageAnalyzerScaling])
      {
        v21 = 73;
      }

      else
      {
        v21 = 86;
      }
    }

    else
    {
      v21 = 86;
    }

    v22 = [v18 computeDeviceForComputeStage:@"VNComputeStageMain" configurationOptions:v19 error:0];
    [VNError VNAssert:v22 != 0 log:@"main stage compute device could not be resolved"];
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"[%g, %g, %g, %g]:%@:%u:%u:%c", v8, v10, v12, v14, v22, v17, v20, v21];
    v24 = [*(self + 8) objectForKeyedSubscript:v23];
    if (!v24)
    {
      v25 = [VNImageAnalyzerCompoundRequestGroupingConfiguration alloc];
      if (v25)
      {
        v26 = *(self + 16);
        v38.receiver = v25;
        v38.super_class = VNImageAnalyzerCompoundRequestGroupingConfiguration;
        v27 = objc_msgSendSuper2(&v38, sel_init);
        v24 = v27;
        if (v27)
        {
          v27[5] = v26;
          v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v29 = v24[1];
          v24[1] = v28;

          v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v31 = v24[2];
          v24[2] = v30;

          v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v33 = v24[3];
          v24[3] = v32;

          v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v35 = v24[4];
          v24[4] = v34;
        }
      }

      else
      {
        v24 = 0;
      }

      [*(self + 8) setObject:v24 forKeyedSubscript:v23];
    }

    [v24 addOriginalRequest:v6 forKind:request];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end
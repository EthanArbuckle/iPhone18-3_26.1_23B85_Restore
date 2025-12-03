@interface AXShotflowConfiguration
- (AXShotflowConfiguration)initWithURL:(id)l;
@end

@implementation AXShotflowConfiguration

- (AXShotflowConfiguration)initWithURL:(id)l
{
  lCopy = l;
  v21.receiver = self;
  v21.super_class = AXShotflowConfiguration;
  v5 = [(AXShotflowConfiguration *)&v21 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:lCopy];
    filterThresholds = v5->_filterThresholds;
    v5->_filterThresholds = &unk_1F240B568;

    networkThreshold = v5->_networkThreshold;
    v5->_networkThreshold = &unk_1F240B2A0;

    nmsThreshold = v5->_nmsThreshold;
    v5->_nmsThreshold = &unk_1F240B270;

    defaultBoxesSidesNormalized = v5->_defaultBoxesSidesNormalized;
    v5->_defaultBoxesSidesNormalized = &unk_1F240B580;

    ratios = v5->_ratios;
    v5->_ratios = &unk_1F240B598;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v6 objectForKey:@"filterThresholds"];
      obj = [v6 objectForKey:@"networkThreshold"];
      v19 = [v6 objectForKey:@"nmsThreshold"];
      v18 = [v6 objectForKey:@"defaultBoxesSidesNormalized"];
      v13 = [v6 objectForKey:@"ratios"];
      if (__38__AXMindNetConfiguration_initWithURL___block_invoke(v13, v12))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v15 = __38__AXMindNetConfiguration_initWithURL___block_invoke(isKindOfClass, v18);
            if (v15 && __38__AXMindNetConfiguration_initWithURL___block_invoke(v15, v13))
            {
              objc_storeStrong(&v5->_filterThresholds, v12);
              objc_storeStrong(&v5->_networkThreshold, obj);
              objc_storeStrong(&v5->_nmsThreshold, v19);
              objc_storeStrong(&v5->_defaultBoxesSidesNormalized, v18);
              objc_storeStrong(&v5->_ratios, v13);
            }
          }
        }
      }
    }

    v16 = v5;
  }

  return v5;
}

@end
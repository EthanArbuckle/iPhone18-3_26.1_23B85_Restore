@interface ADMetricDepthPipelineParameters
+ (id)defaults;
- (ADMetricDepthPipelineParameters)init;
@end

@implementation ADMetricDepthPipelineParameters

- (ADMetricDepthPipelineParameters)init
{
  v15.receiver = self;
  v15.super_class = ADMetricDepthPipelineParameters;
  v2 = [(ADPipelineParameters *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_confidenceBucketingLowThreshold = NAN;
    v2->_confidenceBucketingHighThreshold = NAN;
    v2->_numCenterBands = 10;
    v2->_maxCenterResolution = 60;
    v2->_numRaysBands = 5;
    v2->_maxRaysResolution = 60;
    v2->_numJasperBands = 5;
    v2->_maxJasperDepth = 8.0;
    v4 = [MEMORY[0x277CED0B8] emptyFilter];
    pointCloudFilter = v3->_pointCloudFilter;
    v3->_pointCloudFilter = v4;

    [(ADJasperPointCloudFilterParameters *)v3->_pointCloudFilter setDuplicateProjectedSpotsMode:2];
    LODWORD(v6) = 1061997773;
    [(ADJasperPointCloudFilterParameters *)v3->_pointCloudFilter setConfidenceThreshold:v6];
    [(ADJasperPointCloudFilterParameters *)v3->_pointCloudFilter setEchoMode:0];
    LODWORD(v7) = 1.0;
    [(ADJasperPointCloudFilterParameters *)v3->_pointCloudFilter setMinDistance:v7];
    v3->_confidenceUnits = 0;
    v8 = objc_opt_new();
    aggregationParameters = v3->_aggregationParameters;
    v3->_aggregationParameters = v8;

    [(ADAggregationParameters *)v3->_aggregationParameters setAggregationSize:4];
    [(ADAggregationParameters *)v3->_aggregationParameters setMaxPointCloudAge:0.15];
    v10 = [objc_opt_class() defaults];
    [v10 floatForKey:kADDeviceConfigurationKeyMetricDepthPearlJasperCoFilteringMaxAllowedDisagreement];
    v3->_pearlJasperCoFilteringMaxAllowedDisagreement = v11;

    v12 = [objc_opt_class() defaults];
    [v12 floatForKey:kADDeviceConfigurationKeyMetricDepthPearlJasperCoFilteringMaxPearlDepth];
    v3->_pearlJasperCoFilteringMaxPearlDepth = v13;
  }

  return v3;
}

+ (id)defaults
{
  v7[2] = *MEMORY[0x277D85DE8];
  p_opt_class_meths = &OBJC_PROTOCOL___NSObject.opt_class_meths;
  {
    v6[0] = kADDeviceConfigurationKeyMetricDepthPearlJasperCoFilteringMaxAllowedDisagreement;
    v6[1] = kADDeviceConfigurationKeyMetricDepthPearlJasperCoFilteringMaxPearlDepth;
    v7[0] = &unk_28524AAA8;
    v7[1] = &unk_28524AAB8;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
    +[ADMetricDepthPipelineParameters defaults]::result = [ADDeviceConfiguration preferencesWithDefaultValues:v5];

    p_opt_class_meths = (&OBJC_PROTOCOL___NSObject + 48);
  }

  v3 = p_opt_class_meths[131];

  return v3;
}

@end
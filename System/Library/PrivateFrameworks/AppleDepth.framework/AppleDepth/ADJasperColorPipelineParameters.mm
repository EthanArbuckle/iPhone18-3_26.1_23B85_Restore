@interface ADJasperColorPipelineParameters
- (id)initForDevice:(id)device;
@end

@implementation ADJasperColorPipelineParameters

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v21.receiver = self;
  v21.super_class = ADJasperColorPipelineParameters;
  v5 = [(ADPipelineParameters *)&v21 initForDevice:deviceCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = *(v5 + 6);
    *(v5 + 6) = v6;

    LODWORD(v8) = 1063675494;
    [*(v5 + 6) setConfidenceThreshold:v8];
    [*(v5 + 6) setEchoMode:2];
    *(v5 + 8) = 0;
    *(v5 + 8) = 2143289344;
    *(v5 + 9) = 2143289344;
    v9 = objc_opt_new();
    v10 = *(v5 + 7);
    *(v5 + 7) = v9;

    [*(v5 + 7) setAggregationSize:4];
    [*(v5 + 7) setMaxPointCloudAge:0.5];
    *(v5 + 10) = 1045220557;
    v11 = [ADDeviceConfiguration getLidarType:deviceCopy];
    v13 = *(v5 + 6);
    if (v11 == 2)
    {
      LODWORD(v12) = 1176256512;
      [v13 setMaxDistance:v12];
      LODWORD(v14) = 1120403456;
      [*(v5 + 6) setMinDistance:v14];
      LODWORD(v15) = 1120403456;
      [*(v5 + 6) setShortRangeDepthThreshold:v15];
      v17 = 0.9;
    }

    else
    {
      LODWORD(v12) = 1167867904;
      [v13 setMaxDistance:v12];
      LODWORD(v18) = 1120403456;
      [*(v5 + 6) setMinDistance:v18];
      v17 = 0.75;
      LODWORD(v19) = 1133903872;
      [*(v5 + 6) setShortRangeDepthThreshold:v19];
    }

    *&v16 = v17;
    [*(v5 + 6) setShortRangeConfidenceThreshold:v16];
  }

  return v5;
}

@end
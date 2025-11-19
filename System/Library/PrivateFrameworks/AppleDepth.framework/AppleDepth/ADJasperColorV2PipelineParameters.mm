@interface ADJasperColorV2PipelineParameters
- (id)initForDevice:(id)a3;
@end

@implementation ADJasperColorV2PipelineParameters

- (id)initForDevice:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[ADDeviceConfiguration getDeviceName];
  }

  v22.receiver = self;
  v22.super_class = ADJasperColorV2PipelineParameters;
  v5 = [(ADPipelineParameters *)&v22 initForDevice:v4];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = *(v5 + 7);
    *(v5 + 7) = v6;

    v8 = [v5 deviceName];
    v9 = [ADDeviceConfiguration getLidarType:v8];

    v11 = *(v5 + 7);
    if (v9 == 2)
    {
      LODWORD(v10) = 1061997773;
      [v11 setConfidenceThreshold:v10];
      [*(v5 + 7) setEchoMode:2];
      LODWORD(v12) = 1184645120;
      [*(v5 + 7) setMaxDistance:v12];
      LODWORD(v13) = 1114636288;
      [*(v5 + 7) setMinDistance:v13];
      [*(v5 + 7) setShortRangeDepthThreshold:0.0];
      [*(v5 + 7) setShortRangeConfidenceThreshold:0.0];
      v14 = 20.0;
      v15 = 1031127695;
    }

    else
    {
      LODWORD(v10) = 1063675494;
      [v11 setConfidenceThreshold:v10];
      [*(v5 + 7) setEchoMode:2];
      LODWORD(v16) = 1167867904;
      [*(v5 + 7) setMaxDistance:v16];
      LODWORD(v17) = 1143930880;
      [*(v5 + 7) setMinDistance:v17];
      LODWORD(v18) = 1133903872;
      [*(v5 + 7) setShortRangeDepthThreshold:v18];
      LODWORD(v19) = 0.75;
      [*(v5 + 7) setShortRangeConfidenceThreshold:v19];
      v14 = 10.0;
      v15 = 1060320051;
    }

    *(v5 + 10) = 1;
    *(v5 + 11) = v14;
    *(v5 + 12) = v15;
    *(v5 + 32) = 0;
    *(v5 + 9) = 2143289344;
    v20 = v5;
  }

  return v5;
}

@end
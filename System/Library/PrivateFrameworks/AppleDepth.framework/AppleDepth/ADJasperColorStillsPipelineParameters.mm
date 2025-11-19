@interface ADJasperColorStillsPipelineParameters
- (id)initForDevice:(id)a3;
@end

@implementation ADJasperColorStillsPipelineParameters

- (id)initForDevice:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = ADJasperColorStillsPipelineParameters;
  v5 = [(ADPipelineParameters *)&v30 initForDevice:v4];
  v6 = v5;
  v7 = v5;
  if (v5)
  {
    v8 = [v5 deviceName];
    v9 = [ADDeviceConfiguration getLidarType:v8];

    v10 = objc_opt_new();
    v11 = v7[4];
    v7[4] = v10;

    LODWORD(v12) = 1063675494;
    [v7[4] setConfidenceThreshold:v12];
    if (v9 == 2)
    {
      [v7[4] setEchoMode:4];
      LODWORD(v13) = 1176256512;
      [v7[4] setMaxDistance:v13];
      LODWORD(v14) = 1114636288;
      [v7[4] setMinDistance:v14];
      [v7[4] setShortRangeDepthThreshold:0.0];
      [v7[4] setShortRangeConfidenceThreshold:0.0];
      v15 = objc_opt_new();
      v16 = v6 + 5;
      v17 = *v16;
      *v16 = v15;

      LODWORD(v18) = 1061997773;
      [*v16 setConfidenceThreshold:v18];
      [*v16 setEchoMode:2];
      LODWORD(v19) = 1181376512;
      [*v16 setMaxDistance:v19];
      LODWORD(v20) = 1137180672;
    }

    else
    {
      [v7[4] setEchoMode:2];
      LODWORD(v21) = 1167867904;
      [v7[4] setMaxDistance:v21];
      LODWORD(v22) = 1120403456;
      [v7[4] setMinDistance:v22];
      LODWORD(v23) = 1133903872;
      [v7[4] setShortRangeDepthThreshold:v23];
      LODWORD(v24) = 0.75;
      [v7[4] setShortRangeConfidenceThreshold:v24];
      v25 = objc_opt_new();
      v16 = v6 + 5;
      v26 = *v16;
      *v16 = v25;

      LODWORD(v27) = 1062836634;
      [*v16 setConfidenceThreshold:v27];
      [*v16 setEchoMode:4];
      LODWORD(v28) = 1167867904;
      [*v16 setMaxDistance:v28];
      LODWORD(v20) = 1128792064;
    }

    [*v16 setMinDistance:v20];
    [*v16 setShortRangeDepthThreshold:0.0];
    [*v16 setShortRangeConfidenceThreshold:0.0];
  }

  return v7;
}

@end
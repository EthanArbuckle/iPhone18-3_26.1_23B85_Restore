@interface ADJasperColorInFieldCalibrationPipelineParameters
+ (id)defaults;
- (id)initForDevice:(id)device;
@end

@implementation ADJasperColorInFieldCalibrationPipelineParameters

+ (id)defaults
{
  v7[3] = *MEMORY[0x277D85DE8];
  p_vtable = &OBJC_METACLASS___ADStereoV2Pipeline.vtable;
  {
    v6[0] = kADDeviceConfigurationKeyJasperColorInFieldForceRun;
    v6[1] = kADDeviceConfigurationKeyJasperColorInFieldDisableSDF;
    v7[0] = &unk_28524A8C0;
    v7[1] = &unk_28524A8C0;
    v6[2] = kADDeviceConfigurationKeyJasperColorInFieldSDFHistorySize;
    v7[2] = &unk_28524A8D8;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
    +[ADJasperColorInFieldCalibrationPipelineParameters defaults]::result = [ADDeviceConfiguration preferencesWithDefaultValues:v5];

    p_vtable = (&OBJC_METACLASS___ADStereoV2Pipeline + 24);
  }

  v3 = p_vtable[465];

  return v3;
}

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = ADJasperColorInFieldCalibrationPipelineParameters;
  v5 = [(ADPipelineParameters *)&v17 initForDevice:deviceCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = *(v5 + 8);
    *(v5 + 8) = v6;

    [*(v5 + 8) setEchoMode:4];
    LODWORD(v8) = 1140457472;
    [*(v5 + 8) setMinDistance:v8];
    v9 = objc_opt_new();
    v10 = *(v5 + 9);
    *(v5 + 9) = v9;

    [*(v5 + 9) setMaxPointCloudAge:1.0];
    *(v5 + 12) = 1065353216;
    *(v5 + 13) = 1065353216;
    *(v5 + 33) = 0;
    defaults = [objc_opt_class() defaults];
    *(v5 + 32) = [defaults BOOLForKey:kADDeviceConfigurationKeyJasperColorInFieldForceRun];

    defaults2 = [objc_opt_class() defaults];
    *(v5 + 33) = [defaults2 BOOLForKey:kADDeviceConfigurationKeyJasperColorInFieldDisableSDF];

    defaults3 = [objc_opt_class() defaults];
    *(v5 + 15) = [defaults3 integerForKey:kADDeviceConfigurationKeyJasperColorInFieldSDFHistorySize];

    *(v5 + 14) = 1056964608;
    *(v5 + 9) = 10;
    *(v5 + 10) = 1141490975;
    *(v5 + 11) = 1092616192;
    [*(v5 + 9) setAggregationSize:2];
    LODWORD(v14) = 1061997773;
    [*(v5 + 8) setConfidenceThreshold:v14];
    LODWORD(v15) = 1181376512;
    [*(v5 + 8) setMaxDistance:v15];
    [*(v5 + 8) setEchoMode:2];
  }

  return v5;
}

@end
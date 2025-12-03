@interface ADJasperColorInFieldCalibrationControllerParameters
+ (id)defaults;
- (ADJasperColorInFieldCalibrationControllerParameters)init;
@end

@implementation ADJasperColorInFieldCalibrationControllerParameters

- (ADJasperColorInFieldCalibrationControllerParameters)init
{
  v7.receiver = self;
  v7.super_class = ADJasperColorInFieldCalibrationControllerParameters;
  v2 = [(ADJasperColorInFieldCalibrationControllerParameters *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 20) = 0x3F00000043FA0000;
    *(v2 + 4) = 985963430;
    defaults = [objc_opt_class() defaults];
    [defaults floatForKey:kADDeviceConfigurationKeyJasperColorInFieldAngularVelocityThreshold];
    *(v3 + 9) = v5;

    *(v3 + 12) = 0x3200000032;
    *(v3 + 7) = 1140457472;
    *(v3 + 4) = 30;
  }

  return v3;
}

+ (id)defaults
{
  v7[1] = *MEMORY[0x277D85DE8];
  p_vtable = &OBJC_METACLASS___ADStereoV2Pipeline.vtable;
  {
    v6 = kADDeviceConfigurationKeyJasperColorInFieldAngularVelocityThreshold;
    v7[0] = &unk_28524A878;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    +[ADJasperColorInFieldCalibrationControllerParameters defaults]::result = [ADDeviceConfiguration preferencesWithDefaultValues:v5];

    p_vtable = (&OBJC_METACLASS___ADStereoV2Pipeline + 24);
  }

  v3 = p_vtable[463];

  return v3;
}

@end
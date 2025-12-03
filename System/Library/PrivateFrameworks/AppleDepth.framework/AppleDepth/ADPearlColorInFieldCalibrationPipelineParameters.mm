@interface ADPearlColorInFieldCalibrationPipelineParameters
+ (id)defaults;
- (ADPearlColorInFieldCalibrationPipelineParameters)init;
- (ADPearlColorInFieldCalibrationPipelineParameters)initWithDeviceName:(id)name;
- (DefaultsForFlow)getDefaultsForFlow:(int)flow;
- (float)getMaxStdForValidResultForFlow:(int)flow;
@end

@implementation ADPearlColorInFieldCalibrationPipelineParameters

- (ADPearlColorInFieldCalibrationPipelineParameters)init
{
  v3 = +[ADDeviceConfiguration getDeviceName];
  v4 = [(ADPearlColorInFieldCalibrationPipelineParameters *)self initWithDeviceName:v3];

  return v4;
}

- (ADPearlColorInFieldCalibrationPipelineParameters)initWithDeviceName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = ADPearlColorInFieldCalibrationPipelineParameters;
  v5 = [(ADPipelineParameters *)&v11 initForDevice:nameCopy];
  if (v5)
  {
    v6 = nameCopy;
    v7 = 1;
    if (([v6 hasPrefix:@"J7"] & 1) == 0 && (objc_msgSend(v6, "hasPrefix:", @"J8") & 1) == 0)
    {
      if ([v6 hasPrefix:@"V59"])
      {
        v7 = 2;
      }

      else if ([v6 hasPrefix:@"V5"])
      {
        v7 = 3;
      }

      else if ([v6 hasPrefix:@"D23"])
      {
        v7 = 3;
      }

      else
      {
        v7 = 0;
      }
    }

    v5->_coeffX = 1.0;
    v5->_coeffY = 1.0;
    v8 = 0.0;
    if ((v7 - 1) < 3)
    {
      v8 = 1.0;
    }

    v5->_coeffZ = v8;
    v5->_featuresVectorAggregationSize = 1;
    v5->_colorCameraNominalEfl = 563.05;
    [(ADPearlColorInFieldCalibrationPipelineParameters *)v5 getMaxStdForValidResultForFlow:v7];
    v5->_maxStdForValidResult = v9;
  }

  return v5;
}

- (float)getMaxStdForValidResultForFlow:(int)flow
{
  v3 = *&flow;
  defaults = [objc_opt_class() defaults];
  [defaults floatForKey:kADDeviceConfigurationKeyPearlColorStdThreshold];
  v7.var0 = v6;

  v8 = kADDeviceConfigurationKeyPearlColorStdThresholdNoOverride;
  LODWORD(v9) = v7;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  LODWORD(v8) = [v8 isEqualToNumber:v10];

  if (v8)
  {
    v11 = [(ADPearlColorInFieldCalibrationPipelineParameters *)self getDefaultsForFlow:v3];
    if (v11)
    {
      v7.var0 = v11->var0;
    }

    else
    {
      v7.var0 = 0.0;
    }
  }

  return v7.var0;
}

- (DefaultsForFlow)getDefaultsForFlow:(int)flow
{
  if (flow >= 4)
  {
    return 0;
  }

  else
  {
    return (&[ADPearlColorInFieldCalibrationPipelineParameters getDefaultsForFlow:]::defaultPerFlow + 4 * flow);
  }
}

+ (id)defaults
{
  v7[1] = *MEMORY[0x277D85DE8];
  p_opt_class_meths = &OBJC_PROTOCOL___NSObject.opt_class_meths;
  {
    v6 = kADDeviceConfigurationKeyPearlColorStdThreshold;
    v7[0] = kADDeviceConfigurationKeyPearlColorStdThresholdNoOverride;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    +[ADPearlColorInFieldCalibrationPipelineParameters defaults]::result = [ADDeviceConfiguration preferencesWithDefaultValues:v5];

    p_opt_class_meths = (&OBJC_PROTOCOL___NSObject + 48);
  }

  v3 = p_opt_class_meths[140];

  return v3;
}

@end
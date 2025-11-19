@interface ADPipelineParameters
- (ADPipelineParameters)init;
- (id)initForDevice:(id)a3;
- (void)setOutputDepthUnits:(unint64_t)a3;
@end

@implementation ADPipelineParameters

- (ADPipelineParameters)init
{
  v3 = +[ADDeviceConfiguration getDeviceName];
  v4 = [(ADPipelineParameters *)self initForDevice:v3];

  return v4;
}

- (void)setOutputDepthUnits:(unint64_t)a3
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "setting deprecated property. outputDepthUnits has no impact on pipeline's depth units", v3, 2u);
  }
}

- (id)initForDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ADPipelineParameters;
  v6 = [(ADPipelineParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceName, a3);
  }

  return v7;
}

@end
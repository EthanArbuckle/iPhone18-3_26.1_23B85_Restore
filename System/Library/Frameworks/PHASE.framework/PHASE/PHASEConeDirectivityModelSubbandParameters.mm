@interface PHASEConeDirectivityModelSubbandParameters
- (PHASEConeDirectivityModelSubbandParameters)init;
- (void)setFrequency:(double)frequency;
- (void)setInnerAngle:(double)innerAngle outerAngle:(double)outerAngle;
- (void)setOuterGain:(double)outerGain;
@end

@implementation PHASEConeDirectivityModelSubbandParameters

- (PHASEConeDirectivityModelSubbandParameters)init
{
  v3.receiver = self;
  v3.super_class = PHASEConeDirectivityModelSubbandParameters;
  result = [(PHASEConeDirectivityModelSubbandParameters *)&v3 init];
  if (result)
  {
    *&result->_frequency = xmmword_23A596FC0;
    *&result->_outerAngle = xmmword_23A596FD0;
  }

  return result;
}

- (void)setFrequency:(double)frequency
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_frequency = PHASEGetPropertyBounded<double>(v8, v7, frequency, 20.0, 20000.0);
}

- (void)setInnerAngle:(double)innerAngle outerAngle:(double)outerAngle
{
  v24 = *MEMORY[0x277D85DE8];
  if (innerAngle <= outerAngle)
  {
    v9 = innerAngle;
  }

  else
  {
    v8 = **(Phase::Logger::GetInstance(self) + 448);
    v9 = outerAngle;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315906;
      v17 = "PHASEDirectivityModel.mm";
      v18 = 1024;
      v19 = 91;
      v20 = 2048;
      v21 = innerAngle;
      v22 = 2048;
      v23 = outerAngle;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Warning: innerAngle %f is greater than outerAngle %f. Clamping innerAngle to outerAngle.", &v16, 0x26u);
      v9 = outerAngle;
    }
  }

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = NSStringFromSelector(a2);
  self->_innerAngle = PHASEGetPropertyBounded<double>(v11, v12, v9, 0.0, 360.0);

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = NSStringFromSelector(a2);
  self->_outerAngle = PHASEGetPropertyBounded<double>(v14, v15, outerAngle, 0.0, 360.0);
}

- (void)setOuterGain:(double)outerGain
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_outerGain = PHASEGetPropertyBounded<double>(v8, v7, outerGain, 0.0, 1.0);
}

@end
@interface PHASECardioidDirectivityModelSubbandParameters
- (PHASECardioidDirectivityModelSubbandParameters)init;
- (void)setFrequency:(double)frequency;
- (void)setPattern:(double)pattern;
- (void)setSharpness:(double)sharpness;
@end

@implementation PHASECardioidDirectivityModelSubbandParameters

- (PHASECardioidDirectivityModelSubbandParameters)init
{
  v3.receiver = self;
  v3.super_class = PHASECardioidDirectivityModelSubbandParameters;
  result = [(PHASECardioidDirectivityModelSubbandParameters *)&v3 init];
  if (result)
  {
    *&result->_frequency = xmmword_23A596FB0;
    result->_sharpness = 1.0;
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

- (void)setPattern:(double)pattern
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_pattern = PHASEGetPropertyBounded<double>(v8, v7, pattern, 0.0, 1.0);
}

- (void)setSharpness:(double)sharpness
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_sharpness = PHASEGetPropertyBounded<double>(v8, v7, sharpness, 1.0, 1.79769313e308);
}

@end
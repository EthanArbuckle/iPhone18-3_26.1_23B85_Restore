@interface BLSHLocalOnlyServiceConfiguration
+ (id)configurationWithFadeInDuration:(double)a3 fadeOutDuration:(double)a4;
+ (id)configurationWithFadeInDuration:(double)a3 fadeOutDuration:(double)a4 dimmingDuration:(double)a5 dimmedFactor:(float)a6;
- (BLSHLocalOnlyServiceConfiguration)initWithFadeInDuration:(double)a3 fadeOutDuration:(double)a4 dimmingDuration:(double)a5 dimmedFactor:(float)a6;
@end

@implementation BLSHLocalOnlyServiceConfiguration

+ (id)configurationWithFadeInDuration:(double)a3 fadeOutDuration:(double)a4 dimmingDuration:(double)a5 dimmedFactor:(float)a6
{
  v10 = [a1 alloc];
  *&v11 = a6;
  v12 = [v10 initWithFadeInDuration:a3 fadeOutDuration:a4 dimmingDuration:a5 dimmedFactor:v11];

  return v12;
}

+ (id)configurationWithFadeInDuration:(double)a3 fadeOutDuration:(double)a4
{
  v6 = [a1 alloc];
  LODWORD(v7) = 1.0;
  v8 = [v6 initWithFadeInDuration:a3 fadeOutDuration:a4 dimmingDuration:0.1 dimmedFactor:v7];

  return v8;
}

- (BLSHLocalOnlyServiceConfiguration)initWithFadeInDuration:(double)a3 fadeOutDuration:(double)a4 dimmingDuration:(double)a5 dimmedFactor:(float)a6
{
  v11.receiver = self;
  v11.super_class = BLSHLocalOnlyServiceConfiguration;
  result = [(BLSHLocalOnlyServiceConfiguration *)&v11 init];
  if (result)
  {
    result->_fadeInDuration = a3;
    result->_fadeOutDuration = a4;
    result->_dimmingDuration = a5;
    result->_dimmedFactor = a6;
  }

  return result;
}

@end
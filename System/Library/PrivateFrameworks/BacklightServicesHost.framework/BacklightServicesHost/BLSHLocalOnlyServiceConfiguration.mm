@interface BLSHLocalOnlyServiceConfiguration
+ (id)configurationWithFadeInDuration:(double)duration fadeOutDuration:(double)outDuration;
+ (id)configurationWithFadeInDuration:(double)duration fadeOutDuration:(double)outDuration dimmingDuration:(double)dimmingDuration dimmedFactor:(float)factor;
- (BLSHLocalOnlyServiceConfiguration)initWithFadeInDuration:(double)duration fadeOutDuration:(double)outDuration dimmingDuration:(double)dimmingDuration dimmedFactor:(float)factor;
@end

@implementation BLSHLocalOnlyServiceConfiguration

+ (id)configurationWithFadeInDuration:(double)duration fadeOutDuration:(double)outDuration dimmingDuration:(double)dimmingDuration dimmedFactor:(float)factor
{
  v10 = [self alloc];
  *&v11 = factor;
  v12 = [v10 initWithFadeInDuration:duration fadeOutDuration:outDuration dimmingDuration:dimmingDuration dimmedFactor:v11];

  return v12;
}

+ (id)configurationWithFadeInDuration:(double)duration fadeOutDuration:(double)outDuration
{
  v6 = [self alloc];
  LODWORD(v7) = 1.0;
  v8 = [v6 initWithFadeInDuration:duration fadeOutDuration:outDuration dimmingDuration:0.1 dimmedFactor:v7];

  return v8;
}

- (BLSHLocalOnlyServiceConfiguration)initWithFadeInDuration:(double)duration fadeOutDuration:(double)outDuration dimmingDuration:(double)dimmingDuration dimmedFactor:(float)factor
{
  v11.receiver = self;
  v11.super_class = BLSHLocalOnlyServiceConfiguration;
  result = [(BLSHLocalOnlyServiceConfiguration *)&v11 init];
  if (result)
  {
    result->_fadeInDuration = duration;
    result->_fadeOutDuration = outDuration;
    result->_dimmingDuration = dimmingDuration;
    result->_dimmedFactor = factor;
  }

  return result;
}

@end
@interface GKSpheresNoiseSource
+ (GKSpheresNoiseSource)spheresNoiseWithFrequency:(double)frequency;
- (GKSpheresNoiseSource)initWithFrequency:(double)frequency;
- (double)valueAt:(GKSpheresNoiseSource *)self;
- (id)cloneModule;
@end

@implementation GKSpheresNoiseSource

+ (GKSpheresNoiseSource)spheresNoiseWithFrequency:(double)frequency
{
  v3 = [objc_alloc(objc_opt_class()) initWithFrequency:frequency];

  return v3;
}

- (GKSpheresNoiseSource)initWithFrequency:(double)frequency
{
  v6.receiver = self;
  v6.super_class = GKSpheresNoiseSource;
  result = [(GKSpheresNoiseSource *)&v6 init];
  if (result)
  {
    v5 = result;
    [(GKSpheresNoiseSource *)result setFrequency:frequency];
    return v5;
  }

  return result;
}

- (double)valueAt:(GKSpheresNoiseSource *)self
{
  v3 = sqrt(vmuld_n_f64(v2->f64[0], v2->f64[0]) + vmulq_f64(v2[1], v2[1]).f64[0] + COERCE_DOUBLE(*&vmulq_f64(*v2, *v2).f64[1]));
  [(GKSpheresNoiseSource *)self frequency];

  [GKNoiseSourceUtils radialLerpValueForDistanceToOrigin:v3 frequency:v4];
  return result;
}

- (id)cloneModule
{
  [(GKSpheresNoiseSource *)self frequency];

  return [GKSpheresNoiseSource spheresNoiseWithFrequency:?];
}

@end
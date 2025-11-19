@interface GKCylindersNoiseSource
+ (GKCylindersNoiseSource)cylindersNoiseWithFrequency:(double)frequency;
- (GKCylindersNoiseSource)initWithFrequency:(double)frequency;
- (double)valueAt:(GKCylindersNoiseSource *)self;
- (id)cloneModule;
@end

@implementation GKCylindersNoiseSource

+ (GKCylindersNoiseSource)cylindersNoiseWithFrequency:(double)frequency
{
  v3 = [objc_alloc(objc_opt_class()) initWithFrequency:frequency];

  return v3;
}

- (GKCylindersNoiseSource)initWithFrequency:(double)frequency
{
  v6.receiver = self;
  v6.super_class = GKCylindersNoiseSource;
  result = [(GKCylindersNoiseSource *)&v6 init];
  if (result)
  {
    v5 = result;
    [(GKCylindersNoiseSource *)result setFrequency:frequency];
    return v5;
  }

  return result;
}

- (double)valueAt:(GKCylindersNoiseSource *)self
{
  v3 = sqrt(v2[2] * v2[2] + *v2 * *v2);
  [(GKCylindersNoiseSource *)self frequency];

  [GKNoiseSourceUtils radialLerpValueForDistanceToOrigin:v3 frequency:v4];
  return result;
}

- (id)cloneModule
{
  [(GKCylindersNoiseSource *)self frequency];

  return [GKCylindersNoiseSource cylindersNoiseWithFrequency:?];
}

@end
@interface GKCheckerboardNoiseSource
+ (GKCheckerboardNoiseSource)checkerboardNoiseWithSquareSize:(double)squareSize;
- (GKCheckerboardNoiseSource)initWithSquareSize:(double)squareSize;
- (double)valueAt:(GKCheckerboardNoiseSource *)self;
- (id)cloneModule;
@end

@implementation GKCheckerboardNoiseSource

+ (GKCheckerboardNoiseSource)checkerboardNoiseWithSquareSize:(double)squareSize
{
  v3 = [objc_alloc(objc_opt_class()) initWithSquareSize:squareSize];

  return v3;
}

- (GKCheckerboardNoiseSource)initWithSquareSize:(double)squareSize
{
  v6.receiver = self;
  v6.super_class = GKCheckerboardNoiseSource;
  result = [(GKCheckerboardNoiseSource *)&v6 init];
  if (result)
  {
    v5 = result;
    [(GKCheckerboardNoiseSource *)result setSquareSize:squareSize];
    return v5;
  }

  return result;
}

- (double)valueAt:(GKCheckerboardNoiseSource *)self
{
  v12 = *v2;
  v4 = v2[1].f64[0];
  [(GKCheckerboardNoiseSource *)self squareSize];
  v11 = v5;
  [(GKCheckerboardNoiseSource *)self squareSize];
  v6.f64[0] = v11;
  v6.f64[1] = v7;
  *&v12.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vdivq_f64(v12, v6))));
  [(GKCheckerboardNoiseSource *)self squareSize];
  v9 = vadd_s32(vdup_lane_s32(*&v12.f64[0], 1), *&v12.f64[0]).u8[0] + vcvtmd_s64_f64(v4 / v8);
  result = -1.0;
  if ((v9 & 1) == 0)
  {
    return 1.0;
  }

  return result;
}

- (id)cloneModule
{
  [(GKCheckerboardNoiseSource *)self squareSize];

  return [GKCheckerboardNoiseSource checkerboardNoiseWithSquareSize:?];
}

@end
@interface MPCubicSpringTimingParameters
+ (id)standardTimingParameters;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPCubicSpringTimingParameters

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = MPCubicSpringTimingParameters;
  v4 = [(MPCubicSpringTimingParameters *)&v7 copyWithZone:a3];
  v5 = [(MPCubicSpringTimingParameters *)self springCubicTimingParameters];
  [v4 setSpringCubicTimingParameters:v5];

  return v4;
}

+ (id)standardTimingParameters
{
  v3 = [objc_alloc(MEMORY[0x1E69DC908]) initWithControlPoint1:0.187800005 controlPoint2:{0.00230000005, 0.539900005, 0.962899983}];
  v4 = [[a1 alloc] initWithMass:3.0 stiffness:500.0 damping:1000.0 initialVelocity:{0.0, 0.0}];
  [v4 setSpringCubicTimingParameters:v3];

  return v4;
}

@end
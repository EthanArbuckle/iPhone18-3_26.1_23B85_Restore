@interface MPCubicSpringTimingParameters
+ (id)standardTimingParameters;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPCubicSpringTimingParameters

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = MPCubicSpringTimingParameters;
  v4 = [(MPCubicSpringTimingParameters *)&v7 copyWithZone:zone];
  springCubicTimingParameters = [(MPCubicSpringTimingParameters *)self springCubicTimingParameters];
  [v4 setSpringCubicTimingParameters:springCubicTimingParameters];

  return v4;
}

+ (id)standardTimingParameters
{
  v3 = [objc_alloc(MEMORY[0x1E69DC908]) initWithControlPoint1:0.187800005 controlPoint2:{0.00230000005, 0.539900005, 0.962899983}];
  v4 = [[self alloc] initWithMass:3.0 stiffness:500.0 damping:1000.0 initialVelocity:{0.0, 0.0}];
  [v4 setSpringCubicTimingParameters:v3];

  return v4;
}

@end
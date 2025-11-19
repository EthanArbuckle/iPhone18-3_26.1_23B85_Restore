@interface SSSSpringAnimationParameters
+ (id)springAnimationParametersWithDuration:(double)a3 mass:(double)a4 stiffness:(double)a5 damping:(double)a6 speed:(double)a7 controlPointOne:(CGPoint)a8 controlPointTwo:(CGPoint)a9;
- (id)animationUsingParametersForKeyPath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)timingParameters;
@end

@implementation SSSSpringAnimationParameters

+ (id)springAnimationParametersWithDuration:(double)a3 mass:(double)a4 stiffness:(double)a5 damping:(double)a6 speed:(double)a7 controlPointOne:(CGPoint)a8 controlPointTwo:(CGPoint)a9
{
  y = a8.y;
  x = a8.x;
  v15 = objc_alloc_init(objc_opt_class());
  [v15 setDuration:a3];
  *(v15 + 5) = a4;
  *(v15 + 6) = a5;
  *(v15 + 7) = a6;
  *(v15 + 8) = a7;
  *(v15 + 9) = x;
  *(v15 + 10) = y;
  *(v15 + 88) = a9;

  return v15;
}

- (id)animationUsingParametersForKeyPath:(id)a3
{
  v4 = [CASpringAnimation animationWithKeyPath:a3];
  [v4 setMass:self->_mass];
  [v4 setStiffness:self->_stiffness];
  [v4 setDamping:self->_damping];
  speed = self->_speed;
  *&speed = speed;
  [v4 setSpeed:speed];
  x = self->_controlPoint1.x;
  y = self->_controlPoint1.y;
  v8 = self->_controlPoint2.x;
  v9 = self->_controlPoint2.y;
  v10 = [CAMediaTimingFunction alloc];
  *&v11 = x;
  *&v12 = y;
  *&v13 = v8;
  *&v14 = v9;
  v15 = [v10 initWithControlPoints:v11 :v12 :v13 :v14];
  [v4 setTimingFunction:v15];
  if ([(SSSAnimationParameters *)self animationReason])
  {
    v18 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v4 setPreferredFrameRateRange:{*&v18.minimum, *&v18.maximum, *&v18.preferred}];
    [v4 setHighFrameRateReason:{-[SSSAnimationParameters animationReason](self, "animationReason") | 0x160000u}];
  }

  return v4;
}

- (id)timingParameters
{
  v2 = [[UISpringTimingParameters alloc] initWithMass:self->_mass stiffness:self->_stiffness damping:self->_damping initialVelocity:{0.0, 0.0}];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = SSSSpringAnimationParameters;
  result = [(SSSAnimationParameters *)&v5 copyWithZone:a3];
  *(result + 5) = *&self->_mass;
  *(result + 6) = *&self->_stiffness;
  *(result + 7) = *&self->_damping;
  *(result + 8) = *&self->_speed;
  *(result + 72) = self->_controlPoint1;
  *(result + 88) = self->_controlPoint2;
  return result;
}

@end
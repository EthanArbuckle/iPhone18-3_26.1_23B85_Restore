@interface ASVDampingDeceleration
- (ASVDampingDeceleration)initWithVelocity:(float)a3 minEndDelta:(float)a4 decelerationRate:(float)a5;
- (float)decelerationDelta;
@end

@implementation ASVDampingDeceleration

- (ASVDampingDeceleration)initWithVelocity:(float)a3 minEndDelta:(float)a4 decelerationRate:(float)a5
{
  v7.receiver = self;
  v7.super_class = ASVDampingDeceleration;
  result = [ASVDeceleration initWithVelocity:sel_initWithVelocity_minEndDelta_ minEndDelta:?];
  if (result)
  {
    result->_decelerationRate = a5;
  }

  return result;
}

- (float)decelerationDelta
{
  v3 = 0.0;
  if ([(ASVDeceleration *)self isDecelerating])
  {
    [(ASVDeceleration *)self setFrameCount:[(ASVDeceleration *)self frameCount]+ 1];
    [(ASVDeceleration *)self currentTime];
    [(ASVDeceleration *)self setPreviousTime:?];
    [(ASVDeceleration *)self setCurrentTime:CACurrentMediaTime()];
    [(ASVDeceleration *)self currentTime];
    v5 = v4;
    [(ASVDeceleration *)self previousTime];
    *&v6 = v5 - v6;
    v7 = *&v6 * 1000.0;
    [(ASVDeceleration *)self velocity];
    v9 = v8 / 1000.0;
    [(ASVDampingDeceleration *)self decelerationRate];
    v11 = pow(v10, v7);
    v12 = v11;
    v13 = v9 * v12;
    *&v11 = v13 * 1000.0;
    [(ASVDeceleration *)self setVelocity:v11];
    [(ASVDampingDeceleration *)self decelerationRate];
    v15 = v14;
    [(ASVDampingDeceleration *)self decelerationRate];
    v17 = (1.0 - v12) / (1.0 - v16) * v15;
    v3 = v13 * v17;
    if ([(ASVDeceleration *)self frameCount])
    {
      [(ASVDeceleration *)self velocity];
      v19 = fabsf(v18);
      [(ASVDeceleration *)self minEndDelta];
      if (v19 <= v20)
      {
        [(ASVDeceleration *)self setIsDecelerating:0];
        return 0.0;
      }
    }
  }

  return v3;
}

@end
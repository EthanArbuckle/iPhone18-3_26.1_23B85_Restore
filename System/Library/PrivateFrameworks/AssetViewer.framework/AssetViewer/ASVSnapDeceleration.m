@interface ASVSnapDeceleration
- (ASVSnapDeceleration)initWithVelocity:(float)a3 minEndDelta:(float)a4 startingOffset:(float)a5 minOffset:(float)a6 maxOffset:(float)a7;
- (float)decelerationDelta;
- (void)calculateSnapFromStartingOffset:(float)a3 startingVelocity:(float)a4 deltaTime:(float)a5 outOffset:(float *)a6 outVelocity:(float *)a7;
@end

@implementation ASVSnapDeceleration

- (ASVSnapDeceleration)initWithVelocity:(float)a3 minEndDelta:(float)a4 startingOffset:(float)a5 minOffset:(float)a6 maxOffset:(float)a7
{
  v11.receiver = self;
  v11.super_class = ASVSnapDeceleration;
  result = [ASVDeceleration initWithVelocity:sel_initWithVelocity_minEndDelta_ minEndDelta:?];
  if (result)
  {
    result->_currentOffset = a5;
    result->_minOffset = a6;
    result->_maxOffset = a7;
  }

  return result;
}

- (void)calculateSnapFromStartingOffset:(float)a3 startingVelocity:(float)a4 deltaTime:(float)a5 outOffset:(float *)a6 outVelocity:(float *)a7
{
  v12 = (a4 / 1000.0) * powf(0.998, a5);
  [(ASVSnapDeceleration *)self maxOffset];
  if (v13 < a3)
  {
    [(ASVSnapDeceleration *)self maxOffset];
    v15 = v14;
    [(ASVSnapDeceleration *)self maxOffset];
    a3 = v15 + ((a3 - v16) * powf(0.99, a5));
LABEL_5:
    v12 = pow(0.99, a5) * v12;
    goto LABEL_6;
  }

  [(ASVSnapDeceleration *)self minOffset];
  if (v17 > a3)
  {
    [(ASVSnapDeceleration *)self minOffset];
    v19 = v18;
    [(ASVSnapDeceleration *)self minOffset];
    a3 = v19 - ((v20 - a3) * powf(0.99, a5));
    goto LABEL_5;
  }

LABEL_6:
  *a6 = a3 + (v12 * a5);
  *a7 = v12 * 1000.0;
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
    v7 = (v5 - v6) * 1000.0;
    [(ASVSnapDeceleration *)self currentOffset];
    v9 = v8;
    [(ASVDeceleration *)self velocity];
    LODWORD(v11) = v10;
    v22 = 0;
    *&v12 = v9;
    *&v13 = v7;
    [(ASVSnapDeceleration *)self calculateSnapFromStartingOffset:&v22 + 4 startingVelocity:&v22 deltaTime:v12 outOffset:v11 outVelocity:v13];
    v3 = *(&v22 + 1) - v9;
    [(ASVSnapDeceleration *)self currentOffset];
    *&v15 = v14 + v3;
    [(ASVSnapDeceleration *)self setCurrentOffset:v15];
    LODWORD(v16) = v22;
    [(ASVDeceleration *)self setVelocity:v16];
    if ([(ASVDeceleration *)self frameCount])
    {
      [(ASVDeceleration *)self minEndDelta];
      if (fabsf(v3) <= v17)
      {
        [(ASVDeceleration *)self setIsDecelerating:0];
        [(ASVSnapDeceleration *)self maxOffset];
        if (v9 > v18)
        {
          [(ASVSnapDeceleration *)self maxOffset];
          return v19 - v9;
        }

        [(ASVSnapDeceleration *)self minOffset];
        v3 = 0.0;
        if (v9 < v20)
        {
          [(ASVSnapDeceleration *)self minOffset];
          return v19 - v9;
        }
      }
    }
  }

  return v3;
}

@end
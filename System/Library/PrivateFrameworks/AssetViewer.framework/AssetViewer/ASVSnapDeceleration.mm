@interface ASVSnapDeceleration
- (ASVSnapDeceleration)initWithVelocity:(float)velocity minEndDelta:(float)delta startingOffset:(float)offset minOffset:(float)minOffset maxOffset:(float)maxOffset;
- (float)decelerationDelta;
- (void)calculateSnapFromStartingOffset:(float)offset startingVelocity:(float)velocity deltaTime:(float)time outOffset:(float *)outOffset outVelocity:(float *)outVelocity;
@end

@implementation ASVSnapDeceleration

- (ASVSnapDeceleration)initWithVelocity:(float)velocity minEndDelta:(float)delta startingOffset:(float)offset minOffset:(float)minOffset maxOffset:(float)maxOffset
{
  v11.receiver = self;
  v11.super_class = ASVSnapDeceleration;
  result = [ASVDeceleration initWithVelocity:sel_initWithVelocity_minEndDelta_ minEndDelta:?];
  if (result)
  {
    result->_currentOffset = offset;
    result->_minOffset = minOffset;
    result->_maxOffset = maxOffset;
  }

  return result;
}

- (void)calculateSnapFromStartingOffset:(float)offset startingVelocity:(float)velocity deltaTime:(float)time outOffset:(float *)outOffset outVelocity:(float *)outVelocity
{
  v12 = (velocity / 1000.0) * powf(0.998, time);
  [(ASVSnapDeceleration *)self maxOffset];
  if (v13 < offset)
  {
    [(ASVSnapDeceleration *)self maxOffset];
    v15 = v14;
    [(ASVSnapDeceleration *)self maxOffset];
    offset = v15 + ((offset - v16) * powf(0.99, time));
LABEL_5:
    v12 = pow(0.99, time) * v12;
    goto LABEL_6;
  }

  [(ASVSnapDeceleration *)self minOffset];
  if (v17 > offset)
  {
    [(ASVSnapDeceleration *)self minOffset];
    v19 = v18;
    [(ASVSnapDeceleration *)self minOffset];
    offset = v19 - ((v20 - offset) * powf(0.99, time));
    goto LABEL_5;
  }

LABEL_6:
  *outOffset = offset + (v12 * time);
  *outVelocity = v12 * 1000.0;
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
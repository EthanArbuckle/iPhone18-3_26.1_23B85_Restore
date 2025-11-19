@interface _ATXMovingAverage
- (_ATXMovingAverage)initWithAlpha:(double)a3;
- (_ATXMovingAverage)initWithCoder:(id)a3;
- (id)description;
- (void)addElement:(double)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ATXMovingAverage

- (_ATXMovingAverage)initWithAlpha:(double)a3
{
  v5.receiver = self;
  v5.super_class = _ATXMovingAverage;
  result = [(_ATXMovingAverage *)&v5 init];
  if (result)
  {
    result->_alpha = a3;
    result->_count = 0;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_movingAverage];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_movingError];
  v6 = [v3 stringWithFormat:@"(avg = %@, error = %@)", v4, v5];

  return v6;
}

- (_ATXMovingAverage)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _ATXMovingAverage;
  v5 = [(_ATXMovingAverage *)&v10 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"avgError"];
    v5->_movingError = v6;
    [v4 decodeDoubleForKey:@"avgDuration"];
    v5->_movingAverage = v7;
    [v4 decodeDoubleForKey:@"alpha"];
    v5->_alpha = v8;
    v5->_count = [v4 decodeIntegerForKey:@"count"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  movingAverage = self->_movingAverage;
  v5 = a3;
  [v5 encodeDouble:@"avgDuration" forKey:movingAverage];
  [v5 encodeDouble:@"avgError" forKey:self->_movingError];
  [v5 encodeDouble:@"alpha" forKey:self->_alpha];
  [v5 encodeInteger:self->_count forKey:@"count"];
}

- (void)addElement:(double)a3
{
  count = self->_count;
  if (count)
  {
    alpha = self->_alpha;
    v5 = (1.0 - alpha) * self->_movingAverage + alpha * a3;
    self->_movingAverage = v5;
    v6 = vabdd_f64(a3, v5);
    if (count != 1)
    {
      v6 = (1.0 - alpha) * self->_movingError + alpha * v6;
    }

    self->_movingError = v6;
  }

  else
  {
    self->_movingAverage = a3;
    self->_movingError = 0.0;
  }

  self->_count = count + 1;
}

@end
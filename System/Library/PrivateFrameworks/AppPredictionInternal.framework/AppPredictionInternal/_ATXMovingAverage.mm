@interface _ATXMovingAverage
- (_ATXMovingAverage)initWithAlpha:(double)alpha;
- (_ATXMovingAverage)initWithCoder:(id)coder;
- (id)description;
- (void)addElement:(double)element;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _ATXMovingAverage

- (_ATXMovingAverage)initWithAlpha:(double)alpha
{
  v5.receiver = self;
  v5.super_class = _ATXMovingAverage;
  result = [(_ATXMovingAverage *)&v5 init];
  if (result)
  {
    result->_alpha = alpha;
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

- (_ATXMovingAverage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _ATXMovingAverage;
  v5 = [(_ATXMovingAverage *)&v10 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"avgError"];
    v5->_movingError = v6;
    [coderCopy decodeDoubleForKey:@"avgDuration"];
    v5->_movingAverage = v7;
    [coderCopy decodeDoubleForKey:@"alpha"];
    v5->_alpha = v8;
    v5->_count = [coderCopy decodeIntegerForKey:@"count"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  movingAverage = self->_movingAverage;
  coderCopy = coder;
  [coderCopy encodeDouble:@"avgDuration" forKey:movingAverage];
  [coderCopy encodeDouble:@"avgError" forKey:self->_movingError];
  [coderCopy encodeDouble:@"alpha" forKey:self->_alpha];
  [coderCopy encodeInteger:self->_count forKey:@"count"];
}

- (void)addElement:(double)element
{
  count = self->_count;
  if (count)
  {
    alpha = self->_alpha;
    v5 = (1.0 - alpha) * self->_movingAverage + alpha * element;
    self->_movingAverage = v5;
    v6 = vabdd_f64(element, v5);
    if (count != 1)
    {
      v6 = (1.0 - alpha) * self->_movingError + alpha * v6;
    }

    self->_movingError = v6;
  }

  else
  {
    self->_movingAverage = element;
    self->_movingError = 0.0;
  }

  self->_count = count + 1;
}

@end
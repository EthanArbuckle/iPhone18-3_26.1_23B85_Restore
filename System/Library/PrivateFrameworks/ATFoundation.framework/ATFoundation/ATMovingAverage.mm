@interface ATMovingAverage
- (ATMovingAverage)initWithWindow:(unint64_t)a3;
- (double)average;
- (void)dealloc;
- (void)reset;
- (void)update:(double)a3;
@end

@implementation ATMovingAverage

- (double)average
{
  window = self->_window;
  if (window >= self->_count)
  {
    window = self->_count;
  }

  if (window)
  {
    values = self->_values;
    v4 = 0.0;
    v5 = window;
    do
    {
      v6 = *values++;
      v4 = v4 + v6;
      --v5;
    }

    while (v5);
  }

  else
  {
    v4 = 0.0;
  }

  return v4 / window;
}

- (void)reset
{
  window = self->_window;
  if (window)
  {
    bzero(self->_values, 8 * window);
  }

  self->_count = 0;
}

- (void)update:(double)a3
{
  count = self->_count;
  if (self->_index == self->_window)
  {
    index = 0;
  }

  else
  {
    index = self->_index;
  }

  self->_values[index] = a3;
  self->_count = count + 1;
  self->_index = index + 1;
}

- (void)dealloc
{
  free(self->_values);
  v3.receiver = self;
  v3.super_class = ATMovingAverage;
  [(ATMovingAverage *)&v3 dealloc];
}

- (ATMovingAverage)initWithWindow:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = ATMovingAverage;
  v4 = [(ATMovingAverage *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_window = a3;
    v6 = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
    v5->_count = 0;
    v5->_index = 0;
    v5->_values = v6;
  }

  return v5;
}

@end
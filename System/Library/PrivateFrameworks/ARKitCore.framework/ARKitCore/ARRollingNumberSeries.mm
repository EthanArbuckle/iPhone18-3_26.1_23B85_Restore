@interface ARRollingNumberSeries
- (ARRollingNumberSeries)initWithWindowSize:(unint64_t)a3;
- (double)max;
- (double)min;
- (void)appendNumber:(double)a3;
- (void)clear;
- (void)dealloc;
@end

@implementation ARRollingNumberSeries

- (ARRollingNumberSeries)initWithWindowSize:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = ARRollingNumberSeries;
  v4 = [(ARRollingNumberSeries *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_windowSize = a3;
    v4->_count = 0;
    v4->_series = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
    v5->_currentIndex = 0;
  }

  return v5;
}

- (void)dealloc
{
  free(self->_series);
  v3.receiver = self;
  v3.super_class = ARRollingNumberSeries;
  [(ARRollingNumberSeries *)&v3 dealloc];
}

- (double)max
{
  count = self->_count;
  if (!count)
  {
    return 2.22507386e-308;
  }

  series = self->_series;
  result = 2.22507386e-308;
  do
  {
    v5 = *series++;
    v6 = v5;
    if (result < v5)
    {
      result = v6;
    }

    --count;
  }

  while (count);
  return result;
}

- (double)min
{
  count = self->_count;
  if (!count)
  {
    return 1.79769313e308;
  }

  series = self->_series;
  result = 1.79769313e308;
  do
  {
    v5 = *series++;
    v6 = v5;
    if (result >= v5)
    {
      result = v6;
    }

    --count;
  }

  while (count);
  return result;
}

- (void)appendNumber:(double)a3
{
  windowSize = self->_windowSize;
  count = self->_count;
  series = self->_series;
  if (count >= windowSize)
  {
    currentIndex = self->_currentIndex;
    v8 = series[currentIndex];
    self->_sum = self->_sum - v8;
    series[currentIndex] = a3;
    v6 = count;
  }

  else
  {
    series[count] = a3;
    v6 = count + 1;
    self->_count = count + 1;
    currentIndex = self->_currentIndex;
    v8 = 0.0;
  }

  self->_currentIndex = (currentIndex + 1) % windowSize;
  average = self->_average;
  v10 = self->_sum + a3;
  v11 = v10 / v6;
  self->_sum = v10;
  self->_average = v11;
  if (v6 < 2)
  {
    self->_sumVariance = 0.0;
    v14 = 0.0;
  }

  else
  {
    v12 = a3 - average;
    v13 = a3 - v11;
    if (count >= windowSize)
    {
      v14 = v12 * v13 - (v8 - average) * (v8 - v11) + self->_sumVariance;
    }

    else
    {
      v14 = self->_sumVariance + v12 * v13;
    }

    self->_sumVariance = v14;
  }

  self->_variance = fabs(v14 / (v6 - 1));
}

- (void)clear
{
  self->_currentIndex = 0;
  self->_sumVariance = 0.0;
  *&self->_count = 0u;
  *&self->_average = 0u;
}

@end
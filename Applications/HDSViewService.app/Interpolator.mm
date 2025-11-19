@interface Interpolator
- (Interpolator)init;
- (void)dealloc;
- (void)interpolateData:(float *)a3 atTimes:(id *)a4 andLength:(unsigned int)a5 toRate:(float)a6;
@end

@implementation Interpolator

- (Interpolator)init
{
  v3.receiver = self;
  v3.super_class = Interpolator;
  result = [(Interpolator *)&v3 init];
  if (result)
  {
    result->_interpolatedLength = 0;
    result->_interpolatedValues = 0;
    result->_interpolatedTimes = 0;
  }

  return result;
}

- (void)dealloc
{
  interpolatedTimes = self->_interpolatedTimes;
  if (interpolatedTimes)
  {
    free(interpolatedTimes);
  }

  interpolatedValues = self->_interpolatedValues;
  if (interpolatedValues)
  {
    free(interpolatedValues);
  }

  v5.receiver = self;
  v5.super_class = Interpolator;
  [(Interpolator *)&v5 dealloc];
}

- (void)interpolateData:(float *)a3 atTimes:(id *)a4 andLength:(unsigned int)a5 toRate:(float)a6
{
  v23 = *a4;
  lhs = a4[a5 - 1];
  rhs = *a4;
  CMTimeSubtract(&time, &lhs, &rhs);
  interpolatedLength = (CMTimeGetSeconds(&time) * a6 + 0.5) + 1;
  interpolatedTimes = self->_interpolatedTimes;
  if (!interpolatedTimes || self->_interpolatedLength != interpolatedLength)
  {
    self->_interpolatedLength = interpolatedLength;
    self->_interpolatedTimes = malloc_type_realloc(interpolatedTimes, 24 * interpolatedLength, 0x1000040504FFAC1uLL);
    self->_interpolatedValues = malloc_type_realloc(self->_interpolatedValues, 4 * self->_interpolatedLength, 0x100004052888210uLL);
    interpolatedLength = self->_interpolatedLength;
  }

  if (interpolatedLength)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      memset(&time, 0, sizeof(time));
      CMTimeMake(&time, v14 & 0xFFFFFFFE, (a6 * 10.0));
      v16 = &self->_interpolatedTimes[v13];
      rhs = v23;
      v19 = time;
      CMTimeAdd(&lhs, &rhs, &v19);
      v17 = *&lhs.value;
      v16->var3 = lhs.epoch;
      *&v16->var0 = v17;
      ++v15;
      v18 = self->_interpolatedLength;
      v14 += 10;
      ++v13;
    }

    while (v15 < v18);
  }

  else
  {
    LODWORD(v18) = 0;
  }

  sub_100008D14(a4, a3, a5, self->_interpolatedTimes, v18, self->_interpolatedValues);
}

@end
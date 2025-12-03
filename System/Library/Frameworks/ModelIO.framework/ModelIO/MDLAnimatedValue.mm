@interface MDLAnimatedValue
- (MDLAnimatedValue)init;
- (NSArray)keyTimes;
- (NSTimeInterval)maximumTime;
- (NSTimeInterval)minimumTime;
- (NSUInteger)getTimes:(NSTimeInterval *)timesArray maxCount:(NSUInteger)maxCount;
- (VtValue)defaultVtValue;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (void)clear;
- (void)resetWithAnimatedValue:(id)value;
@end

@implementation MDLAnimatedValue

- (MDLAnimatedValue)init
{
  v5.receiver = self;
  v5.super_class = MDLAnimatedValue;
  v2 = [(MDLAnimatedValue *)&v5 init];
  if (v2)
  {
    sub_239E566C0();
    v2->_interpolation = 1;
    v3 = v2;
  }

  return v2;
}

- (void)resetWithAnimatedValue:(id)value
{
  valueCopy = value;
  sub_239F22B70(&self->_timeSampledData, valueCopy + 1);
  self->_interpolation = *(valueCopy + 4);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  *(v10 + 32) = self->_interpolation;
  sub_239F22B70((v10 + 8), &self->_timeSampledData);
  return v10;
}

- (VtValue)defaultVtValue
{
  *(v2 + 8) = 0;
  result._info._ptrAndBits = a2;
  result._storage = self;
  return result;
}

- (NSTimeInterval)minimumTime
{
  begin = self->_timeSampledData.__begin_;
  end = self->_timeSampledData.__end_;
  if (end == begin)
  {
    return 0.0;
  }

  result = 1000000000.0;
  do
  {
    v5 = *begin;
    begin = (begin + 24);
    v6 = v5;
    if (v5 < result)
    {
      result = v6;
    }
  }

  while (begin != end);
  return result;
}

- (NSTimeInterval)maximumTime
{
  begin = self->_timeSampledData.__begin_;
  end = self->_timeSampledData.__end_;
  if (end == begin)
  {
    return 0.0;
  }

  result = -1000000000.0;
  do
  {
    v5 = *begin;
    begin = (begin + 24);
    v6 = v5;
    if (v5 > result)
    {
      result = v6;
    }
  }

  while (begin != end);
  return result;
}

- (void)clear
{
  begin = self->_timeSampledData.__begin_;
  end = self->_timeSampledData.__end_;
  if (end != begin)
  {
    do
    {
      v5 = (end - 24);
      sub_239E5B240(end - 16);
      end = v5;
    }

    while (v5 != begin);
  }

  self->_timeSampledData.__end_ = begin;
}

- (NSArray)keyTimes
{
  v3 = objc_opt_new();
  if (self->_timeSampledData.__end_ != self->_timeSampledData.__begin_)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = objc_alloc(MEMORY[0x277CCABB0]);
      v9 = objc_msgSend_initWithDouble_(v6, v7, v8, *(self->_timeSampledData.__begin_ + v4));
      objc_msgSend_addObject_(v3, v10, v9);

      ++v5;
      v4 += 24;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * ((self->_timeSampledData.__end_ - self->_timeSampledData.__begin_) >> 3));
  }

  return v3;
}

- (NSUInteger)getTimes:(NSTimeInterval *)timesArray maxCount:(NSUInteger)maxCount
{
  begin = self->_timeSampledData.__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((self->_timeSampledData.__end_ - begin) >> 3) >= maxCount)
  {
    result = maxCount;
  }

  else
  {
    result = 0xAAAAAAAAAAAAAAABLL * ((self->_timeSampledData.__end_ - begin) >> 3);
  }

  if (result)
  {
    v6 = result;
    do
    {
      v7 = *begin;
      begin = (begin + 24);
      *timesArray++ = v7;
      --v6;
    }

    while (v6);
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end
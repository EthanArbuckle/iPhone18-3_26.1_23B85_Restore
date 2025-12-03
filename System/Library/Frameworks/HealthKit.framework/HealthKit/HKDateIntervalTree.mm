@interface HKDateIntervalTree
- (BOOL)hasOverlapWithInterval:(id)interval;
- (BOOL)hasOverlapWithStartTime:(double)time endTime:(double)endTime;
- (HKDateIntervalTree)init;
- (id)mergedIntervals;
- (uint64_t)mergedIntervals;
- (void)insertInterval:(id)interval;
- (void)mergedIntervals;
@end

@implementation HKDateIntervalTree

- (HKDateIntervalTree)init
{
  v3.receiver = self;
  v3.super_class = HKDateIntervalTree;
  if ([(HKDateIntervalTree *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)insertInterval:(id)interval
{
  intervalCopy = interval;
  startDate = [intervalCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v6 = v5;
  endDate = [intervalCopy endDate];
  [endDate timeIntervalSinceReferenceDate];
  [(HKDateIntervalTree *)self insertIntervalWithStartTime:v6 endTime:v8];
}

- (BOOL)hasOverlapWithInterval:(id)interval
{
  intervalCopy = interval;
  startDate = [intervalCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v7 = v6;
  endDate = [intervalCopy endDate];
  [endDate timeIntervalSinceReferenceDate];
  LOBYTE(self) = [(HKDateIntervalTree *)self hasOverlapWithStartTime:v7 endTime:v9];

  return self;
}

- (BOOL)hasOverlapWithStartTime:(double)time endTime:(double)endTime
{
  ptr = self->_tree.__ptr_;
  if (endTime >= time)
  {
    endTimeCopy = time;
  }

  else
  {
    endTimeCopy = endTime;
  }

  if (time < endTime)
  {
    time = endTime;
  }

  v6 = *ptr;
  if (!*ptr)
  {
    return 0;
  }

  while (1)
  {
    v7 = v6;
    if (endTimeCopy <= *(v6 + 8) && time >= *v6)
    {
      break;
    }

    v6 = *(v6 + 24);
    if (!v6 || *(v6 + 16) <= endTimeCopy)
    {
      v6 = *(v7 + 32);
      if (!v6)
      {
        return 0;
      }
    }
  }

  return 1;
}

- (id)mergedIntervals
{
  v8[4] = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  ptr = self->_tree.__ptr_;
  v8[0] = &unk_1F05F2BD0;
  v8[1] = &v7;
  v8[3] = v8;
  HKIntervalTree<double>::_enumeratePreOrder(ptr, *ptr, v8);
  std::__function::__value_func<void ()(HKIntervalTreeNode<double> *)>::~__value_func[abi:ne200100](v8);
  v4 = [v7 copy];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (uint64_t)mergedIntervals
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)mergedIntervals
{
  v2 = **(self + 8);
  v3 = [MEMORY[0x1E696AB80] hk_dateIntervalWithStart:**a2 end:(*a2)[1]];
  [v2 addObject:?];
}

@end
@interface HKDateIntervalTree
- (BOOL)hasOverlapWithInterval:(id)a3;
- (BOOL)hasOverlapWithStartTime:(double)a3 endTime:(double)a4;
- (HKDateIntervalTree)init;
- (id)mergedIntervals;
- (uint64_t)mergedIntervals;
- (void)insertInterval:(id)a3;
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

- (void)insertInterval:(id)a3
{
  v9 = a3;
  v4 = [v9 startDate];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = [v9 endDate];
  [v7 timeIntervalSinceReferenceDate];
  [(HKDateIntervalTree *)self insertIntervalWithStartTime:v6 endTime:v8];
}

- (BOOL)hasOverlapWithInterval:(id)a3
{
  v4 = a3;
  v5 = [v4 startDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = [v4 endDate];
  [v8 timeIntervalSinceReferenceDate];
  LOBYTE(self) = [(HKDateIntervalTree *)self hasOverlapWithStartTime:v7 endTime:v9];

  return self;
}

- (BOOL)hasOverlapWithStartTime:(double)a3 endTime:(double)a4
{
  ptr = self->_tree.__ptr_;
  if (a4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = a4;
  }

  if (a3 < a4)
  {
    a3 = a4;
  }

  v6 = *ptr;
  if (!*ptr)
  {
    return 0;
  }

  while (1)
  {
    v7 = v6;
    if (v5 <= *(v6 + 8) && a3 >= *v6)
    {
      break;
    }

    v6 = *(v6 + 24);
    if (!v6 || *(v6 + 16) <= v5)
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
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)mergedIntervals
{
  v2 = **(a1 + 8);
  v3 = [MEMORY[0x1E696AB80] hk_dateIntervalWithStart:**a2 end:(*a2)[1]];
  [v2 addObject:?];
}

@end
@interface HKValueHistogram
- (BOOL)isEqual:(id)equal;
- (HKValueHistogram)initWithCoder:(id)coder;
- (HKValueHistogram)initWithSegments:(id)segments dateInterval:(id)interval;
- (double)fractionOfValuesInSegmentAtIndex:(int64_t)index;
- (int64_t)totalSampleCount;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKValueHistogram

- (HKValueHistogram)initWithSegments:(id)segments dateInterval:(id)interval
{
  segmentsCopy = segments;
  intervalCopy = interval;
  v12.receiver = self;
  v12.super_class = HKValueHistogram;
  v8 = [(HKValueHistogram *)&v12 init];
  if (v8)
  {
    v9 = [segmentsCopy copy];
    segments = v8->_segments;
    v8->_segments = v9;

    objc_storeStrong(&v8->_dateInterval, interval);
  }

  return v8;
}

- (int64_t)totalSampleCount
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_segments;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v10 + 1) + 8 * i) count];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (double)fractionOfValuesInSegmentAtIndex:(int64_t)index
{
  v5 = [(NSArray *)self->_segments objectAtIndexedSubscript:index];
  v6 = [v5 count];

  totalSampleCount = [(HKValueHistogram *)self totalSampleCount];
  if (totalSampleCount <= 0)
  {
    [(HKValueHistogram *)a2 fractionOfValuesInSegmentAtIndex:?];
  }

  return v6 / totalSampleCount;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if ([(HKValueHistogram *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    segments = self->_segments;
    segments = [(HKValueHistogram *)v5 segments];
    if ([(NSArray *)segments isEqual:segments])
    {
      dateInterval = self->_dateInterval;
      dateInterval = [(HKValueHistogram *)v5 dateInterval];
      v10 = [(NSDateInterval *)dateInterval isEqual:dateInterval];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (HKValueHistogram)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = [v4 hk_typesForArrayOf:objc_opt_class()];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"segments"];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];

  v9 = [(HKValueHistogram *)self initWithSegments:v7 dateInterval:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  segments = self->_segments;
  coderCopy = coder;
  [coderCopy encodeObject:segments forKey:@"segments"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
}

- (void)fractionOfValuesInSegmentAtIndex:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKValueHistogramCollection.m" lineNumber:95 description:@"Cannot compute fraction of values in segment of histogram with zero total samples"];
}

@end
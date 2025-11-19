@interface HKValueHistogram
- (BOOL)isEqual:(id)a3;
- (HKValueHistogram)initWithCoder:(id)a3;
- (HKValueHistogram)initWithSegments:(id)a3 dateInterval:(id)a4;
- (double)fractionOfValuesInSegmentAtIndex:(int64_t)a3;
- (int64_t)totalSampleCount;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKValueHistogram

- (HKValueHistogram)initWithSegments:(id)a3 dateInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HKValueHistogram;
  v8 = [(HKValueHistogram *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    segments = v8->_segments;
    v8->_segments = v9;

    objc_storeStrong(&v8->_dateInterval, a4);
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

- (double)fractionOfValuesInSegmentAtIndex:(int64_t)a3
{
  v5 = [(NSArray *)self->_segments objectAtIndexedSubscript:a3];
  v6 = [v5 count];

  v7 = [(HKValueHistogram *)self totalSampleCount];
  if (v7 <= 0)
  {
    [(HKValueHistogram *)a2 fractionOfValuesInSegmentAtIndex:?];
  }

  return v6 / v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else if ([(HKValueHistogram *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    segments = self->_segments;
    v7 = [(HKValueHistogram *)v5 segments];
    if ([(NSArray *)segments isEqual:v7])
    {
      dateInterval = self->_dateInterval;
      v9 = [(HKValueHistogram *)v5 dateInterval];
      v10 = [(NSDateInterval *)dateInterval isEqual:v9];
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

- (HKValueHistogram)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 hk_typesForArrayOf:objc_opt_class()];
  v7 = [v5 decodeObjectOfClasses:v6 forKey:@"segments"];

  v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];

  v9 = [(HKValueHistogram *)self initWithSegments:v7 dateInterval:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  segments = self->_segments;
  v5 = a3;
  [v5 encodeObject:segments forKey:@"segments"];
  [v5 encodeObject:self->_dateInterval forKey:@"dateInterval"];
}

- (void)fractionOfValuesInSegmentAtIndex:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKValueHistogramCollection.m" lineNumber:95 description:@"Cannot compute fraction of values in segment of histogram with zero total samples"];
}

@end
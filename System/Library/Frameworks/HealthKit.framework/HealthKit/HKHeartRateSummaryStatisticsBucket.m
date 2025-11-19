@interface HKHeartRateSummaryStatisticsBucket
- (BOOL)isEqual:(id)a3;
- (HKHeartRateSummaryStatisticsBucket)initWithBucketIndex:(int64_t)a3;
- (HKHeartRateSummaryStatisticsBucket)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHeartRateSummaryStatisticsBucket

- (HKHeartRateSummaryStatisticsBucket)initWithBucketIndex:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = HKHeartRateSummaryStatisticsBucket;
  v4 = [(HKHeartRateSummaryStatisticsBucket *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_bucketIndex = a3;
    v6 = [MEMORY[0x1E696AD50] indexSet];
    heartRatesInBeatsPerMinute = v5->_heartRatesInBeatsPerMinute;
    v5->_heartRatesInBeatsPerMinute = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [[HKHeartRateSummaryStatisticsBucket alloc] initWithBucketIndex:self->_bucketIndex];
  v6 = [(NSMutableIndexSet *)self->_heartRatesInBeatsPerMinute mutableCopyWithZone:a3];
  heartRatesInBeatsPerMinute = v5->_heartRatesInBeatsPerMinute;
  v5->_heartRatesInBeatsPerMinute = v6;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bucketIndex = self->_bucketIndex;
  v5 = a3;
  [v5 encodeInteger:bucketIndex forKey:@"BucketIndex"];
  [v5 encodeObject:self->_heartRatesInBeatsPerMinute forKey:@"HeartRatesInBeatsPerMinute"];
}

- (HKHeartRateSummaryStatisticsBucket)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKHeartRateSummaryStatisticsBucket;
  v5 = [(HKHeartRateSummaryStatisticsBucket *)&v9 init];
  if (v5)
  {
    v5->_bucketIndex = [v4 decodeIntegerForKey:@"BucketIndex"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HeartRatesInBeatsPerMinute"];
    heartRatesInBeatsPerMinute = v5->_heartRatesInBeatsPerMinute;
    v5->_heartRatesInBeatsPerMinute = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_bucketIndex];
  v6 = [v3 stringWithFormat:@"<%@:%p bucketIndex:%@ heartRatesInBeatsPerMinute:%@>", v4, self, v5, self->_heartRatesInBeatsPerMinute];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(HKHeartRateSummaryStatisticsBucket *)self bucketIndex], v5 == [(HKHeartRateSummaryStatisticsBucket *)v4 bucketIndex]))
    {
      v6 = [(HKHeartRateSummaryStatisticsBucket *)self heartRatesInBeatsPerMinute];
      v7 = [(HKHeartRateSummaryStatisticsBucket *)v4 heartRatesInBeatsPerMinute];
      if (v6 == v7)
      {
        v11 = 1;
      }

      else
      {
        v8 = [(HKHeartRateSummaryStatisticsBucket *)v4 heartRatesInBeatsPerMinute];
        if (v8)
        {
          v9 = [(HKHeartRateSummaryStatisticsBucket *)self heartRatesInBeatsPerMinute];
          v10 = [(HKHeartRateSummaryStatisticsBucket *)v4 heartRatesInBeatsPerMinute];
          v11 = [v9 isEqual:v10];
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(HKHeartRateSummaryStatisticsBucket *)self bucketIndex];
  v4 = [(HKHeartRateSummaryStatisticsBucket *)self heartRatesInBeatsPerMinute];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end
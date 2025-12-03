@interface HKHeartRateSummaryStatisticsBucket
- (BOOL)isEqual:(id)equal;
- (HKHeartRateSummaryStatisticsBucket)initWithBucketIndex:(int64_t)index;
- (HKHeartRateSummaryStatisticsBucket)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHeartRateSummaryStatisticsBucket

- (HKHeartRateSummaryStatisticsBucket)initWithBucketIndex:(int64_t)index
{
  v9.receiver = self;
  v9.super_class = HKHeartRateSummaryStatisticsBucket;
  v4 = [(HKHeartRateSummaryStatisticsBucket *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_bucketIndex = index;
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    heartRatesInBeatsPerMinute = v5->_heartRatesInBeatsPerMinute;
    v5->_heartRatesInBeatsPerMinute = indexSet;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [[HKHeartRateSummaryStatisticsBucket alloc] initWithBucketIndex:self->_bucketIndex];
  v6 = [(NSMutableIndexSet *)self->_heartRatesInBeatsPerMinute mutableCopyWithZone:zone];
  heartRatesInBeatsPerMinute = v5->_heartRatesInBeatsPerMinute;
  v5->_heartRatesInBeatsPerMinute = v6;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bucketIndex = self->_bucketIndex;
  coderCopy = coder;
  [coderCopy encodeInteger:bucketIndex forKey:@"BucketIndex"];
  [coderCopy encodeObject:self->_heartRatesInBeatsPerMinute forKey:@"HeartRatesInBeatsPerMinute"];
}

- (HKHeartRateSummaryStatisticsBucket)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKHeartRateSummaryStatisticsBucket;
  v5 = [(HKHeartRateSummaryStatisticsBucket *)&v9 init];
  if (v5)
  {
    v5->_bucketIndex = [coderCopy decodeIntegerForKey:@"BucketIndex"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HeartRatesInBeatsPerMinute"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(HKHeartRateSummaryStatisticsBucket *)self bucketIndex], v5 == [(HKHeartRateSummaryStatisticsBucket *)equalCopy bucketIndex]))
    {
      heartRatesInBeatsPerMinute = [(HKHeartRateSummaryStatisticsBucket *)self heartRatesInBeatsPerMinute];
      heartRatesInBeatsPerMinute2 = [(HKHeartRateSummaryStatisticsBucket *)equalCopy heartRatesInBeatsPerMinute];
      if (heartRatesInBeatsPerMinute == heartRatesInBeatsPerMinute2)
      {
        v11 = 1;
      }

      else
      {
        heartRatesInBeatsPerMinute3 = [(HKHeartRateSummaryStatisticsBucket *)equalCopy heartRatesInBeatsPerMinute];
        if (heartRatesInBeatsPerMinute3)
        {
          heartRatesInBeatsPerMinute4 = [(HKHeartRateSummaryStatisticsBucket *)self heartRatesInBeatsPerMinute];
          heartRatesInBeatsPerMinute5 = [(HKHeartRateSummaryStatisticsBucket *)equalCopy heartRatesInBeatsPerMinute];
          v11 = [heartRatesInBeatsPerMinute4 isEqual:heartRatesInBeatsPerMinute5];
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
  bucketIndex = [(HKHeartRateSummaryStatisticsBucket *)self bucketIndex];
  heartRatesInBeatsPerMinute = [(HKHeartRateSummaryStatisticsBucket *)self heartRatesInBeatsPerMinute];
  v5 = [heartRatesInBeatsPerMinute hash];

  return v5 ^ bucketIndex;
}

@end
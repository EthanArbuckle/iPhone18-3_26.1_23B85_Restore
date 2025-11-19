@interface DayRangeCacheKey
- (BOOL)isEqual:(id)a3;
- (DayRangeCacheKey)initWithOccurrenceStart:(id)a3 occurrenceEnd:(id)a4 rangeBoundStart:(id)a5 rangeBoundEnd:(id)a6;
- (unint64_t)hash;
@end

@implementation DayRangeCacheKey

- (DayRangeCacheKey)initWithOccurrenceStart:(id)a3 occurrenceEnd:(id)a4 rangeBoundStart:(id)a5 rangeBoundEnd:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = DayRangeCacheKey;
  v15 = [(DayRangeCacheKey *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_occurrenceStart, a3);
    objc_storeStrong(&v16->_occurrenceEnd, a4);
    objc_storeStrong(&v16->_rangeBoundStart, a5);
    objc_storeStrong(&v16->_rangeBoundEnd, a6);
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    v6 = v4;
    v7 = [(DayRangeCacheKey *)self rangeBoundStart];
    v8 = [(DayRangeCacheKey *)v6 rangeBoundStart];
    if ([v7 isEqual:v8])
    {
      v9 = [(DayRangeCacheKey *)self rangeBoundEnd];
      v10 = [(DayRangeCacheKey *)v6 rangeBoundEnd];
      if ([v9 isEqual:v10])
      {
        v11 = [(DayRangeCacheKey *)self occurrenceStart];
        v12 = [(DayRangeCacheKey *)v6 occurrenceStart];
        if ([v11 isEqual:v12])
        {
          v16 = [(DayRangeCacheKey *)self occurrenceEnd];
          v13 = [(DayRangeCacheKey *)v6 occurrenceEnd];
          v14 = [v16 isEqual:v13];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(DayRangeCacheKey *)self rangeBoundStart];
  v4 = [v3 hash];
  v5 = [(DayRangeCacheKey *)self rangeBoundEnd];
  v6 = [v5 hash] ^ v4;
  v7 = [(DayRangeCacheKey *)self occurrenceStart];
  v8 = [v7 hash];
  v9 = [(DayRangeCacheKey *)self occurrenceEnd];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

@end
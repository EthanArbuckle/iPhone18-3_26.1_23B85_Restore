@interface DayRangeCacheKey
- (BOOL)isEqual:(id)equal;
- (DayRangeCacheKey)initWithOccurrenceStart:(id)start occurrenceEnd:(id)end rangeBoundStart:(id)boundStart rangeBoundEnd:(id)boundEnd;
- (unint64_t)hash;
@end

@implementation DayRangeCacheKey

- (DayRangeCacheKey)initWithOccurrenceStart:(id)start occurrenceEnd:(id)end rangeBoundStart:(id)boundStart rangeBoundEnd:(id)boundEnd
{
  startCopy = start;
  endCopy = end;
  boundStartCopy = boundStart;
  boundEndCopy = boundEnd;
  v18.receiver = self;
  v18.super_class = DayRangeCacheKey;
  v15 = [(DayRangeCacheKey *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_occurrenceStart, start);
    objc_storeStrong(&v16->_occurrenceEnd, end);
    objc_storeStrong(&v16->_rangeBoundStart, boundStart);
    objc_storeStrong(&v16->_rangeBoundEnd, boundEnd);
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    v6 = equalCopy;
    rangeBoundStart = [(DayRangeCacheKey *)self rangeBoundStart];
    rangeBoundStart2 = [(DayRangeCacheKey *)v6 rangeBoundStart];
    if ([rangeBoundStart isEqual:rangeBoundStart2])
    {
      rangeBoundEnd = [(DayRangeCacheKey *)self rangeBoundEnd];
      rangeBoundEnd2 = [(DayRangeCacheKey *)v6 rangeBoundEnd];
      if ([rangeBoundEnd isEqual:rangeBoundEnd2])
      {
        occurrenceStart = [(DayRangeCacheKey *)self occurrenceStart];
        occurrenceStart2 = [(DayRangeCacheKey *)v6 occurrenceStart];
        if ([occurrenceStart isEqual:occurrenceStart2])
        {
          occurrenceEnd = [(DayRangeCacheKey *)self occurrenceEnd];
          occurrenceEnd2 = [(DayRangeCacheKey *)v6 occurrenceEnd];
          v14 = [occurrenceEnd isEqual:occurrenceEnd2];
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
  rangeBoundStart = [(DayRangeCacheKey *)self rangeBoundStart];
  v4 = [rangeBoundStart hash];
  rangeBoundEnd = [(DayRangeCacheKey *)self rangeBoundEnd];
  v6 = [rangeBoundEnd hash] ^ v4;
  occurrenceStart = [(DayRangeCacheKey *)self occurrenceStart];
  v8 = [occurrenceStart hash];
  occurrenceEnd = [(DayRangeCacheKey *)self occurrenceEnd];
  v10 = v8 ^ [occurrenceEnd hash];

  return v6 ^ v10;
}

@end
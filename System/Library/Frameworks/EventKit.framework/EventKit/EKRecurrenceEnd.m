@interface EKRecurrenceEnd
+ (EKRecurrenceEnd)recurrenceEndWithEndDate:(NSDate *)endDate;
+ (EKRecurrenceEnd)recurrenceEndWithOccurrenceCount:(NSUInteger)occurrenceCount;
- (BOOL)isEqual:(id)a3;
- (EKRecurrenceEnd)initWithCoder:(id)a3;
- (EKRecurrenceEnd)initWithEndDate:(id)a3;
- (EKRecurrenceEnd)initWithOccurrenceCount:(unint64_t)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EKRecurrenceEnd

+ (EKRecurrenceEnd)recurrenceEndWithEndDate:(NSDate *)endDate
{
  v3 = endDate;
  v4 = [[EKRecurrenceEnd alloc] initWithEndDate:v3];

  return v4;
}

+ (EKRecurrenceEnd)recurrenceEndWithOccurrenceCount:(NSUInteger)occurrenceCount
{
  v3 = [[EKRecurrenceEnd alloc] initWithOccurrenceCount:occurrenceCount];

  return v3;
}

- (EKRecurrenceEnd)initWithEndDate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"endDate is nil"];
  }

  v11.receiver = self;
  v11.super_class = EKRecurrenceEnd;
  v5 = [(EKRecurrenceEnd *)&v11 init];
  if (v5)
  {
    if (v4)
    {
      v6 = MEMORY[0x1E695DF00];
      [v4 timeIntervalSinceReferenceDate];
      v8 = [v6 dateWithTimeIntervalSinceReferenceDate:floor(v7)];
    }

    else
    {
      v8 = 0;
    }

    endDate = v5->_endDate;
    v5->_endDate = v8;
  }

  return v5;
}

- (EKRecurrenceEnd)initWithOccurrenceCount:(unint64_t)a3
{
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"occurrenceCount == 0"];
  }

  v6.receiver = self;
  v6.super_class = EKRecurrenceEnd;
  result = [(EKRecurrenceEnd *)&v6 init];
  if (result)
  {
    result->_occurrenceCount = a3;
  }

  return result;
}

- (EKRecurrenceEnd)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EKRecurrenceEnd;
  v5 = [(EKRecurrenceEnd *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v6;

    v5->_occurrenceCount = [v4 decodeIntForKey:@"occurrenceCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  endDate = self->_endDate;
  v5 = a3;
  [v5 encodeObject:endDate forKey:@"endDate"];
  [v5 encodeInteger:self->_occurrenceCount forKey:@"occurrenceCount"];
}

- (NSString)description
{
  v3 = [(EKRecurrenceEnd *)self usesEndDate];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  if (v3)
  {
    v6 = [(EKRecurrenceEnd *)self endDate];
    v7 = [EKRecurrenceRule iCalendarValueFromDate:v6 isDateOnly:0 isFloating:0];
    v8 = [v4 stringWithFormat:@"%@ <%p> { UNTIL=%@ } ", v5, self, v7];
  }

  else
  {
    v8 = [v4 stringWithFormat:@"%@ <%p> { COUNT=%lu }", v5, self, -[EKRecurrenceEnd occurrenceCount](self, "occurrenceCount")];
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(EKRecurrenceEnd *)self occurrenceCount];
  v4 = [(EKRecurrenceEnd *)self endDate];
  v5 = [v4 hash];

  return v5 ^ v3;
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
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && (v6 = [(EKRecurrenceEnd *)self occurrenceCount], v6 == [(EKRecurrenceEnd *)v4 occurrenceCount]))
    {
      v7 = [(EKRecurrenceEnd *)self endDate];
      v8 = [(EKRecurrenceEnd *)v4 endDate];
      if (v7 == v8)
      {
        v11 = 1;
      }

      else
      {
        v9 = [(EKRecurrenceEnd *)self endDate];
        v10 = [(EKRecurrenceEnd *)v4 endDate];
        v11 = [v9 isEqualToDate:v10];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

@end
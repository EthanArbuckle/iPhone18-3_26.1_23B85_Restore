@interface EKRecurrenceEnd
+ (EKRecurrenceEnd)recurrenceEndWithEndDate:(NSDate *)endDate;
+ (EKRecurrenceEnd)recurrenceEndWithOccurrenceCount:(NSUInteger)occurrenceCount;
- (BOOL)isEqual:(id)equal;
- (EKRecurrenceEnd)initWithCoder:(id)coder;
- (EKRecurrenceEnd)initWithEndDate:(id)date;
- (EKRecurrenceEnd)initWithOccurrenceCount:(unint64_t)count;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (EKRecurrenceEnd)initWithEndDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"endDate is nil"];
  }

  v11.receiver = self;
  v11.super_class = EKRecurrenceEnd;
  v5 = [(EKRecurrenceEnd *)&v11 init];
  if (v5)
  {
    if (dateCopy)
    {
      v6 = MEMORY[0x1E695DF00];
      [dateCopy timeIntervalSinceReferenceDate];
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

- (EKRecurrenceEnd)initWithOccurrenceCount:(unint64_t)count
{
  if (!count)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"occurrenceCount == 0"];
  }

  v6.receiver = self;
  v6.super_class = EKRecurrenceEnd;
  result = [(EKRecurrenceEnd *)&v6 init];
  if (result)
  {
    result->_occurrenceCount = count;
  }

  return result;
}

- (EKRecurrenceEnd)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = EKRecurrenceEnd;
  v5 = [(EKRecurrenceEnd *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v6;

    v5->_occurrenceCount = [coderCopy decodeIntForKey:@"occurrenceCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  endDate = self->_endDate;
  coderCopy = coder;
  [coderCopy encodeObject:endDate forKey:@"endDate"];
  [coderCopy encodeInteger:self->_occurrenceCount forKey:@"occurrenceCount"];
}

- (NSString)description
{
  usesEndDate = [(EKRecurrenceEnd *)self usesEndDate];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  if (usesEndDate)
  {
    endDate = [(EKRecurrenceEnd *)self endDate];
    v7 = [EKRecurrenceRule iCalendarValueFromDate:endDate isDateOnly:0 isFloating:0];
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
  occurrenceCount = [(EKRecurrenceEnd *)self occurrenceCount];
  endDate = [(EKRecurrenceEnd *)self endDate];
  v5 = [endDate hash];

  return v5 ^ occurrenceCount;
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
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && (v6 = [(EKRecurrenceEnd *)self occurrenceCount], v6 == [(EKRecurrenceEnd *)equalCopy occurrenceCount]))
    {
      endDate = [(EKRecurrenceEnd *)self endDate];
      endDate2 = [(EKRecurrenceEnd *)equalCopy endDate];
      if (endDate == endDate2)
      {
        v11 = 1;
      }

      else
      {
        endDate3 = [(EKRecurrenceEnd *)self endDate];
        endDate4 = [(EKRecurrenceEnd *)equalCopy endDate];
        v11 = [endDate3 isEqualToDate:endDate4];
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
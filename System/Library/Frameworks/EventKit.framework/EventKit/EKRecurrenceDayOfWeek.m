@interface EKRecurrenceDayOfWeek
+ (EKRecurrenceDayOfWeek)dayOfWeek:(EKWeekday)dayOfTheWeek;
+ (EKRecurrenceDayOfWeek)dayOfWeek:(EKWeekday)dayOfTheWeek weekNumber:(NSInteger)weekNumber;
+ (id)iCalendarDescriptionForDayOfWeek:(id)a3;
+ (id)iCalendarValueFromDayOfTheWeek:(int64_t)a3;
+ (int64_t)icsWeekDayFromDayOfTheWeek:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (EKRecurrenceDayOfWeek)initWithCoder:(id)a3;
- (NSString)description;
- (id)iCalendarDescription;
- (id)initWithDayOfTheWeek:(EKWeekday)dayOfTheWeek weekNumber:(NSInteger)weekNumber;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EKRecurrenceDayOfWeek

+ (EKRecurrenceDayOfWeek)dayOfWeek:(EKWeekday)dayOfTheWeek
{
  v3 = [[a1 alloc] initWithDayOfTheWeek:dayOfTheWeek weekNumber:0];

  return v3;
}

+ (EKRecurrenceDayOfWeek)dayOfWeek:(EKWeekday)dayOfTheWeek weekNumber:(NSInteger)weekNumber
{
  v4 = [[a1 alloc] initWithDayOfTheWeek:dayOfTheWeek weekNumber:weekNumber];

  return v4;
}

- (id)initWithDayOfTheWeek:(EKWeekday)dayOfTheWeek weekNumber:(NSInteger)weekNumber
{
  if ((dayOfTheWeek - 8) <= 0xFFFFFFFFFFFFFFF8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid day number"];
  }

  v8.receiver = self;
  v8.super_class = EKRecurrenceDayOfWeek;
  result = [(EKRecurrenceDayOfWeek *)&v8 init];
  if (result)
  {
    *(result + 1) = dayOfTheWeek;
    *(result + 2) = weekNumber;
  }

  return result;
}

- (EKRecurrenceDayOfWeek)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = EKRecurrenceDayOfWeek;
  v5 = [(EKRecurrenceDayOfWeek *)&v7 init];
  if (v5)
  {
    v5->_dayOfTheWeek = [v4 decodeIntegerForKey:@"dayOfTheWeek"];
    v5->_weekNumber = [v4 decodeIntegerForKey:@"weekNumber"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  dayOfTheWeek = self->_dayOfTheWeek;
  v5 = a3;
  [v5 encodeInteger:dayOfTheWeek forKey:@"dayOfTheWeek"];
  [v5 encodeInteger:self->_weekNumber forKey:@"weekNumber"];
}

+ (id)iCalendarValueFromDayOfTheWeek:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return &stru_1F1B49D68;
  }

  else
  {
    return off_1E77FFD50[a3 - 1];
  }
}

+ (int64_t)icsWeekDayFromDayOfTheWeek:(int64_t)a3
{
  if ((a3 - 2) >= 6)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

- (id)iCalendarDescription
{
  weekNumber = self->_weekNumber;
  if (weekNumber)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [objc_opt_class() iCalendarValueFromDayOfTheWeek:self->_dayOfTheWeek];
    v5 = [v3 stringWithFormat:@"%ld%@", weekNumber, v4];
  }

  else
  {
    v5 = [objc_opt_class() iCalendarValueFromDayOfTheWeek:self->_dayOfTheWeek];
  }

  return v5;
}

+ (id)iCalendarDescriptionForDayOfWeek:(id)a3
{
  v3 = a3;
  if ([v3 weekNumber])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [v3 weekNumber];
    v6 = [MEMORY[0x1E6993030] iCalendarValueFromDayOfTheWeek:{objc_msgSend(v3, "dayOfTheWeek")}];
    v7 = [v4 stringWithFormat:@"%ld%@", v5, v6];
  }

  else
  {
    v7 = [MEMORY[0x1E6993030] iCalendarValueFromDayOfTheWeek:{objc_msgSend(v3, "dayOfTheWeek")}];
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EKRecurrenceDayOfWeek *)self iCalendarDescription];
  v6 = [v3 stringWithFormat:@"%@ <%p> { %@ }", v4, self, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && (v6 = [(EKRecurrenceDayOfWeek *)self dayOfTheWeek], v6 == [(EKRecurrenceDayOfWeek *)v4 dayOfTheWeek]))
    {
      v7 = [(EKRecurrenceDayOfWeek *)self weekNumber];
      v8 = v7 == [(EKRecurrenceDayOfWeek *)v4 weekNumber];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end
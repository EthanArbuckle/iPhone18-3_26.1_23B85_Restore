@interface EKRecurrenceDayOfWeek
+ (EKRecurrenceDayOfWeek)dayOfWeek:(EKWeekday)dayOfTheWeek;
+ (EKRecurrenceDayOfWeek)dayOfWeek:(EKWeekday)dayOfTheWeek weekNumber:(NSInteger)weekNumber;
+ (id)iCalendarDescriptionForDayOfWeek:(id)week;
+ (id)iCalendarValueFromDayOfTheWeek:(int64_t)week;
+ (int64_t)icsWeekDayFromDayOfTheWeek:(int64_t)week;
- (BOOL)isEqual:(id)equal;
- (EKRecurrenceDayOfWeek)initWithCoder:(id)coder;
- (NSString)description;
- (id)iCalendarDescription;
- (id)initWithDayOfTheWeek:(EKWeekday)dayOfTheWeek weekNumber:(NSInteger)weekNumber;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EKRecurrenceDayOfWeek

+ (EKRecurrenceDayOfWeek)dayOfWeek:(EKWeekday)dayOfTheWeek
{
  v3 = [[self alloc] initWithDayOfTheWeek:dayOfTheWeek weekNumber:0];

  return v3;
}

+ (EKRecurrenceDayOfWeek)dayOfWeek:(EKWeekday)dayOfTheWeek weekNumber:(NSInteger)weekNumber
{
  v4 = [[self alloc] initWithDayOfTheWeek:dayOfTheWeek weekNumber:weekNumber];

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

- (EKRecurrenceDayOfWeek)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = EKRecurrenceDayOfWeek;
  v5 = [(EKRecurrenceDayOfWeek *)&v7 init];
  if (v5)
  {
    v5->_dayOfTheWeek = [coderCopy decodeIntegerForKey:@"dayOfTheWeek"];
    v5->_weekNumber = [coderCopy decodeIntegerForKey:@"weekNumber"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  dayOfTheWeek = self->_dayOfTheWeek;
  coderCopy = coder;
  [coderCopy encodeInteger:dayOfTheWeek forKey:@"dayOfTheWeek"];
  [coderCopy encodeInteger:self->_weekNumber forKey:@"weekNumber"];
}

+ (id)iCalendarValueFromDayOfTheWeek:(int64_t)week
{
  if ((week - 1) > 6)
  {
    return &stru_1F1B49D68;
  }

  else
  {
    return off_1E77FFD50[week - 1];
  }
}

+ (int64_t)icsWeekDayFromDayOfTheWeek:(int64_t)week
{
  if ((week - 2) >= 6)
  {
    return 1;
  }

  else
  {
    return week;
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

+ (id)iCalendarDescriptionForDayOfWeek:(id)week
{
  weekCopy = week;
  if ([weekCopy weekNumber])
  {
    v4 = MEMORY[0x1E696AEC0];
    weekNumber = [weekCopy weekNumber];
    v6 = [MEMORY[0x1E6993030] iCalendarValueFromDayOfTheWeek:{objc_msgSend(weekCopy, "dayOfTheWeek")}];
    v7 = [v4 stringWithFormat:@"%ld%@", weekNumber, v6];
  }

  else
  {
    v7 = [MEMORY[0x1E6993030] iCalendarValueFromDayOfTheWeek:{objc_msgSend(weekCopy, "dayOfTheWeek")}];
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  iCalendarDescription = [(EKRecurrenceDayOfWeek *)self iCalendarDescription];
  v6 = [v3 stringWithFormat:@"%@ <%p> { %@ }", v4, self, iCalendarDescription];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && (v6 = [(EKRecurrenceDayOfWeek *)self dayOfTheWeek], v6 == [(EKRecurrenceDayOfWeek *)equalCopy dayOfTheWeek]))
    {
      weekNumber = [(EKRecurrenceDayOfWeek *)self weekNumber];
      v8 = weekNumber == [(EKRecurrenceDayOfWeek *)equalCopy weekNumber];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end
@interface UNCalendarNotificationTrigger
- (BOOL)isEqual:(id)equal;
- (NSDate)nextTriggerDate;
- (UNCalendarNotificationTrigger)initWithCoder:(id)coder;
- (id)description;
- (id)nextTriggerDateAfterDate:(id)date withRequestedDate:(id)requestedDate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNCalendarNotificationTrigger

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = UNCalendarNotificationTrigger;
  v3 = [(UNNotificationTrigger *)&v7 hash];
  dateComponents = [(UNCalendarNotificationTrigger *)self dateComponents];
  v5 = [dateComponents hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = UNCalendarNotificationTrigger, [(UNNotificationTrigger *)&v9 isEqual:equalCopy]))
  {
    dateComponents = [(UNCalendarNotificationTrigger *)self dateComponents];
    dateComponents2 = [equalCopy dateComponents];
    v7 = UNEqualObjects(dateComponents, dateComponents2);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  dateComponents = [(UNCalendarNotificationTrigger *)self dateComponents];
  [(UNNotificationTrigger *)self repeats];
  v6 = NSStringFromBOOL();
  v7 = [v3 stringWithFormat:@"<%@: %p dateComponents: %@, repeats: %@>", v4, self, dateComponents, v6];;

  return v7;
}

- (NSDate)nextTriggerDate
{
  v4.receiver = self;
  v4.super_class = UNCalendarNotificationTrigger;
  nextTriggerDate = [(UNNotificationTrigger *)&v4 nextTriggerDate];

  return nextTriggerDate;
}

- (id)nextTriggerDateAfterDate:(id)date withRequestedDate:(id)requestedDate
{
  dateCopy = date;
  requestedDateCopy = requestedDate;
  v8 = requestedDateCopy;
  if (dateCopy)
  {
    if (requestedDateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [UNCalendarNotificationTrigger nextTriggerDateAfterDate:withRequestedDate:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [UNCalendarNotificationTrigger nextTriggerDateAfterDate:withRequestedDate:];
LABEL_3:
  dateComponents = [(UNCalendarNotificationTrigger *)self dateComponents];
  v10 = dateComponents;
  if (dateComponents)
  {
    calendar = [dateComponents calendar];
    if (!calendar)
    {
      calendar = [MEMORY[0x1E695DEE8] currentCalendar];
      timeZone = [v10 timeZone];

      if (timeZone)
      {
        timeZone2 = [v10 timeZone];
        [calendar setTimeZone:timeZone2];
      }
    }

    if ([(UNNotificationTrigger *)self repeats])
    {
      v14 = dateCopy;
    }

    else
    {
      v14 = v8;
    }

    v15 = v14;
    v16 = objc_autoreleasePoolPush();
    v17 = [calendar nextDateAfterDate:v15 matchingComponents:v10 options:512];
    objc_autoreleasePoolPop(v16);
    if ([v17 compare:dateCopy] != 1)
    {

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UNCalendarNotificationTrigger;
  coderCopy = coder;
  [(UNNotificationTrigger *)&v6 encodeWithCoder:coderCopy];
  v5 = [(UNCalendarNotificationTrigger *)self dateComponents:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"matchingDateComponents"];
}

- (UNCalendarNotificationTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = UNCalendarNotificationTrigger;
  v5 = [(UNNotificationTrigger *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchingDateComponents"];
    v7 = [v6 copy];
    dateComponents = v5->_dateComponents;
    v5->_dateComponents = v7;
  }

  return v5;
}

- (void)_initWithDateComponents:repeats:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)nextTriggerDateAfterDate:withRequestedDate:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)nextTriggerDateAfterDate:withRequestedDate:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end
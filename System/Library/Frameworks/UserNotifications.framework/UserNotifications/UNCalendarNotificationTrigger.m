@interface UNCalendarNotificationTrigger
- (BOOL)isEqual:(id)a3;
- (NSDate)nextTriggerDate;
- (UNCalendarNotificationTrigger)initWithCoder:(id)a3;
- (id)description;
- (id)nextTriggerDateAfterDate:(id)a3 withRequestedDate:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNCalendarNotificationTrigger

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = UNCalendarNotificationTrigger;
  v3 = [(UNNotificationTrigger *)&v7 hash];
  v4 = [(UNCalendarNotificationTrigger *)self dateComponents];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = UNCalendarNotificationTrigger, [(UNNotificationTrigger *)&v9 isEqual:v4]))
  {
    v5 = [(UNCalendarNotificationTrigger *)self dateComponents];
    v6 = [v4 dateComponents];
    v7 = UNEqualObjects(v5, v6);
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
  v5 = [(UNCalendarNotificationTrigger *)self dateComponents];
  [(UNNotificationTrigger *)self repeats];
  v6 = NSStringFromBOOL();
  v7 = [v3 stringWithFormat:@"<%@: %p dateComponents: %@, repeats: %@>", v4, self, v5, v6];;

  return v7;
}

- (NSDate)nextTriggerDate
{
  v4.receiver = self;
  v4.super_class = UNCalendarNotificationTrigger;
  v2 = [(UNNotificationTrigger *)&v4 nextTriggerDate];

  return v2;
}

- (id)nextTriggerDateAfterDate:(id)a3 withRequestedDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
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
  v9 = [(UNCalendarNotificationTrigger *)self dateComponents];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 calendar];
    if (!v11)
    {
      v11 = [MEMORY[0x1E695DEE8] currentCalendar];
      v12 = [v10 timeZone];

      if (v12)
      {
        v13 = [v10 timeZone];
        [v11 setTimeZone:v13];
      }
    }

    if ([(UNNotificationTrigger *)self repeats])
    {
      v14 = v6;
    }

    else
    {
      v14 = v8;
    }

    v15 = v14;
    v16 = objc_autoreleasePoolPush();
    v17 = [v11 nextDateAfterDate:v15 matchingComponents:v10 options:512];
    objc_autoreleasePoolPop(v16);
    if ([v17 compare:v6] != 1)
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

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = UNCalendarNotificationTrigger;
  v4 = a3;
  [(UNNotificationTrigger *)&v6 encodeWithCoder:v4];
  v5 = [(UNCalendarNotificationTrigger *)self dateComponents:v6.receiver];
  [v4 encodeObject:v5 forKey:@"matchingDateComponents"];
}

- (UNCalendarNotificationTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UNCalendarNotificationTrigger;
  v5 = [(UNNotificationTrigger *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matchingDateComponents"];
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
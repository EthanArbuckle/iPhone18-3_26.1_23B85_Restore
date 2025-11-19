@interface UNTimeIntervalNotificationTrigger
- (BOOL)isEqual:(id)a3;
- (NSDate)nextTriggerDate;
- (UNTimeIntervalNotificationTrigger)initWithCoder:(id)a3;
- (id)description;
- (id)nextTriggerDateAfterDate:(id)a3 withRequestedDate:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNTimeIntervalNotificationTrigger

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = UNTimeIntervalNotificationTrigger;
  v3 = [(UNNotificationTrigger *)&v8 hash];
  v4 = MEMORY[0x1E696AD98];
  [(UNTimeIntervalNotificationTrigger *)self timeInterval];
  v5 = [v4 numberWithDouble:?];
  v6 = [v5 hash];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = UNTimeIntervalNotificationTrigger, [(UNNotificationTrigger *)&v10 isEqual:v4]))
  {
    [(UNTimeIntervalNotificationTrigger *)self timeInterval];
    v6 = v5;
    [v4 timeInterval];
    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(UNNotificationTrigger *)self repeats];
  v5 = NSStringFromBOOL();
  [(UNTimeIntervalNotificationTrigger *)self timeInterval];
  v7 = [v3 stringWithFormat:@"<%@: %p repeats: %@, timeInterval: %lf>", v4, self, v5, v6];;

  return v7;
}

- (NSDate)nextTriggerDate
{
  v4.receiver = self;
  v4.super_class = UNTimeIntervalNotificationTrigger;
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
    [UNTimeIntervalNotificationTrigger nextTriggerDateAfterDate:withRequestedDate:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [UNTimeIntervalNotificationTrigger nextTriggerDateAfterDate:withRequestedDate:];
LABEL_3:
  v9 = [v6 laterDate:v8];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;
  [v8 timeIntervalSinceReferenceDate];
  v13 = v12;
  [(UNTimeIntervalNotificationTrigger *)self timeInterval];
  v15 = v14;
  v16 = [(UNNotificationTrigger *)self repeats];
  v17 = 1.0;
  if (v16)
  {
    v17 = ((v11 - v13) / v15 + 1.0);
  }

  v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v13 + v17 * v15];
  if ([v18 compare:v6] != 1)
  {

    v18 = 0;
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UNTimeIntervalNotificationTrigger;
  v4 = a3;
  [(UNNotificationTrigger *)&v5 encodeWithCoder:v4];
  [(UNTimeIntervalNotificationTrigger *)self timeInterval:v5.receiver];
  [v4 encodeDouble:@"timeInterval" forKey:?];
}

- (UNTimeIntervalNotificationTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UNTimeIntervalNotificationTrigger;
  v5 = [(UNNotificationTrigger *)&v8 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"timeInterval"];
    v5->_timeInterval = v6;
  }

  return v5;
}

- (void)_initWithTimeInterval:repeats:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_initWithTimeInterval:repeats:.cold.2()
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
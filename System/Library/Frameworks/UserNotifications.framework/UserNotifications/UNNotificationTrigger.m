@interface UNNotificationTrigger
- (BOOL)isEqual:(id)a3;
- (BOOL)willTriggerAfterDate:(id)a3 withRequestedDate:(id)a4;
- (UNNotificationTrigger)init;
- (UNNotificationTrigger)initWithCoder:(id)a3;
- (id)_init;
- (id)_initWithRepeats:(BOOL)a3;
- (id)description;
- (id)nextTriggerDate;
- (id)nextTriggerDateAfterLastTriggerDate:(id)a3 withRequestedDate:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotificationTrigger

- (UNNotificationTrigger)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UNNotificationTrigger.m" lineNumber:36 description:@"use subclasses"];

  return 0;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = UNNotificationTrigger;
  return [(UNNotificationTrigger *)&v3 init];
}

- (id)_initWithRepeats:(BOOL)a3
{
  result = [(UNNotificationTrigger *)self _init];
  if (result)
  {
    *(result + 8) = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UNNotificationTrigger *)self repeats];
    v6 = v5 ^ [v4 repeats] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(UNNotificationTrigger *)self repeats];
  v5 = NSStringFromBOOL();
  v6 = [v3 stringWithFormat:@"<%@: %p repeats: %@>", v4, self, v5];;

  return v6;
}

- (id)nextTriggerDate
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [(UNNotificationTrigger *)self nextTriggerDateAfterDate:v3 withRequestedDate:v3];

  return v4;
}

- (id)nextTriggerDateAfterLastTriggerDate:(id)a3 withRequestedDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(UNNotificationTrigger *)self _retroactiveTriggerHysteresis];
  v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-v8];
  v10 = [v7 laterDate:v9];

  v11 = [(UNNotificationTrigger *)self nextTriggerDateAfterDate:v10 withRequestedDate:v6];

  return v11;
}

- (BOOL)willTriggerAfterDate:(id)a3 withRequestedDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UNNotificationTrigger *)self repeats])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(UNNotificationTrigger *)self nextTriggerDateAfterDate:v6 withRequestedDate:v7];
    v8 = v9 != 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[UNNotificationTrigger repeats](self forKey:{"repeats"), @"repeats"}];
}

- (UNNotificationTrigger)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"repeats"];

  return [(UNNotificationTrigger *)self _initWithRepeats:v4];
}

@end
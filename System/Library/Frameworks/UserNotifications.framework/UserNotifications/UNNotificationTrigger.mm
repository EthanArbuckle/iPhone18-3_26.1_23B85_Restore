@interface UNNotificationTrigger
- (BOOL)isEqual:(id)equal;
- (BOOL)willTriggerAfterDate:(id)date withRequestedDate:(id)requestedDate;
- (UNNotificationTrigger)init;
- (UNNotificationTrigger)initWithCoder:(id)coder;
- (id)_init;
- (id)_initWithRepeats:(BOOL)repeats;
- (id)description;
- (id)nextTriggerDate;
- (id)nextTriggerDateAfterLastTriggerDate:(id)date withRequestedDate:(id)requestedDate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNNotificationTrigger

- (UNNotificationTrigger)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UNNotificationTrigger.m" lineNumber:36 description:@"use subclasses"];

  return 0;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = UNNotificationTrigger;
  return [(UNNotificationTrigger *)&v3 init];
}

- (id)_initWithRepeats:(BOOL)repeats
{
  result = [(UNNotificationTrigger *)self _init];
  if (result)
  {
    *(result + 8) = repeats;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    repeats = [(UNNotificationTrigger *)self repeats];
    v6 = repeats ^ [equalCopy repeats] ^ 1;
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
  date = [MEMORY[0x1E695DF00] date];
  v4 = [(UNNotificationTrigger *)self nextTriggerDateAfterDate:date withRequestedDate:date];

  return v4;
}

- (id)nextTriggerDateAfterLastTriggerDate:(id)date withRequestedDate:(id)requestedDate
{
  requestedDateCopy = requestedDate;
  dateCopy = date;
  [(UNNotificationTrigger *)self _retroactiveTriggerHysteresis];
  v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-v8];
  v10 = [dateCopy laterDate:v9];

  v11 = [(UNNotificationTrigger *)self nextTriggerDateAfterDate:v10 withRequestedDate:requestedDateCopy];

  return v11;
}

- (BOOL)willTriggerAfterDate:(id)date withRequestedDate:(id)requestedDate
{
  dateCopy = date;
  requestedDateCopy = requestedDate;
  if ([(UNNotificationTrigger *)self repeats])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(UNNotificationTrigger *)self nextTriggerDateAfterDate:dateCopy withRequestedDate:requestedDateCopy];
    v8 = v9 != 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[UNNotificationTrigger repeats](self forKey:{"repeats"), @"repeats"}];
}

- (UNNotificationTrigger)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"repeats"];

  return [(UNNotificationTrigger *)self _initWithRepeats:v4];
}

@end
@interface UNLegacyNotificationTrigger
+ (id)triggerWithDate:(id)date timeZone:(id)zone repeatInterval:(unint64_t)interval repeatCalendar:(id)calendar;
- (BOOL)isEqual:(id)equal;
- (BOOL)willTriggerAfterDate:(id)date withRequestedDate:(id)requestedDate;
- (UNLegacyNotificationTrigger)initWithCoder:(id)coder;
- (double)_retroactiveTriggerHysteresis;
- (id)_initWithDate:(id)date timeZone:(id)zone remainingRepeatCount:(int)count totalRepeatCount:(int)repeatCount repeatInterval:(unint64_t)interval repeatCalendar:(id)calendar;
- (id)_nextTriggerDateAfterDate:(id)date withRequestedDate:(id)requestedDate defaultTimeZone:(id)zone;
- (id)description;
- (id)nextTriggerDateAfterDate:(id)date withRequestedDate:(id)requestedDate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNLegacyNotificationTrigger

+ (id)triggerWithDate:(id)date timeZone:(id)zone repeatInterval:(unint64_t)interval repeatCalendar:(id)calendar
{
  calendarCopy = calendar;
  zoneCopy = zone;
  dateCopy = date;
  v13 = [[self alloc] _initWithDate:dateCopy timeZone:zoneCopy remainingRepeatCount:0x80000000 totalRepeatCount:0x80000000 repeatInterval:interval repeatCalendar:calendarCopy];

  return v13;
}

- (id)_initWithDate:(id)date timeZone:(id)zone remainingRepeatCount:(int)count totalRepeatCount:(int)repeatCount repeatInterval:(unint64_t)interval repeatCalendar:(id)calendar
{
  dateCopy = date;
  zoneCopy = zone;
  calendarCopy = calendar;
  v25.receiver = self;
  v25.super_class = UNLegacyNotificationTrigger;
  v17 = [(UNNotificationTrigger *)&v25 _initWithRepeats:interval != 0];
  if (v17)
  {
    v18 = [dateCopy copy];
    v19 = v17[3];
    v17[3] = v18;

    v20 = [zoneCopy copy];
    v21 = v17[4];
    v17[4] = v20;

    *(v17 + 3) = count;
    v22 = [calendarCopy copy];
    v23 = v17[5];
    v17[5] = v22;

    v17[6] = interval;
    *(v17 + 4) = repeatCount;
  }

  return v17;
}

- (unint64_t)hash
{
  v14.receiver = self;
  v14.super_class = UNLegacyNotificationTrigger;
  v3 = [(UNNotificationTrigger *)&v14 hash];
  date = [(UNLegacyNotificationTrigger *)self date];
  v5 = [date hash];
  timeZone = [(UNLegacyNotificationTrigger *)self timeZone];
  v7 = v5 ^ [timeZone hash];
  v8 = v7 ^ [(UNLegacyNotificationTrigger *)self remainingRepeatCount];
  repeatCalendar = [(UNLegacyNotificationTrigger *)self repeatCalendar];
  v10 = v8 ^ [repeatCalendar hash];
  v11 = v10 ^ [(UNLegacyNotificationTrigger *)self repeatInterval]^ v3;
  totalRepeatCount = [(UNLegacyNotificationTrigger *)self totalRepeatCount];

  return v11 ^ totalRepeatCount;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v16.receiver = self, v16.super_class = UNLegacyNotificationTrigger, [(UNNotificationTrigger *)&v16 isEqual:equalCopy]))
  {
    date = [(UNLegacyNotificationTrigger *)self date];
    date2 = [equalCopy date];
    if (UNEqualObjects(date, date2))
    {
      repeatCalendar = [(UNLegacyNotificationTrigger *)self repeatCalendar];
      repeatCalendar2 = [equalCopy repeatCalendar];
      if (UNEqualObjects(repeatCalendar, repeatCalendar2) && (v9 = -[UNLegacyNotificationTrigger remainingRepeatCount](self, "remainingRepeatCount"), v9 == [equalCopy remainingRepeatCount]) && (v10 = -[UNLegacyNotificationTrigger repeatInterval](self, "repeatInterval"), v10 == objc_msgSend(equalCopy, "repeatInterval")) && (v11 = -[UNLegacyNotificationTrigger totalRepeatCount](self, "totalRepeatCount"), v11 == objc_msgSend(equalCopy, "totalRepeatCount")))
      {
        timeZone = [(UNLegacyNotificationTrigger *)self timeZone];
        timeZone2 = [equalCopy timeZone];
        v14 = UNEqualObjects(timeZone, timeZone2);
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

  return v14;
}

- (id)description
{
  v14 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  [(UNNotificationTrigger *)self repeats];
  v4 = NSStringFromBOOL();
  date = [(UNLegacyNotificationTrigger *)self date];
  timeZone = [(UNLegacyNotificationTrigger *)self timeZone];
  remainingRepeatCount = [(UNLegacyNotificationTrigger *)self remainingRepeatCount];
  totalRepeatCount = [(UNLegacyNotificationTrigger *)self totalRepeatCount];
  repeatInterval = [(UNLegacyNotificationTrigger *)self repeatInterval];
  repeatCalendar = [(UNLegacyNotificationTrigger *)self repeatCalendar];
  calendarIdentifier = [repeatCalendar calendarIdentifier];
  v12 = [v14 stringWithFormat:@"<%@: %p repeats: %@, date: %@, timeZone: %@, remainingRepeatCount: %ld, totalRepeatCount: %ld, repeatInterval: %ld, repeatCalendar: %@>", v3, self, v4, date, timeZone, remainingRepeatCount, totalRepeatCount, repeatInterval, calendarIdentifier];;

  return v12;
}

- (BOOL)willTriggerAfterDate:(id)date withRequestedDate:(id)requestedDate
{
  dateCopy = date;
  requestedDateCopy = requestedDate;
  if ([(UNNotificationTrigger *)self repeats]&& ![(UNLegacyNotificationTrigger *)self remainingRepeatCount])
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UNLegacyNotificationTrigger;
    v8 = [(UNNotificationTrigger *)&v10 willTriggerAfterDate:dateCopy withRequestedDate:requestedDateCopy];
  }

  return v8;
}

- (id)nextTriggerDateAfterDate:(id)date withRequestedDate:(id)requestedDate
{
  v6 = MEMORY[0x1E695DFE8];
  requestedDateCopy = requestedDate;
  dateCopy = date;
  defaultTimeZone = [v6 defaultTimeZone];
  v10 = [(UNLegacyNotificationTrigger *)self _nextTriggerDateAfterDate:dateCopy withRequestedDate:requestedDateCopy defaultTimeZone:defaultTimeZone];

  return v10;
}

- (id)_nextTriggerDateAfterDate:(id)date withRequestedDate:(id)requestedDate defaultTimeZone:(id)zone
{
  dateCopy = date;
  requestedDateCopy = requestedDate;
  zoneCopy = zone;
  if (!dateCopy)
  {
    [UNLegacyNotificationTrigger _nextTriggerDateAfterDate:withRequestedDate:defaultTimeZone:];
  }

  repeatInterval = [(UNLegacyNotificationTrigger *)self repeatInterval];
  v12 = repeatInterval;
  if (repeatInterval)
  {
    v13 = 0;
    do
    {
      v14 = qword_1B861B060[v13];
      if (v13 > 6)
      {
        break;
      }

      ++v13;
    }

    while (v14 != repeatInterval);
    if (v14 != repeatInterval)
    {
      v19 = 0;
      goto LABEL_39;
    }
  }

  date = [(UNLegacyNotificationTrigger *)self date];
  repeatCalendar = [(UNLegacyNotificationTrigger *)self repeatCalendar];
  v17 = repeatCalendar;
  if (repeatCalendar)
  {
    currentCalendar = repeatCalendar;
  }

  else
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v20 = currentCalendar;

  timeZone = [(UNLegacyNotificationTrigger *)self timeZone];
  v22 = timeZone;
  if (timeZone && ([timeZone isEqual:zoneCopy] & 1) == 0)
  {
    v23 = [v20 copy];
    [v23 setTimeZone:v22];
    v24 = [v23 components:254 fromDate:date];
    v25 = [v20 dateFromComponents:v24];

    date = v25;
  }

  v26 = 0;
  if (v12 > 63)
  {
    if (v12 > 511)
    {
      if (v12 == 512)
      {
        goto LABEL_30;
      }

      if (v12 != 0x2000)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v12 == 64)
      {
        v27 = 128;
        goto LABEL_33;
      }

      if (v12 != 256)
      {
        goto LABEL_35;
      }
    }

    v27 = 736;
    goto LABEL_33;
  }

  if (v12 <= 15)
  {
    if (v12 == 4)
    {
      v27 = 248;
      goto LABEL_33;
    }

    if (v12 == 8)
    {
      v27 = 240;
LABEL_33:
      v28 = [v20 components:v27 fromDate:date];
      v29 = objc_autoreleasePoolPush();
      v26 = [v20 nextDateAfterDate:dateCopy matchingComponents:v28 options:512];
      objc_autoreleasePoolPop(v29);

      if (v26)
      {
        v19 = v26;
        if ([v26 compare:date] != -1)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_35;
    }

    goto LABEL_35;
  }

  if (v12 == 16)
  {
LABEL_30:
    v27 = 224;
    goto LABEL_33;
  }

  if (v12 == 32)
  {
    v27 = 192;
    goto LABEL_33;
  }

LABEL_35:
  v19 = date;

LABEL_36:
  if ([v19 compare:dateCopy] != 1)
  {

    v19 = 0;
  }

LABEL_39:

  return v19;
}

- (double)_retroactiveTriggerHysteresis
{
  if (([(UNLegacyNotificationTrigger *)self repeatInterval]& 0xC0) != 0)
  {
    return 60.0;
  }

  v4.receiver = self;
  v4.super_class = UNLegacyNotificationTrigger;
  [(UNNotificationTrigger *)&v4 _retroactiveTriggerHysteresis];
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = UNLegacyNotificationTrigger;
  coderCopy = coder;
  [(UNNotificationTrigger *)&v8 encodeWithCoder:coderCopy];
  v5 = [(UNLegacyNotificationTrigger *)self date:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"date"];

  timeZone = [(UNLegacyNotificationTrigger *)self timeZone];
  [coderCopy encodeObject:timeZone forKey:@"timeZone"];

  [coderCopy encodeInt32:-[UNLegacyNotificationTrigger remainingRepeatCount](self forKey:{"remainingRepeatCount"), @"remainingRepeatCount"}];
  repeatCalendar = [(UNLegacyNotificationTrigger *)self repeatCalendar];
  [coderCopy encodeObject:repeatCalendar forKey:@"repeatCalendar"];

  [coderCopy encodeInteger:-[UNLegacyNotificationTrigger repeatInterval](self forKey:{"repeatInterval"), @"repeatInterval"}];
  [coderCopy encodeInt32:-[UNLegacyNotificationTrigger totalRepeatCount](self forKey:{"totalRepeatCount"), @"totalRepeatCount"}];
}

- (UNLegacyNotificationTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = UNLegacyNotificationTrigger;
  v5 = [(UNNotificationTrigger *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    v7 = [v6 copy];
    date = v5->_date;
    v5->_date = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    v10 = [v9 copy];
    timeZone = v5->_timeZone;
    v5->_timeZone = v10;

    *(&v5->super._repeats + 1) = [coderCopy decodeInt32ForKey:@"remainingRepeatCount"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"repeatCalendar"];
    v13 = [v12 copy];
    repeatCalendar = v5->_repeatCalendar;
    v5->_repeatCalendar = v13;

    v5->_repeatInterval = [coderCopy decodeIntegerForKey:@"repeatInterval"];
    v5->_remainingRepeatCount = [coderCopy decodeInt32ForKey:@"totalRepeatCount"];
  }

  return v5;
}

- (void)_nextTriggerDateAfterDate:withRequestedDate:defaultTimeZone:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end
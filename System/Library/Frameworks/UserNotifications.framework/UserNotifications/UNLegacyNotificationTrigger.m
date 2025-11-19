@interface UNLegacyNotificationTrigger
+ (id)triggerWithDate:(id)a3 timeZone:(id)a4 repeatInterval:(unint64_t)a5 repeatCalendar:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)willTriggerAfterDate:(id)a3 withRequestedDate:(id)a4;
- (UNLegacyNotificationTrigger)initWithCoder:(id)a3;
- (double)_retroactiveTriggerHysteresis;
- (id)_initWithDate:(id)a3 timeZone:(id)a4 remainingRepeatCount:(int)a5 totalRepeatCount:(int)a6 repeatInterval:(unint64_t)a7 repeatCalendar:(id)a8;
- (id)_nextTriggerDateAfterDate:(id)a3 withRequestedDate:(id)a4 defaultTimeZone:(id)a5;
- (id)description;
- (id)nextTriggerDateAfterDate:(id)a3 withRequestedDate:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNLegacyNotificationTrigger

+ (id)triggerWithDate:(id)a3 timeZone:(id)a4 repeatInterval:(unint64_t)a5 repeatCalendar:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] _initWithDate:v12 timeZone:v11 remainingRepeatCount:0x80000000 totalRepeatCount:0x80000000 repeatInterval:a5 repeatCalendar:v10];

  return v13;
}

- (id)_initWithDate:(id)a3 timeZone:(id)a4 remainingRepeatCount:(int)a5 totalRepeatCount:(int)a6 repeatInterval:(unint64_t)a7 repeatCalendar:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v25.receiver = self;
  v25.super_class = UNLegacyNotificationTrigger;
  v17 = [(UNNotificationTrigger *)&v25 _initWithRepeats:a7 != 0];
  if (v17)
  {
    v18 = [v14 copy];
    v19 = v17[3];
    v17[3] = v18;

    v20 = [v15 copy];
    v21 = v17[4];
    v17[4] = v20;

    *(v17 + 3) = a5;
    v22 = [v16 copy];
    v23 = v17[5];
    v17[5] = v22;

    v17[6] = a7;
    *(v17 + 4) = a6;
  }

  return v17;
}

- (unint64_t)hash
{
  v14.receiver = self;
  v14.super_class = UNLegacyNotificationTrigger;
  v3 = [(UNNotificationTrigger *)&v14 hash];
  v4 = [(UNLegacyNotificationTrigger *)self date];
  v5 = [v4 hash];
  v6 = [(UNLegacyNotificationTrigger *)self timeZone];
  v7 = v5 ^ [v6 hash];
  v8 = v7 ^ [(UNLegacyNotificationTrigger *)self remainingRepeatCount];
  v9 = [(UNLegacyNotificationTrigger *)self repeatCalendar];
  v10 = v8 ^ [v9 hash];
  v11 = v10 ^ [(UNLegacyNotificationTrigger *)self repeatInterval]^ v3;
  v12 = [(UNLegacyNotificationTrigger *)self totalRepeatCount];

  return v11 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v16.receiver = self, v16.super_class = UNLegacyNotificationTrigger, [(UNNotificationTrigger *)&v16 isEqual:v4]))
  {
    v5 = [(UNLegacyNotificationTrigger *)self date];
    v6 = [v4 date];
    if (UNEqualObjects(v5, v6))
    {
      v7 = [(UNLegacyNotificationTrigger *)self repeatCalendar];
      v8 = [v4 repeatCalendar];
      if (UNEqualObjects(v7, v8) && (v9 = -[UNLegacyNotificationTrigger remainingRepeatCount](self, "remainingRepeatCount"), v9 == [v4 remainingRepeatCount]) && (v10 = -[UNLegacyNotificationTrigger repeatInterval](self, "repeatInterval"), v10 == objc_msgSend(v4, "repeatInterval")) && (v11 = -[UNLegacyNotificationTrigger totalRepeatCount](self, "totalRepeatCount"), v11 == objc_msgSend(v4, "totalRepeatCount")))
      {
        v12 = [(UNLegacyNotificationTrigger *)self timeZone];
        v13 = [v4 timeZone];
        v14 = UNEqualObjects(v12, v13);
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
  v5 = [(UNLegacyNotificationTrigger *)self date];
  v6 = [(UNLegacyNotificationTrigger *)self timeZone];
  v7 = [(UNLegacyNotificationTrigger *)self remainingRepeatCount];
  v8 = [(UNLegacyNotificationTrigger *)self totalRepeatCount];
  v9 = [(UNLegacyNotificationTrigger *)self repeatInterval];
  v10 = [(UNLegacyNotificationTrigger *)self repeatCalendar];
  v11 = [v10 calendarIdentifier];
  v12 = [v14 stringWithFormat:@"<%@: %p repeats: %@, date: %@, timeZone: %@, remainingRepeatCount: %ld, totalRepeatCount: %ld, repeatInterval: %ld, repeatCalendar: %@>", v3, self, v4, v5, v6, v7, v8, v9, v11];;

  return v12;
}

- (BOOL)willTriggerAfterDate:(id)a3 withRequestedDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UNNotificationTrigger *)self repeats]&& ![(UNLegacyNotificationTrigger *)self remainingRepeatCount])
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UNLegacyNotificationTrigger;
    v8 = [(UNNotificationTrigger *)&v10 willTriggerAfterDate:v6 withRequestedDate:v7];
  }

  return v8;
}

- (id)nextTriggerDateAfterDate:(id)a3 withRequestedDate:(id)a4
{
  v6 = MEMORY[0x1E695DFE8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultTimeZone];
  v10 = [(UNLegacyNotificationTrigger *)self _nextTriggerDateAfterDate:v8 withRequestedDate:v7 defaultTimeZone:v9];

  return v10;
}

- (id)_nextTriggerDateAfterDate:(id)a3 withRequestedDate:(id)a4 defaultTimeZone:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    [UNLegacyNotificationTrigger _nextTriggerDateAfterDate:withRequestedDate:defaultTimeZone:];
  }

  v11 = [(UNLegacyNotificationTrigger *)self repeatInterval];
  v12 = v11;
  if (v11)
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

    while (v14 != v11);
    if (v14 != v11)
    {
      v19 = 0;
      goto LABEL_39;
    }
  }

  v15 = [(UNLegacyNotificationTrigger *)self date];
  v16 = [(UNLegacyNotificationTrigger *)self repeatCalendar];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [MEMORY[0x1E695DEE8] currentCalendar];
  }

  v20 = v18;

  v21 = [(UNLegacyNotificationTrigger *)self timeZone];
  v22 = v21;
  if (v21 && ([v21 isEqual:v10] & 1) == 0)
  {
    v23 = [v20 copy];
    [v23 setTimeZone:v22];
    v24 = [v23 components:254 fromDate:v15];
    v25 = [v20 dateFromComponents:v24];

    v15 = v25;
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
      v28 = [v20 components:v27 fromDate:v15];
      v29 = objc_autoreleasePoolPush();
      v26 = [v20 nextDateAfterDate:v8 matchingComponents:v28 options:512];
      objc_autoreleasePoolPop(v29);

      if (v26)
      {
        v19 = v26;
        if ([v26 compare:v15] != -1)
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
  v19 = v15;

LABEL_36:
  if ([v19 compare:v8] != 1)
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

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = UNLegacyNotificationTrigger;
  v4 = a3;
  [(UNNotificationTrigger *)&v8 encodeWithCoder:v4];
  v5 = [(UNLegacyNotificationTrigger *)self date:v8.receiver];
  [v4 encodeObject:v5 forKey:@"date"];

  v6 = [(UNLegacyNotificationTrigger *)self timeZone];
  [v4 encodeObject:v6 forKey:@"timeZone"];

  [v4 encodeInt32:-[UNLegacyNotificationTrigger remainingRepeatCount](self forKey:{"remainingRepeatCount"), @"remainingRepeatCount"}];
  v7 = [(UNLegacyNotificationTrigger *)self repeatCalendar];
  [v4 encodeObject:v7 forKey:@"repeatCalendar"];

  [v4 encodeInteger:-[UNLegacyNotificationTrigger repeatInterval](self forKey:{"repeatInterval"), @"repeatInterval"}];
  [v4 encodeInt32:-[UNLegacyNotificationTrigger totalRepeatCount](self forKey:{"totalRepeatCount"), @"totalRepeatCount"}];
}

- (UNLegacyNotificationTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = UNLegacyNotificationTrigger;
  v5 = [(UNNotificationTrigger *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    v7 = [v6 copy];
    date = v5->_date;
    v5->_date = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    v10 = [v9 copy];
    timeZone = v5->_timeZone;
    v5->_timeZone = v10;

    *(&v5->super._repeats + 1) = [v4 decodeInt32ForKey:@"remainingRepeatCount"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"repeatCalendar"];
    v13 = [v12 copy];
    repeatCalendar = v5->_repeatCalendar;
    v5->_repeatCalendar = v13;

    v5->_repeatInterval = [v4 decodeIntegerForKey:@"repeatInterval"];
    v5->_remainingRepeatCount = [v4 decodeInt32ForKey:@"totalRepeatCount"];
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
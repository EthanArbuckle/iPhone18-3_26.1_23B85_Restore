@interface EKSerializableAlarm
+ (id)classesForKey;
- (EKSerializableAlarm)initWithAlarm:(id)alarm;
- (id)createAlarm:(id *)alarm;
@end

@implementation EKSerializableAlarm

+ (id)classesForKey
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"relativeOffset";
  v12 = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v14[0] = v2;
  v13[1] = @"absoluteDate";
  v11 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v14[1] = v3;
  v13[2] = @"isAbsolute";
  v10 = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  v14[2] = v4;
  v13[3] = @"isDefaultAlarm";
  v9 = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v14[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (EKSerializableAlarm)initWithAlarm:(id)alarm
{
  alarmCopy = alarm;
  v10.receiver = self;
  v10.super_class = EKSerializableAlarm;
  v5 = [(EKSerializableAlarm *)&v10 init];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    [alarmCopy relativeOffset];
    v7 = [v6 numberWithDouble:?];
    [(EKSerializableAlarm *)v5 setRelativeOffset:v7];

    absoluteDate = [alarmCopy absoluteDate];
    [(EKSerializableAlarm *)v5 setAbsoluteDate:absoluteDate];

    -[EKSerializableAlarm setIsAbsolute:](v5, "setIsAbsolute:", [alarmCopy isAbsolute]);
    -[EKSerializableAlarm setIsDefaultAlarm:](v5, "setIsDefaultAlarm:", [alarmCopy isDefaultAlarm]);
  }

  return v5;
}

- (id)createAlarm:(id *)alarm
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(EKSerializableAlarm *)self isDefaultAlarm])
  {
LABEL_5:
    if ([(EKSerializableAlarm *)self isAbsolute])
    {
      absoluteDate = [(EKSerializableAlarm *)self absoluteDate];
      [EKAlarm alarmWithAbsoluteDate:absoluteDate];
    }

    else
    {
      absoluteDate = [(EKSerializableAlarm *)self relativeOffset];
      [absoluteDate doubleValue];
      [EKAlarm alarmWithRelativeOffset:?];
    }
    alarm = ;

    [alarm setDefaultAlarm:{-[EKSerializableAlarm isDefaultAlarm](self, "isDefaultAlarm")}];
    goto LABEL_9;
  }

  relativeOffset = [(EKSerializableAlarm *)self relativeOffset];
  if (relativeOffset)
  {

    goto LABEL_5;
  }

  absoluteDate2 = [(EKSerializableAlarm *)self absoluteDate];

  if (absoluteDate2)
  {
    goto LABEL_5;
  }

  if (alarm)
  {
    v11 = *MEMORY[0x1E696A580];
    v12[0] = @"Either the relative offset or absolute date must be set.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *alarm = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:v10];

    alarm = 0;
  }

LABEL_9:
  v8 = *MEMORY[0x1E69E9840];

  return alarm;
}

@end
@interface EKSerializableAlarm
+ (id)classesForKey;
- (EKSerializableAlarm)initWithAlarm:(id)a3;
- (id)createAlarm:(id *)a3;
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

- (EKSerializableAlarm)initWithAlarm:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = EKSerializableAlarm;
  v5 = [(EKSerializableAlarm *)&v10 init];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    [v4 relativeOffset];
    v7 = [v6 numberWithDouble:?];
    [(EKSerializableAlarm *)v5 setRelativeOffset:v7];

    v8 = [v4 absoluteDate];
    [(EKSerializableAlarm *)v5 setAbsoluteDate:v8];

    -[EKSerializableAlarm setIsAbsolute:](v5, "setIsAbsolute:", [v4 isAbsolute]);
    -[EKSerializableAlarm setIsDefaultAlarm:](v5, "setIsDefaultAlarm:", [v4 isDefaultAlarm]);
  }

  return v5;
}

- (id)createAlarm:(id *)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(EKSerializableAlarm *)self isDefaultAlarm])
  {
LABEL_5:
    if ([(EKSerializableAlarm *)self isAbsolute])
    {
      v7 = [(EKSerializableAlarm *)self absoluteDate];
      [EKAlarm alarmWithAbsoluteDate:v7];
    }

    else
    {
      v7 = [(EKSerializableAlarm *)self relativeOffset];
      [v7 doubleValue];
      [EKAlarm alarmWithRelativeOffset:?];
    }
    a3 = ;

    [a3 setDefaultAlarm:{-[EKSerializableAlarm isDefaultAlarm](self, "isDefaultAlarm")}];
    goto LABEL_9;
  }

  v5 = [(EKSerializableAlarm *)self relativeOffset];
  if (v5)
  {

    goto LABEL_5;
  }

  v6 = [(EKSerializableAlarm *)self absoluteDate];

  if (v6)
  {
    goto LABEL_5;
  }

  if (a3)
  {
    v11 = *MEMORY[0x1E696A580];
    v12[0] = @"Either the relative offset or absolute date must be set.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:v10];

    a3 = 0;
  }

LABEL_9:
  v8 = *MEMORY[0x1E69E9840];

  return a3;
}

@end
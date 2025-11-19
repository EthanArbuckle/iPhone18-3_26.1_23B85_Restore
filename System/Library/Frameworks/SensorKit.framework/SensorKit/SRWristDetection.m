@interface SRWristDetection
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (NSDate)offWristDate;
- (NSDate)onWristDate;
- (NSString)description;
- (SRWristDetection)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (SRWristDetection)initWithCFOnWristDate:(double)a3 CFOffWristDate:(double)a4 onWrist:(BOOL)a5 wristLocation:(int64_t)a6 crownOrientation:(int64_t)a7;
- (SRWristDetection)initWithCoder:(id)a3;
- (id)binarySampleRepresentation;
- (id)sr_dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRWristDetection

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    SRLogWristDetection = os_log_create("com.apple.SensorKit", "SRLogWristDetection");
  }
}

- (SRWristDetection)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeBoolForKey:@"onWrist"];
  v7 = [a3 decodeIntegerForKey:@"wristLocation"];
  v8 = [a3 decodeIntegerForKey:@"crownOrientation"];
  if ([a3 containsValueForKey:@"onWristDate"])
  {
    [a3 decodeDoubleForKey:@"onWristDate"];
    v10 = v9;
  }

  else
  {
    v10 = NAN;
  }

  if ([a3 containsValueForKey:@"offWristDate"])
  {
    [a3 decodeDoubleForKey:@"offWristDate"];
    v12 = v11;
  }

  else
  {
    v12 = NAN;
  }

  return [(SRWristDetection *)self initWithCFOnWristDate:v6 CFOffWristDate:v7 onWrist:v8 wristLocation:v10 crownOrientation:v12];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeBool:-[SRWristDetection onWrist](self forKey:{"onWrist"), @"onWrist"}];
  [a3 encodeInteger:-[SRWristDetection wristLocation](self forKey:{"wristLocation"), @"wristLocation"}];
  [a3 encodeInteger:-[SRWristDetection crownOrientation](self forKey:{"crownOrientation"), @"crownOrientation"}];
  [(SRWristDetection *)self cfOnWristDate];
  [(SRWristDetection *)self cfOnWristDate];
  [a3 encodeDouble:@"onWristDate" forKey:?];
  [(SRWristDetection *)self cfOffWristDate];
  [(SRWristDetection *)self cfOffWristDate];

  [a3 encodeDouble:@"offWristDate" forKey:?];
}

- (SRWristDetection)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v24 = *MEMORY[0x1E69E9840];
  if (![a3 length])
  {

    v9 = SRLogWristDetection;
    if (os_log_type_enabled(SRLogWristDetection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Failed to unarchive data because binary data length is zero";
      v18 = v9;
      v19 = 2;
      goto LABEL_19;
    }

LABEL_8:
    result = 0;
LABEL_9:
    v11 = *MEMORY[0x1E69E9840];
    return result;
  }

  if ([a3 length] != 1)
  {
    v21.receiver = self;
    v21.super_class = SRWristDetection;
    result = [(SRWristDetection *)&v21 init];
    if (!result)
    {
      goto LABEL_9;
    }

    v12 = result;
    v20 = 0;
    v13 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:a3 error:&v20];
    if (v13)
    {
      v14 = v13;

      result = v14;
      goto LABEL_9;
    }

    v16 = SRLogWristDetection;
    if (os_log_type_enabled(SRLogWristDetection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = v20;
      v17 = "Failed to unarchive data because %{public}@";
      v18 = v16;
      v19 = 12;
LABEL_19:
      _os_log_error_impl(&dword_1C914D000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = *[a3 bytes];
  if (v7 >= 8)
  {
    v8 = SRLogWristDetection;
    if (os_log_type_enabled(SRLogWristDetection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      LODWORD(v23) = v7;
      _os_log_impl(&dword_1C914D000, v8, OS_LOG_TYPE_DEFAULT, "Old value reading. Expecting only 3 bits for on wrist detection but got %{public}d", buf, 8u);
    }

    goto LABEL_8;
  }

  v15 = *MEMORY[0x1E69E9840];

  return [(SRWristDetection *)self initWithCFOnWristDate:v7 & 1 CFOffWristDate:(v7 >> 1) & 1 onWrist:v7 >> 2 wristLocation:NAN crownOrientation:NAN];
}

- (id)binarySampleRepresentation
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v7];
  v3 = v7;
  if (v7)
  {
    v4 = SRLogWristDetection;
    if (os_log_type_enabled(SRLogWristDetection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = v3;
      _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Failed to archive data because %{public}@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

- (SRWristDetection)initWithCFOnWristDate:(double)a3 CFOffWristDate:(double)a4 onWrist:(BOOL)a5 wristLocation:(int64_t)a6 crownOrientation:(int64_t)a7
{
  v13.receiver = self;
  v13.super_class = SRWristDetection;
  result = [(SRWristDetection *)&v13 init];
  if (result)
  {
    result->_cfOnWristDate = a3;
    result->_cfOffWristDate = a4;
    result->_onWrist = a5;
    result->_wristLocation = a6;
    result->_crownOrientation = a7;
  }

  return result;
}

- (NSDate)onWristDate
{
  [(SRWristDetection *)self cfOnWristDate];
  v3 = MEMORY[0x1E695DF00];
  [(SRWristDetection *)self cfOnWristDate];

  return [v3 dateWithTimeIntervalSinceReferenceDate:?];
}

- (NSDate)offWristDate
{
  [(SRWristDetection *)self cfOffWristDate];
  v3 = MEMORY[0x1E695DF00];
  [(SRWristDetection *)self cfOffWristDate];

  return [v3 dateWithTimeIntervalSinceReferenceDate:?];
}

- (id)sr_dictionaryRepresentation
{
  v8[5] = *MEMORY[0x1E69E9840];
  v7[0] = @"onWrist";
  v8[0] = [MEMORY[0x1E696AD98] numberWithBool:{-[SRWristDetection onWrist](self, "onWrist")}];
  v7[1] = @"wristLocation";
  v8[1] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRWristDetection wristLocation](self, "wristLocation")}];
  v7[2] = @"crownOrientation";
  v8[2] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRWristDetection crownOrientation](self, "crownOrientation")}];
  v7[3] = @"onWristDate";
  [(SRWristDetection *)self cfOnWristDate];
  v3 = MEMORY[0x1E696AD98];
  [(SRWristDetection *)self cfOnWristDate];
  v8[3] = [v3 numberWithDouble:?];
  v7[4] = @"offWristDate";
  [(SRWristDetection *)self cfOffWristDate];
  v4 = MEMORY[0x1E696AD98];
  [(SRWristDetection *)self cfOffWristDate];
  v8[4] = [v4 numberWithDouble:?];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(SRWristDetection *)self onWrist];
  if (v5 != [a3 onWrist])
  {
    return 0;
  }

  v6 = [(SRWristDetection *)self wristLocation];
  if (v6 != [a3 wristLocation])
  {
    return 0;
  }

  v7 = [(SRWristDetection *)self crownOrientation];
  if (v7 != [a3 crownOrientation])
  {
    return 0;
  }

  [(SRWristDetection *)self cfOnWristDate];
  v9 = v8;
  [a3 cfOnWristDate];
  if (v9 != v10)
  {
    return 0;
  }

  [(SRWristDetection *)self cfOffWristDate];
  v12 = v11;
  [a3 cfOffWristDate];
  return v12 == v13;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS Z"];
  [(SRWristDetection *)self cfOnWristDate];
  v4 = MEMORY[0x1E695DF00];
  [(SRWristDetection *)self cfOnWristDate];
  v5 = [v3 stringFromDate:{objc_msgSend(v4, "dateWithTimeIntervalSinceReferenceDate:")}];
  [(SRWristDetection *)self cfOffWristDate];
  v6 = MEMORY[0x1E695DF00];
  [(SRWristDetection *)self cfOffWristDate];
  v7 = [v3 stringFromDate:{objc_msgSend(v6, "dateWithTimeIntervalSinceReferenceDate:")}];

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [(SRWristDetection *)self cfOnWristDate];
  v12 = v11;
  [(SRWristDetection *)self cfOffWristDate];
  return [v8 stringWithFormat:@"%@ {\n\tonWristDate: %@  (%f)\n\toffWristDate: %@ (%f)\n\tonWrist: %d\n\twristLocation: %d\n\tcrownOrientation: %d\n}", v10, v5, v12, v7, v13, -[SRWristDetection onWrist](self, "onWrist"), -[SRWristDetection wristLocation](self, "wristLocation"), -[SRWristDetection crownOrientation](self, "crownOrientation")];
}

@end
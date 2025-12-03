@interface SRWristDetection
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (NSDate)offWristDate;
- (NSDate)onWristDate;
- (NSString)description;
- (SRWristDetection)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SRWristDetection)initWithCFOnWristDate:(double)date CFOffWristDate:(double)wristDate onWrist:(BOOL)wrist wristLocation:(int64_t)location crownOrientation:(int64_t)orientation;
- (SRWristDetection)initWithCoder:(id)coder;
- (id)binarySampleRepresentation;
- (id)sr_dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRWristDetection

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogWristDetection = os_log_create("com.apple.SensorKit", "SRLogWristDetection");
  }
}

- (SRWristDetection)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeBoolForKey:@"onWrist"];
  v7 = [coder decodeIntegerForKey:@"wristLocation"];
  v8 = [coder decodeIntegerForKey:@"crownOrientation"];
  if ([coder containsValueForKey:@"onWristDate"])
  {
    [coder decodeDoubleForKey:@"onWristDate"];
    v10 = v9;
  }

  else
  {
    v10 = NAN;
  }

  if ([coder containsValueForKey:@"offWristDate"])
  {
    [coder decodeDoubleForKey:@"offWristDate"];
    v12 = v11;
  }

  else
  {
    v12 = NAN;
  }

  return [(SRWristDetection *)self initWithCFOnWristDate:v6 CFOffWristDate:v7 onWrist:v8 wristLocation:v10 crownOrientation:v12];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeBool:-[SRWristDetection onWrist](self forKey:{"onWrist"), @"onWrist"}];
  [coder encodeInteger:-[SRWristDetection wristLocation](self forKey:{"wristLocation"), @"wristLocation"}];
  [coder encodeInteger:-[SRWristDetection crownOrientation](self forKey:{"crownOrientation"), @"crownOrientation"}];
  [(SRWristDetection *)self cfOnWristDate];
  [(SRWristDetection *)self cfOnWristDate];
  [coder encodeDouble:@"onWristDate" forKey:?];
  [(SRWristDetection *)self cfOffWristDate];
  [(SRWristDetection *)self cfOffWristDate];

  [coder encodeDouble:@"offWristDate" forKey:?];
}

- (SRWristDetection)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  v24 = *MEMORY[0x1E69E9840];
  if (![representation length])
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

  if ([representation length] != 1)
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
    v13 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:representation error:&v20];
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

  v7 = *[representation bytes];
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

- (SRWristDetection)initWithCFOnWristDate:(double)date CFOffWristDate:(double)wristDate onWrist:(BOOL)wrist wristLocation:(int64_t)location crownOrientation:(int64_t)orientation
{
  v13.receiver = self;
  v13.super_class = SRWristDetection;
  result = [(SRWristDetection *)&v13 init];
  if (result)
  {
    result->_cfOnWristDate = date;
    result->_cfOffWristDate = wristDate;
    result->_onWrist = wrist;
    result->_wristLocation = location;
    result->_crownOrientation = orientation;
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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  onWrist = [(SRWristDetection *)self onWrist];
  if (onWrist != [equal onWrist])
  {
    return 0;
  }

  wristLocation = [(SRWristDetection *)self wristLocation];
  if (wristLocation != [equal wristLocation])
  {
    return 0;
  }

  crownOrientation = [(SRWristDetection *)self crownOrientation];
  if (crownOrientation != [equal crownOrientation])
  {
    return 0;
  }

  [(SRWristDetection *)self cfOnWristDate];
  v9 = v8;
  [equal cfOnWristDate];
  if (v9 != v10)
  {
    return 0;
  }

  [(SRWristDetection *)self cfOffWristDate];
  v12 = v11;
  [equal cfOffWristDate];
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
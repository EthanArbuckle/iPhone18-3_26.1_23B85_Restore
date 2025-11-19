@interface _SRDeviceUsageActivityLevel
+ (id)activityLevelWithLevel:(int64_t)a3 duration:(double)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_SRDeviceUsageActivityLevel)initWithCoder:(id)a3;
- (id)sr_dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SRDeviceUsageActivityLevel

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeInteger:-[_SRDeviceUsageActivityLevel activityLevel](self forKey:{"activityLevel"), @"activityLevel"}];
  [(_SRDeviceUsageActivityLevel *)self duration];

  [a3 encodeDouble:@"duration" forKey:?];
}

- (_SRDeviceUsageActivityLevel)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeIntegerForKey:@"activityLevel"];
  [a3 decodeDoubleForKey:@"duration"];
  v8 = v7;

  result = objc_alloc_init(_SRDeviceUsageActivityLevel);
  result->_activityLevel = v6;
  result->_duration = v8;
  return result;
}

+ (id)activityLevelWithLevel:(int64_t)a3 duration:(double)a4
{
  v6 = objc_alloc_init(_SRDeviceUsageActivityLevel);
  [(_SRDeviceUsageActivityLevel *)v6 setActivityLevel:a3];
  [(_SRDeviceUsageActivityLevel *)v6 setDuration:a4];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_SRDeviceUsageActivityLevel *)self activityLevel];
  [(_SRDeviceUsageActivityLevel *)self duration];
  return [v3 stringWithFormat:@"%@ {activityLevel: %ld, duration: %f}", v5, v6, v7];
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

  activityLevel = self->_activityLevel;
  if (activityLevel != [a3 activityLevel])
  {
    return 0;
  }

  duration = self->_duration;
  [a3 duration];
  return duration == v7;
}

- (id)sr_dictionaryRepresentation
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"activityLevel";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_activityLevel];
  v6[1] = @"duration";
  v7[0] = v3;
  v7[1] = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

@end
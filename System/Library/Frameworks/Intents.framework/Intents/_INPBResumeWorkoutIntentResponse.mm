@interface _INPBResumeWorkoutIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBResumeWorkoutIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _INPBResumeWorkoutIntentResponse

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [_INPBResumeWorkoutIntentResponse allocWithZone:a3];

  return [(_INPBResumeWorkoutIntentResponse *)v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBResumeWorkoutIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBResumeWorkoutIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBResumeWorkoutIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

@end
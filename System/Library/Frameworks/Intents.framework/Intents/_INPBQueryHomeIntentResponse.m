@interface _INPBQueryHomeIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBQueryHomeIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _INPBQueryHomeIntentResponse

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [_INPBQueryHomeIntentResponse allocWithZone:a3];

  return [(_INPBQueryHomeIntentResponse *)v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBQueryHomeIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBQueryHomeIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBQueryHomeIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

@end
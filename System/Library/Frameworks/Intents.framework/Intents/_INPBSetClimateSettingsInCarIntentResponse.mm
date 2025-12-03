@interface _INPBSetClimateSettingsInCarIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSetClimateSettingsInCarIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _INPBSetClimateSettingsInCarIntentResponse

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [_INPBSetClimateSettingsInCarIntentResponse allocWithZone:zone];

  return [(_INPBSetClimateSettingsInCarIntentResponse *)v3 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetClimateSettingsInCarIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetClimateSettingsInCarIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetClimateSettingsInCarIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

@end
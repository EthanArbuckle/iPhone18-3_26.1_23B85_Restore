@interface INJSONEncoderConfiguration
- (INJSONEncoderConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation INJSONEncoderConfiguration

- (INJSONEncoderConfiguration)init
{
  v3.receiver = self;
  v3.super_class = INJSONEncoderConfiguration;
  result = [(INJSONEncoderConfiguration *)&v3 init];
  if (result)
  {
    result->_locationIncludesTimestamp = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(INJSONEncoderConfiguration);
  [(INJSONEncoderConfiguration *)v4 setLanguageCode:self->_languageCode];
  [(INJSONEncoderConfiguration *)v4 setLocationIncludesTimestamp:self->_locationIncludesTimestamp];
  return v4;
}

@end
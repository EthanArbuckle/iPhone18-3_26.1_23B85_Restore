@interface AFShowSettingRequest
- (AFShowSettingRequest)initWithCoder:(id)coder;
- (id)_initWithSettingType:(int64_t)type;
- (id)createResponse;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFShowSettingRequest

- (AFShowSettingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = AFShowSettingRequest;
  v5 = [(AFSiriRequest *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_settingType = [coderCopy decodeIntegerForKey:@"_settingType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AFShowSettingRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_settingType forKey:{@"_settingType", v5.receiver, v5.super_class}];
}

- (id)createResponse
{
  v2 = [(AFSiriResponse *)[AFSiriRequestSucceededResponse alloc] _initWithRequest:self];

  return v2;
}

- (id)_initWithSettingType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = AFShowSettingRequest;
  result = [(AFSiriRequest *)&v5 init];
  if (result)
  {
    *(result + 5) = type;
  }

  return result;
}

@end
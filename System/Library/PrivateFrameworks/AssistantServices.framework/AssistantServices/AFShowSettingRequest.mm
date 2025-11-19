@interface AFShowSettingRequest
- (AFShowSettingRequest)initWithCoder:(id)a3;
- (id)_initWithSettingType:(int64_t)a3;
- (id)createResponse;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFShowSettingRequest

- (AFShowSettingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = AFShowSettingRequest;
  v5 = [(AFSiriRequest *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_settingType = [v4 decodeIntegerForKey:@"_settingType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AFShowSettingRequest;
  v4 = a3;
  [(AFSiriRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_settingType forKey:{@"_settingType", v5.receiver, v5.super_class}];
}

- (id)createResponse
{
  v2 = [(AFSiriResponse *)[AFSiriRequestSucceededResponse alloc] _initWithRequest:self];

  return v2;
}

- (id)_initWithSettingType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = AFShowSettingRequest;
  result = [(AFSiriRequest *)&v5 init];
  if (result)
  {
    *(result + 5) = a3;
  }

  return result;
}

@end
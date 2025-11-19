@interface CNGeminiResult
- (CNGeminiResult)init;
- (CNGeminiResult)initWithChannel:(id)a3 usage:(int64_t)a4 availableChannels:(id)a5;
- (CNGeminiResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNGeminiResult

- (CNGeminiResult)initWithChannel:(id)a3 usage:(int64_t)a4 availableChannels:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CNGeminiResult;
  v11 = [(CNGeminiResult *)&v17 init];
  if (v11)
  {
    if (!v9)
    {
      if (CNGuardOSLog_cn_once_token_0_1 != -1)
      {
        [CNGeminiResult initWithChannel:usage:availableChannels:];
      }

      v12 = CNGuardOSLog_cn_once_object_0_1;
      if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_1, OS_LOG_TYPE_FAULT))
      {
        [CNGeminiResult initWithChannel:v12 usage:? availableChannels:?];
      }
    }

    objc_storeStrong(&v11->_channel, a3);
    v11->_usage = a4;
    v13 = [v10 copy];
    availableChannels = v11->_availableChannels;
    v11->_availableChannels = v13;

    v15 = v11;
  }

  return v11;
}

- (CNGeminiResult)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNGeminiResult)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CNGeminiResult;
  v5 = [(CNGeminiResult *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_channel"];
    channel = v5->_channel;
    v5->_channel = v6;

    v5->_usage = [v4 decodeIntegerForKey:@"_usage"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_availableChannels"];
    v12 = [v11 copy];
    availableChannels = v5->_availableChannels;
    v5->_availableChannels = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  channel = self->_channel;
  v5 = a3;
  [v5 encodeObject:channel forKey:@"_channel"];
  [v5 encodeInteger:self->_usage forKey:@"_usage"];
  [v5 encodeObject:self->_availableChannels forKey:@"_availableChannels"];
}

@end
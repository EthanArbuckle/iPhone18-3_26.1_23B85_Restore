@interface CNGeminiResult
- (CNGeminiResult)init;
- (CNGeminiResult)initWithChannel:(id)channel usage:(int64_t)usage availableChannels:(id)channels;
- (CNGeminiResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNGeminiResult

- (CNGeminiResult)initWithChannel:(id)channel usage:(int64_t)usage availableChannels:(id)channels
{
  channelCopy = channel;
  channelsCopy = channels;
  v17.receiver = self;
  v17.super_class = CNGeminiResult;
  v11 = [(CNGeminiResult *)&v17 init];
  if (v11)
  {
    if (!channelCopy)
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

    objc_storeStrong(&v11->_channel, channel);
    v11->_usage = usage;
    v13 = [channelsCopy copy];
    availableChannels = v11->_availableChannels;
    v11->_availableChannels = v13;

    v15 = v11;
  }

  return v11;
}

- (CNGeminiResult)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNGeminiResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CNGeminiResult;
  v5 = [(CNGeminiResult *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_channel"];
    channel = v5->_channel;
    v5->_channel = v6;

    v5->_usage = [coderCopy decodeIntegerForKey:@"_usage"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_availableChannels"];
    v12 = [v11 copy];
    availableChannels = v5->_availableChannels;
    v5->_availableChannels = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  channel = self->_channel;
  coderCopy = coder;
  [coderCopy encodeObject:channel forKey:@"_channel"];
  [coderCopy encodeInteger:self->_usage forKey:@"_usage"];
  [coderCopy encodeObject:self->_availableChannels forKey:@"_availableChannels"];
}

@end
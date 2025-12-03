@interface ADAcePassthroughSiriResponse
- (ADAcePassthroughSiriResponse)initWithCoder:(id)coder;
- (ADAcePassthroughSiriResponse)initWithRequest:(id)request replyCommand:(id)command;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ADAcePassthroughSiriResponse

- (ADAcePassthroughSiriResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ADAcePassthroughSiriResponse;
  v5 = [(ADAcePassthroughSiriResponse *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AcePassthroughSiriResponseReplyCommand"];
    replyCommand = v5->_replyCommand;
    v5->_replyCommand = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ADAcePassthroughSiriResponse;
  coderCopy = coder;
  [(ADAcePassthroughSiriResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_replyCommand forKey:{@"AcePassthroughSiriResponseReplyCommand", v5.receiver, v5.super_class}];
}

- (ADAcePassthroughSiriResponse)initWithRequest:(id)request replyCommand:(id)command
{
  commandCopy = command;
  v11.receiver = self;
  v11.super_class = ADAcePassthroughSiriResponse;
  v8 = [(ADAcePassthroughSiriResponse *)&v11 _initWithRequest:request];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_replyCommand, command);
  }

  return v9;
}

@end
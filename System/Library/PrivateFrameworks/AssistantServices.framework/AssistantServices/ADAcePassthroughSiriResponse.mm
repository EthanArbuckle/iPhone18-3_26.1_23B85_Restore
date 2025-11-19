@interface ADAcePassthroughSiriResponse
- (ADAcePassthroughSiriResponse)initWithCoder:(id)a3;
- (ADAcePassthroughSiriResponse)initWithRequest:(id)a3 replyCommand:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ADAcePassthroughSiriResponse

- (ADAcePassthroughSiriResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ADAcePassthroughSiriResponse;
  v5 = [(ADAcePassthroughSiriResponse *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AcePassthroughSiriResponseReplyCommand"];
    replyCommand = v5->_replyCommand;
    v5->_replyCommand = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ADAcePassthroughSiriResponse;
  v4 = a3;
  [(ADAcePassthroughSiriResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_replyCommand forKey:{@"AcePassthroughSiriResponseReplyCommand", v5.receiver, v5.super_class}];
}

- (ADAcePassthroughSiriResponse)initWithRequest:(id)a3 replyCommand:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ADAcePassthroughSiriResponse;
  v8 = [(ADAcePassthroughSiriResponse *)&v11 _initWithRequest:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_replyCommand, a4);
  }

  return v9;
}

@end
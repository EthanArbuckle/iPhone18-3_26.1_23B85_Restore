@interface AFContextResponse
- (AFContextResponse)initWithCoder:(id)coder;
- (id)_initWithRequest:(id)request context:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFContextResponse

- (AFContextResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AFContextResponse;
  v5 = [(AFSiriResponse *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GetContextResponseContext"];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AFContextResponse;
  coderCopy = coder;
  [(AFSiriResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_context forKey:{@"GetContextResponseContext", v5.receiver, v5.super_class}];
}

- (id)_initWithRequest:(id)request context:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = AFContextResponse;
  v8 = [(AFSiriResponse *)&v11 _initWithRequest:request];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 2, context);
  }

  return v9;
}

@end
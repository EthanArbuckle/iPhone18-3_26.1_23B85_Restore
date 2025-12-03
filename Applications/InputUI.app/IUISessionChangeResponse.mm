@interface IUISessionChangeResponse
- (IUISessionChangeResponse)initWithCoder:(id)coder;
- (IUISessionChangeResponse)initWithResponseState:(int64_t)state;
@end

@implementation IUISessionChangeResponse

- (IUISessionChangeResponse)initWithResponseState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = IUISessionChangeResponse;
  result = [(IUISessionChangeResponse *)&v5 init];
  if (result)
  {
    result->_responseState = state;
  }

  return result;
}

- (IUISessionChangeResponse)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"responseState"];

  return [(IUISessionChangeResponse *)self initWithResponseState:v4];
}

@end
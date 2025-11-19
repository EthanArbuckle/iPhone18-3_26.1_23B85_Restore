@interface IUISessionChangeResponse
- (IUISessionChangeResponse)initWithCoder:(id)a3;
- (IUISessionChangeResponse)initWithResponseState:(int64_t)a3;
@end

@implementation IUISessionChangeResponse

- (IUISessionChangeResponse)initWithResponseState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = IUISessionChangeResponse;
  result = [(IUISessionChangeResponse *)&v5 init];
  if (result)
  {
    result->_responseState = a3;
  }

  return result;
}

- (IUISessionChangeResponse)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"responseState"];

  return [(IUISessionChangeResponse *)self initWithResponseState:v4];
}

@end
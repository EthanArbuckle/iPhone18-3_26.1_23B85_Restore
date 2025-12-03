@interface AMSURLRequestEncoderResult
- (AMSURLRequestEncoderResult)initWithRequest:(id)request signingErrors:(id)errors;
@end

@implementation AMSURLRequestEncoderResult

- (AMSURLRequestEncoderResult)initWithRequest:(id)request signingErrors:(id)errors
{
  requestCopy = request;
  errorsCopy = errors;
  if (!requestCopy || (v8 = errorsCopy) == 0)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"request and signingErrors must be non-nil" userInfo:0];
    objc_exception_throw(v15);
  }

  v16.receiver = self;
  v16.super_class = AMSURLRequestEncoderResult;
  v9 = [(AMSURLRequestEncoderResult *)&v16 init];
  if (v9)
  {
    v10 = [requestCopy copy];
    request = v9->_request;
    v9->_request = v10;

    v12 = [v8 copy];
    signingErrors = v9->_signingErrors;
    v9->_signingErrors = v12;
  }

  return v9;
}

@end
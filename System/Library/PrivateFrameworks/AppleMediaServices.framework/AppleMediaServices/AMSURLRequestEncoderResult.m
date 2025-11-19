@interface AMSURLRequestEncoderResult
- (AMSURLRequestEncoderResult)initWithRequest:(id)a3 signingErrors:(id)a4;
@end

@implementation AMSURLRequestEncoderResult

- (AMSURLRequestEncoderResult)initWithRequest:(id)a3 signingErrors:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 || (v8 = v7) == 0)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"request and signingErrors must be non-nil" userInfo:0];
    objc_exception_throw(v15);
  }

  v16.receiver = self;
  v16.super_class = AMSURLRequestEncoderResult;
  v9 = [(AMSURLRequestEncoderResult *)&v16 init];
  if (v9)
  {
    v10 = [v6 copy];
    request = v9->_request;
    v9->_request = v10;

    v12 = [v8 copy];
    signingErrors = v9->_signingErrors;
    v9->_signingErrors = v12;
  }

  return v9;
}

@end
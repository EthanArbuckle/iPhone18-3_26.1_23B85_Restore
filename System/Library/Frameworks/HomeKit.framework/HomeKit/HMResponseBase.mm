@interface HMResponseBase
- (HMResponseBase)initWithRequest:(id)request value:(id)value error:(id)error;
@end

@implementation HMResponseBase

- (HMResponseBase)initWithRequest:(id)request value:(id)value error:(id)error
{
  requestCopy = request;
  valueCopy = value;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = HMResponseBase;
  v12 = [(HMResponseBase *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_value, value);
    objc_storeStrong(&v13->_error, error);
  }

  return v13;
}

@end
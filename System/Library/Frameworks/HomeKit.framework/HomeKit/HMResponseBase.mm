@interface HMResponseBase
- (HMResponseBase)initWithRequest:(id)a3 value:(id)a4 error:(id)a5;
@end

@implementation HMResponseBase

- (HMResponseBase)initWithRequest:(id)a3 value:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMResponseBase;
  v12 = [(HMResponseBase *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, a3);
    objc_storeStrong(&v13->_value, a4);
    objc_storeStrong(&v13->_error, a5);
  }

  return v13;
}

@end
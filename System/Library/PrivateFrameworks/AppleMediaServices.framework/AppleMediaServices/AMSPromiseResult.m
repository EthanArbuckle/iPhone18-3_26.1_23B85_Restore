@interface AMSPromiseResult
- (AMSPromiseResult)initWithResult:(id)a3 error:(id)a4;
@end

@implementation AMSPromiseResult

- (AMSPromiseResult)initWithResult:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AMSPromiseResult;
  v9 = [(AMSPromiseResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_result, a3);
    v11 = [v8 copy];
    error = v10->_error;
    v10->_error = v11;
  }

  return v10;
}

@end
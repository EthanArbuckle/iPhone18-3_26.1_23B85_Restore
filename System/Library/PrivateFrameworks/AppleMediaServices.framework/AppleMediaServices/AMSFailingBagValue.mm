@interface AMSFailingBagValue
- (AMSFailingBagValue)initWithKey:(id)key valueType:(unint64_t)type error:(id)error;
- (AMSFailingBagValue)valueWithCompletion:(id)completion;
@end

@implementation AMSFailingBagValue

- (AMSFailingBagValue)initWithKey:(id)key valueType:(unint64_t)type error:(id)error
{
  errorCopy = error;
  v13.receiver = self;
  v13.super_class = AMSFailingBagValue;
  v10 = [(AMSFrozenBagValue *)&v13 initWithKey:key value:0 valueType:type];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_error, error);
  }

  return v11;
}

- (AMSFailingBagValue)valueWithCompletion:(id)completion
{
  completionCopy = completion;
  error = [(AMSFailingBagValue *)self error];
  (*(completion + 2))(completionCopy, 0, 0, error);

  return result;
}

@end
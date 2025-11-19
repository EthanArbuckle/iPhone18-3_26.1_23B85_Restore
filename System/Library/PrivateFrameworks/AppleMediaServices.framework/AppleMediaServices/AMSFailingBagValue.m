@interface AMSFailingBagValue
- (AMSFailingBagValue)initWithKey:(id)a3 valueType:(unint64_t)a4 error:(id)a5;
- (AMSFailingBagValue)valueWithCompletion:(id)a3;
@end

@implementation AMSFailingBagValue

- (AMSFailingBagValue)initWithKey:(id)a3 valueType:(unint64_t)a4 error:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = AMSFailingBagValue;
  v10 = [(AMSFrozenBagValue *)&v13 initWithKey:a3 value:0 valueType:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_error, a5);
  }

  return v11;
}

- (AMSFailingBagValue)valueWithCompletion:(id)a3
{
  v5 = a3;
  v7 = [(AMSFailingBagValue *)self error];
  (*(a3 + 2))(v5, 0, 0, v7);

  return result;
}

@end
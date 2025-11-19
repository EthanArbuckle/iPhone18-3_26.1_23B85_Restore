@interface AMSBridgedBagValue
- (AMSBridgedBagValue)initWithKey:(id)a3 valueType:(unint64_t)a4 valuePromise:(id)a5;
- (AMSBridgedBagValue)valueWithCompletion:(id)a3;
@end

@implementation AMSBridgedBagValue

- (AMSBridgedBagValue)initWithKey:(id)a3 valueType:(unint64_t)a4 valuePromise:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = AMSBridgedBagValue;
  v10 = [(AMSFrozenBagValue *)&v13 initWithKey:a3 value:0 valueType:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_valuePromise, a5);
  }

  return v11;
}

- (AMSBridgedBagValue)valueWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AMSBridgedBagValue *)self valuePromise];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__AMSBridgedBagValue_valueWithCompletion___block_invoke;
  v8[3] = &unk_1E73B53E0;
  v9 = v4;
  v6 = v4;
  [v5 addFinishBlock:v8];

  return result;
}

@end
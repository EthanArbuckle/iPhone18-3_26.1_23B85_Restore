@interface AMSBridgedBagValue
- (AMSBridgedBagValue)initWithKey:(id)key valueType:(unint64_t)type valuePromise:(id)promise;
- (AMSBridgedBagValue)valueWithCompletion:(id)completion;
@end

@implementation AMSBridgedBagValue

- (AMSBridgedBagValue)initWithKey:(id)key valueType:(unint64_t)type valuePromise:(id)promise
{
  promiseCopy = promise;
  v13.receiver = self;
  v13.super_class = AMSBridgedBagValue;
  v10 = [(AMSFrozenBagValue *)&v13 initWithKey:key value:0 valueType:type];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_valuePromise, promise);
  }

  return v11;
}

- (AMSBridgedBagValue)valueWithCompletion:(id)completion
{
  completionCopy = completion;
  valuePromise = [(AMSBridgedBagValue *)self valuePromise];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__AMSBridgedBagValue_valueWithCompletion___block_invoke;
  v8[3] = &unk_1E73B53E0;
  v9 = completionCopy;
  v6 = completionCopy;
  [valuePromise addFinishBlock:v8];

  return result;
}

@end
@interface HKDaemonTransaction
+ (id)transactionWithName:(id)name;
+ (id)transactionWithOwner:(id)owner;
+ (id)transactionWithOwner:(id)owner activityName:(id)name;
- (HKDaemonTransaction)init;
- (id)_initWithName:(id)name;
- (void)dealloc;
- (void)invalidate;
@end

@implementation HKDaemonTransaction

- (HKDaemonTransaction)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)_initWithName:(id)name
{
  nameCopy = name;
  if (![nameCopy length])
  {
    [(HKDaemonTransaction *)a2 _initWithName:?];
  }

  v13.receiver = self;
  v13.super_class = HKDaemonTransaction;
  v6 = [(HKDaemonTransaction *)&v13 init];
  if (v6)
  {
    v7 = [nameCopy copy];
    name = v6->_name;
    v6->_name = v7;

    v9 = [@"com.apple.healthd." stringByAppendingString:nameCopy];
    [v9 UTF8String];
    v10 = os_transaction_create();
    transaction = v6->_transaction;
    v6->_transaction = v10;
  }

  return v6;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = *(self + 16);
  v8 = 138412546;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v6 = v4;
  _os_log_fault_impl(&dword_19197B000, a2, OS_LOG_TYPE_FAULT, "%@ %@ was not invalidated prior to deallocation", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)transactionWithName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] _initWithName:nameCopy];

  return v5;
}

+ (id)transactionWithOwner:(id)owner
{
  ownerCopy = owner;
  v5 = [self alloc];
  v6 = objc_opt_class();

  v7 = NSStringFromClass(v6);
  v8 = [v5 _initWithName:v7];

  return v8;
}

+ (id)transactionWithOwner:(id)owner activityName:(id)name
{
  nameCopy = name;
  ownerCopy = owner;
  v8 = [self alloc];
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = objc_opt_class();

  v11 = NSStringFromClass(v10);
  nameCopy = [v9 initWithFormat:@"%@.%@", v11, nameCopy];

  v13 = [v8 _initWithName:nameCopy];

  return v13;
}

- (void)invalidate
{
  transaction = self->_transaction;
  self->_transaction = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)_initWithName:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKDaemonTransaction.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"name.length > 0"}];
}

@end
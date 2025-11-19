@interface HKHealthRecordsAccountInfoStore
+ (id)taskIdentifier;
- (HKHealthRecordsAccountInfoStore)init;
- (HKHealthRecordsAccountInfoStore)initWithHealthStore:(id)a3;
- (void)determineMedicalRecordsAccountInfoStatusWithCompletion:(id)a3;
@end

@implementation HKHealthRecordsAccountInfoStore

- (HKHealthRecordsAccountInfoStore)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKHealthRecordsAccountInfoStore)initWithHealthStore:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKHealthRecordsAccountInfoStore;
  v5 = [(HKHealthRecordsAccountInfoStore *)&v12 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    v7 = [objc_opt_class() taskIdentifier];
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:v4 taskIdentifier:v7 exportedObject:v5 taskUUID:v8];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;

    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v5;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)determineMedicalRecordsAccountInfoStatusWithCompletion:(id)a3
{
  v4 = a3;
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __90__HKHealthRecordsAccountInfoStore_determineMedicalRecordsAccountInfoStatusWithCompletion___block_invoke;
  v9[3] = &unk_1E737FCE0;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__HKHealthRecordsAccountInfoStore_determineMedicalRecordsAccountInfoStatusWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

@end
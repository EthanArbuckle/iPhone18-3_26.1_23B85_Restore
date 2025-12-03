@interface HKElectrocardiogramSession
- (HKElectrocardiogramSession)init;
- (HKElectrocardiogramSession)initWithHealthStore:(id)store configuration:(id)configuration;
- (HKElectrocardiogramSessionDelegate)delegate;
- (void)abortWithCompletion:(id)completion;
- (void)clientRemote_didDetectContactAtDate:(id)date;
- (void)clientRemote_didDetectEmergencyCallbackModeWithEndDate:(id)date;
- (void)clientRemote_didEndWithReason:(int64_t)reason error:(id)error;
- (void)connectionInterrupted;
- (void)startWithCompletion:(id)completion;
@end

@implementation HKElectrocardiogramSession

- (HKElectrocardiogramSession)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKElectrocardiogramSession)initWithHealthStore:(id)store configuration:(id)configuration
{
  storeCopy = store;
  configurationCopy = configuration;
  v18.receiver = self;
  v18.super_class = HKElectrocardiogramSession;
  v9 = [(HKElectrocardiogramSession *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_healthStore, store);
    objc_storeStrong(&v10->_sessionConfiguration, configuration);
    v11 = objc_alloc_init(HKElectrocardiogramSessionTaskConfiguration);
    [(HKElectrocardiogramSessionTaskConfiguration *)v11 setSessionConfiguration:configurationCopy];
    v12 = [HKTaskServerProxyProvider alloc];
    healthStore = v10->_healthStore;
    sessionUUID = [configurationCopy sessionUUID];
    v15 = [(HKTaskServerProxyProvider *)v12 initWithHealthStore:healthStore taskIdentifier:@"HDElectrocardiogramSessionServerIdentifier" exportedObject:v10 taskUUID:sessionUUID];
    proxyProvider = v10->_proxyProvider;
    v10->_proxyProvider = v15;

    [(HKProxyProvider *)v10->_proxyProvider setShouldRetryOnInterruption:0];
    [(HKTaskServerProxyProvider *)v10->_proxyProvider setTaskConfiguration:v11];
  }

  return v10;
}

- (void)startWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__HKElectrocardiogramSession_startWithCompletion___block_invoke;
  v9[3] = &unk_1E737F8D8;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__HKElectrocardiogramSession_startWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)abortWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__HKElectrocardiogramSession_abortWithCompletion___block_invoke;
  v9[3] = &unk_1E737F8D8;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__HKElectrocardiogramSession_abortWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)clientRemote_didDetectContactAtDate:(id)date
{
  dateCopy = date;
  clientQueue = [(HKHealthStore *)self->_healthStore clientQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__HKElectrocardiogramSession_clientRemote_didDetectContactAtDate___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_async(clientQueue, v7);
}

void __66__HKElectrocardiogramSession_clientRemote_didDetectContactAtDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v4 electrocardiogramSession:*(a1 + 32) didDetectContactAtDate:*(a1 + 40)];
  }
}

- (void)clientRemote_didEndWithReason:(int64_t)reason error:(id)error
{
  errorCopy = error;
  clientQueue = [(HKHealthStore *)self->_healthStore clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__HKElectrocardiogramSession_clientRemote_didEndWithReason_error___block_invoke;
  block[3] = &unk_1E73767D0;
  v10 = errorCopy;
  reasonCopy = reason;
  block[4] = self;
  v8 = errorCopy;
  dispatch_async(clientQueue, block);
}

void __66__HKElectrocardiogramSession_clientRemote_didEndWithReason_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 32));
  [WeakRetained electrocardiogramSession:a1[4] didEndWithReason:a1[6] error:a1[5]];
}

- (void)clientRemote_didDetectEmergencyCallbackModeWithEndDate:(id)date
{
  dateCopy = date;
  clientQueue = [(HKHealthStore *)self->_healthStore clientQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__HKElectrocardiogramSession_clientRemote_didDetectEmergencyCallbackModeWithEndDate___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_async(clientQueue, v7);
}

void __85__HKElectrocardiogramSession_clientRemote_didDetectEmergencyCallbackModeWithEndDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained electrocardiogramSession:*(a1 + 32) didDetectEmergencyCallbackModeWithEndDate:*(a1 + 40)];
}

- (void)connectionInterrupted
{
  clientQueue = [(HKHealthStore *)self->_healthStore clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__HKElectrocardiogramSession_connectionInterrupted__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __51__HKElectrocardiogramSession_connectionInterrupted__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E696ABC0] hk_error:100 description:@"Connection interrupted"];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained electrocardiogramSession:*(a1 + 32) didEndWithReason:0 error:v3];
}

- (HKElectrocardiogramSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
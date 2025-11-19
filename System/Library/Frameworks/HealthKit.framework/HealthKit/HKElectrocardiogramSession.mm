@interface HKElectrocardiogramSession
- (HKElectrocardiogramSession)init;
- (HKElectrocardiogramSession)initWithHealthStore:(id)a3 configuration:(id)a4;
- (HKElectrocardiogramSessionDelegate)delegate;
- (void)abortWithCompletion:(id)a3;
- (void)clientRemote_didDetectContactAtDate:(id)a3;
- (void)clientRemote_didDetectEmergencyCallbackModeWithEndDate:(id)a3;
- (void)clientRemote_didEndWithReason:(int64_t)a3 error:(id)a4;
- (void)connectionInterrupted;
- (void)startWithCompletion:(id)a3;
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

- (HKElectrocardiogramSession)initWithHealthStore:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = HKElectrocardiogramSession;
  v9 = [(HKElectrocardiogramSession *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_healthStore, a3);
    objc_storeStrong(&v10->_sessionConfiguration, a4);
    v11 = objc_alloc_init(HKElectrocardiogramSessionTaskConfiguration);
    [(HKElectrocardiogramSessionTaskConfiguration *)v11 setSessionConfiguration:v8];
    v12 = [HKTaskServerProxyProvider alloc];
    healthStore = v10->_healthStore;
    v14 = [v8 sessionUUID];
    v15 = [(HKTaskServerProxyProvider *)v12 initWithHealthStore:healthStore taskIdentifier:@"HDElectrocardiogramSessionServerIdentifier" exportedObject:v10 taskUUID:v14];
    proxyProvider = v10->_proxyProvider;
    v10->_proxyProvider = v15;

    [(HKProxyProvider *)v10->_proxyProvider setShouldRetryOnInterruption:0];
    [(HKTaskServerProxyProvider *)v10->_proxyProvider setTaskConfiguration:v11];
  }

  return v10;
}

- (void)startWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
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

- (void)abortWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
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

- (void)clientRemote_didDetectContactAtDate:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self->_healthStore clientQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__HKElectrocardiogramSession_clientRemote_didDetectContactAtDate___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)clientRemote_didEndWithReason:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  v7 = [(HKHealthStore *)self->_healthStore clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__HKElectrocardiogramSession_clientRemote_didEndWithReason_error___block_invoke;
  block[3] = &unk_1E73767D0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

void __66__HKElectrocardiogramSession_clientRemote_didEndWithReason_error___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 32));
  [WeakRetained electrocardiogramSession:a1[4] didEndWithReason:a1[6] error:a1[5]];
}

- (void)clientRemote_didDetectEmergencyCallbackModeWithEndDate:(id)a3
{
  v4 = a3;
  v5 = [(HKHealthStore *)self->_healthStore clientQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__HKElectrocardiogramSession_clientRemote_didDetectEmergencyCallbackModeWithEndDate___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __85__HKElectrocardiogramSession_clientRemote_didDetectEmergencyCallbackModeWithEndDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained electrocardiogramSession:*(a1 + 32) didDetectEmergencyCallbackModeWithEndDate:*(a1 + 40)];
}

- (void)connectionInterrupted
{
  v3 = [(HKHealthStore *)self->_healthStore clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__HKElectrocardiogramSession_connectionInterrupted__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(v3, block);
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
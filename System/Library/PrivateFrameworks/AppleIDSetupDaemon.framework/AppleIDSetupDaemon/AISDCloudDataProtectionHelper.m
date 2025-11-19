@interface AISDCloudDataProtectionHelper
- (AISDCloudDataProtectionHelper)initWithStateController:(id)a3 queue:(id)a4;
- (BOOL)_onqueue_checkAvailability:(id *)a3;
- (void)checkAvailabilityWithCompletionHandler:(id)a3;
@end

@implementation AISDCloudDataProtectionHelper

- (AISDCloudDataProtectionHelper)initWithStateController:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AISDCloudDataProtectionHelper;
  v9 = [(AISDCloudDataProtectionHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stateController, a3);
    objc_storeStrong(&v10->_queue, a4);
  }

  return v10;
}

- (void)checkAvailabilityWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(AISDCloudDataProtectionHelper *)self queue];
  v6 = qos_class_self();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__AISDCloudDataProtectionHelper_checkAvailabilityWithCompletionHandler___block_invoke;
  v10[3] = &unk_278CAEF60;
  v10[4] = self;
  v11 = v4;
  v7 = v5;
  v8 = v4;
  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v6, 0, v10);
  dispatch_async(v7, v9);
}

void __72__AISDCloudDataProtectionHelper_checkAvailabilityWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [v2 _onqueue_checkAvailability:&v6];
  v4 = v6;
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v4);
  }
}

- (BOOL)_onqueue_checkAvailability:(id *)a3
{
  v4 = [(AISDCloudDataProtectionHelper *)self stateController];
  v12 = 0;
  v5 = [v4 isManateeAvailable:&v12];
  v6 = v12;

  v7 = [v6 code];
  if ((v7 + 5110) <= 8 && ((1 << (v7 - 10)) & 0x103) != 0 || (v7 + 5404) < 2)
  {

    v6 = 0;
  }

  if (a3)
  {
    v10 = v6;
    *a3 = v6;
  }

  return v5;
}

@end
@interface AISDCloudDataProtectionHelper
- (AISDCloudDataProtectionHelper)initWithStateController:(id)controller queue:(id)queue;
- (BOOL)_onqueue_checkAvailability:(id *)availability;
- (void)checkAvailabilityWithCompletionHandler:(id)handler;
@end

@implementation AISDCloudDataProtectionHelper

- (AISDCloudDataProtectionHelper)initWithStateController:(id)controller queue:(id)queue
{
  controllerCopy = controller;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = AISDCloudDataProtectionHelper;
  v9 = [(AISDCloudDataProtectionHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stateController, controller);
    objc_storeStrong(&v10->_queue, queue);
  }

  return v10;
}

- (void)checkAvailabilityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(AISDCloudDataProtectionHelper *)self queue];
  v6 = qos_class_self();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__AISDCloudDataProtectionHelper_checkAvailabilityWithCompletionHandler___block_invoke;
  v10[3] = &unk_278CAEF60;
  v10[4] = self;
  v11 = handlerCopy;
  v7 = queue;
  v8 = handlerCopy;
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

- (BOOL)_onqueue_checkAvailability:(id *)availability
{
  stateController = [(AISDCloudDataProtectionHelper *)self stateController];
  v12 = 0;
  v5 = [stateController isManateeAvailable:&v12];
  v6 = v12;

  code = [v6 code];
  if ((code + 5110) <= 8 && ((1 << (code - 10)) & 0x103) != 0 || (code + 5404) < 2)
  {

    v6 = 0;
  }

  if (availability)
  {
    v10 = v6;
    *availability = v6;
  }

  return v5;
}

@end
@interface AESystemNotificationObservation
+ (id)observationWithNotificationName:(id)a3 queue:(id)a4 notificationHandler:(id)a5;
- (AESystemNotificationObservation)initWithNotificationName:(id)a3 queue:(id)a4 notificationHandler:(id)a5;
- (void)beginObserving;
- (void)fire;
- (void)invalidate;
@end

@implementation AESystemNotificationObservation

- (AESystemNotificationObservation)initWithNotificationName:(id)a3 queue:(id)a4 notificationHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = AESystemNotificationObservation;
  v11 = [(AESystemNotificationObservation *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    notificationName = v11->_notificationName;
    v11->_notificationName = v12;

    objc_storeStrong(&v11->_queue, a4);
    v14 = MEMORY[0x23EECC850](v10);
    notificationHandler = v11->_notificationHandler;
    v11->_notificationHandler = v14;
  }

  return v11;
}

+ (id)observationWithNotificationName:(id)a3 queue:(id)a4 notificationHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[AESystemNotificationObservation alloc] initWithNotificationName:v9 queue:v8 notificationHandler:v7];

  [(AESystemNotificationObservation *)v10 beginObserving];

  return v10;
}

- (void)invalidate
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = [(AESystemNotificationObservation *)self notificationName];
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);

  [(AESystemNotificationObservation *)self setNotificationHandler:0];
}

- (void)beginObserving
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = [(AESystemNotificationObservation *)self notificationName];
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, AESystemNotificationDidFire, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)fire
{
  v3 = [(AESystemNotificationObservation *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__AESystemNotificationObservation_fire__block_invoke;
  block[3] = &unk_278BB7068;
  block[4] = self;
  dispatch_async(v3, block);
}

void __39__AESystemNotificationObservation_fire__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) notificationHandler];
  v1[2]();
}

@end
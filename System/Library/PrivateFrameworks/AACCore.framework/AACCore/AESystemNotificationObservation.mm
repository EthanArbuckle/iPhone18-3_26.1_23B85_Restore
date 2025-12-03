@interface AESystemNotificationObservation
+ (id)observationWithNotificationName:(id)name queue:(id)queue notificationHandler:(id)handler;
- (AESystemNotificationObservation)initWithNotificationName:(id)name queue:(id)queue notificationHandler:(id)handler;
- (void)beginObserving;
- (void)fire;
- (void)invalidate;
@end

@implementation AESystemNotificationObservation

- (AESystemNotificationObservation)initWithNotificationName:(id)name queue:(id)queue notificationHandler:(id)handler
{
  nameCopy = name;
  queueCopy = queue;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = AESystemNotificationObservation;
  v11 = [(AESystemNotificationObservation *)&v17 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    notificationName = v11->_notificationName;
    v11->_notificationName = v12;

    objc_storeStrong(&v11->_queue, queue);
    v14 = MEMORY[0x23EECC850](handlerCopy);
    notificationHandler = v11->_notificationHandler;
    v11->_notificationHandler = v14;
  }

  return v11;
}

+ (id)observationWithNotificationName:(id)name queue:(id)queue notificationHandler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  nameCopy = name;
  v10 = [[AESystemNotificationObservation alloc] initWithNotificationName:nameCopy queue:queueCopy notificationHandler:handlerCopy];

  [(AESystemNotificationObservation *)v10 beginObserving];

  return v10;
}

- (void)invalidate
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  notificationName = [(AESystemNotificationObservation *)self notificationName];
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, notificationName, 0);

  [(AESystemNotificationObservation *)self setNotificationHandler:0];
}

- (void)beginObserving
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  notificationName = [(AESystemNotificationObservation *)self notificationName];
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, AESystemNotificationDidFire, notificationName, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)fire
{
  queue = [(AESystemNotificationObservation *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__AESystemNotificationObservation_fire__block_invoke;
  block[3] = &unk_278BB7068;
  block[4] = self;
  dispatch_async(queue, block);
}

void __39__AESystemNotificationObservation_fire__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) notificationHandler];
  v1[2]();
}

@end
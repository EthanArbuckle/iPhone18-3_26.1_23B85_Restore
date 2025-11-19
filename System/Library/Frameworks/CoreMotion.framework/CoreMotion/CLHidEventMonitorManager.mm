@interface CLHidEventMonitorManager
- (CLHidEventMonitorManager)initWithDelegate:(id)a3 queue:(id)a4 matching:(id)a5;
- (void)addSystemClientMatching:(id)a3;
- (void)removeSystemClientmatching:(id)a3;
@end

@implementation CLHidEventMonitorManager

- (CLHidEventMonitorManager)initWithDelegate:(id)a3 queue:(id)a4 matching:(id)a5
{
  v6.receiver = self;
  v6.super_class = CLHidEventMonitorManager;
  return [(CLHidEventManager *)&v6 initWithDelegate:a3 queue:a4 matching:a5 type:1];
}

- (void)addSystemClientMatching:(id)a3
{
  v5 = objc_msgSend_matching(self, a2, a3);
  objc_msgSend_addObject_(v5, v6, a3);
  v9 = objc_msgSend_manager(self, v7, v8);
  v13 = objc_msgSend_matching(self, v10, v11);

  objc_msgSend_setMatching_(v9, v12, v13);
}

- (void)removeSystemClientmatching:(id)a3
{
  v5 = objc_msgSend_matching(self, a2, a3);
  objc_msgSend_removeObject_(v5, v6, a3);
  v9 = objc_msgSend_manager(self, v7, v8);
  v13 = objc_msgSend_matching(self, v10, v11);

  objc_msgSend_setMatching_(v9, v12, v13);
}

@end
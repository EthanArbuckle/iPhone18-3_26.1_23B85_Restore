@interface CLHidEventMonitorManager
- (CLHidEventMonitorManager)initWithDelegate:(id)delegate queue:(id)queue matching:(id)matching;
- (void)addSystemClientMatching:(id)matching;
- (void)removeSystemClientmatching:(id)clientmatching;
@end

@implementation CLHidEventMonitorManager

- (CLHidEventMonitorManager)initWithDelegate:(id)delegate queue:(id)queue matching:(id)matching
{
  v6.receiver = self;
  v6.super_class = CLHidEventMonitorManager;
  return [(CLHidEventManager *)&v6 initWithDelegate:delegate queue:queue matching:matching type:1];
}

- (void)addSystemClientMatching:(id)matching
{
  v5 = objc_msgSend_matching(self, a2, matching);
  objc_msgSend_addObject_(v5, v6, matching);
  v9 = objc_msgSend_manager(self, v7, v8);
  v13 = objc_msgSend_matching(self, v10, v11);

  objc_msgSend_setMatching_(v9, v12, v13);
}

- (void)removeSystemClientmatching:(id)clientmatching
{
  v5 = objc_msgSend_matching(self, a2, clientmatching);
  objc_msgSend_removeObject_(v5, v6, clientmatching);
  v9 = objc_msgSend_manager(self, v7, v8);
  v13 = objc_msgSend_matching(self, v10, v11);

  objc_msgSend_setMatching_(v9, v12, v13);
}

@end
@interface ICSGreenTea3PUIHardwareEventHandler
- (void)handleDeviceLockEvent:(ICSGreenTea3PUIHardwareEventHandler *)self resultHandler:(SEL)handler callAnalyticsLogger:(SBSUIInCallWindowSceneDeviceLockEvent *)logger completionHandler:(id)completionHandler;
@end

@implementation ICSGreenTea3PUIHardwareEventHandler

- (void)handleDeviceLockEvent:(ICSGreenTea3PUIHardwareEventHandler *)self resultHandler:(SEL)handler callAnalyticsLogger:(SBSUIInCallWindowSceneDeviceLockEvent *)logger completionHandler:(id)completionHandler
{
  v6 = v5;
  v7 = v4;
  v10 = _Block_copy(completionHandler);
  v11 = _Block_copy(v6);
  v12 = swift_allocObject();
  v12[2] = logger;
  v12[3] = v10;
  v12[4] = v7;
  v12[5] = v11;
  v12[6] = self;
  loggerCopy = logger;
  v14 = v7;
  selfCopy = self;

  sub_100211F74(&unk_1002FCE10, v12);
}

@end
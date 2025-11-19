@interface ICSGreenTea3PUIHardwareEventHandler
- (void)handleDeviceLockEvent:(ICSGreenTea3PUIHardwareEventHandler *)self resultHandler:(SEL)a2 callAnalyticsLogger:(SBSUIInCallWindowSceneDeviceLockEvent *)a3 completionHandler:(id)a4;
@end

@implementation ICSGreenTea3PUIHardwareEventHandler

- (void)handleDeviceLockEvent:(ICSGreenTea3PUIHardwareEventHandler *)self resultHandler:(SEL)a2 callAnalyticsLogger:(SBSUIInCallWindowSceneDeviceLockEvent *)a3 completionHandler:(id)a4
{
  v6 = v5;
  v7 = v4;
  v10 = _Block_copy(a4);
  v11 = _Block_copy(v6);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v10;
  v12[4] = v7;
  v12[5] = v11;
  v12[6] = self;
  v13 = a3;
  v14 = v7;
  v15 = self;

  sub_100211F74(&unk_1002FCE10, v12);
}

@end
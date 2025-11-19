@interface AKProximityAuthFlowController
+ (AKProximityAuthFlowController)shared;
- (id)beginAuthenticationWithClient:(id)a3 context:(id)a4 server:(id)a5 completion:(id)a6;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)endAuthenticationWithCompletion:(id)a3;
- (void)endAuthenticationWithToken:(id)a3;
- (void)endProximityBroadcastWith:(id)a3;
- (void)performAuthentication;
- (void)showVisualPairingWithEvent:(id)a3;
@end

@implementation AKProximityAuthFlowController

+ (AKProximityAuthFlowController)shared
{
  if (qword_100371BA8 != -1)
  {
    swift_once();
  }

  v3 = static ProximityAuthFlowController.shared;

  return v3;
}

- (id)beginAuthenticationWithClient:(id)a3 context:(id)a4 server:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = self;
  v15 = sub_1001C4908(v11, v12, v13, v14, v10);
  _Block_release(v10);
  _Block_release(v10);

  return v15;
}

- (void)endAuthenticationWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1001C4EC4(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)endAuthenticationWithToken:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1001C1814(a3);
  swift_unknownObjectRelease();
}

- (void)showVisualPairingWithEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001C1F60(v4);
}

- (void)endProximityBroadcastWith:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001C23C8(v4);
}

- (void)performAuthentication
{
  v2 = self;
  sub_1001C27D4();
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = self;
  ProximityAuthFlowController.centralManagerDidUpdateState(_:)(v4);
}

@end
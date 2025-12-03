@interface AKProximityAuthFlowController
+ (AKProximityAuthFlowController)shared;
- (id)beginAuthenticationWithClient:(id)client context:(id)context server:(id)server completion:(id)completion;
- (void)centralManagerDidUpdateState:(id)state;
- (void)endAuthenticationWithCompletion:(id)completion;
- (void)endAuthenticationWithToken:(id)token;
- (void)endProximityBroadcastWith:(id)with;
- (void)performAuthentication;
- (void)showVisualPairingWithEvent:(id)event;
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

- (id)beginAuthenticationWithClient:(id)client context:(id)context server:(id)server completion:(id)completion
{
  v10 = _Block_copy(completion);
  _Block_copy(v10);
  clientCopy = client;
  contextCopy = context;
  serverCopy = server;
  selfCopy = self;
  v15 = sub_1001C4908(clientCopy, contextCopy, serverCopy, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);

  return v15;
}

- (void)endAuthenticationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1001C4EC4(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)endAuthenticationWithToken:(id)token
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001C1814(token);
  swift_unknownObjectRelease();
}

- (void)showVisualPairingWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_1001C1F60(eventCopy);
}

- (void)endProximityBroadcastWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  sub_1001C23C8(withCopy);
}

- (void)performAuthentication
{
  selfCopy = self;
  sub_1001C27D4();
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  ProximityAuthFlowController.centralManagerDidUpdateState(_:)(stateCopy);
}

@end
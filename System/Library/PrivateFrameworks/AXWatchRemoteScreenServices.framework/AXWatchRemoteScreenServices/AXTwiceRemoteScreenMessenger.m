@interface AXTwiceRemoteScreenMessenger
+ (_TtC27AXWatchRemoteScreenServices28AXTwiceRemoteScreenMessenger)sharedInstance;
- (AXTwiceRemoteScreenMessengerDelegateProtocolObjc)delegate;
- (_TtC27AXWatchRemoteScreenServices28AXTwiceRemoteScreenMessenger)init;
- (id)sendMessage:(id)a3;
- (void)cleanup;
- (void)connectedDevicesDidChange:(id)a3;
- (void)dealloc;
- (void)didReceiveIncomingData:(id)a3;
- (void)receiveMessage:(id)a3;
- (void)reconnectToAXUIServerIfNeeded;
- (void)serverConnectionWasInterrupted;
@end

@implementation AXTwiceRemoteScreenMessenger

+ (_TtC27AXWatchRemoteScreenServices28AXTwiceRemoteScreenMessenger)sharedInstance
{
  if (qword_27E2E1908 != -1)
  {
    swift_once();
  }

  v3 = qword_27E2E1B40;

  return v3;
}

- (AXTwiceRemoteScreenMessengerDelegateProtocolObjc)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC27AXWatchRemoteScreenServices28AXTwiceRemoteScreenMessenger)init
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v4 = [(AXTwiceRemoteScreenMessenger *)&v9 init];
  v5 = objc_opt_self();
  v6 = v4;
  result = [v5 sharedInstance];
  if (result)
  {
    v8 = result;
    [(AXTwiceRemoteScreenMessenger *)result registerForIncomingData:v6];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 sharedInstance];
  if (v6)
  {
    v7 = v6;
    [v6 deregisterForIncomingData_];

    v8.receiver = v5;
    v8.super_class = ObjectType;
    [(AXTwiceRemoteScreenMessenger *)&v8 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (void)reconnectToAXUIServerIfNeeded
{
  v2 = self;
  AXTwiceRemoteScreenMessenger.reconnectToAXUIServerIfNeeded()();
}

- (id)sendMessage:(id)a3
{
  v4 = sub_23D6C6038();
  v5 = self;
  _s27AXWatchRemoteScreenServices07AXTwicebC9MessengerC11sendMessageySSSgSDys11AnyHashableVypGF_0(v4);
  v7 = v6;

  if (v7)
  {
    v8 = sub_23D6C6058();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)receiveMessage:(id)a3
{
  v4 = sub_23D6C6038();
  v5 = self;
  AXTwiceRemoteScreenMessenger.receiveMessage(_:)(v4);
}

- (void)cleanup
{
  v3 = objc_opt_self();
  v6 = self;
  v4 = [v3 sharedInstance];
  if (v4)
  {
    v5 = v4;
    [v4 deregisterForIncomingData_];
  }

  else
  {
    __break(1u);
  }
}

- (void)didReceiveIncomingData:(id)a3
{
  if (a3)
  {
    v4 = sub_23D6C6038();
    v5 = self;
    AXTwiceRemoteScreenMessenger.receiveMessage(_:)(v4);
  }

  else
  {
    __break(1u);
  }
}

- (void)connectedDevicesDidChange:(id)a3
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E1B50, &qword_23D6C74B0);
    v4 = sub_23D6C6118();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v7.value._rawValue = v4;
  AXTwiceRemoteScreenMessenger.connectedDevicesDidChange(_:)(v7);
}

- (void)serverConnectionWasInterrupted
{
  v2 = self;
  AXTwiceRemoteScreenMessenger.serverConnectionWasInterrupted()();
}

@end
@interface SingleUseGKDaemonProxyDataUpdateDelegate
- (_TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate)init;
- (void)dealloc;
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info;
@end

@implementation SingleUseGKDaemonProxyDataUpdateDelegate

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(&self->super.isa + OBJC_IVAR____TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate_updateType) == type)
  {
    v7 = *(&self->super.isa + OBJC_IVAR____TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate_updateBlock);
    v8 = v6;
    selfCopy = self;
    v7(v8);

    (*(&selfCopy->super.isa + OBJC_IVAR____TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate_cleanupBlock))();
  }

  else
  {
  }
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  daemonProxy = [v3 daemonProxy];
  [daemonProxy removeDataUpdateDelegate:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for SingleUseGKDaemonProxyDataUpdateDelegate();
  [(SingleUseGKDaemonProxyDataUpdateDelegate *)&v6 dealloc];
}

- (_TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
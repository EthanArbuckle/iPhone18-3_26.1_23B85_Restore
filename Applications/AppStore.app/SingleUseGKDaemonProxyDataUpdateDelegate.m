@interface SingleUseGKDaemonProxyDataUpdateDelegate
- (_TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate)init;
- (void)dealloc;
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4;
@end

@implementation SingleUseGKDaemonProxyDataUpdateDelegate

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4
{
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(&self->super.isa + OBJC_IVAR____TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate_updateType) == a3)
  {
    v7 = *(&self->super.isa + OBJC_IVAR____TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate_updateBlock);
    v8 = v6;
    v9 = self;
    v7(v8);

    (*(&v9->super.isa + OBJC_IVAR____TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate_cleanupBlock))();
  }

  else
  {
  }
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 daemonProxy];
  [v5 removeDataUpdateDelegate:v4];

  v6.receiver = v4;
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
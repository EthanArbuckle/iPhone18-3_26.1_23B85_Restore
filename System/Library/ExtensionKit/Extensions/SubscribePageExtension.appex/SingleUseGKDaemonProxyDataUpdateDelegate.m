@interface SingleUseGKDaemonProxyDataUpdateDelegate
- (_TtC22SubscribePageExtensionP33_77955017F366B854A4892EB35CDC853540SingleUseGKDaemonProxyDataUpdateDelegate)init;
- (void)dealloc;
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4;
@end

@implementation SingleUseGKDaemonProxyDataUpdateDelegate

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4
{
  v6 = sub_100752F44();
  if (*(&self->super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_77955017F366B854A4892EB35CDC853540SingleUseGKDaemonProxyDataUpdateDelegate_updateType) == a3)
  {
    v7 = *(&self->super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_77955017F366B854A4892EB35CDC853540SingleUseGKDaemonProxyDataUpdateDelegate_updateBlock);
    v8 = v6;
    v9 = self;
    v7(v8);

    (*(&v9->super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_77955017F366B854A4892EB35CDC853540SingleUseGKDaemonProxyDataUpdateDelegate_cleanupBlock))();
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

- (_TtC22SubscribePageExtensionP33_77955017F366B854A4892EB35CDC853540SingleUseGKDaemonProxyDataUpdateDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
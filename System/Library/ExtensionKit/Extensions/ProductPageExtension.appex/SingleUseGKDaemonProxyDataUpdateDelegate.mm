@interface SingleUseGKDaemonProxyDataUpdateDelegate
- (_TtC20ProductPageExtensionP33_450B634D436B86263B9E02C5925CFEE140SingleUseGKDaemonProxyDataUpdateDelegate)init;
- (void)dealloc;
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4;
@end

@implementation SingleUseGKDaemonProxyDataUpdateDelegate

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4
{
  v6 = sub_10076FE4C();
  if (*(&self->super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_450B634D436B86263B9E02C5925CFEE140SingleUseGKDaemonProxyDataUpdateDelegate_updateType) == a3)
  {
    v7 = *(&self->super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_450B634D436B86263B9E02C5925CFEE140SingleUseGKDaemonProxyDataUpdateDelegate_updateBlock);
    v8 = v6;
    v9 = self;
    v7(v8);

    (*(&v9->super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_450B634D436B86263B9E02C5925CFEE140SingleUseGKDaemonProxyDataUpdateDelegate_cleanupBlock))();
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

- (_TtC20ProductPageExtensionP33_450B634D436B86263B9E02C5925CFEE140SingleUseGKDaemonProxyDataUpdateDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface SingleUseGKDaemonProxyDataUpdateDelegate
- (_TtC20ProductPageExtensionP33_450B634D436B86263B9E02C5925CFEE140SingleUseGKDaemonProxyDataUpdateDelegate)init;
- (void)dealloc;
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info;
@end

@implementation SingleUseGKDaemonProxyDataUpdateDelegate

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  v6 = sub_10076FE4C();
  if (*(&self->super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_450B634D436B86263B9E02C5925CFEE140SingleUseGKDaemonProxyDataUpdateDelegate_updateType) == type)
  {
    v7 = *(&self->super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_450B634D436B86263B9E02C5925CFEE140SingleUseGKDaemonProxyDataUpdateDelegate_updateBlock);
    v8 = v6;
    selfCopy = self;
    v7(v8);

    (*(&selfCopy->super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_450B634D436B86263B9E02C5925CFEE140SingleUseGKDaemonProxyDataUpdateDelegate_cleanupBlock))();
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

- (_TtC20ProductPageExtensionP33_450B634D436B86263B9E02C5925CFEE140SingleUseGKDaemonProxyDataUpdateDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
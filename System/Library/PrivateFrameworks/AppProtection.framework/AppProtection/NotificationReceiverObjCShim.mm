@interface NotificationReceiverObjCShim
- (_TtC13AppProtection28NotificationReceiverObjCShim)init;
- (void)receivedNotification:(id)a3;
@end

@implementation NotificationReceiverObjCShim

- (void)receivedNotification:(id)a3
{
  v4 = sub_185B6781C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185B677DC();
  v10 = self;
  sub_185B0B47C(v9);

  (*(v5 + 8))(v9, v4);
}

- (_TtC13AppProtection28NotificationReceiverObjCShim)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
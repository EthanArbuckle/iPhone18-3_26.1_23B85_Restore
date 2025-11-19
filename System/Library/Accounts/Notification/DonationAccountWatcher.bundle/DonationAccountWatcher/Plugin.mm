@interface Plugin
- (_TtC22DonationAccountWatcher6Plugin)init;
- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
- (void)dealloc;
@end

@implementation Plugin

- (_TtC22DonationAccountWatcher6Plugin)init
{
  v2 = [objc_allocWithZone(MEMORY[0x29EDC0C08]) init];
  v3 = type metadata accessor for Plugin();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC22DonationAccountWatcher6Plugin_logger;
  v6 = [objc_msgSend(objc_opt_self() defaultProvider)];
  swift_unknownObjectRelease();
  *&v4[v5] = v6;
  *&v4[OBJC_IVAR____TtC22DonationAccountWatcher6Plugin_store] = v2;
  v7 = v2;
  [v6 pluginLoaded];
  v10.receiver = v4;
  v10.super_class = v3;
  v8 = [(Plugin *)&v10 init];

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  [*(&v8->super.isa + OBJC_IVAR____TtC22DonationAccountWatcher6Plugin_logger) pluginLoaded];
  return v8;
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC22DonationAccountWatcher6Plugin_logger);
  v3 = self;
  [v2 pluginUnloaded];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for Plugin();
  [(Plugin *)&v4 dealloc];
}

- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = self;
  sub_29C8BA834(a3, a6);
}

@end
@interface AAAccessSessionManager
- (AAAccessSessionManager)init;
- (BOOL)isActive;
- (void)pushSessionData:(id)a3;
- (void)pushSessionData:(id)a3 submitEventQueues:(BOOL)a4;
- (void)pushSessionData:(id)a3 traits:(id)a4;
- (void)pushSessionData:(id)a3 traits:(id)a4 submitEventQueues:(BOOL)a5;
@end

@implementation AAAccessSessionManager

- (BOOL)isActive
{
  v2 = *(&self->super.isa + OBJC_IVAR___AAAccessSessionManager_accessSessionManager);
  v3 = self;
  LOBYTE(v2) = AccessSessionManager.isActive.getter();

  return v2 & 1;
}

- (void)pushSessionData:(id)a3
{
  v5 = objc_allocWithZone(type metadata accessor for BridgedDataEventTraits());
  v6 = a3;
  v8 = self;
  v7 = [v5 init];
  BridgedAccessSessionManager.push(_:traits:)(v6);
}

- (void)pushSessionData:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  BridgedAccessSessionManager.push(_:traits:)(v6);
}

- (void)pushSessionData:(id)a3 submitEventQueues:(BOOL)a4
{
  v6 = objc_allocWithZone(type metadata accessor for BridgedDataEventTraits());
  v7 = a3;
  v9 = self;
  v8 = [v6 init];
  BridgedAccessSessionManager.push(_:traits:)(v7);
}

- (void)pushSessionData:(id)a3 traits:(id)a4 submitEventQueues:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  BridgedAccessSessionManager.push(_:traits:)(v7);
}

- (AAAccessSessionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
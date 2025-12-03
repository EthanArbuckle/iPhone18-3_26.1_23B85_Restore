@interface AAAccessSessionManager
- (AAAccessSessionManager)init;
- (BOOL)isActive;
- (void)pushSessionData:(id)data;
- (void)pushSessionData:(id)data submitEventQueues:(BOOL)queues;
- (void)pushSessionData:(id)data traits:(id)traits;
- (void)pushSessionData:(id)data traits:(id)traits submitEventQueues:(BOOL)queues;
@end

@implementation AAAccessSessionManager

- (BOOL)isActive
{
  v2 = *(&self->super.isa + OBJC_IVAR___AAAccessSessionManager_accessSessionManager);
  selfCopy = self;
  LOBYTE(v2) = AccessSessionManager.isActive.getter();

  return v2 & 1;
}

- (void)pushSessionData:(id)data
{
  v5 = objc_allocWithZone(type metadata accessor for BridgedDataEventTraits());
  dataCopy = data;
  selfCopy = self;
  v7 = [v5 init];
  BridgedAccessSessionManager.push(_:traits:)(dataCopy);
}

- (void)pushSessionData:(id)data traits:(id)traits
{
  dataCopy = data;
  traitsCopy = traits;
  selfCopy = self;
  BridgedAccessSessionManager.push(_:traits:)(dataCopy);
}

- (void)pushSessionData:(id)data submitEventQueues:(BOOL)queues
{
  v6 = objc_allocWithZone(type metadata accessor for BridgedDataEventTraits());
  dataCopy = data;
  selfCopy = self;
  v8 = [v6 init];
  BridgedAccessSessionManager.push(_:traits:)(dataCopy);
}

- (void)pushSessionData:(id)data traits:(id)traits submitEventQueues:(BOOL)queues
{
  dataCopy = data;
  traitsCopy = traits;
  selfCopy = self;
  BridgedAccessSessionManager.push(_:traits:)(dataCopy);
}

- (AAAccessSessionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
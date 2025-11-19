@interface ANXPCManager
- (ANXPCManager)init;
- (ANXPCManager)initWithMachServiceName:(id)a3 remoteObjectInterface:(id)a4 exportedInterface:(id)a5 exportedObject:(id)a6;
- (NSXPCConnection)connection;
- (void)addCheckInObserver:(id)a3;
- (void)dealloc;
@end

@implementation ANXPCManager

- (ANXPCManager)initWithMachServiceName:(id)a3 remoteObjectInterface:(id)a4 exportedInterface:(id)a5 exportedObject:(id)a6
{
  v8 = sub_223800FE0();
  v10 = v9;
  v11 = a4;
  v12 = a5;
  swift_unknownObjectRetain();
  return XPCManager.init(machServiceName:remoteObjectInterface:exportedInterface:exportedObject:)(v8, v10, v11, v12);
}

- (void)dealloc
{
  v3 = *(self + OBJC_IVAR___ANXPCManager__connection);
  v4 = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for XPCManager();
  [(ANXPCManager *)&v5 dealloc];
}

- (void)addCheckInObserver:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_2237FEA1C();
  swift_unknownObjectRelease();
}

- (NSXPCConnection)connection
{
  v2 = self;
  v3 = sub_2237FEBE0();

  return v3;
}

- (ANXPCManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
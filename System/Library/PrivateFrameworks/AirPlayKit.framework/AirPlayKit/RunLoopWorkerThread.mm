@interface RunLoopWorkerThread
- (_TtC10AirPlayKit19RunLoopWorkerThread)init;
- (void)dealloc;
- (void)main;
@end

@implementation RunLoopWorkerThread

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = qword_27E35E188;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_23E900764();
  __swift_project_value_buffer(v6, qword_27E367168);
  sub_23E882260(0xD00000000000005BLL, 0x800000023E909230, 0x74696E696564, 0xE600000000000000);
  v7 = selfCopy;
  [(RunLoopWorkerThread *)v7 cancel];

  v8.receiver = v7;
  v8.super_class = ObjectType;
  [(RunLoopWorkerThread *)&v8 dealloc];
}

- (void)main
{
  selfCopy = self;
  v2 = MEMORY[0x23EF17D10]();
  sub_23E8D80B4(selfCopy, selfCopy);
  objc_autoreleasePoolPop(v2);
}

- (_TtC10AirPlayKit19RunLoopWorkerThread)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_pendingQueue) = MEMORY[0x277D84F90];
  *(&self->super.super.isa + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_runLoop) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_source) = 0;
  v4 = OBJC_IVAR____TtC10AirPlayKit19RunLoopWorkerThread_lock;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 2) = v6;
  *v6 = 0;
  *(&self->super.super.isa + v4) = v5;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(RunLoopWorkerThread *)&v8 init];
}

@end
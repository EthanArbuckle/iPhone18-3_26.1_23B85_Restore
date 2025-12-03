@interface AAAccessQueue
- (AAAccessQueue)init;
- (AAAccessQueue)initWithQueue:(id)queue;
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
@end

@implementation AAAccessQueue

- (AAAccessQueue)initWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = sub_1B6A2B6E8(queueCopy);

  return v4;
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_1B6AB9CA0();

  v3 = *(&selfCopy->super.isa + OBJC_IVAR___AAAccessQueue_queue);
  v4 = sub_1B6AB99E0();
  MEMORY[0x1B8C97BE0](v4);

  MEMORY[0x1B8C97BE0](41, 0xE100000000000000);

  v5 = sub_1B6AB92B0();

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = AccessQueue.isEqual(_:)(v8);

  sub_1B6981634(v8);
  return v6;
}

- (AAAccessQueue)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
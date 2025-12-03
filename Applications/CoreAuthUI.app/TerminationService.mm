@interface TerminationService
+ (_TtC10CoreAuthUI18TerminationService)shared;
+ (void)setShared:(id)shared;
- (_TtC10CoreAuthUI18TerminationService)init;
- (void)scheduleTermination;
@end

@implementation TerminationService

- (_TtC10CoreAuthUI18TerminationService)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC10CoreAuthUI18TerminationService_terminationScheduled) = 0;
  v4 = OBJC_IVAR____TtC10CoreAuthUI18TerminationService_assertions;
  *(&self->super.isa + v4) = [objc_opt_self() weakObjectsHashTable];
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(TerminationService *)&v6 init];
}

+ (_TtC10CoreAuthUI18TerminationService)shared
{
  if (qword_1000B0568 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_1000B1CC8;
}

+ (void)setShared:(id)shared
{
  v3 = qword_1000B0568;
  sharedCopy = shared;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1000B1CC8;
  qword_1000B1CC8 = sharedCopy;
}

- (void)scheduleTermination
{
  *(&self->super.isa + OBJC_IVAR____TtC10CoreAuthUI18TerminationService_terminationScheduled) = 1;
  selfCopy = self;
  sub_100032930();
}

@end
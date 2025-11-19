@interface TerminationService
+ (_TtC28LocalAuthenticationUIService18TerminationService)shared;
+ (void)setShared:(id)a3;
- (_TtC28LocalAuthenticationUIService18TerminationService)init;
- (void)scheduleTermination;
@end

@implementation TerminationService

- (_TtC28LocalAuthenticationUIService18TerminationService)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminationService_terminationScheduled) = 0;
  v4 = OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminationService_assertions;
  *(&self->super.isa + v4) = [objc_opt_self() weakObjectsHashTable];
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(TerminationService *)&v6 init];
}

+ (_TtC28LocalAuthenticationUIService18TerminationService)shared
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static TerminationService.shared;
}

+ (void)setShared:(id)a3
{
  v3 = one-time initialization token for shared;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static TerminationService.shared;
  static TerminationService.shared = v4;
}

- (void)scheduleTermination
{
  *(&self->super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService18TerminationService_terminationScheduled) = 1;
  v2 = self;
  TerminationService.terminate(force:)();
}

@end
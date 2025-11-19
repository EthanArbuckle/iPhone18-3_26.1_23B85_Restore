@interface CRLiOSApplication
+ (_TtC8Freeform17CRLiOSApplication)sharedApplication;
- (_TtC8Freeform17CRLiOSApplication)init;
- (id)_extendLaunchTest;
@end

@implementation CRLiOSApplication

- (_TtC8Freeform17CRLiOSApplication)init
{
  v2 = (&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform17CRLiOSApplication_kCRLExtendedLaunchTestName);
  *v2 = 0xD000000000000011;
  v2[1] = 0x800000010156F090;
  v4.receiver = self;
  v4.super_class = type metadata accessor for CRLiOSApplication();
  return [(CRLiOSApplication *)&v4 init];
}

- (id)_extendLaunchTest
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (_TtC8Freeform17CRLiOSApplication)sharedApplication
{
  v2 = [objc_opt_self() sharedApplication];
  type metadata accessor for CRLiOSApplication();
  v3 = swift_dynamicCastClassUnconditional();

  return v3;
}

@end
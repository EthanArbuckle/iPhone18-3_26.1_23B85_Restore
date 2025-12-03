@interface ExplicitRestrictionsController.AgeVerificationWrapper
- (_TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper)init;
- (void)cloudServiceSetupViewControllerDidDismiss:(id)dismiss;
- (void)dealloc;
@end

@implementation ExplicitRestrictionsController.AgeVerificationWrapper

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion);
  selfCopy = self;
  if (v4)
  {
    sub_307CC(v4);
    v4(0, 0);
    sub_17654(v4);
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(ExplicitRestrictionsController.AgeVerificationWrapper *)&v6 dealloc];
}

- (void)cloudServiceSetupViewControllerDidDismiss:(id)dismiss
{
  sub_13C80(0, &qword_E103C0);
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  selfCopy = self;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_6DC3C8, v4);
}

- (_TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ExplicitRestrictionsController.AgeVerificationWrapper *)&v6 init];
}

@end
@interface ExplicitRestrictionsController.AgeVerificationWrapper
- (_TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper)init;
- (void)cloudServiceSetupViewControllerDidDismiss:(id)a3;
- (void)dealloc;
@end

@implementation ExplicitRestrictionsController.AgeVerificationWrapper

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion);
  v5 = self;
  if (v4)
  {
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v4);
    v4(0, 0);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v4);
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(ExplicitRestrictionsController.AgeVerificationWrapper *)&v6 dealloc];
}

- (void)cloudServiceSetupViewControllerDidDismiss:(id)a3
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = self;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(partial apply for closure #1 in ExplicitRestrictionsController.AgeVerificationWrapper.cloudServiceSetupViewControllerDidDismiss(_:), v4);
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
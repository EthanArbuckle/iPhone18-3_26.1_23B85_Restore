@interface MOProtectedAppsManager
- (_TtC16MomentsUIService22MOProtectedAppsManager)init;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
@end

@implementation MOProtectedAppsManager

- (_TtC16MomentsUIService22MOProtectedAppsManager)init
{
  v2 = self + OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_delegate;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_monitoring) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_monitoringSubjects) = &_swiftEmptySetSingleton;
  v4.receiver = self;
  v4.super_class = type metadata accessor for MOProtectedAppsManager();
  return [(MOProtectedAppsManager *)&v4 init];
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  type metadata accessor for APSubject();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized MOProtectedAppsManager.appProtectionSubjectsChanged(_:for:)(v5);
  swift_unknownObjectRelease();
}

@end
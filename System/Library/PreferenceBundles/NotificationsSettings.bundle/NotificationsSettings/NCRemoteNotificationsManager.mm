@interface NCRemoteNotificationsManager
+ (BOOL)featureIsAvailable;
+ (NCRemoteNotificationsManager)sharedInstance;
- (BOOL)featureIsAvailable;
@end

@implementation NCRemoteNotificationsManager

+ (BOOL)featureIsAvailable
{
  if (qword_5CAB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_5CDE0;
  v3 = OBJC_IVAR___NCRemoteNotificationsManager_protectedFeatureIsAvailable;
  swift_beginAccess();
  v4 = *&v2[v3];
  v5 = v2;

  os_unfair_lock_lock((v4 + 20));
  v6 = *(v4 + 16);
  os_unfair_lock_unlock((v4 + 20));

  return v6;
}

- (BOOL)featureIsAvailable
{
  v3 = OBJC_IVAR___NCRemoteNotificationsManager_protectedFeatureIsAvailable;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  selfCopy = self;

  os_unfair_lock_lock((v4 + 20));
  v6 = *(v4 + 16);
  os_unfair_lock_unlock((v4 + 20));

  return v6;
}

+ (NCRemoteNotificationsManager)sharedInstance
{
  if (qword_5CAB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_5CDE0;
}

@end
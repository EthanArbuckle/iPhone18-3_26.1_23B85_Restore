@interface ProfilesAppDelegate
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (_TtC8Profiles19ProfilesAppDelegate)init;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation ProfilesAppDelegate

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;
  sub_29E4AFDAC(sub_29E4B0FFC, v9);
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_29E4B019C(responseCopy, sub_29E4AFD9C, v9);
}

- (_TtC8Profiles19ProfilesAppDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_healthStore) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_summarySharingEntryStore) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_healthSharingNotificationSyncStore) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_cancellables) = MEMORY[0x29EDCA1A0];
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProfilesAppDelegate();
  return [(ProfilesAppDelegate *)&v3 init];
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  optionsCopy = options;
  if (!test)
  {
    if (!options)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_29E4FC6F0();
  if (optionsCopy)
  {
LABEL_3:
    optionsCopy = sub_29E4FC630();
  }

LABEL_4:
  applicationCopy = application;
  selfCopy = self;
  v10 = sub_29E4E6E4C(application, optionsCopy);

  return v10 & 1;
}

@end
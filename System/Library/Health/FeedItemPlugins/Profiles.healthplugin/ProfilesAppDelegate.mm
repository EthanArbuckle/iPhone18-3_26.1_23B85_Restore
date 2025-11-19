@interface ProfilesAppDelegate
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (_TtC8Profiles19ProfilesAppDelegate)init;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation ProfilesAppDelegate

- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_29E4AFDAC(sub_29E4B0FFC, v9);
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_29E4B019C(v11, sub_29E4AFD9C, v9);
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

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v5 = a5;
  if (!a4)
  {
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_29E4FC6F0();
  if (v5)
  {
LABEL_3:
    v5 = sub_29E4FC630();
  }

LABEL_4:
  v8 = a3;
  v9 = self;
  v10 = sub_29E4E6E4C(a3, v5);

  return v10 & 1;
}

@end
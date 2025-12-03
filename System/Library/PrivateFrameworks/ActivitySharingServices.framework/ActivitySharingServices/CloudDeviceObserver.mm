@interface CloudDeviceObserver
- (_TtC23ActivitySharingServices19CloudDeviceObserver)init;
- (void)cloudKitManager:(id)manager didEndUpdatesForFetchWithType:(int64_t)type activity:(id)activity cloudKitGroup:(id)group changesProcessedHandler:(id)handler;
- (void)cloudKitManager:(id)manager didReceiveNewCloudDevices:(id)devices moreComing:(BOOL)coming changesProcessedHandler:(id)handler;
@end

@implementation CloudDeviceObserver

- (_TtC23ActivitySharingServices19CloudDeviceObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)cloudKitManager:(id)manager didReceiveNewCloudDevices:(id)devices moreComing:(BOOL)coming changesProcessedHandler:(id)handler
{
  v8 = _Block_copy(handler);
  sub_221EA97E8();
  sub_221FB6438();
  v9 = __swift_project_boxed_opaque_existential_0Tm((&self->super.isa + OBJC_IVAR____TtC23ActivitySharingServices19CloudDeviceObserver_cloudDeviceSystem), *&self->cloudDeviceSystem[OBJC_IVAR____TtC23ActivitySharingServices19CloudDeviceObserver_cloudDeviceSystem + 16]);
  v10 = __swift_project_boxed_opaque_existential_0Tm(v9, v9[3])[6];
  managerCopy = manager;
  selfCopy = self;
  os_unfair_lock_lock(v10 + 6);
  sub_221EA9834(&v10[4]);
  os_unfair_lock_unlock(v10 + 6);
  v8[2](v8);
  _Block_release(v8);
}

- (void)cloudKitManager:(id)manager didEndUpdatesForFetchWithType:(int64_t)type activity:(id)activity cloudKitGroup:(id)group changesProcessedHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = __swift_project_boxed_opaque_existential_0Tm((&self->super.isa + OBJC_IVAR____TtC23ActivitySharingServices19CloudDeviceObserver_cloudDeviceSystem), *&self->cloudDeviceSystem[OBJC_IVAR____TtC23ActivitySharingServices19CloudDeviceObserver_cloudDeviceSystem + 16]);
  __swift_project_boxed_opaque_existential_0Tm(v10, v10[3]);
  selfCopy = self;
  if (type)
  {
    sub_221F7BC68();
  }

  else
  {
    sub_221F7BED4();
    v12 = *MEMORY[0x277CE91C0];
    sub_221FB6318();
    v13 = sub_221FB6338();

    notify_post((v13 + 32));
  }

  v9[2](v9);

  _Block_release(v9);
}

@end
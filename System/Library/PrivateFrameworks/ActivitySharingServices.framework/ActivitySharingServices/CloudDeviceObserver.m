@interface CloudDeviceObserver
- (_TtC23ActivitySharingServices19CloudDeviceObserver)init;
- (void)cloudKitManager:(id)a3 didEndUpdatesForFetchWithType:(int64_t)a4 activity:(id)a5 cloudKitGroup:(id)a6 changesProcessedHandler:(id)a7;
- (void)cloudKitManager:(id)a3 didReceiveNewCloudDevices:(id)a4 moreComing:(BOOL)a5 changesProcessedHandler:(id)a6;
@end

@implementation CloudDeviceObserver

- (_TtC23ActivitySharingServices19CloudDeviceObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)cloudKitManager:(id)a3 didReceiveNewCloudDevices:(id)a4 moreComing:(BOOL)a5 changesProcessedHandler:(id)a6
{
  v8 = _Block_copy(a6);
  sub_221EA97E8();
  sub_221FB6438();
  v9 = __swift_project_boxed_opaque_existential_0Tm((&self->super.isa + OBJC_IVAR____TtC23ActivitySharingServices19CloudDeviceObserver_cloudDeviceSystem), *&self->cloudDeviceSystem[OBJC_IVAR____TtC23ActivitySharingServices19CloudDeviceObserver_cloudDeviceSystem + 16]);
  v10 = __swift_project_boxed_opaque_existential_0Tm(v9, v9[3])[6];
  v11 = a3;
  v12 = self;
  os_unfair_lock_lock(v10 + 6);
  sub_221EA9834(&v10[4]);
  os_unfair_lock_unlock(v10 + 6);
  v8[2](v8);
  _Block_release(v8);
}

- (void)cloudKitManager:(id)a3 didEndUpdatesForFetchWithType:(int64_t)a4 activity:(id)a5 cloudKitGroup:(id)a6 changesProcessedHandler:(id)a7
{
  v9 = _Block_copy(a7);
  v10 = __swift_project_boxed_opaque_existential_0Tm((&self->super.isa + OBJC_IVAR____TtC23ActivitySharingServices19CloudDeviceObserver_cloudDeviceSystem), *&self->cloudDeviceSystem[OBJC_IVAR____TtC23ActivitySharingServices19CloudDeviceObserver_cloudDeviceSystem + 16]);
  __swift_project_boxed_opaque_existential_0Tm(v10, v10[3]);
  v11 = self;
  if (a4)
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
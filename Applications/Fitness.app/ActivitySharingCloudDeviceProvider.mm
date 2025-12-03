@interface ActivitySharingCloudDeviceProvider
- (_TtC10FitnessApp34ActivitySharingCloudDeviceProvider)init;
- (void)dealloc;
@end

@implementation ActivitySharingCloudDeviceProvider

- (_TtC10FitnessApp34ActivitySharingCloudDeviceProvider)init
{
  v3 = type metadata accessor for SecureCloudClient();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp34ActivitySharingCloudDeviceProvider_cloudDevices) = _swiftEmptyArrayStorage;
  *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp34ActivitySharingCloudDeviceProvider_activitySharingCloudDevicesChangedToken) = -1;
  SecureCloudClient.init()();
  (*(v4 + 32))(self + OBJC_IVAR____TtC10FitnessApp34ActivitySharingCloudDeviceProvider_secureCloudClient, v6, v3);
  v7 = type metadata accessor for ActivitySharingCloudDeviceProvider();
  v9.receiver = self;
  v9.super_class = v7;
  return [(ActivitySharingCloudDeviceProvider *)&v9 init];
}

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC10FitnessApp34ActivitySharingCloudDeviceProvider_activitySharingCloudDevicesChangedToken;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  selfCopy = self;
  if (v4 != -1)
  {
    notify_cancel(v4);
  }

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for ActivitySharingCloudDeviceProvider();
  [(ActivitySharingCloudDeviceProvider *)&v6 dealloc];
}

@end
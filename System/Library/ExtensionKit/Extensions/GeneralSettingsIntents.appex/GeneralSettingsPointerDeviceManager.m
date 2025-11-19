@interface GeneralSettingsPointerDeviceManager
- (void)mousePointerDevicesDidConnect:(id)a3;
- (void)mousePointerDevicesDidDisconnect:(id)a3;
@end

@implementation GeneralSettingsPointerDeviceManager

- (void)mousePointerDevicesDidConnect:(id)a3
{
  sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
  sub_100009650();
  sub_10000FA68();
  v4 = self;
  sub_100009204();
}

- (void)mousePointerDevicesDidDisconnect:(id)a3
{
  sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
  sub_100009650();
  v4 = sub_10000FA68();
  swift_beginAccess();
  v5 = self;
  sub_10000A4EC(v4);
  swift_endAccess();
}

@end
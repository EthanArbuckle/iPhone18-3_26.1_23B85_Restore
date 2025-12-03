@interface GeneralSettingsPointerDeviceManager
- (void)mousePointerDevicesDidConnect:(id)connect;
- (void)mousePointerDevicesDidDisconnect:(id)disconnect;
@end

@implementation GeneralSettingsPointerDeviceManager

- (void)mousePointerDevicesDidConnect:(id)connect
{
  sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
  sub_100009650();
  sub_10000FA68();
  selfCopy = self;
  sub_100009204();
}

- (void)mousePointerDevicesDidDisconnect:(id)disconnect
{
  sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
  sub_100009650();
  v4 = sub_10000FA68();
  swift_beginAccess();
  selfCopy = self;
  sub_10000A4EC(v4);
  swift_endAccess();
}

@end
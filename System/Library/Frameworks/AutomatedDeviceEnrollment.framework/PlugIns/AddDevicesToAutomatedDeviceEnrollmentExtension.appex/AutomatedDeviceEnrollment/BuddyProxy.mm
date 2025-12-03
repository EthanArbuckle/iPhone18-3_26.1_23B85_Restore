@interface BuddyProxy
- (_TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy)init;
- (void)client:(id)client didInterruptWithError:(id)error;
- (void)clientDidConnect:;
- (void)clientDidDisconnect:;
@end

@implementation BuddyProxy

- (_TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)client:(id)client didInterruptWithError:(id)error
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_100034CFC();
}

- (void)clientDidConnect:
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v0 = sub_10008CCDC();
  sub_100009F94(v0, qword_1000D6D38);
  oslog = sub_10008CCBC();
  v1 = sub_10008DE1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_10000A2D8(0xD000000000000014, 0x8000000100099850, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s: CAT task client connected", v2, 0xCu);
    sub_10000BC74(v3);
  }
}

- (void)clientDidDisconnect:
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v0 = sub_10008CCDC();
  sub_100009F94(v0, qword_1000D6D38);
  oslog = sub_10008CCBC();
  v1 = sub_10008DE1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_10000A2D8(0xD000000000000017, 0x8000000100099830, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s: CAT task client disconnected", v2, 0xCu);
    sub_10000BC74(v3);
  }
}

@end
@interface TerminalBackedDevicesDiscoveryProvider
- (_TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider)init;
- (void)deviceDiscovery:(id)a3 didActivateWithError:(id)a4;
- (void)deviceDiscovery:(id)a3 didEncounterError:(id)a4;
- (void)deviceDiscovery:(id)a3 didLoseDevice:(id)a4;
- (void)deviceDiscovery:(id)a3 hasInvalidated:(id)a4;
@end

@implementation TerminalBackedDevicesDiscoveryProvider

- (_TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)deviceDiscovery:(id)a3 didActivateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1000845E4(a4);
}

- (void)deviceDiscovery:(id)a3 didLoseDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000848AC(v7);
}

- (void)deviceDiscovery:(id)a3 hasInvalidated:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_100084B04(v8, &static os_log_type_t.info.getter, "CATSharingDeviceDiscovery has invalidated with error: %{public}s", &unk_1000C2708, &unk_100096F20);
}

- (void)deviceDiscovery:(id)a3 didEncounterError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_100084B04(v8, &static os_log_type_t.error.getter, "CATSharingDeviceDiscovery failed with error: %{public}s", &unk_1000C2690, &unk_100096EF0);
}

@end
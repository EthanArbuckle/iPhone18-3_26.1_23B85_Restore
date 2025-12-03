@interface TerminalBackedDevicesDiscoveryProvider
- (_TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider)init;
- (void)deviceDiscovery:(id)discovery didActivateWithError:(id)error;
- (void)deviceDiscovery:(id)discovery didEncounterError:(id)error;
- (void)deviceDiscovery:(id)discovery didLoseDevice:(id)device;
- (void)deviceDiscovery:(id)discovery hasInvalidated:(id)invalidated;
@end

@implementation TerminalBackedDevicesDiscoveryProvider

- (_TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)deviceDiscovery:(id)discovery didActivateWithError:(id)error
{
  discoveryCopy = discovery;
  selfCopy = self;
  errorCopy = error;
  sub_1000845E4(error);
}

- (void)deviceDiscovery:(id)discovery didLoseDevice:(id)device
{
  discoveryCopy = discovery;
  deviceCopy = device;
  selfCopy = self;
  sub_1000848AC(deviceCopy);
}

- (void)deviceDiscovery:(id)discovery hasInvalidated:(id)invalidated
{
  discoveryCopy = discovery;
  invalidatedCopy = invalidated;
  selfCopy = self;
  sub_100084B04(invalidatedCopy, &static os_log_type_t.info.getter, "CATSharingDeviceDiscovery has invalidated with error: %{public}s", &unk_1000C2708, &unk_100096F20);
}

- (void)deviceDiscovery:(id)discovery didEncounterError:(id)error
{
  discoveryCopy = discovery;
  errorCopy = error;
  selfCopy = self;
  sub_100084B04(errorCopy, &static os_log_type_t.error.getter, "CATSharingDeviceDiscovery failed with error: %{public}s", &unk_1000C2690, &unk_100096EF0);
}

@end
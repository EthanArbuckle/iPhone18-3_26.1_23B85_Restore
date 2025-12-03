@interface ASUIServerManager
- (void)endDiscoveryInPicker;
- (void)failAccessory:(id)accessory;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)renameAccessory:(id)accessory currentName:(id)name updateSSID:(id)d overrideBundleID:(id)iD;
- (void)showMigrationPickerWithOverrideBundleID:(id)d;
- (void)showPickerWithOverrideBundleID:(id)d shouldRetrieveDisplayItems:(id)items needsBluetooth:(id)bluetooth needsWiFi:(id)fi needsDeviceOTANameBroadcast:(id)broadcast discoveryTimeout:(id)timeout filterInApp:(id)app;
- (void)updateMigrationDisplayCount:(id)count;
- (void)updatePickerWith:(id)with;
- (void)upgradeAccessory:(id)accessory needsBluetooth:(id)bluetooth needsWiFi:(id)fi needsDeviceOTANameBroadcast:(id)broadcast discoveryTimeout:(id)timeout overrideBundleID:(id)d;
@end

@implementation ASUIServerManager

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000486D8(connectionCopy);

  swift_unknownObjectRelease();
}

- (void)failAccessory:(id)accessory
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_1000449FC(v4, v6);
}

- (void)updateMigrationDisplayCount:(id)count
{
  countCopy = count;
  selfCopy = self;
  sub_100045A0C(countCopy);
}

- (void)showPickerWithOverrideBundleID:(id)d shouldRetrieveDisplayItems:(id)items needsBluetooth:(id)bluetooth needsWiFi:(id)fi needsDeviceOTANameBroadcast:(id)broadcast discoveryTimeout:(id)timeout filterInApp:(id)app
{
  if (d)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  itemsCopy = items;
  bluetoothCopy = bluetooth;
  fiCopy = fi;
  broadcastCopy = broadcast;
  timeoutCopy = timeout;
  appCopy = app;
  selfCopy = self;
  sub_100045BB4(v15, v17, itemsCopy, bluetoothCopy, fiCopy, broadcastCopy, timeoutCopy, appCopy);
}

- (void)showMigrationPickerWithOverrideBundleID:(id)d
{
  if (d)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1000465F0(v4, v6);
}

- (void)upgradeAccessory:(id)accessory needsBluetooth:(id)bluetooth needsWiFi:(id)fi needsDeviceOTANameBroadcast:(id)broadcast discoveryTimeout:(id)timeout overrideBundleID:(id)d
{
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (d)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    d = v18;
  }

  else
  {
    v17 = 0;
  }

  bluetoothCopy = bluetooth;
  fiCopy = fi;
  broadcastCopy = broadcast;
  timeoutCopy = timeout;
  selfCopy = self;
  sub_1000471B8(v14, v16, bluetoothCopy, fiCopy, broadcastCopy, timeoutCopy, v17, d);
}

- (void)renameAccessory:(id)accessory currentName:(id)name updateSSID:(id)d overrideBundleID:(id)iD
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (iD)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    iD = v16;
  }

  else
  {
    v15 = 0;
  }

  dCopy = d;
  selfCopy = self;
  sub_100047ACC(v9, v11, v12, v14, dCopy, v15, iD);
}

- (void)updatePickerWith:(id)with
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100048074(v4);
}

- (void)endDiscoveryInPicker
{
  selfCopy = self;
  sub_1000482C0();
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_100048418(activateCopy);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  selfCopy = self;
  sub_100048A50();
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  selfCopy = self;
  errorCopy = error;
  sub_100048B84(error);
}

@end
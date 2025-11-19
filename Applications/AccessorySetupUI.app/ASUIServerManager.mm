@interface ASUIServerManager
- (void)endDiscoveryInPicker;
- (void)failAccessory:(id)a3;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)renameAccessory:(id)a3 currentName:(id)a4 updateSSID:(id)a5 overrideBundleID:(id)a6;
- (void)showMigrationPickerWithOverrideBundleID:(id)a3;
- (void)showPickerWithOverrideBundleID:(id)a3 shouldRetrieveDisplayItems:(id)a4 needsBluetooth:(id)a5 needsWiFi:(id)a6 needsDeviceOTANameBroadcast:(id)a7 discoveryTimeout:(id)a8 filterInApp:(id)a9;
- (void)updateMigrationDisplayCount:(id)a3;
- (void)updatePickerWith:(id)a3;
- (void)upgradeAccessory:(id)a3 needsBluetooth:(id)a4 needsWiFi:(id)a5 needsDeviceOTANameBroadcast:(id)a6 discoveryTimeout:(id)a7 overrideBundleID:(id)a8;
@end

@implementation ASUIServerManager

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_1000486D8(v8);

  swift_unknownObjectRelease();
}

- (void)failAccessory:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_1000449FC(v4, v6);
}

- (void)updateMigrationDisplayCount:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100045A0C(v4);
}

- (void)showPickerWithOverrideBundleID:(id)a3 shouldRetrieveDisplayItems:(id)a4 needsBluetooth:(id)a5 needsWiFi:(id)a6 needsDeviceOTANameBroadcast:(id)a7 discoveryTimeout:(id)a8 filterInApp:(id)a9
{
  if (a3)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = self;
  sub_100045BB4(v15, v17, v18, v19, v20, v21, v22, v23);
}

- (void)showMigrationPickerWithOverrideBundleID:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1000465F0(v4, v6);
}

- (void)upgradeAccessory:(id)a3 needsBluetooth:(id)a4 needsWiFi:(id)a5 needsDeviceOTANameBroadcast:(id)a6 discoveryTimeout:(id)a7 overrideBundleID:(id)a8
{
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (a8)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a8 = v18;
  }

  else
  {
    v17 = 0;
  }

  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = self;
  sub_1000471B8(v14, v16, v19, v20, v21, v22, v17, a8);
}

- (void)renameAccessory:(id)a3 currentName:(id)a4 updateSSID:(id)a5 overrideBundleID:(id)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (a6)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a6 = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = a5;
  v18 = self;
  sub_100047ACC(v9, v11, v12, v14, v17, v15, a6);
}

- (void)updatePickerWith:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_100048074(v4);
}

- (void)endDiscoveryInPicker
{
  v2 = self;
  sub_1000482C0();
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100048418(v4);
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100048A50();
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_100048B84(a4);
}

@end
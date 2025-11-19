@interface WiFiSharedSettingsState
+ (_TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState)defaultState;
- (BOOL)askToJoinHotspots;
- (BOOL)autoJoinState;
- (BOOL)powerState;
- (NSString)_wifiSettingsBundleIdentifier;
- (NSString)wifiSettingsBundleIdentifier;
- (int64_t)askToJoinMode;
- (int64_t)askToJoinNetworks;
- (int64_t)autoHotspotMode;
- (void)setWifiSettingsBundleIdentifier:(id)a3;
- (void)set_wifiSettingsBundleIdentifier:(id)a3;
@end

@implementation WiFiSharedSettingsState

+ (_TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState)defaultState
{
  if (qword_10002C480 != -1)
  {
    swift_once();
  }

  v3 = qword_100032928;

  return v3;
}

- (NSString)_wifiSettingsBundleIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiSettingsBundleIdentifier);
  v3 = *(self + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiSettingsBundleIdentifier + 8);

  v4 = sub_10001CC04();

  return v4;
}

- (void)set_wifiSettingsBundleIdentifier:(id)a3
{
  v4 = sub_10001CC14();
  v5 = (self + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiSettingsBundleIdentifier);
  v6 = *(self + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiSettingsBundleIdentifier + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (NSString)wifiSettingsBundleIdentifier
{
  swift_getKeyPath();
  sub_1000082F0();
  v3 = self;
  sub_10001CAA4();

  v4 = *(v3 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiSettingsBundleIdentifier);
  v5 = *(v3 + OBJC_IVAR____TtC29WiFiSettingsControlsExtension23WiFiSharedSettingsState__wifiSettingsBundleIdentifier + 8);

  v6 = sub_10001CC04();

  return v6;
}

- (void)setWifiSettingsBundleIdentifier:(id)a3
{
  v4 = sub_10001CC14();
  v6 = v5;
  v7 = self;
  sub_1000112F0(v4, v6);
}

- (BOOL)powerState
{
  v2 = self;
  v3 = sub_1000109C0();

  return v3 & 1;
}

- (int64_t)askToJoinMode
{
  v2 = self;
  v3 = sub_100010B04();

  return v3;
}

- (int64_t)autoHotspotMode
{
  v2 = self;
  v3 = sub_10001182C();

  return v3;
}

- (int64_t)askToJoinNetworks
{
  v2 = self;
  v3 = sub_100011F5C();

  return v3;
}

- (BOOL)askToJoinHotspots
{
  v2 = self;
  v3 = sub_10001232C();

  return v3;
}

- (BOOL)autoJoinState
{
  v2 = self;
  v3 = sub_100010848();

  return v3 & 1;
}

@end
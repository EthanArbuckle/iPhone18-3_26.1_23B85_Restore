@interface ClimateZonesSyncedServiceButton
- (_TtC7Climate31ClimateZonesSyncedServiceButton)init;
- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)a3;
- (void)zonesSyncedService:(id)a3 didUpdateOn:(BOOL)a4;
@end

@implementation ClimateZonesSyncedServiceButton

- (_TtC7Climate31ClimateZonesSyncedServiceButton)init
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)zonesSyncedService:(id)a3 didUpdateOn:(BOOL)a4
{
  v4 = self;
  sub_1000C10C4();
  [(ClimateZonesSyncedServiceButton *)v4 setEnabled:sub_10001B250() < 8];
  sub_10001B428();
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
}

- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)a3
{
  v3 = self;
  sub_10001B428();
}

@end
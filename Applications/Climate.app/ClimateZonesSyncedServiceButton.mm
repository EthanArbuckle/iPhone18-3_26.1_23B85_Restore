@interface ClimateZonesSyncedServiceButton
- (_TtC7Climate31ClimateZonesSyncedServiceButton)init;
- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)filter;
- (void)zonesSyncedService:(id)service didUpdateOn:(BOOL)on;
@end

@implementation ClimateZonesSyncedServiceButton

- (_TtC7Climate31ClimateZonesSyncedServiceButton)init
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)zonesSyncedService:(id)service didUpdateOn:(BOOL)on
{
  selfCopy = self;
  sub_1000C10C4();
  [(ClimateZonesSyncedServiceButton *)selfCopy setEnabled:sub_10001B250() < 8];
  sub_10001B428();
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
}

- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)filter
{
  selfCopy = self;
  sub_10001B428();
}

@end
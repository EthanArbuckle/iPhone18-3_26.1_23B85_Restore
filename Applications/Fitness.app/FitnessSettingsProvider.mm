@interface FitnessSettingsProvider
- (void)wheelchairUseCharacteristicCache:(id)a3 wheelchairUsageDidChange:(BOOL)a4;
@end

@implementation FitnessSettingsProvider

- (void)wheelchairUseCharacteristicCache:(id)a3 wheelchairUsageDidChange:(BOOL)a4
{
  v4 = type metadata accessor for AccountFitnessSettingsChanged();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();

  AccountFitnessSettingsChanged.init()();
  sub_1002402BC();
  dispatch thunk of EventHubProtocol.publish<A>(_:)();
  (*(v5 + 8))(v7, v4);
}

@end
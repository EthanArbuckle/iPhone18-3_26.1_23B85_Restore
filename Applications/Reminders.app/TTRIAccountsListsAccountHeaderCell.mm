@interface TTRIAccountsListsAccountHeaderCell
- (NSArray)accessibilityUserInputLabels;
- (NSString)accessibilityLabel;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation TTRIAccountsListsAccountHeaderCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100032ACC();

  (*(v5 + 8))(v7, v4);
}

- (NSString)accessibilityLabel
{
  v3 = type metadata accessor for UIListContentConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_10003139C(v6);
  sub_10016D594(v6, _swiftEmptyArrayStorage);

  (*(v4 + 8))(v6, v3);
  v8 = String._bridgeToObjectiveC()();

  return v8;
}

- (NSArray)accessibilityUserInputLabels
{
  v3 = type metadata accessor for UIListContentConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_10003139C(v6);
  v8 = UIListContentConfiguration.text.getter();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  if (!v10)
  {
    v8 = static TTRAccesibility.General.Label.Untitled.getter();
    v10 = v11;
  }

  sub_100058000(&unk_100771E10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D400;
  *(v12 + 32) = v8;
  *(v12 + 40) = v10;

  v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

@end
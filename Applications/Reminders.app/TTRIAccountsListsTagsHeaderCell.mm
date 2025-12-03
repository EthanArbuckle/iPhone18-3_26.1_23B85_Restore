@interface TTRIAccountsListsTagsHeaderCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation TTRIAccountsListsTagsHeaderCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1005F8D94(v7);

  (*(v5 + 8))(v7, v4);
}

@end
@interface TTRIAccountsListsInlinePermissionHeaderCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)containerViewDidLayoutArrangedSubviews:(id)subviews;
@end

@implementation TTRIAccountsListsInlinePermissionHeaderCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1002E107C(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)containerViewDidLayoutArrangedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  selfCopy = self;
  sub_1002E26C4();
}

@end
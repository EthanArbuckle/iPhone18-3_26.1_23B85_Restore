@interface TTRIAccountsListsInlinePermissionHeaderCell
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)containerViewDidLayoutArrangedSubviews:(id)a3;
@end

@implementation TTRIAccountsListsInlinePermissionHeaderCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1002E107C(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)containerViewDidLayoutArrangedSubviews:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002E26C4();
}

@end
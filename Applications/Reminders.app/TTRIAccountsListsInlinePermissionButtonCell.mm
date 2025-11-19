@interface TTRIAccountsListsInlinePermissionButtonCell
- (_TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell)initWithCoder:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation TTRIAccountsListsInlinePermissionButtonCell

- (_TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell)initWithCoder:(id)a3
{
  *&self->super.viewModelObserver[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell_appliedConfiguration;
  v5 = type metadata accessor for TTRPermissionConfiguration.PrimaryButton();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionButtonCell____lazy_storage___primaryButton) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10046FB8C(v7);

  (*(v5 + 8))(v7, v4);
}

@end
@interface TTRIAccountsListsHashtagsCell
- (_TtC9Reminders29TTRIAccountsListsHashtagsCell)initWithCoder:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation TTRIAccountsListsHashtagsCell

- (_TtC9Reminders29TTRIAccountsListsHashtagsCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders29TTRIAccountsListsHashtagsCell_selectionRequestObserver) = 0;
  v4 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsHashtagsCell_hashtags;
  v5 = type metadata accessor for TTRAccountsListsViewModel.Hashtags();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
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
  sub_10014BA30();

  (*(v5 + 8))(v7, v4);
}

@end
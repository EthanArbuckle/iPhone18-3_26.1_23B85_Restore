@interface TTRIAccountsListsTagsSectionHeaderView
- (_TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView)initWithCoder:(id)a3;
- (_TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView)initWithReuseIdentifier:(id)a3;
@end

@implementation TTRIAccountsListsTagsSectionHeaderView

- (_TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_10039AA7C(v3, v4);
}

- (_TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView_menu;
  v5 = sub_100058000(&qword_10076BDC8);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView____lazy_storage___menuButton) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end
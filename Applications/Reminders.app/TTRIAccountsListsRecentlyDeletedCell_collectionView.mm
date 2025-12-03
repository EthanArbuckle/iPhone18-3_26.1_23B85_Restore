@interface TTRIAccountsListsRecentlyDeletedCell_collectionView
- (NSArray)accessibilityCustomActions;
- (_TtC9Reminders51TTRIAccountsListsRecentlyDeletedCell_collectionView)initWithCoder:(id)coder;
- (void)setAccessibilityCustomActions:(id)isa;
@end

@implementation TTRIAccountsListsRecentlyDeletedCell_collectionView

- (_TtC9Reminders51TTRIAccountsListsRecentlyDeletedCell_collectionView)initWithCoder:(id)coder
{
  *&self->super.super.viewModelObserver[OBJC_IVAR____TtC9Reminders51TTRIAccountsListsRecentlyDeletedCell_collectionView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC9Reminders51TTRIAccountsListsRecentlyDeletedCell_collectionView_recentlyDeletedList;
  v5 = type metadata accessor for TTRAccountsListsViewModel.RecentlyDeletedList();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
  v3 = sub_1005B4598();

  if (v3)
  {
    sub_100003540(0, &qword_10076BCE0);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setAccessibilityCustomActions:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_100003540(0, &qword_10076BCE0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TTRIAccountsListsRecentlyDeletedCell_collectionView *)&v8 setAccessibilityCustomActions:isa];
}

@end
@interface TTRIAccountsListsViewListCell_collectionView
- (NSArray)accessibilityCustomActions;
- (_TtC9Reminders44TTRIAccountsListsViewListCell_collectionView)initWithCoder:(id)coder;
- (_TtC9Reminders44TTRIAccountsListsViewListCell_collectionView)initWithFrame:(CGRect)frame;
- (void)setAccessibilityCustomActions:(id)isa;
@end

@implementation TTRIAccountsListsViewListCell_collectionView

- (_TtC9Reminders44TTRIAccountsListsViewListCell_collectionView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *&self->super.super.viewModelObserver[OBJC_IVAR____TtC9Reminders44TTRIAccountsListsViewListCell_collectionView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9Reminders44TTRIAccountsListsViewListCell_collectionView_list;
  v10 = type metadata accessor for TTRAccountsListsViewModel.List();
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(TTRIAccountsListsBaseCell_collectionView *)&v12 initWithFrame:x, y, width, height];
}

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
  v3 = sub_100329108();

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
  [(TTRIAccountsListsViewListCell_collectionView *)&v8 setAccessibilityCustomActions:isa];
}

- (_TtC9Reminders44TTRIAccountsListsViewListCell_collectionView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *&self->super.super.viewModelObserver[OBJC_IVAR____TtC9Reminders44TTRIAccountsListsViewListCell_collectionView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC9Reminders44TTRIAccountsListsViewListCell_collectionView_list;
  v7 = type metadata accessor for TTRAccountsListsViewModel.List();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  v11.receiver = self;
  v11.super_class = ObjectType;
  coderCopy = coder;
  v9 = [(TTRIAccountsListsBaseCell_collectionView *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end
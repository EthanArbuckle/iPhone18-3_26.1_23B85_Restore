@interface TTRIAccountsListsViewListCell_collectionView
- (NSArray)accessibilityCustomActions;
- (_TtC9Reminders44TTRIAccountsListsViewListCell_collectionView)initWithCoder:(id)a3;
- (_TtC9Reminders44TTRIAccountsListsViewListCell_collectionView)initWithFrame:(CGRect)a3;
- (void)setAccessibilityCustomActions:(id)isa;
@end

@implementation TTRIAccountsListsViewListCell_collectionView

- (_TtC9Reminders44TTRIAccountsListsViewListCell_collectionView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v2 = self;
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
    v6 = self;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TTRIAccountsListsViewListCell_collectionView *)&v8 setAccessibilityCustomActions:isa];
}

- (_TtC9Reminders44TTRIAccountsListsViewListCell_collectionView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *&self->super.super.viewModelObserver[OBJC_IVAR____TtC9Reminders44TTRIAccountsListsViewListCell_collectionView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC9Reminders44TTRIAccountsListsViewListCell_collectionView_list;
  v7 = type metadata accessor for TTRAccountsListsViewModel.List();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  v11.receiver = self;
  v11.super_class = ObjectType;
  v8 = a3;
  v9 = [(TTRIAccountsListsBaseCell_collectionView *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end
@interface TTRIAccountsListsViewGroupCell_collectionView
- (NSArray)accessibilityCustomActions;
- (_TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView)initWithCoder:(id)a3;
- (_TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView)initWithFrame:(CGRect)a3;
@end

@implementation TTRIAccountsListsViewGroupCell_collectionView

- (NSArray)accessibilityCustomActions
{
  v2 = self;
  v3 = sub_1005DD140();

  if (v3)
  {
    sub_1005DDFD8();
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (_TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *&self->super.super.viewModelObserver[OBJC_IVAR____TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView_group;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Group();
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(TTRIAccountsListsBaseCell_collectionView *)&v12 initWithFrame:x, y, width, height];
}

- (_TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *&self->super.super.viewModelObserver[OBJC_IVAR____TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView_group;
  v7 = type metadata accessor for TTRAccountsListsViewModel.Group();
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
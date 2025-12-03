@interface TTRIAccountsListsViewGroupCell_collectionView
- (NSArray)accessibilityCustomActions;
- (_TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView)initWithCoder:(id)coder;
- (_TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView)initWithFrame:(CGRect)frame;
@end

@implementation TTRIAccountsListsViewGroupCell_collectionView

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
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

- (_TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *&self->super.super.viewModelObserver[OBJC_IVAR____TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC9Reminders45TTRIAccountsListsViewGroupCell_collectionView_group;
  v7 = type metadata accessor for TTRAccountsListsViewModel.Group();
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
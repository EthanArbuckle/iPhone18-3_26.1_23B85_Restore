@interface TTRIAccountListsViewGroupCell
- (NSArray)accessibilityCustomActions;
- (_TtC9Reminders29TTRIAccountListsViewGroupCell)initWithCoder:(id)a3;
- (_TtC9Reminders29TTRIAccountListsViewGroupCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)treeCellViewToggleExpandState;
@end

@implementation TTRIAccountListsViewGroupCell

- (_TtC9Reminders29TTRIAccountListsViewGroupCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10012033C(a3, a4, v6);
}

- (_TtC9Reminders29TTRIAccountListsViewGroupCell)initWithCoder:(id)a3
{
  v3 = &self->super.NUITableViewContainerCell_opaque[OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_ttriAccessibilityGroupListCount];
  *v3 = 0;
  v3[8] = 1;
  *&self->super.NUITableViewContainerCell_opaque[OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_groupObjectID] = 0;
  *&self->super.NUITableViewContainerCell_opaque[OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_collapseTapGestureRecognizer] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v6 = v9.receiver;
  [(TTRIAccountsListsBaseCell *)&v9 setEditing:v5 animated:v4];
  v7 = *&v6[OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_collapseTapGestureRecognizer];
  if (v7)
  {
    v8 = v7;
    [v8 setEnabled:{v5 ^ 1, v9.receiver, v9.super_class}];
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_100120800(a3, a4);
}

- (NSArray)accessibilityCustomActions
{
  v2 = self;
  v3 = sub_1001211D8();

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

- (void)treeCellViewToggleExpandState
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v5[3] = ObjectType;
    v5[4] = sub_100121938();
    v5[0] = self;
    v4 = self;
    dispatch thunk of TTRITreeViewCellDelegate.treeCellViewToggleExpandState(_:)();
    swift_unknownObjectRelease();
    sub_100004758(v5);
  }
}

@end
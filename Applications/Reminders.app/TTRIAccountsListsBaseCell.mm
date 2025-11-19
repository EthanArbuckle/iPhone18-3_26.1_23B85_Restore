@interface TTRIAccountsListsBaseCell
+ (Class)containerViewClass;
- (BOOL)accessibilityActivate;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)accessibilityUserInputLabels;
- (NSString)accessibilityLabel;
- (_TtC9Reminders25TTRIAccountsListsBaseCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (unint64_t)accessibilityTraits;
- (void)containerViewDidLayoutArrangedSubviews:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation TTRIAccountsListsBaseCell

+ (Class)containerViewClass
{
  sub_100003540(0, &qword_1007884F8);

  return swift_getObjCClassFromMetadata();
}

- (_TtC9Reminders25TTRIAccountsListsBaseCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_1004E20B8(a3, a4, v6);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self->NUITableViewContainerCell_opaque[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows] == 1)
  {
    self->NUITableViewContainerCell_opaque[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows] = 0;
    v6 = self;
    sub_1004E15F0();
  }

  else
  {
    v7 = self;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for TTRIAccountsListsBaseCell();
  [(TTRIAccountsListsBaseCell *)&v14 sizeThatFits:width, height];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TTRIAccountsListsBaseCell();
  v2 = v3.receiver;
  [(TTRIAccountsListsBaseCell *)&v3 layoutSubviews];
  if (v2[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows] == 1)
  {
    v2[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows] = 0;
    sub_1004E15F0();
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v9.receiver = self;
  v9.super_class = type metadata accessor for TTRIAccountsListsBaseCell();
  v6 = v9.receiver;
  [(TTRIAccountsListsBaseCell *)&v9 setEditing:v5 animated:v4];
  if (*(v6 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_unitTest_forceLargeTextLayout) & 1) != 0 || (v7 = [v6 traitCollection], v8 = objc_msgSend(v7, "preferredContentSizeCategory"), v7, LOBYTE(v7) = UIContentSizeCategory.isAccessibilityCategory.getter(), v8, (v7))
  {
    [v6 layoutIfNeeded];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1004E2CA8(v6, v7);
}

- (unint64_t)accessibilityTraits
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for TTRIAccountsListsBaseCell();
  v2 = v10.receiver;
  v3 = [(TTRIAccountsListsBaseCell *)&v10 accessibilityTraits];
  v4 = [v2 isSelected];
  v5 = UIAccessibilityTraitSelected;

  v6 = v3 & ~v5;
  if ((v5 & v3) == 0)
  {
    v6 = v3;
  }

  if ((v5 & v3) == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7 | v3;
  if (v4)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

- (NSString)accessibilityLabel
{
  v2 = self;
  sub_1004E2F28();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityLabel:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = self;
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRIAccountsListsBaseCell();
  [(TTRIAccountsListsBaseCell *)&v7 setAccessibilityLabel:v5];
}

- (NSArray)accessibilityUserInputLabels
{
  v2 = *&self->NUITableViewContainerCell_opaque[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel];
  v3 = self;
  v4 = [v2 text];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = static TTRAccesibility.General.Label.Untitled.getter();
    v8 = v9;
  }

  sub_100058000(&unk_100771E10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10062D400;
  *(v10 + 32) = v6;
  *(v10 + 40) = v8;

  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

- (BOOL)accessibilityActivate
{
  v2 = self;
  if ([(TTRIAccountsListsBaseCell *)v2 isEditing])
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000C2C60(v2);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return 1;
  }

  else
  {
    v5.receiver = v2;
    v5.super_class = type metadata accessor for TTRIAccountsListsBaseCell();
    v3 = [(TTRIAccountsListsBaseCell *)&v5 accessibilityActivate];

    return v3;
  }
}

- (void)containerViewDidLayoutArrangedSubviews:(id)a3
{
  v4 = type metadata accessor for TTRITableCellSeparatorInsetType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&self->NUITableViewContainerCell_opaque[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel];
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for TTRITableCellSeparatorInsetType.leadingOfDescendant(_:), v4, v6);
  v10 = self;
  v11 = v9;
  UITableViewCell.setSeparatorInsetType(_:)();

  (*(v5 + 8))(v8, v4);
}

@end
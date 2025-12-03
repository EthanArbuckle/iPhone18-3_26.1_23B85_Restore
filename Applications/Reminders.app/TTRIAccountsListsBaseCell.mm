@interface TTRIAccountsListsBaseCell
+ (Class)containerViewClass;
- (BOOL)accessibilityActivate;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)accessibilityUserInputLabels;
- (NSString)accessibilityLabel;
- (_TtC9Reminders25TTRIAccountsListsBaseCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (unint64_t)accessibilityTraits;
- (void)containerViewDidLayoutArrangedSubviews:(id)subviews;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
@end

@implementation TTRIAccountsListsBaseCell

+ (Class)containerViewClass
{
  sub_100003540(0, &qword_1007884F8);

  return swift_getObjCClassFromMetadata();
}

- (_TtC9Reminders25TTRIAccountsListsBaseCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1004E20B8(style, identifier, v6);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if (self->NUITableViewContainerCell_opaque[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows] == 1)
  {
    self->NUITableViewContainerCell_opaque[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows] = 0;
    selfCopy = self;
    sub_1004E15F0();
  }

  else
  {
    selfCopy2 = self;
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

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v9.receiver = self;
  v9.super_class = type metadata accessor for TTRIAccountsListsBaseCell();
  v6 = v9.receiver;
  [(TTRIAccountsListsBaseCell *)&v9 setEditing:editingCopy animated:animatedCopy];
  if (*(v6 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_unitTest_forceLargeTextLayout) & 1) != 0 || (v7 = [v6 traitCollection], v8 = objc_msgSend(v7, "preferredContentSizeCategory"), v7, LOBYTE(v7) = UIContentSizeCategory.isAccessibilityCategory.getter(), v8, (v7))
  {
    [v6 layoutIfNeeded];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_1004E2CA8(contextCopy, coordinatorCopy);
}

- (unint64_t)accessibilityTraits
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for TTRIAccountsListsBaseCell();
  v2 = v10.receiver;
  accessibilityTraits = [(TTRIAccountsListsBaseCell *)&v10 accessibilityTraits];
  isSelected = [v2 isSelected];
  v5 = UIAccessibilityTraitSelected;

  v6 = accessibilityTraits & ~v5;
  if ((v5 & accessibilityTraits) == 0)
  {
    v6 = accessibilityTraits;
  }

  if ((v5 & accessibilityTraits) == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7 | accessibilityTraits;
  if (isSelected)
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
  selfCopy = self;
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

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for TTRIAccountsListsBaseCell();
  [(TTRIAccountsListsBaseCell *)&v7 setAccessibilityLabel:v5];
}

- (NSArray)accessibilityUserInputLabels
{
  v2 = *&self->NUITableViewContainerCell_opaque[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel];
  selfCopy = self;
  text = [v2 text];
  if (text)
  {
    v5 = text;
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
  selfCopy = self;
  if ([(TTRIAccountsListsBaseCell *)selfCopy isEditing])
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000C2C60(selfCopy);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return 1;
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = type metadata accessor for TTRIAccountsListsBaseCell();
    accessibilityActivate = [(TTRIAccountsListsBaseCell *)&v5 accessibilityActivate];

    return accessibilityActivate;
  }
}

- (void)containerViewDidLayoutArrangedSubviews:(id)subviews
{
  v4 = type metadata accessor for TTRITableCellSeparatorInsetType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&self->NUITableViewContainerCell_opaque[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel];
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for TTRITableCellSeparatorInsetType.leadingOfDescendant(_:), v4, v6);
  selfCopy = self;
  v11 = v9;
  UITableViewCell.setSeparatorInsetType(_:)();

  (*(v5 + 8))(v8, v4);
}

@end
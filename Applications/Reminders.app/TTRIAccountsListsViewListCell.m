@interface TTRIAccountsListsViewListCell
- (BOOL)accessibilityActivate;
- (CGRect)frame;
- (NSAttributedString)accessibilityAttributedValue;
- (NSString)accessibilityHint;
- (_TtC9Reminders29TTRIAccountsListsViewListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (unint64_t)accessibilityTraits;
- (void)setFrame:(CGRect)a3;
- (void)toggleSmartListVisibility:(id)a3;
@end

@implementation TTRIAccountsListsViewListCell

- (_TtC9Reminders29TTRIAccountsListsViewListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_1005E7500(a3, a4, v6);
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TTRIAccountsListsViewListCell(0);
  [(TTRIAccountsListsViewListCell *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_1005E79D0(x, y, width, height);
}

- (void)toggleSmartListVisibility:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1005E94AC();

  sub_1000079B4(v6, &qword_10076AE40);
}

- (BOOL)accessibilityActivate
{
  v2 = self;
  if (-[TTRIAccountsListsViewListCell isEditing](v2, "isEditing") && (v3 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_checkmarkButton, ([*&v2->super.NUITableViewContainerCell_opaque[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_checkmarkButton] isHidden] & 1) == 0))
  {
    [*&v2->super.NUITableViewContainerCell_opaque[v3] sendActionsForControlEvents:64];

    return 1;
  }

  else
  {
    v6.receiver = v2;
    v6.super_class = type metadata accessor for TTRIAccountsListsViewListCell(0);
    v4 = [(TTRIAccountsListsBaseCell *)&v6 accessibilityActivate];
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v2 = self;
  v3 = sub_1005E999C();

  return v3;
}

- (NSString)accessibilityHint
{
  v2 = self;
  sub_100328ED4();
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

- (NSAttributedString)accessibilityAttributedValue
{
  v2 = self;
  v3 = sub_1005E9B0C();

  return v3;
}

@end
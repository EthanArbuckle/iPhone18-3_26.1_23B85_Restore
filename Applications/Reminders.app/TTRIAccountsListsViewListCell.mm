@interface TTRIAccountsListsViewListCell
- (BOOL)accessibilityActivate;
- (CGRect)frame;
- (NSAttributedString)accessibilityAttributedValue;
- (NSString)accessibilityHint;
- (_TtC9Reminders29TTRIAccountsListsViewListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (unint64_t)accessibilityTraits;
- (void)setFrame:(CGRect)frame;
- (void)toggleSmartListVisibility:(id)visibility;
@end

@implementation TTRIAccountsListsViewListCell

- (_TtC9Reminders29TTRIAccountsListsViewListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1005E7500(style, identifier, v6);
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  sub_1005E79D0(x, y, width, height);
}

- (void)toggleSmartListVisibility:(id)visibility
{
  if (visibility)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1005E94AC();

  sub_1000079B4(v6, &qword_10076AE40);
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  if (-[TTRIAccountsListsViewListCell isEditing](selfCopy, "isEditing") && (v3 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_checkmarkButton, ([*&selfCopy->super.NUITableViewContainerCell_opaque[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_checkmarkButton] isHidden] & 1) == 0))
  {
    [*&selfCopy->super.NUITableViewContainerCell_opaque[v3] sendActionsForControlEvents:64];

    return 1;
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = type metadata accessor for TTRIAccountsListsViewListCell(0);
    accessibilityActivate = [(TTRIAccountsListsBaseCell *)&v6 accessibilityActivate];
  }

  return accessibilityActivate;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v3 = sub_1005E999C();

  return v3;
}

- (NSString)accessibilityHint
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1005E9B0C();

  return v3;
}

@end
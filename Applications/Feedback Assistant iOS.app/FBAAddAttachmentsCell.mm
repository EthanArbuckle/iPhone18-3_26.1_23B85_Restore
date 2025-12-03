@interface FBAAddAttachmentsCell
+ (BOOL)supportsMenu;
- (NSString)itemIdentifier;
- (UIMenu)menu;
- (_TtC18Feedback_Assistant21FBAAddAttachmentsCell)initWithCoder:(id)coder;
- (_TtC18Feedback_Assistant21FBAAddAttachmentsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setItemIdentifier:(id)identifier;
- (void)setMenu:(id)menu;
@end

@implementation FBAAddAttachmentsCell

+ (BOOL)supportsMenu
{
  if (qword_100108DE0 != -1)
  {
    swift_once();
  }

  return byte_10010CEB8;
}

- (NSString)itemIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAAddAttachmentsCell_itemIdentifier);
  v3 = *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAAddAttachmentsCell_itemIdentifier + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)setItemIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC18Feedback_Assistant21FBAAddAttachmentsCell_itemIdentifier);
  v6 = *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAAddAttachmentsCell_itemIdentifier + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (UIMenu)menu
{
  result = *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAAddAttachmentsCell_button);
  if (result)
  {
    menu = [(UIMenu *)result menu];

    return menu;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setMenu:(id)menu
{
  v3 = *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAAddAttachmentsCell_button);
  if (v3)
  {
    [v3 setMenu:menu];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC18Feedback_Assistant21FBAAddAttachmentsCell)initWithCoder:(id)coder
{
  v4 = (self + OBJC_IVAR____TtC18Feedback_Assistant21FBAAddAttachmentsCell_itemIdentifier);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(self + OBJC_IVAR____TtC18Feedback_Assistant21FBAAddAttachmentsCell_button) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FBAAddAttachmentsCell();
  coderCopy = coder;
  v6 = [(FBAAddAttachmentsCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

- (_TtC18Feedback_Assistant21FBAAddAttachmentsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_10005A93C(style, identifier, v6);
}

@end
@interface FBAFFUValidationCell
- (NSString)itemIdentifier;
- (_TtC18Feedback_Assistant20FBAFFUValidationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)awakeFromNib;
- (void)setItemIdentifier:(id)identifier;
@end

@implementation FBAFFUValidationCell

- (NSString)itemIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_itemIdentifier);
  v3 = *(self + OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_itemIdentifier + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)setItemIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_itemIdentifier);
  v6 = *(self + OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_itemIdentifier + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (void)awakeFromNib
{
  selfCopy = self;
  sub_100086D44();
}

- (_TtC18Feedback_Assistant20FBAFFUValidationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100086F18(style, identifier, v6);
}

@end
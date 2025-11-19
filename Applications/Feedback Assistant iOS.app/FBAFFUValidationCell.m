@interface FBAFFUValidationCell
- (NSString)itemIdentifier;
- (_TtC18Feedback_Assistant20FBAFFUValidationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)awakeFromNib;
- (void)setItemIdentifier:(id)a3;
@end

@implementation FBAFFUValidationCell

- (NSString)itemIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_itemIdentifier);
  v3 = *(self + OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_itemIdentifier + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)setItemIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_itemIdentifier);
  v6 = *(self + OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_itemIdentifier + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (void)awakeFromNib
{
  v2 = self;
  sub_100086D44();
}

- (_TtC18Feedback_Assistant20FBAFFUValidationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_100086F18(a3, a4, v6);
}

@end
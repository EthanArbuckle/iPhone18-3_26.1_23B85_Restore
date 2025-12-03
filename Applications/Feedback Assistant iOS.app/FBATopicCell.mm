@interface FBATopicCell
+ (NSString)reuseIdentifier;
- (FBAQuestionCellTextView)formDescriptions;
- (NSLayoutConstraint)topicToBottomOfView;
- (NSString)itemIdentifier;
- (UILabel)formName;
- (_TtC18Feedback_Assistant12FBATopicCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setDisclosesMoreForms:(BOOL)forms;
- (void)setFormStub:(id)stub;
- (void)setItemIdentifier:(id)identifier;
@end

@implementation FBATopicCell

- (NSString)itemIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC18Feedback_Assistant12FBATopicCell_itemIdentifier);
  v3 = *(self + OBJC_IVAR____TtC18Feedback_Assistant12FBATopicCell_itemIdentifier + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)setItemIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC18Feedback_Assistant12FBATopicCell_itemIdentifier);
  v6 = *(self + OBJC_IVAR____TtC18Feedback_Assistant12FBATopicCell_itemIdentifier + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (NSLayoutConstraint)topicToBottomOfView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (FBAQuestionCellTextView)formDescriptions
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)formName
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (NSString)reuseIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setFormStub:(id)stub
{
  v4 = *(self + OBJC_IVAR____TtC18Feedback_Assistant12FBATopicCell_formStub);
  *(self + OBJC_IVAR____TtC18Feedback_Assistant12FBATopicCell_formStub) = stub;
  stubCopy = stub;
  selfCopy = self;

  sub_100047A5C();
}

- (void)setDisclosesMoreForms:(BOOL)forms
{
  selfCopy = self;
  sub_100047C94(forms);
}

- (_TtC18Feedback_Assistant12FBATopicCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100047CFC(style, identifier, v6);
}

@end
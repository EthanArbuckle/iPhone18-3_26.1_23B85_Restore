@interface FBAExpandingTextInputCell
- (NSLayoutConstraint)minimumHeightConstraint;
- (NSString)itemIdentifier;
- (UILabel)characterCountLabel;
- (_TtC18Feedback_Assistant20FBAExpandingTextView)commentsTextView;
- (_TtC18Feedback_Assistant25FBAExpandingTextInputCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)awakeFromNib;
- (void)setItemIdentifier:(id)identifier;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation FBAExpandingTextInputCell

- (NSString)itemIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_itemIdentifier);
  v3 = *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_itemIdentifier + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)setItemIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_itemIdentifier);
  v6 = *(self + OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_itemIdentifier + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (_TtC18Feedback_Assistant20FBAExpandingTextView)commentsTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)characterCountLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSLayoutConstraint)minimumHeightConstraint
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)awakeFromNib
{
  selfCopy = self;
  sub_1000814A4();
}

- (void)textViewDidBeginEditing:(id)editing
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    selfCopy = self;
    tableView = [v5 tableView];
    if (tableView)
    {
      v7 = tableView;
      [tableView flashScrollIndicators];
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10008198C(changeCopy);
}

- (void)textViewDidEndEditing:(id)editing
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    selfCopy = self;
    sub_10005CDE4();
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_10008218C;
    *(v9 + 24) = v8;
    v12[4] = sub_100082188;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100080EEC;
    v12[3] = &unk_1000E19F0;
    v10 = _Block_copy(v12);
    v11 = v5;

    [v7 performWithoutAnimation:v10];
    _Block_release(v10);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }
  }
}

- (_TtC18Feedback_Assistant25FBAExpandingTextInputCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_100081D74(style, identifier, v6);
}

@end
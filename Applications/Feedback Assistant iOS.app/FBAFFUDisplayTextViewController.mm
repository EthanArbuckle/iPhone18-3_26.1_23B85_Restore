@interface FBAFFUDisplayTextViewController
- (UITextView)textView;
- (_TtC18Feedback_Assistant31FBAFFUDisplayTextViewController)initWithCoder:(id)coder;
- (_TtC18Feedback_Assistant31FBAFFUDisplayTextViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation FBAFFUDisplayTextViewController

- (UITextView)textView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10006CF04();
}

- (_TtC18Feedback_Assistant31FBAFFUDisplayTextViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectWeakInit();
    v6 = (self + OBJC_IVAR____TtC18Feedback_Assistant31FBAFFUDisplayTextViewController_displayText);
    *v6 = 0;
    v6[1] = 0xE000000000000000;
    bundleCopy = bundle;
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    swift_unknownObjectWeakInit();
    v9 = (self + OBJC_IVAR____TtC18Feedback_Assistant31FBAFFUDisplayTextViewController_displayText);
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    bundleCopy2 = bundle;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for FBAFFUDisplayTextViewController();
  v11 = [(FBAFFUDisplayTextViewController *)&v13 initWithNibName:v8 bundle:bundle];

  return v11;
}

- (_TtC18Feedback_Assistant31FBAFFUDisplayTextViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v5 = (self + OBJC_IVAR____TtC18Feedback_Assistant31FBAFFUDisplayTextViewController_displayText);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v9.receiver = self;
  v9.super_class = type metadata accessor for FBAFFUDisplayTextViewController();
  coderCopy = coder;
  v7 = [(FBAFFUDisplayTextViewController *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end
@interface TTRILearnMoreCSLViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5;
- (UIImageView)filterImageView;
- (UIStackView)smartListStackView;
- (UITextView)addRemindersTextView;
- (UITextView)filteringTagsExampleBodyTextView;
- (UITextView)filteringTagsTextView;
- (UITextView)howToSmartListBodyTextView;
- (UITextView)makeSmartListBodyTextView;
- (UITextView)whySmartListsExampleBodyTextView;
- (UITextView)whySmartListsTextView;
- (_TtC9Reminders30TTRILearnMoreCSLViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapDoneButton:(id)a3;
- (void)viewDidLoad;
@end

@implementation TTRILearnMoreCSLViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRILearnMoreCSLViewController *)&v3 viewDidLoad];
  sub_1002F142C();
}

- (UIStackView)smartListStackView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)whySmartListsTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)whySmartListsExampleBodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)makeSmartListBodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)filteringTagsTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)filteringTagsExampleBodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)addRemindersTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)howToSmartListBodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIImageView)filterImageView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)didTapDoneButton:(id)a3
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

  sub_1001840F0();
  sub_10000B070(v6);
}

- (_TtC9Reminders30TTRILearnMoreCSLViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  LOBYTE(self) = sub_1002F250C(v11);

  (*(v8 + 8))(v10, v7);
  return self & 1;
}

@end
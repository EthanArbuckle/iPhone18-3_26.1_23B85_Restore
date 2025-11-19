@interface TTRILearnMoreTagsViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5;
- (UIScrollView)tagsView;
- (UIStackView)tagsStackView;
- (UITextView)smartListsBodyTextView;
- (UITextView)tagsAddingTextView;
- (UITextView)tagsBrowserTextView;
- (UITextView)tagsCreatingTextView;
- (UITextView)tagsSummaryTextView;
- (UITextView)tagsTapTextView;
- (UITextView)usingTagsAndListsTogetherBodyTextView;
- (UITextView)whyTagsExampleBodyTextView;
- (_TtC9Reminders31TTRILearnMoreTagsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapDoneButton:(id)a3;
- (void)viewDidLoad;
@end

@implementation TTRILearnMoreTagsViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRILearnMoreTagsViewController *)&v3 viewDidLoad];
  sub_100095820();
}

- (UIScrollView)tagsView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIStackView)tagsStackView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)whyTagsExampleBodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)usingTagsAndListsTogetherBodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)smartListsBodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)tagsSummaryTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)tagsCreatingTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)tagsAddingTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)tagsBrowserTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)tagsTapTextView
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

- (_TtC9Reminders31TTRILearnMoreTagsViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  LOBYTE(self) = sub_1000967A0(v11);

  (*(v8 + 8))(v10, v7);
  return self & 1;
}

@end
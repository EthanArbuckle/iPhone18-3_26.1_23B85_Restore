@interface TTRILearnMoreTagsViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range;
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
- (_TtC9Reminders31TTRILearnMoreTagsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapDoneButton:(id)button;
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

- (void)didTapDoneButton:(id)button
{
  if (button)
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

  sub_1001840F0();
  sub_10000B070(v6);
}

- (_TtC9Reminders31TTRILearnMoreTagsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_1000967A0(viewCopy);

  (*(v8 + 8))(v10, v7);
  return self & 1;
}

@end
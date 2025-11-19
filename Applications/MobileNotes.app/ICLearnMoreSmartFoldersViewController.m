@interface ICLearnMoreSmartFoldersViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (ICLearnMoreSmartFoldersViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UITextView)filteringTagsExampleBodyTextView;
- (UITextView)filteringTagsSummaryBodyTextView;
- (UITextView)howToSmartFoldersBodyTextView;
- (UITextView)makeSmartFoldersBodyTextView;
- (UITextView)smartFoldersExampleBodyTextView;
- (UITextView)whySmartFoldersExampleBodyTextView;
- (_TtC11MobileNotes32LearnMoreSmartFoldersFiltersView)filtersView;
- (void)updateFiltersView;
- (void)viewDidLayoutSubviews;
@end

@implementation ICLearnMoreSmartFoldersViewController

- (UITextView)whySmartFoldersExampleBodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)smartFoldersExampleBodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)makeSmartFoldersBodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)filteringTagsSummaryBodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)filteringTagsExampleBodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)howToSmartFoldersBodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC11MobileNotes32LearnMoreSmartFoldersFiltersView)filtersView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(ICLearnMoreSmartFoldersViewController *)&v5 viewDidLayoutSubviews];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1004B4B30();
  }

  else
  {
    __break(1u);
  }
}

- (void)updateFiltersView
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self;
    sub_1004B4B30();
  }

  else
  {
    __break(1u);
  }
}

- (ICLearnMoreSmartFoldersViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1001A2A3C(v5, v7, a4);
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = self;
  LOBYTE(self) = sub_1001A3024(v12);

  (*(v9 + 8))(v11, v8);
  return self & 1;
}

@end
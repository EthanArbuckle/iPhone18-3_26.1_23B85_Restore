@interface ICLearnMoreSmartFoldersViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (ICLearnMoreSmartFoldersViewController)initWithNibName:(id)name bundle:(id)bundle;
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
    selfCopy = self;
    sub_1004B4B30();
  }

  else
  {
    __break(1u);
  }
}

- (ICLearnMoreSmartFoldersViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1001A2A3C(v5, v7, bundle);
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_1001A3024(viewCopy);

  (*(v9 + 8))(v11, v8);
  return self & 1;
}

@end
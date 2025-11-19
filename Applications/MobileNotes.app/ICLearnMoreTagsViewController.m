@interface ICLearnMoreTagsViewController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (ICLearnMoreTagsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UITextView)addingTagsBodyTextView;
- (UITextView)smartFoldersBodyTextView;
- (UITextView)tagBrowser2BodyTextView;
- (UITextView)tagBrowserBodyTextView;
- (UITextView)usingTagsAndFoldersTogetherBodyTextView;
- (UITextView)whyTagsExampleBodyTextView;
@end

@implementation ICLearnMoreTagsViewController

- (UITextView)whyTagsExampleBodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)usingTagsAndFoldersTogetherBodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)addingTagsBodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)tagBrowserBodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)tagBrowser2BodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UITextView)smartFoldersBodyTextView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ICLearnMoreTagsViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_10023C0A8(v5, v7, a4);
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
  LOBYTE(self) = sub_10023C5D8(v12);

  (*(v9 + 8))(v11, v8);
  return self & 1;
}

@end
@interface ICLearnMoreTagsViewController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (ICLearnMoreTagsViewController)initWithNibName:(id)name bundle:(id)bundle;
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

- (ICLearnMoreTagsViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_10023C0A8(v5, v7, bundle);
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
  LOBYTE(self) = sub_10023C5D8(viewCopy);

  (*(v9 + 8))(v11, v8);
  return self & 1;
}

@end
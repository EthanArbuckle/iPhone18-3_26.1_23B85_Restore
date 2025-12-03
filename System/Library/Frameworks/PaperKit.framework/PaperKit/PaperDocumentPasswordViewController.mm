@interface PaperDocumentPasswordViewController
- (_TtC8PaperKit35PaperDocumentPasswordViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation PaperDocumentPasswordViewController

- (_TtC8PaperKit35PaperDocumentPasswordViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return PaperDocumentPasswordViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end
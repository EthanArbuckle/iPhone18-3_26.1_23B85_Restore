@interface AnyCanvasElementViewController
- (_TtC8PaperKit30AnyCanvasElementViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation AnyCanvasElementViewController

- (_TtC8PaperKit30AnyCanvasElementViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return AnyCanvasElementViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end
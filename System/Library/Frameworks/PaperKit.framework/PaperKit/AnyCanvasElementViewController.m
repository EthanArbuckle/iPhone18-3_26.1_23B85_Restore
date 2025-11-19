@interface AnyCanvasElementViewController
- (_TtC8PaperKit30AnyCanvasElementViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation AnyCanvasElementViewController

- (_TtC8PaperKit30AnyCanvasElementViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return AnyCanvasElementViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end
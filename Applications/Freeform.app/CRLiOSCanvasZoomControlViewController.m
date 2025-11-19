@interface CRLiOSCanvasZoomControlViewController
- (_TtC8Freeform37CRLiOSCanvasZoomControlViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation CRLiOSCanvasZoomControlViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1006A6664();
}

- (void)updateViewConstraints
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLiOSCanvasZoomControlViewController();
  v2 = v3.receiver;
  [(CRLiOSCanvasZoomControlViewController *)&v3 updateViewConstraints];
  sub_1006A7C70();
}

- (_TtC8Freeform37CRLiOSCanvasZoomControlViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1006A8710(v5, v7, a4);
}

@end
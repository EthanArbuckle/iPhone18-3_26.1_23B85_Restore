@interface CRLiOSCanvasZoomControlViewController
- (_TtC8Freeform37CRLiOSCanvasZoomControlViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation CRLiOSCanvasZoomControlViewController

- (void)viewDidLoad
{
  selfCopy = self;
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

- (_TtC8Freeform37CRLiOSCanvasZoomControlViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_1006A8710(v5, v7, bundle);
}

@end
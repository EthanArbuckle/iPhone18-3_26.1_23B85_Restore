@interface PreviewViewController
- (_TtC13ClarityCamera21PreviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PreviewViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100011E24();
  v3 = [objc_opt_self() sharedApplication];
  [v3 setIdleTimerDisabled:1];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = [objc_opt_self() sharedApplication];
  [v3 setIdleTimerDisabled:0];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100011A20();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PreviewViewController();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(PreviewViewController *)&v8 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  sub_100011E24();
  swift_unknownObjectRelease();
}

- (_TtC13ClarityCamera21PreviewViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_100012348(v5, v7, a4);
}

@end
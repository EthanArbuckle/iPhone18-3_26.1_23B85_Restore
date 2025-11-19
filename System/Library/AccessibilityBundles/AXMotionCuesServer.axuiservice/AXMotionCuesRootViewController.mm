@interface AXMotionCuesRootViewController
- (_TtC18AXMotionCuesServer30AXMotionCuesRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)renderer:(id)a3 updateAtTime:(double)a4;
- (void)updateLayout;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AXMotionCuesRootViewController

- (void)dealloc
{
  v2 = self;
  AXMotionCuesRootViewController.tearDown()();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for AXMotionCuesRootViewController();
  [(AXMotionCuesRootViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  AXMotionCuesRootViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  AXMotionCuesRootViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  AXMotionCuesRootViewController.viewDidDisappear(_:)(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  AXMotionCuesRootViewController.viewDidLayoutSubviews()();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  AXMotionCuesRootViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)updateLayout
{
  v2 = self;
  sub_215D4();
}

- (_TtC18AXMotionCuesServer30AXMotionCuesRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)renderer:(id)a3 updateAtTime:(double)a4
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  v8[4] = sub_24048;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1D8DC;
  v8[3] = &unk_45FD0;
  v6 = _Block_copy(v8);
  v7 = self;

  AXPerformBlockOnMainThread();

  _Block_release(v6);
}

@end
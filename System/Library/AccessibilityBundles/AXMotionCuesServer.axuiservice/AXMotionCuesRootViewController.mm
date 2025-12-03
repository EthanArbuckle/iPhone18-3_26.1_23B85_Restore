@interface AXMotionCuesRootViewController
- (_TtC18AXMotionCuesServer30AXMotionCuesRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)renderer:(id)renderer updateAtTime:(double)time;
- (void)updateLayout;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AXMotionCuesRootViewController

- (void)dealloc
{
  selfCopy = self;
  AXMotionCuesRootViewController.tearDown()();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for AXMotionCuesRootViewController();
  [(AXMotionCuesRootViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  AXMotionCuesRootViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  AXMotionCuesRootViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  AXMotionCuesRootViewController.viewDidDisappear(_:)(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  AXMotionCuesRootViewController.viewDidLayoutSubviews()();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  AXMotionCuesRootViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)updateLayout
{
  selfCopy = self;
  sub_215D4();
}

- (_TtC18AXMotionCuesServer30AXMotionCuesRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)renderer:(id)renderer updateAtTime:(double)time
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
  selfCopy = self;

  AXPerformBlockOnMainThread();

  _Block_release(v6);
}

@end
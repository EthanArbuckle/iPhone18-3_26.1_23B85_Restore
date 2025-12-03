@interface PreviewViewController
- (_TtC13ClarityCamera21PreviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PreviewViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100011E24();
  sharedApplication = [objc_opt_self() sharedApplication];
  [sharedApplication setIdleTimerDisabled:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  sharedApplication = [objc_opt_self() sharedApplication];
  [sharedApplication setIdleTimerDisabled:0];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100011A20();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PreviewViewController();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(PreviewViewController *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  sub_100011E24();
  swift_unknownObjectRelease();
}

- (_TtC13ClarityCamera21PreviewViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_100012348(v5, v7, bundle);
}

@end
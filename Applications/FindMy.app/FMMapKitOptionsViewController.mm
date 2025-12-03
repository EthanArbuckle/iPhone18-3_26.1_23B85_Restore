@interface FMMapKitOptionsViewController
- (_TtC6FindMy29FMMapKitOptionsViewController)initWithCoder:(id)coder;
- (_TtC6FindMy29FMMapKitOptionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMMapKitOptionsViewController

- (_TtC6FindMy29FMMapKitOptionsViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(FMMapKitOptionsViewController *)&v3 viewDidLoad];
  sub_1005104C8();
  sub_100510650();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(FMMapKitOptionsViewController *)&v4 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100510A88(disappear);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = v7.receiver;
  [(FMMapKitOptionsViewController *)&v7 preferredContentSizeDidChangeForChildContentContainer:container];
  sub_10007EBC0(&unk_1006C3670);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    swift_unknownObjectRetain();
    [v6 preferredContentSize];
    [v4 setPreferredContentSize:?];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  if ([collection horizontalSizeClass] == 1)
  {
    return 2;
  }

  else
  {
    return 7;
  }
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10051158C(style);

  swift_unknownObjectRelease();
}

- (_TtC6FindMy29FMMapKitOptionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
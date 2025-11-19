@interface FMMapKitOptionsViewController
- (_TtC6FindMy29FMMapKitOptionsViewController)initWithCoder:(id)a3;
- (_TtC6FindMy29FMMapKitOptionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMMapKitOptionsViewController

- (_TtC6FindMy29FMMapKitOptionsViewController)initWithCoder:(id)a3
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(FMMapKitOptionsViewController *)&v4 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100510A88(a3);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = v7.receiver;
  [(FMMapKitOptionsViewController *)&v7 preferredContentSizeDidChangeForChildContentContainer:a3];
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

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  if ([a4 horizontalSizeClass] == 1)
  {
    return 2;
  }

  else
  {
    return 7;
  }
}

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = self;
  sub_10051158C(a4);

  swift_unknownObjectRelease();
}

- (_TtC6FindMy29FMMapKitOptionsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
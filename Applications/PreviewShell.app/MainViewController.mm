@interface MainViewController
- (_TtC12PreviewShell18MainViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MainViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(MainViewController *)&v3 viewDidLoad];
  sub_10002375C(v2[OBJC_IVAR____TtC12PreviewShell18MainViewController_state], 0);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100025774();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12PreviewShell18MainViewController_visibleChild);
  if (v2)
  {
    return [v2 supportedInterfaceOrientations];
  }

  else
  {
    return 30;
  }
}

- (_TtC12PreviewShell18MainViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
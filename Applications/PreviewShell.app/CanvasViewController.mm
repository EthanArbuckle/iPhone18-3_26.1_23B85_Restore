@interface CanvasViewController
- (_TtC12PreviewShell20CanvasViewController)initWithCoder:(id)coder;
- (_TtC12PreviewShell20CanvasViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CanvasViewController

- (_TtC12PreviewShell20CanvasViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PreviewShell20CanvasViewController_active) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PreviewShell20CanvasViewController_activating) = 0;
  v4 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_forcedOrientation;
  v5 = type metadata accessor for PreviewPreferences.InterfaceOrientation();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  v3 = sub_1000367D0();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000369C0();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_100036B90();
}

- (_TtC12PreviewShell20CanvasViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
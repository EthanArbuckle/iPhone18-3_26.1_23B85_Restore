@interface CanvasViewController
- (_TtC12PreviewShell20CanvasViewController)initWithCoder:(id)a3;
- (_TtC12PreviewShell20CanvasViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CanvasViewController

- (_TtC12PreviewShell20CanvasViewController)initWithCoder:(id)a3
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
  v2 = self;
  v3 = sub_1000367D0();

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000369C0();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_100036B90();
}

- (_TtC12PreviewShell20CanvasViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
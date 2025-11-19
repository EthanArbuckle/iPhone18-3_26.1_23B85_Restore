@interface FullscreenAlertViewController
- (_TtC11Diagnostics29FullscreenAlertViewController)initWithCoder:(id)a3;
- (_TtC11Diagnostics29FullscreenAlertViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation FullscreenAlertViewController

- (_TtC11Diagnostics29FullscreenAlertViewController)initWithCoder:(id)a3
{
  v4 = [objc_allocWithZone(_UIContentUnavailableView) initWithFrame:0 title:0 style:{0.0, 0.0, 0.0, 0.0}];
  if (!v4)
  {
    __break(1u);
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_contentUnavailableView) = v4;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics29FullscreenAlertViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
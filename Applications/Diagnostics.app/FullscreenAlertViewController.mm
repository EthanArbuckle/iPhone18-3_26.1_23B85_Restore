@interface FullscreenAlertViewController
- (_TtC11Diagnostics29FullscreenAlertViewController)initWithCoder:(id)coder;
- (_TtC11Diagnostics29FullscreenAlertViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation FullscreenAlertViewController

- (_TtC11Diagnostics29FullscreenAlertViewController)initWithCoder:(id)coder
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

- (_TtC11Diagnostics29FullscreenAlertViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
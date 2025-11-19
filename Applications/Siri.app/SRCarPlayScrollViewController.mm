@interface SRCarPlayScrollViewController
- (_TtC4Siri29SRCarPlayScrollViewController)initWithCoder:(id)a3;
- (_TtC4Siri29SRCarPlayScrollViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidLayoutSubviews;
@end

@implementation SRCarPlayScrollViewController

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100011D70();
}

- (void)loadView
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Siri29SRCarPlayScrollViewController_isRightHandDrive);
  v4 = objc_allocWithZone(type metadata accessor for SRCarPlayScrollView());
  v6 = self;
  v5 = sub_10001725C(v3);
  [(SRCarPlayScrollViewController *)v6 setView:v5];
}

- (_TtC4Siri29SRCarPlayScrollViewController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC4Siri29SRCarPlayScrollViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
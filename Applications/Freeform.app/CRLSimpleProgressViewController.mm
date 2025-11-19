@interface CRLSimpleProgressViewController
- (_TtC8Freeform31CRLSimpleProgressViewController)initWithCoder:(id)a3;
- (_TtC8Freeform31CRLSimpleProgressViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation CRLSimpleProgressViewController

- (_TtC8Freeform31CRLSimpleProgressViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform31CRLSimpleProgressViewController_progressObservation) = 0;
  *(&self->progress + OBJC_IVAR____TtC8Freeform31CRLSimpleProgressViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform31CRLSimpleProgressViewController_isPresented) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1006FD938();
}

- (_TtC8Freeform31CRLSimpleProgressViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface CRLSimpleProgressViewController
- (_TtC8Freeform31CRLSimpleProgressViewController)initWithCoder:(id)coder;
- (_TtC8Freeform31CRLSimpleProgressViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation CRLSimpleProgressViewController

- (_TtC8Freeform31CRLSimpleProgressViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1006FD938();
}

- (_TtC8Freeform31CRLSimpleProgressViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface FMInitialCardController
- (_TtC6FindMy23FMInitialCardController)initWithCoder:(id)a3;
- (_TtC6FindMy23FMInitialCardController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)presentationAnchorForWebAuthenticationSession:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMInitialCardController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000273D8(a3);
}

- (_TtC6FindMy23FMInitialCardController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy23FMInitialCardController_selectionSubscription) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy23FMInitialCardController_discoveryCoordinator) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy23FMInitialCardController_seeLostItemController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1004803E4(a3);
}

- (_TtC6FindMy23FMInitialCardController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)presentationAnchorForWebAuthenticationSession:(id)a3
{
  v3 = self;
  v4 = [(FMInitialCardController *)v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v4 window];

  if (!v6)
  {
LABEL_7:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  return v6;
}

@end
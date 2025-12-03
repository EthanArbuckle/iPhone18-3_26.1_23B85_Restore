@interface FMInitialCardController
- (_TtC6FindMy23FMInitialCardController)initWithCoder:(id)coder;
- (_TtC6FindMy23FMInitialCardController)initWithNibName:(id)name bundle:(id)bundle;
- (id)presentationAnchorForWebAuthenticationSession:(id)session;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMInitialCardController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000273D8(appear);
}

- (_TtC6FindMy23FMInitialCardController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy23FMInitialCardController_selectionSubscription) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy23FMInitialCardController_discoveryCoordinator) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy23FMInitialCardController_seeLostItemController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1004803E4(disappear);
}

- (_TtC6FindMy23FMInitialCardController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)presentationAnchorForWebAuthenticationSession:(id)session
{
  selfCopy = self;
  view = [(FMInitialCardController *)selfCopy view];
  if (!view)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = view;
  window = [view window];

  if (!window)
  {
LABEL_7:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  return window;
}

@end
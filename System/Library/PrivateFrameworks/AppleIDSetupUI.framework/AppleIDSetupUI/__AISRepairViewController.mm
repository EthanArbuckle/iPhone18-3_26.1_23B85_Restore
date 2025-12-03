@interface __AISRepairViewController
- (BOOL)shouldAutoDismiss;
- (__AISRepairViewController)initWithCoder:(id)coder;
- (__AISRepairViewController)initWithContext:(id)context reportHandler:(id)handler;
- (__AISRepairViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setShouldAutoDismiss:(BOOL)dismiss;
- (void)viewDidLoad;
@end

@implementation __AISRepairViewController

- (BOOL)shouldAutoDismiss
{
  v3 = OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setShouldAutoDismiss:(BOOL)dismiss
{
  v5 = OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = dismiss;
}

- (__AISRepairViewController)initWithContext:(id)context reportHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = context;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2409C4520;
  *(v8 + 24) = v6;
  v9 = objc_allocWithZone(type metadata accessor for RepairViewController());
  contextCopy = context;
  v11 = RepairViewController.init(contextBuilder:reportHandler:)(sub_240A02C90, v7, sub_240A02C94, v8);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

- (__AISRepairViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR_____AISRepairViewController_hostingController) = 0;
  result = sub_240A2C58C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_240A01CCC();
}

- (__AISRepairViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
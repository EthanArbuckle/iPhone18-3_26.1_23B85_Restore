@interface __AISRepairViewController
- (BOOL)shouldAutoDismiss;
- (__AISRepairViewController)initWithCoder:(id)a3;
- (__AISRepairViewController)initWithContext:(id)a3 reportHandler:(id)a4;
- (__AISRepairViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setShouldAutoDismiss:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation __AISRepairViewController

- (BOOL)shouldAutoDismiss
{
  v3 = OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setShouldAutoDismiss:(BOOL)a3
{
  v5 = OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (__AISRepairViewController)initWithContext:(id)a3 reportHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2409C4520;
  *(v8 + 24) = v6;
  v9 = objc_allocWithZone(type metadata accessor for RepairViewController());
  v10 = a3;
  v11 = RepairViewController.init(contextBuilder:reportHandler:)(sub_240A02C90, v7, sub_240A02C94, v8);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

- (__AISRepairViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR_____AISRepairViewController_hostingController) = 0;
  result = sub_240A2C58C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_240A01CCC();
}

- (__AISRepairViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
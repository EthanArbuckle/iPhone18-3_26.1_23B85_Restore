@interface SnapshottingContactViewController
- (_TtC17DeviceDiscoveryUI33SnapshottingContactViewController)initWithCoder:(id)a3;
- (_TtC17DeviceDiscoveryUI33SnapshottingContactViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)contactViewController:(id)a3 didDeleteContact:(id)a4;
- (void)didTapDone;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation SnapshottingContactViewController

- (_TtC17DeviceDiscoveryUI33SnapshottingContactViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_phase) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_dismiss);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController____lazy_storage___viewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_snapshotView) = 0;
  result = sub_2381554EC();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  sub_238132EFC();
}

- (void)didTapDone
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_dismiss);
  if (v2)
  {
    v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_dismiss);
    v4 = self;
    v5 = sub_238086B74(v2);
    v2(v5);

    sub_23807A454(v2);
  }
}

- (void)contactViewController:(id)a3 didDeleteContact:(id)a4
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_dismiss);
  if (v4)
  {
    v5 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_dismiss);
    v6 = self;
    v7 = sub_238086B74(v4);
    v4(v7);

    sub_23807A454(v4);
  }
}

- (_TtC17DeviceDiscoveryUI33SnapshottingContactViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
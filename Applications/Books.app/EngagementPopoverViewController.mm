@interface EngagementPopoverViewController
- (_TtC5Books31EngagementPopoverViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6;
- (void)messageViewController:(id)a3 didSelectActionWithURL:(id)a4;
- (void)messageViewControllerDidSelectCancel:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
@end

@implementation EngagementPopoverViewController

- (void)presentationControllerWillDismiss:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_popoverVC);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_popoverVC) = 0;
  v7 = self;

  v4 = v7 + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_currentRequestDisplayed;
  v5 = *(&v7->super.super.super.isa + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_currentRequestDisplayed);
  *v4 = 0;
  v4[8] = 0;

  v6 = *(&v7->super.super.super.isa + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_messageViewControllerProvider);
  *(&v7->super.super.super.isa + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_messageViewControllerProvider) = 0;

  (*(&v7->super.super.super.isa + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_showPopover))(0);
}

- (_TtC5Books31EngagementPopoverViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6
{
  v9 = sub_1007A2254();
  v11 = v10;
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_10075A100(a4, v9, v11);
}

- (void)messageViewControllerDidSelectCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100759A60(v4);
}

- (void)messageViewController:(id)a3 didSelectActionWithURL:(id)a4
{
  v4 = sub_1007969B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796974();
  (*(v5 + 8))(v7, v4);
}

@end
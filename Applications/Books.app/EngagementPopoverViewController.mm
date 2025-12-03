@interface EngagementPopoverViewController
- (_TtC5Books31EngagementPopoverViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type;
- (void)messageViewController:(id)controller didSelectActionWithURL:(id)l;
- (void)messageViewControllerDidSelectCancel:(id)cancel;
- (void)presentationControllerWillDismiss:(id)dismiss;
@end

@implementation EngagementPopoverViewController

- (void)presentationControllerWillDismiss:(id)dismiss
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_popoverVC);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_popoverVC) = 0;
  selfCopy = self;

  v4 = selfCopy + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_currentRequestDisplayed;
  v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_currentRequestDisplayed);
  *v4 = 0;
  v4[8] = 0;

  v6 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_messageViewControllerProvider);
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_messageViewControllerProvider) = 0;

  (*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5Books31EngagementPopoverViewController_showPopover))(0);
}

- (_TtC5Books31EngagementPopoverViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type
{
  v9 = sub_1007A2254();
  v11 = v10;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_10075A100(request, v9, v11);
}

- (void)messageViewControllerDidSelectCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_100759A60(cancelCopy);
}

- (void)messageViewController:(id)controller didSelectActionWithURL:(id)l
{
  v4 = sub_1007969B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796974();
  (*(v5 + 8))(v7, v4);
}

@end
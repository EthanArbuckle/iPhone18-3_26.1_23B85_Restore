@interface ExpandedTrackingView
- (void)cancel;
- (void)layoutSubviews;
@end

@implementation ExpandedTrackingView

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = swift_getObjectType();
  [(ExpandedTrackingView *)&v2 layoutSubviews];
}

- (void)cancel
{
  selfCopy = self;
  [-[ExpandedTrackingView systemApertureElementContext](selfCopy "systemApertureElementContext")];
  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    DockCoreManager.disconnectTrackingActivityScene()();
  }
}

@end
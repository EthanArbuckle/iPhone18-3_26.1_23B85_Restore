@interface CRLStatusHUDManager
- (BOOL)alwaysUseDarkAppearance;
- (BOOL)isActive;
- (BOOL)ready;
- (UIView)containerView;
- (double)maxHUDWidth;
- (double)maxTextWidth;
- (id)delayedControllers;
- (int64_t)containerViewVerticalLayoutGravity;
- (void)hideAllControllers;
- (void)hideWithHudController:(id)controller;
- (void)replaceHudController:(id)controller withHudController:(id)hudController;
- (void)setAlwaysUseDarkAppearance:(BOOL)appearance;
- (void)setContainerView:(id)view;
- (void)setContainerViewVerticalLayoutGravity:(int64_t)gravity;
- (void)setDelayedControllers:(id)controllers;
- (void)setIsActive:(BOOL)active;
- (void)setReady:(BOOL)ready;
- (void)showWithHudController:(id)controller;
- (void)showWithHudController:(id)controller withDelay:(double)delay;
- (void)updateForAppearance;
@end

@implementation CRLStatusHUDManager

- (BOOL)ready
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_ready;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setReady:(BOOL)ready
{
  readyCopy = ready;
  v5 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_ready;
  swift_beginAccess();
  *(&self->super.isa + v5) = readyCopy;
  if (readyCopy)
  {
    selfCopy = self;
    sub_10106EB14();
  }
}

- (id)delayedControllers
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDelayedControllers:(id)controllers
{
  v5 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = controllers;
  controllersCopy = controllers;
}

- (UIView)containerView
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerView;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setContainerView:(id)view
{
  v5 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerView;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = view;
  viewCopy = view;
  selfCopy = self;

  v9 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_ready;
  swift_beginAccess();
  if (*(&selfCopy->super.isa + v9) == 1)
  {
    sub_10106EB14();
  }
}

- (BOOL)alwaysUseDarkAppearance
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_alwaysUseDarkAppearance;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAlwaysUseDarkAppearance:(BOOL)appearance
{
  v5 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_alwaysUseDarkAppearance;
  swift_beginAccess();
  *(&self->super.isa + v5) = appearance;
}

- (BOOL)isActive
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_isActive;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsActive:(BOOL)active
{
  v5 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_isActive;
  swift_beginAccess();
  *(&self->super.isa + v5) = active;
}

- (double)maxTextWidth
{
  selfCopy = self;
  v3 = CRLStatusHUDManager.maxTextWidth.getter();

  return v3;
}

- (double)maxHUDWidth
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerView;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  if (v4)
  {
    selfCopy = self;
    window = [v4 window];
    if (window)
    {
      v7 = window;
      [window bounds];
      Width = CGRectGetWidth(v10);

      return fmin(Width, 375.0);
    }
  }

  return 375.0;
}

- (void)showWithHudController:(id)controller
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_101071284(controller, selfCopy);
  swift_unknownObjectRelease();
}

- (void)showWithHudController:(id)controller withDelay:(double)delay
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10107128C(controller, selfCopy, delay);
  swift_unknownObjectRelease();
}

- (void)replaceHudController:(id)controller withHudController:(id)hudController
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_101070CEC(controller, hudController, selfCopy, ObjectType);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)hideWithHudController:(id)controller
{
  swift_unknownObjectRetain();
  selfCopy = self;
  CRLStatusHUDManager.hide(hudController:)(controller);
  swift_unknownObjectRelease();
}

- (void)hideAllControllers
{
  selfCopy = self;
  CRLStatusHUDManager.hideAllControllers()();
}

- (void)updateForAppearance
{
  selfCopy = self;
  CRLStatusHUDManager.updateForAppearance()();
}

- (int64_t)containerViewVerticalLayoutGravity
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerViewVerticalLayoutGravity;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setContainerViewVerticalLayoutGravity:(int64_t)gravity
{
  v5 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerViewVerticalLayoutGravity;
  swift_beginAccess();
  *(&self->super.isa + v5) = gravity;
}

@end
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
- (void)hideWithHudController:(id)a3;
- (void)replaceHudController:(id)a3 withHudController:(id)a4;
- (void)setAlwaysUseDarkAppearance:(BOOL)a3;
- (void)setContainerView:(id)a3;
- (void)setContainerViewVerticalLayoutGravity:(int64_t)a3;
- (void)setDelayedControllers:(id)a3;
- (void)setIsActive:(BOOL)a3;
- (void)setReady:(BOOL)a3;
- (void)showWithHudController:(id)a3;
- (void)showWithHudController:(id)a3 withDelay:(double)a4;
- (void)updateForAppearance;
@end

@implementation CRLStatusHUDManager

- (BOOL)ready
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_ready;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setReady:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_ready;
  swift_beginAccess();
  *(&self->super.isa + v5) = v3;
  if (v3)
  {
    v6 = self;
    sub_10106EB14();
  }
}

- (id)delayedControllers
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDelayedControllers:(id)a3
{
  v5 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_delayedControllers;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (UIView)containerView
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerView;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setContainerView:(id)a3
{
  v5 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerView;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  v9 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_ready;
  swift_beginAccess();
  if (*(&v8->super.isa + v9) == 1)
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

- (void)setAlwaysUseDarkAppearance:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_alwaysUseDarkAppearance;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isActive
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_isActive;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsActive:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_isActive;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)maxTextWidth
{
  v2 = self;
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
    v5 = self;
    v6 = [v4 window];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      Width = CGRectGetWidth(v10);

      return fmin(Width, 375.0);
    }
  }

  return 375.0;
}

- (void)showWithHudController:(id)a3
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v5 = self;
  sub_101071284(a3, v5);
  swift_unknownObjectRelease();
}

- (void)showWithHudController:(id)a3 withDelay:(double)a4
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = self;
  sub_10107128C(a3, v7, a4);
  swift_unknownObjectRelease();
}

- (void)replaceHudController:(id)a3 withHudController:(id)a4
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = self;
  sub_101070CEC(a3, a4, v8, ObjectType);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)hideWithHudController:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  CRLStatusHUDManager.hide(hudController:)(a3);
  swift_unknownObjectRelease();
}

- (void)hideAllControllers
{
  v2 = self;
  CRLStatusHUDManager.hideAllControllers()();
}

- (void)updateForAppearance
{
  v2 = self;
  CRLStatusHUDManager.updateForAppearance()();
}

- (int64_t)containerViewVerticalLayoutGravity
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerViewVerticalLayoutGravity;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setContainerViewVerticalLayoutGravity:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerViewVerticalLayoutGravity;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

@end
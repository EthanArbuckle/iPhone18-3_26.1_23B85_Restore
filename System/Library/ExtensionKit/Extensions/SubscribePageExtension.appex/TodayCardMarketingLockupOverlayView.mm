@interface TodayCardMarketingLockupOverlayView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_continuousCornerRadius;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)animationDidStart:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)handleTapWithGestureRecognizer:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation TodayCardMarketingLockupOverlayView

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_tapGestureRecognizer);
  v5 = self;
  [v4 removeTarget:v5 action:0];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(TodayCardMarketingLockupOverlayView *)&v6 dealloc];
}

- (void)animationDidStart:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView);
  v7 = self;
  if ([v5 isUserInteractionEnabled])
  {
    v6 = *(&self->super.super.super.super.isa + v4);
    [v6 setUserInteractionEnabled:0];
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView);
  v8 = self;
  if (([v6 isUserInteractionEnabled] & 1) == 0)
  {
    v7 = *(&self->super.super.super.super.isa + v5);
    [v7 setUserInteractionEnabled:1];
  }
}

- (void)willMoveToWindow:(id)a3
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  v5 = a3;
  [(TodayCardMarketingLockupOverlayView *)&v8 willMoveToWindow:v5];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1001B7D44(Strong);

    swift_unknownObjectWeakAssign();
  }

  else
  {
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = sub_100747064();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView);
  v11 = self;
  v12 = v10;
  sub_1001F5A40(v9);
  [v12 layoutMargins];
  sub_1001CF768(v9, v12, width, height, v13, v14);
  v16 = v15;

  (*(v7 + 8))(v9, v6);
  v17 = fmax(v16, 79.0);
  v18 = width;
  result.height = v17;
  result.width = v18;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1001B8104();
}

- (double)_continuousCornerRadius
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  [(TodayCardMarketingLockupOverlayView *)&v3 _continuousCornerRadius];
  return result;
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TodayCardMarketingLockupOverlayView *)&v5 _setContinuousCornerRadius:a3];
  [*&v4[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_materialBackground] _setCornerRadius:1 continuous:12 maskedCorners:{a3, v5.receiver, v5.super_class}];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v8.receiver;
  [(TodayCardMarketingLockupOverlayView *)&v8 traitCollectionDidChange:v4];
  v6 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView];
  v7 = [v5 traitCollection];
  sub_1001F4D8C(v7);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1001BB40C(v7);

  return v9;
}

- (void)handleTapWithGestureRecognizer:(id)a3
{
  v5 = self;
  sub_1001B74F4(1);
  v3 = *(&v5->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler);
  if (v3)
  {

    v3(v4);

    sub_1000164A8(v3);
  }

  else
  {
  }
}

@end
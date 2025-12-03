@interface TodayCardMarketingLockupOverlayView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)_continuousCornerRadius;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)handleTapWithGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
- (void)willMoveToWindow:(id)window;
@end

@implementation TodayCardMarketingLockupOverlayView

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_tapGestureRecognizer);
  selfCopy = self;
  [v4 removeTarget:selfCopy action:0];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(TodayCardMarketingLockupOverlayView *)&v6 dealloc];
}

- (void)animationDidStart:(id)start
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView);
  selfCopy = self;
  if ([v5 isUserInteractionEnabled])
  {
    v6 = *(&self->super.super.super.super.isa + v4);
    [v6 setUserInteractionEnabled:0];
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v5 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView);
  selfCopy = self;
  if (([v6 isUserInteractionEnabled] & 1) == 0)
  {
    v7 = *(&self->super.super.super.super.isa + v5);
    [v7 setUserInteractionEnabled:1];
  }
}

- (void)willMoveToWindow:(id)window
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  windowCopy = window;
  [(TodayCardMarketingLockupOverlayView *)&v8 willMoveToWindow:windowCopy];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = sub_100747064();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView);
  selfCopy = self;
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
  selfCopy = self;
  sub_1001B8104();
}

- (double)_continuousCornerRadius
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  [(TodayCardMarketingLockupOverlayView *)&v3 _continuousCornerRadius];
  return result;
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TodayCardMarketingLockupOverlayView *)&v5 _setContinuousCornerRadius:radius];
  [*&v4[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_materialBackground] _setCornerRadius:1 continuous:12 maskedCorners:{radius, v5.receiver, v5.super_class}];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v8.receiver;
  [(TodayCardMarketingLockupOverlayView *)&v8 traitCollectionDidChange:changeCopy];
  v6 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView];
  traitCollection = [v5 traitCollection];
  sub_1001F4D8C(traitCollection);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_1001BB40C(touchCopy);

  return v9;
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  selfCopy = self;
  sub_1001B74F4(1);
  v3 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler);
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
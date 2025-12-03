@interface TipsManager
+ (_TtC9MobileCal11TipsManager)shared;
- (_TtC9MobileCal11TipsManager)init;
- (void)addTipObserversFor:(id)for todayButton:(id)button;
- (void)dismissTipIfPresentedWithCompletionBlock:(id)block;
- (void)jumpToTodayActionPerformed;
- (void)updatePresentedController:(id)controller;
@end

@implementation TipsManager

+ (_TtC9MobileCal11TipsManager)shared
{
  if (qword_100250D98 != -1)
  {
    swift_once();
  }

  v3 = static TipsManager.shared;

  return v3;
}

- (void)addTipObserversFor:(id)for todayButton:(id)button
{
  forCopy = for;
  buttonCopy = button;
  selfCopy = self;
  TipsManager.addTipObservers(for:todayButton:)(forCopy, buttonCopy);
}

- (void)updatePresentedController:(id)controller
{
  if (byte_100251380 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
    }

    else
    {

      swift_unknownObjectWeakAssign();
    }
  }
}

- (void)dismissTipIfPresentedWithCompletionBlock:(id)block
{
  v4 = _Block_copy(block);
  _Block_copy(v4);
  selfCopy = self;
  sub_10016A790(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_TtC9MobileCal11TipsManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC9MobileCal11TipsManager_tipObservationTask) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC9MobileCal11TipsManager____lazy_storage___jumpToTodayTip) = 1;
  v4.receiver = self;
  v4.super_class = type metadata accessor for TipsManager();
  return [(TipsManager *)&v4 init];
}

- (void)jumpToTodayActionPerformed
{
  v2 = type metadata accessor for Tips.InvalidationReason();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001683A8();
  (*(v3 + 104))(v5, enum case for Tips.InvalidationReason.actionPerformed(_:), v2);
  sub_10016A73C();
  Tip.invalidate(reason:)();
  (*(v3 + 8))(v5, v2);
}

@end
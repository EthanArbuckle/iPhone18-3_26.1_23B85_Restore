@interface TipsManager
+ (_TtC9MobileCal11TipsManager)shared;
- (_TtC9MobileCal11TipsManager)init;
- (void)addTipObserversFor:(id)a3 todayButton:(id)a4;
- (void)dismissTipIfPresentedWithCompletionBlock:(id)a3;
- (void)jumpToTodayActionPerformed;
- (void)updatePresentedController:(id)a3;
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

- (void)addTipObserversFor:(id)a3 todayButton:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  TipsManager.addTipObservers(for:todayButton:)(v6, v7);
}

- (void)updatePresentedController:(id)a3
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

- (void)dismissTipIfPresentedWithCompletionBlock:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_10016A790(v5, v4);
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
@interface AASApplicationManager
+ (_TtC8Freeform21AASApplicationManager)shared;
- (BOOL)isSaltRegenerated;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)applicationWillTerminate;
- (void)setIsSaltRegenerated:(BOOL)a3;
- (void)userIdentifierDidReset:(id)a3;
@end

@implementation AASApplicationManager

- (void)applicationWillEnterForeground
{
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC8Freeform21AASApplicationManager_isSaltRegenerated;
  swift_beginAccess();
  *(&self->super.isa + v6) = 0;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  v9 = self;
  sub_10064191C(0, 0, v5, &unk_101476340, v8);
}

+ (_TtC8Freeform21AASApplicationManager)shared
{
  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  v3 = static AASApplicationManager.shared;

  return v3;
}

- (BOOL)isSaltRegenerated
{
  v3 = OBJC_IVAR____TtC8Freeform21AASApplicationManager_isSaltRegenerated;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsSaltRegenerated:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC8Freeform21AASApplicationManager_isSaltRegenerated;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)applicationWillTerminate
{
  v2 = self;
  sub_1006F794C();
}

- (void)applicationDidEnterBackground
{
  v2 = self;
  sub_1006F7A4C();
}

- (void)userIdentifierDidReset:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1006F7D9C();

  (*(v5 + 8))(v7, v4);
}

@end
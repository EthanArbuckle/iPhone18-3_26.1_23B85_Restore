@interface SiriTipsController
- (_TtC11MobileTimer18SiriTipsController)init;
- (_TtP11MobileTimer26SiriTipsControllerDelegate_)delegate;
- (void)cancel;
- (void)checkForSiriTips;
- (void)dealloc;
- (void)setDelegate:(id)a3;
@end

@implementation SiriTipsController

- (_TtC11MobileTimer18SiriTipsController)init
{
  *(&self->super.isa + OBJC_IVAR____TtC11MobileTimer18SiriTipsController_delegate) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC11MobileTimer18SiriTipsController_tipView) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC11MobileTimer18SiriTipsController_checkForSiriTipsTask) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC11MobileTimer18SiriTipsController_updateTipStatusTask) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SiriTipsController();
  return [(SiriTipsController *)&v3 init];
}

- (_TtP11MobileTimer26SiriTipsControllerDelegate_)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR____TtC11MobileTimer18SiriTipsController_delegate;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)dealloc
{
  v2 = *((swift_isaMask & self->super.isa) + 0xD8);
  v3 = self;
  v2();
  v4.receiver = v3;
  v4.super_class = type metadata accessor for SiriTipsController();
  [(SiriTipsController *)&v4 dealloc];
}

- (void)checkForSiriTips
{
  v2 = self;
  sub_100067368();
}

- (void)cancel
{
  v2 = self;
  sub_100069C74();
}

@end
@interface SiriTipsController
- (_TtC11MobileTimer18SiriTipsController)init;
- (_TtP11MobileTimer26SiriTipsControllerDelegate_)delegate;
- (void)cancel;
- (void)checkForSiriTips;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
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

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR____TtC11MobileTimer18SiriTipsController_delegate;
  swift_beginAccess();
  *(&self->super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)dealloc
{
  v2 = *((swift_isaMask & self->super.isa) + 0xD8);
  selfCopy = self;
  v2();
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for SiriTipsController();
  [(SiriTipsController *)&v4 dealloc];
}

- (void)checkForSiriTips
{
  selfCopy = self;
  sub_100067368();
}

- (void)cancel
{
  selfCopy = self;
  sub_100069C74();
}

@end
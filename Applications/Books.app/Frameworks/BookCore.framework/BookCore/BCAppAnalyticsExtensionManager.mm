@interface BCAppAnalyticsExtensionManager
- (BAAnalyticsController)analyticsController;
- (BCAppAnalyticsExtensionManager)init;
- (BCAppAnalyticsExtensionManager)initWithUploadsEnabled:(BOOL)enabled;
- (NSArray)additionalEventProcessors;
- (id)analyticsSessionDataForKey:(id)key;
- (void)analyticsController:(BAAnalyticsController *)controller resetSessionWithCompletion:(id)completion;
- (void)analyticsControllerDidStartSession:(id)session;
- (void)appSessionDidTerminate;
- (void)endSession;
- (void)setAnalyticsController:(id)controller;
- (void)setupTrackingForRootViewController:(id)controller;
- (void)startSession;
- (void)waitForSessionEndWithTimeout:(double)timeout;
@end

@implementation BCAppAnalyticsExtensionManager

- (BAAnalyticsController)analyticsController
{
  v3 = OBJC_IVAR___BCAppAnalyticsExtensionManager_analyticsController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAnalyticsController:(id)controller
{
  v5 = OBJC_IVAR___BCAppAnalyticsExtensionManager_analyticsController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = controller;
  controllerCopy = controller;
}

- (BCAppAnalyticsExtensionManager)initWithUploadsEnabled:(BOOL)enabled
{
  *(&self->super.isa + OBJC_IVAR___BCAppAnalyticsExtensionManager_assertion) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR___BCAppAnalyticsExtensionManager_uploadsEnabled) = enabled;
  *(&self->super.isa + OBJC_IVAR___BCAppAnalyticsExtensionManager_analyticsController) = [objc_allocWithZone(sub_1EE014()) init];
  v6.receiver = self;
  v6.super_class = type metadata accessor for AppAnalyticsExtensionManager();
  return [(BCAppAnalyticsExtensionManager *)&v6 init];
}

- (BCAppAnalyticsExtensionManager)init
{
  *(&self->super.isa + OBJC_IVAR___BCAppAnalyticsExtensionManager_assertion) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR___BCAppAnalyticsExtensionManager_uploadsEnabled) = 1;
  *(&self->super.isa + OBJC_IVAR___BCAppAnalyticsExtensionManager_analyticsController) = [objc_allocWithZone(sub_1EE014()) init];
  v4.receiver = self;
  v4.super_class = type metadata accessor for AppAnalyticsExtensionManager();
  return [(BCAppAnalyticsExtensionManager *)&v4 init];
}

- (void)setupTrackingForRootViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1C0CCC(controllerCopy);
}

- (void)startSession
{
  v3 = OBJC_IVAR___BCAppAnalyticsExtensionManager_analyticsController;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  selfCopy = self;
  newSessionAssertion = [v4 newSessionAssertion];
  *(&selfCopy->super.isa + OBJC_IVAR___BCAppAnalyticsExtensionManager_assertion) = newSessionAssertion;
  swift_unknownObjectRelease();
  if (qword_33F930 != -1)
  {
    swift_once();
  }

  RCDataContainer.deployStagedDataIfNeeded()();
}

- (void)endSession
{
  v3 = OBJC_IVAR___BCAppAnalyticsExtensionManager_assertion;
  v4 = *(&self->super.isa + OBJC_IVAR___BCAppAnalyticsExtensionManager_assertion);
  selfCopy = self;
  if (v4)
  {
    [v4 invalidate];
  }

  *(&self->super.isa + v3) = 0;

  swift_unknownObjectRelease();
}

- (void)waitForSessionEndWithTimeout:(double)timeout
{
  v4 = OBJC_IVAR___BCAppAnalyticsExtensionManager_analyticsController;
  swift_beginAccess();
  v5 = *(&self->super.isa + v4);
  selfCopy = self;
  v7 = v5;
  sub_1EDFD4();
}

- (void)appSessionDidTerminate
{
  sub_1EE054();
  v2 = sub_1EE044();
  sub_1EE034();
}

- (void)analyticsControllerDidStartSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  _s8BookCore28AppAnalyticsExtensionManagerC15didStartSession4withy0aD00D10ControllerC_tF_0();
}

- (void)analyticsController:(BAAnalyticsController *)controller resetSessionWithCompletion:(id)completion
{
  v7 = sub_18AFC0(&unk_341460);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = controller;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1EF014();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2A65C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2A65D0;
  v14[5] = v13;
  controllerCopy = controller;
  selfCopy = self;
  sub_1CE02C(0, 0, v9, &unk_2A6880, v14);
}

- (id)analyticsSessionDataForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  AppAnalyticsExtensionManager.analyticsSessionData(for:)(v13);

  v6 = v14;
  if (v14)
  {
    v7 = sub_18E35C(v13, v14);
    v8 = *(v6 - 8);
    __chkstk_darwin(v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_1EF6B4();
    (*(v8 + 8))(v10, v6);
    sub_18E310(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSArray)additionalEventProcessors
{
  v2.super.isa = sub_1EEFC4().super.isa;

  return v2.super.isa;
}

@end
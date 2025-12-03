@interface BKEngagementManager
+ (void)destroyPersistentStorageInDirectory:(id)directory;
- (BKEngagementManager)init;
- (BKEngagementManagerAnalyticsHelper)analyticsHelper;
- (BKEngagementManagerMetadata)metadata;
- (BKSessionDonor)sessionDonor;
- (id)donorWithType:(id)type;
- (void)downloadQueue:(id)queue purchasedDidCompleteWithResponse:(id)response;
- (void)engagementEventDataForEventWithEventName:(id)name completion:(id)completion;
- (void)fetchDialogRequestsFor:(id)for completion:(id)completion;
- (void)forcePurgeAll;
- (void)forceSyncFromCloudKit;
- (void)forceSyncToCloudKit;
- (void)onCloudUpdate:(id)update;
- (void)onConfigurationChange:(id)change;
- (void)onDidReceiveAppDidBackground:(id)background;
- (void)reportAppOpenEvent;
- (void)sendReaderEventNewSectionViaToC;
- (void)setAnalyticsHelper:(id)helper;
- (void)setEventController:(id)controller;
- (void)setMetadata:(id)metadata;
- (void)setupPersonalizationEventDonor:(id)donor;
- (void)setupSessionDonor;
@end

@implementation BKEngagementManager

- (void)setEventController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR___BKEngagementManager_eventController);
  *(&self->super.isa + OBJC_IVAR___BKEngagementManager_eventController) = controller;
  controllerCopy = controller;
}

- (BKSessionDonor)sessionDonor
{
  v2 = *(&self->super.isa + OBJC_IVAR___BKEngagementManager_manager);
  selfCopy = self;
  v4 = v2;
  v5 = sub_1007999E4();

  if (v5)
  {
    type metadata accessor for SessionDonor();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (BKEngagementManagerMetadata)metadata
{
  v3 = OBJC_IVAR___BKEngagementManager_metadata;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setMetadata:(id)metadata
{
  v5 = OBJC_IVAR___BKEngagementManager_metadata;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = metadata;
  metadataCopy = metadata;
}

- (BKEngagementManagerAnalyticsHelper)analyticsHelper
{
  v3 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAnalyticsHelper:(id)helper
{
  v5 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = helper;
  helperCopy = helper;
}

+ (void)destroyPersistentStorageInDirectory:(id)directory
{
  v3 = sub_1007969B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796974();
  sub_100799A34();
  sub_1007999A4();
  (*(v4 + 8))(v6, v3);
}

- (void)setupSessionDonor
{
  selfCopy = self;
  EngagementManager.setupSessionDonor()();
}

- (void)setupPersonalizationEventDonor:(id)donor
{
  donorCopy = donor;
  selfCopy = self;
  EngagementManager.setup(personalizationEventDonor:)(donorCopy);
}

- (void)reportAppOpenEvent
{
  selfCopy = self;
  EngagementManager.reportAppOpenEvent()();
}

- (void)forceSyncFromCloudKit
{
  selfCopy = self;
  sub_100347ADC();
}

- (void)forceSyncToCloudKit
{
  selfCopy = self;
  EngagementManager.syncToCloudKit(completion:)(BKAppDelegate.enableMetricsInspectorOnDebugMode(), 0);
}

- (void)onDidReceiveAppDidBackground:(id)background
{
  v4 = sub_100796594();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796564();
  v8 = *(&self->super.isa + OBJC_IVAR___BKEngagementManager_manager);
  selfCopy = self;
  v10 = v8;
  sub_100799964();

  (*(v5 + 8))(v7, v4);
}

- (void)onCloudUpdate:(id)update
{
  v4 = sub_100796594();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796564();
  if (*(&self->super.isa + OBJC_IVAR___BKEngagementManager_cloudKitSyncEnabled) == 1)
  {
    selfCopy = self;
    sub_100347ADC();
  }

  (*(v5 + 8))(v7, v4);
}

- (void)forcePurgeAll
{
  v2 = *(&self->super.isa + OBJC_IVAR___BKEngagementManager_manager);
  selfCopy = self;
  v3 = v2;
  sub_1007999B4();
}

- (id)donorWithType:(id)type
{
  sub_1007A2254();
  v4 = *(&self->super.isa + OBJC_IVAR___BKEngagementManager_manager);
  selfCopy = self;
  v6 = v4;
  v7 = sub_1007999E4();

  return v7;
}

- (void)engagementEventDataForEventWithEventName:(id)name completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = *(&self->super.isa + OBJC_IVAR___BKEngagementManager_manager);
  selfCopy = self;
  v8 = v7;
  sub_100799A14();

  sub_1007998B4();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100359A5C;
  *(v9 + 24) = v6;

  sub_100799724();
}

- (BKEngagementManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)fetchDialogRequestsFor:(id)for completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1007A2834();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_1003599A0;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  _s5Books17EngagementManagerC19fetchDialogRequests3for10completionyShySSG_ySDySSSo16AMSDialogRequestCG_s5Error_pSgtcSgtF_0(v6, v5, v7);
  sub_100007020(v5);
}

- (void)downloadQueue:(id)queue purchasedDidCompleteWithResponse:(id)response
{
  queueCopy = queue;
  responseCopy = response;
  selfCopy = self;
  sub_100358B8C(response);
}

- (void)sendReaderEventNewSectionViaToC
{
  v2 = *(&self->super.isa + OBJC_IVAR___BKEngagementManager_eventController);
  selfCopy = self;
  v3 = v2;
  sub_10079E994();
}

- (void)onConfigurationChange:(id)change
{
  v4 = sub_100796594();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796564();
  selfCopy = self;
  sub_1003548C0();

  (*(v5 + 8))(v7, v4);
}

@end
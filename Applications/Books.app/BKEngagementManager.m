@interface BKEngagementManager
+ (void)destroyPersistentStorageInDirectory:(id)a3;
- (BKEngagementManager)init;
- (BKEngagementManagerAnalyticsHelper)analyticsHelper;
- (BKEngagementManagerMetadata)metadata;
- (BKSessionDonor)sessionDonor;
- (id)donorWithType:(id)a3;
- (void)downloadQueue:(id)a3 purchasedDidCompleteWithResponse:(id)a4;
- (void)engagementEventDataForEventWithEventName:(id)a3 completion:(id)a4;
- (void)fetchDialogRequestsFor:(id)a3 completion:(id)a4;
- (void)forcePurgeAll;
- (void)forceSyncFromCloudKit;
- (void)forceSyncToCloudKit;
- (void)onCloudUpdate:(id)a3;
- (void)onConfigurationChange:(id)a3;
- (void)onDidReceiveAppDidBackground:(id)a3;
- (void)reportAppOpenEvent;
- (void)sendReaderEventNewSectionViaToC;
- (void)setAnalyticsHelper:(id)a3;
- (void)setEventController:(id)a3;
- (void)setMetadata:(id)a3;
- (void)setupPersonalizationEventDonor:(id)a3;
- (void)setupSessionDonor;
@end

@implementation BKEngagementManager

- (void)setEventController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___BKEngagementManager_eventController);
  *(&self->super.isa + OBJC_IVAR___BKEngagementManager_eventController) = a3;
  v3 = a3;
}

- (BKSessionDonor)sessionDonor
{
  v2 = *(&self->super.isa + OBJC_IVAR___BKEngagementManager_manager);
  v3 = self;
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

- (void)setMetadata:(id)a3
{
  v5 = OBJC_IVAR___BKEngagementManager_metadata;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (BKEngagementManagerAnalyticsHelper)analyticsHelper
{
  v3 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAnalyticsHelper:(id)a3
{
  v5 = OBJC_IVAR___BKEngagementManager_analyticsHelper;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

+ (void)destroyPersistentStorageInDirectory:(id)a3
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
  v2 = self;
  EngagementManager.setupSessionDonor()();
}

- (void)setupPersonalizationEventDonor:(id)a3
{
  v4 = a3;
  v5 = self;
  EngagementManager.setup(personalizationEventDonor:)(v4);
}

- (void)reportAppOpenEvent
{
  v2 = self;
  EngagementManager.reportAppOpenEvent()();
}

- (void)forceSyncFromCloudKit
{
  v2 = self;
  sub_100347ADC();
}

- (void)forceSyncToCloudKit
{
  v2 = self;
  EngagementManager.syncToCloudKit(completion:)(BKAppDelegate.enableMetricsInspectorOnDebugMode(), 0);
}

- (void)onDidReceiveAppDidBackground:(id)a3
{
  v4 = sub_100796594();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796564();
  v8 = *(&self->super.isa + OBJC_IVAR___BKEngagementManager_manager);
  v9 = self;
  v10 = v8;
  sub_100799964();

  (*(v5 + 8))(v7, v4);
}

- (void)onCloudUpdate:(id)a3
{
  v4 = sub_100796594();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796564();
  if (*(&self->super.isa + OBJC_IVAR___BKEngagementManager_cloudKitSyncEnabled) == 1)
  {
    v8 = self;
    sub_100347ADC();
  }

  (*(v5 + 8))(v7, v4);
}

- (void)forcePurgeAll
{
  v2 = *(&self->super.isa + OBJC_IVAR___BKEngagementManager_manager);
  v4 = self;
  v3 = v2;
  sub_1007999B4();
}

- (id)donorWithType:(id)a3
{
  sub_1007A2254();
  v4 = *(&self->super.isa + OBJC_IVAR___BKEngagementManager_manager);
  v5 = self;
  v6 = v4;
  v7 = sub_1007999E4();

  return v7;
}

- (void)engagementEventDataForEventWithEventName:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = *(&self->super.isa + OBJC_IVAR___BKEngagementManager_manager);
  v10 = self;
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

- (void)fetchDialogRequestsFor:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
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

  v8 = self;
  _s5Books17EngagementManagerC19fetchDialogRequests3for10completionyShySSG_ySDySSSo16AMSDialogRequestCG_s5Error_pSgtcSgtF_0(v6, v5, v7);
  sub_100007020(v5);
}

- (void)downloadQueue:(id)a3 purchasedDidCompleteWithResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100358B8C(a4);
}

- (void)sendReaderEventNewSectionViaToC
{
  v2 = *(&self->super.isa + OBJC_IVAR___BKEngagementManager_eventController);
  v4 = self;
  v3 = v2;
  sub_10079E994();
}

- (void)onConfigurationChange:(id)a3
{
  v4 = sub_100796594();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796564();
  v8 = self;
  sub_1003548C0();

  (*(v5 + 8))(v7, v4);
}

@end
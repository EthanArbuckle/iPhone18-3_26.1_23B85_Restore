@interface BAAnalyticsController
- (BOOL)waitForSessionEnd:(double)a3;
- (NSDate)sessionStartTime;
- (_TtC13BookAnalytics9BATracker)applicationTracker;
- (void)appendUserExperience:(id)a3;
- (void)countingAssertProviderTransitionToNonZero:(id)a3;
- (void)countingAssertProviderTransitionToZero:(id)a3;
- (void)dealloc;
- (void)performAfterPrivateDataFetchedWithCompletionHandler:(id)a3;
- (void)privateDataChanged:(id)a3;
- (void)refreshSessionDataIfActive;
- (void)resetPrivateData:(id)a3;
- (void)setApplicationTracker:(id)a3;
- (void)setReferralURL:(id)a3 app:(id)a4;
- (void)setTreatmentData:(id)a3;
- (void)start;
@end

@implementation BAAnalyticsController

- (_TtC13BookAnalytics9BATracker)applicationTracker
{
  v3 = OBJC_IVAR___BAAnalyticsController_applicationTracker;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setApplicationTracker:(id)a3
{
  v5 = OBJC_IVAR___BAAnalyticsController_applicationTracker;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (NSDate)sessionStartTime
{
  v3 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = *(self + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v8 = *(*v7 + class metadata base offset for ManagedBuffer + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  v10 = self;
  os_unfair_lock_lock((v7 + v9));
  sub_17AA4(v7 + v8, v6, &qword_287B10, &qword_1FCF80);
  os_unfair_lock_unlock((v7 + v9));

  v11 = sub_1E09E0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v6, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    isa = sub_1E0970().super.isa;
    (*(v12 + 8))(v6, v11);
    v14 = isa;
  }

  return v14;
}

- (void)dealloc
{
  if (*(self + OBJC_IVAR___BAAnalyticsController_privateDataQueueActive) == 1)
  {
    v3 = self;
  }

  else
  {
    v4 = *(self + OBJC_IVAR___BAAnalyticsController_privateDataQueue);
    v5 = self;
    dispatch_resume(v4);
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for AnalyticsController();
  [(BAAnalyticsController *)&v6 dealloc];
}

- (void)start
{
  v2 = self;
  sub_11C028();
}

- (void)setReferralURL:(id)a3 app:(id)a4
{
  v5 = sub_1E0930();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E0910();
  v10 = sub_1E1780();
  v12 = v11;
  v13 = self;
  sub_11D1A4(v9, v10, v12);

  (*(v6 + 8))(v9, v5);
}

- (void)setTreatmentData:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_11DF00(a3);
}

- (void)appendUserExperience:(id)a3
{
  sub_1E1780();
  v4 = *(self + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v5 = *(*v4 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  v7 = self;
  os_unfair_lock_lock((v4 + v6));
  sub_127BB4((v4 + v5));
  os_unfair_lock_unlock((v4 + v6));

  sub_11F754();
}

- (void)resetPrivateData:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_127B98;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_11E6E4(v7, v6);
  sub_12733C(v7);
}

- (BOOL)waitForSessionEnd:(double)a3
{
  v4 = self;
  v5 = sub_11F200(a3);

  return v5;
}

- (void)refreshSessionDataIfActive
{
  v2 = self;
  sub_11F754();
}

- (void)performAfterPrivateDataFetchedWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  AnalyticsController.performAfterPrivateDataFetched(completionHandler:)(sub_127334, v5);
}

- (void)privateDataChanged:(id)a3
{
  v4 = sub_1E1730();
  v5 = self;
  AnalyticsController.privateDataChanged(_:)(v4);
}

- (void)countingAssertProviderTransitionToZero:(id)a3
{
  v4 = a3;
  v5 = self;
  _s13BookAnalytics0B10ControllerC32countingAssertProviderTransition6toZeroySo019BUCountingAssertionF0C_tF_0();
}

- (void)countingAssertProviderTransitionToNonZero:(id)a3
{
  v4 = a3;
  v5 = self;
  _s13BookAnalytics0B10ControllerC32countingAssertProviderTransition9toNonZeroySo019BUCountingAssertionF0C_tF_0();
}

@end
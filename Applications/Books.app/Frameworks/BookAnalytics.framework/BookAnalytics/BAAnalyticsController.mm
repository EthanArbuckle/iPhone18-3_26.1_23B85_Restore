@interface BAAnalyticsController
- (BOOL)waitForSessionEnd:(double)end;
- (NSDate)sessionStartTime;
- (_TtC13BookAnalytics9BATracker)applicationTracker;
- (void)appendUserExperience:(id)experience;
- (void)countingAssertProviderTransitionToNonZero:(id)zero;
- (void)countingAssertProviderTransitionToZero:(id)zero;
- (void)dealloc;
- (void)performAfterPrivateDataFetchedWithCompletionHandler:(id)handler;
- (void)privateDataChanged:(id)changed;
- (void)refreshSessionDataIfActive;
- (void)resetPrivateData:(id)data;
- (void)setApplicationTracker:(id)tracker;
- (void)setReferralURL:(id)l app:(id)app;
- (void)setTreatmentData:(id)data;
- (void)start;
@end

@implementation BAAnalyticsController

- (_TtC13BookAnalytics9BATracker)applicationTracker
{
  v3 = OBJC_IVAR___BAAnalyticsController_applicationTracker;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setApplicationTracker:(id)tracker
{
  v5 = OBJC_IVAR___BAAnalyticsController_applicationTracker;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = tracker;
  trackerCopy = tracker;
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
  selfCopy = self;
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
    selfCopy = self;
  }

  else
  {
    v4 = *(self + OBJC_IVAR___BAAnalyticsController_privateDataQueue);
    selfCopy2 = self;
    dispatch_resume(v4);
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for AnalyticsController();
  [(BAAnalyticsController *)&v6 dealloc];
}

- (void)start
{
  selfCopy = self;
  sub_11C028();
}

- (void)setReferralURL:(id)l app:(id)app
{
  v5 = sub_1E0930();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E0910();
  v10 = sub_1E1780();
  v12 = v11;
  selfCopy = self;
  sub_11D1A4(v9, v10, v12);

  (*(v6 + 8))(v9, v5);
}

- (void)setTreatmentData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  sub_11DF00(data);
}

- (void)appendUserExperience:(id)experience
{
  sub_1E1780();
  v4 = *(self + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v5 = *(*v4 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v4 + v6));
  sub_127BB4((v4 + v5));
  os_unfair_lock_unlock((v4 + v6));

  sub_11F754();
}

- (void)resetPrivateData:(id)data
{
  v4 = _Block_copy(data);
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

  selfCopy = self;
  sub_11E6E4(v7, v6);
  sub_12733C(v7);
}

- (BOOL)waitForSessionEnd:(double)end
{
  selfCopy = self;
  v5 = sub_11F200(end);

  return v5;
}

- (void)refreshSessionDataIfActive
{
  selfCopy = self;
  sub_11F754();
}

- (void)performAfterPrivateDataFetchedWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  AnalyticsController.performAfterPrivateDataFetched(completionHandler:)(sub_127334, v5);
}

- (void)privateDataChanged:(id)changed
{
  v4 = sub_1E1730();
  selfCopy = self;
  AnalyticsController.privateDataChanged(_:)(v4);
}

- (void)countingAssertProviderTransitionToZero:(id)zero
{
  zeroCopy = zero;
  selfCopy = self;
  _s13BookAnalytics0B10ControllerC32countingAssertProviderTransition6toZeroySo019BUCountingAssertionF0C_tF_0();
}

- (void)countingAssertProviderTransitionToNonZero:(id)zero
{
  zeroCopy = zero;
  selfCopy = self;
  _s13BookAnalytics0B10ControllerC32countingAssertProviderTransition9toNonZeroySo019BUCountingAssertionF0C_tF_0();
}

@end
@interface BATracker
- (BOOL)optedIn;
- (NSDate)sessionStartTime;
- (NSString)name;
- (NSString)path;
- (_TtC13BookAnalytics9BATracker)init;
- (id)chainWithName:(id)a3;
- (void)onSessionChangeWithBlock:(id)a3;
- (void)performAfterPrivateDataFetchedWithCompletionHandler:(id)a3;
- (void)popOrientationData;
- (void)popRawDataEventWithName:(id)a3;
- (void)popSessionListeningData;
- (void)popSessionReadingData;
- (void)pushOrientationDataFromFile:(id)a3 line:(int64_t)a4;
- (void)pushRawDataEventWithNameData:(id)a3 :(id)a4 :(id)a5;
- (void)submitAppSessionStartEvent;
- (void)submitRawEvent:(id)a3 :(id)a4;
- (void)submitRawEventEndTime:(id)a3 :(id)a4 :(id)a5;
- (void)timeAppSessionEndEvent;
- (void)timeRawEvent:(id)a3 :(id)a4 :(id)a5;
@end

@implementation BATracker

- (void)popOrientationData
{
  v2 = self;
  BATracker.popOrientationData()();
}

- (void)popSessionListeningData
{
  v2 = self;
  BATracker.popSessionListeningData()();
}

- (void)popSessionReadingData
{
  v2 = self;
  BATracker.popSessionReadingData()();
}

- (void)pushOrientationDataFromFile:(id)a3 line:(int64_t)a4
{
  v6 = sub_1E1780();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  BATracker.pushOrientationData(file:line:)(v10, a4);
}

- (void)submitAppSessionStartEvent
{
  type metadata accessor for AppSessionStartEvent(0);
  v3 = *(&self->super.isa + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  sub_103870(&qword_286BA8, type metadata accessor for AppSessionStartEvent);
  v4 = self;
  sub_1E1140();
}

- (void)timeAppSessionEndEvent
{
  v3 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  v7 = sub_1E09E0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = self;
  sub_102A78(v6);

  sub_103798(v6);
}

- (id)chainWithName:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_1E1780();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v6 = self;
  v7 = sub_1E1130();

  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v8 = objc_allocWithZone(ObjectType);
  v9 = sub_1D6388(v7);

  swift_unknownObjectRelease();

  return v9;
}

- (void)onSessionChangeWithBlock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D6BF8;
  *(v7 + 24) = v5;
  v8 = self;

  sub_1E10E0();
}

- (_TtC13BookAnalytics9BATracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)name
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v3 = self;
  v4 = sub_1E10B0();
  sub_1E0CA0();

  v5 = sub_1E1770();

  return v5;
}

- (BOOL)optedIn
{
  v2 = [objc_opt_self() sharedConnection];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isDiagnosticSubmissionAllowed];

    LOBYTE(v2) = v4;
  }

  else
  {
    __break(1u);
  }

  return v2;
}

- (NSString)path
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v3 = self;
  sub_1E1100();
  sub_3D68(&qword_281BC0, &unk_1EDD80);
  sub_EC07C(&qword_28F2E0, &qword_281BC0, &unk_1EDD80);
  sub_1E1750();

  v4 = sub_1E1770();

  return v4;
}

- (void)timeRawEvent:(id)a3 :(id)a4 :(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  BATracker.timeRawEvent(eventNameValue:propertiesValue:startTimeValue:)(v8, v9, v10);
}

- (void)submitRawEvent:(id)a3 :(id)a4
{
  v5 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = sub_1E1780();
  v11 = v10;
  sub_3D68(&qword_28B468, &qword_2051D0);
  v12 = sub_1E1730();
  v13 = sub_1E09E0();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = self;
  BATracker.submitRawEvent(_:properties:endTime:)(v9, v11, v12, v8);
  sub_18E48(v8, &qword_287B10, &qword_1FCF80);
}

- (void)submitRawEventEndTime:(id)a3 :(id)a4 :(id)a5
{
  v7 = sub_1E1780();
  v9 = v8;
  sub_3D68(&qword_28B468, &qword_2051D0);
  v10 = sub_1E1730();
  v11 = a5;
  v12 = self;
  v13._countAndFlagsBits = v7;
  v13._object = v9;
  v15.value.super.isa = a5;
  BATracker.submitRawEvent(_:properties:endTimeValue:)(v13, v10, v15);
}

- (void)pushRawDataEventWithNameData:(id)a3 :(id)a4 :(id)a5
{
  v6 = sub_1E1780();
  v8 = v7;
  v9 = sub_1E1730();
  v10 = sub_1E18C0();
  v11 = self;
  v12._countAndFlagsBits = v6;
  v12._object = v8;
  BATracker.pushRawDataEvent(with:data:traitValues:)(v12, v9, v10);
}

- (void)popRawDataEventWithName:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v5 = a3;
  v7 = self;
  v6 = sub_1E10B0();
  [v6 popDataEventByName:v5];
}

- (NSDate)sessionStartTime
{
  v3 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = self;
  BATracker.sessionStartTime.getter(v6);

  v8 = sub_1E09E0();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = sub_1E0970().super.isa;
    (*(v9 + 8))(v6, v8);
    v11 = isa;
  }

  return v11;
}

- (void)performAfterPrivateDataFetchedWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  BATracker.performAfterPrivateDataFetched(completionHandler:)(sub_1D6BB0, v5);
}

@end
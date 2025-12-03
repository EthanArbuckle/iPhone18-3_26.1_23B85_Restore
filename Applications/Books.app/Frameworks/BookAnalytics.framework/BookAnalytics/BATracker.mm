@interface BATracker
- (BOOL)optedIn;
- (NSDate)sessionStartTime;
- (NSString)name;
- (NSString)path;
- (_TtC13BookAnalytics9BATracker)init;
- (id)chainWithName:(id)name;
- (void)onSessionChangeWithBlock:(id)block;
- (void)performAfterPrivateDataFetchedWithCompletionHandler:(id)handler;
- (void)popOrientationData;
- (void)popRawDataEventWithName:(id)name;
- (void)popSessionListeningData;
- (void)popSessionReadingData;
- (void)pushOrientationDataFromFile:(id)file line:(int64_t)line;
- (void)pushRawDataEventWithNameData:(id)data :(id)a4 :(id)a5;
- (void)submitAppSessionStartEvent;
- (void)submitRawEvent:(id)event :(id)a4;
- (void)submitRawEventEndTime:(id)time :(id)a4 :(id)a5;
- (void)timeAppSessionEndEvent;
- (void)timeRawEvent:(id)event :(id)a4 :(id)a5;
@end

@implementation BATracker

- (void)popOrientationData
{
  selfCopy = self;
  BATracker.popOrientationData()();
}

- (void)popSessionListeningData
{
  selfCopy = self;
  BATracker.popSessionListeningData()();
}

- (void)popSessionReadingData
{
  selfCopy = self;
  BATracker.popSessionReadingData()();
}

- (void)pushOrientationDataFromFile:(id)file line:(int64_t)line
{
  v6 = sub_1E1780();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  BATracker.pushOrientationData(file:line:)(v10, line);
}

- (void)submitAppSessionStartEvent
{
  type metadata accessor for AppSessionStartEvent(0);
  v3 = *(&self->super.isa + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  sub_103870(&qword_286BA8, type metadata accessor for AppSessionStartEvent);
  selfCopy = self;
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
  selfCopy = self;
  sub_102A78(v6);

  sub_103798(v6);
}

- (id)chainWithName:(id)name
{
  ObjectType = swift_getObjectType();
  sub_1E1780();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  selfCopy = self;
  v7 = sub_1E1130();

  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v8 = objc_allocWithZone(ObjectType);
  v9 = sub_1D6388(v7);

  swift_unknownObjectRelease();

  return v9;
}

- (void)onSessionChangeWithBlock:(id)block
{
  v4 = _Block_copy(block);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D6BF8;
  *(v7 + 24) = v5;
  selfCopy = self;

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
  selfCopy = self;
  v4 = sub_1E10B0();
  sub_1E0CA0();

  v5 = sub_1E1770();

  return v5;
}

- (BOOL)optedIn
{
  sharedConnection = [objc_opt_self() sharedConnection];
  if (sharedConnection)
  {
    v3 = sharedConnection;
    isDiagnosticSubmissionAllowed = [sharedConnection isDiagnosticSubmissionAllowed];

    LOBYTE(sharedConnection) = isDiagnosticSubmissionAllowed;
  }

  else
  {
    __break(1u);
  }

  return sharedConnection;
}

- (NSString)path
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  selfCopy = self;
  sub_1E1100();
  sub_3D68(&qword_281BC0, &unk_1EDD80);
  sub_EC07C(&qword_28F2E0, &qword_281BC0, &unk_1EDD80);
  sub_1E1750();

  v4 = sub_1E1770();

  return v4;
}

- (void)timeRawEvent:(id)event :(id)a4 :(id)a5
{
  eventCopy = event;
  v9 = a4;
  v10 = a5;
  selfCopy = self;
  BATracker.timeRawEvent(eventNameValue:propertiesValue:startTimeValue:)(eventCopy, v9, v10);
}

- (void)submitRawEvent:(id)event :(id)a4
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
  selfCopy = self;
  BATracker.submitRawEvent(_:properties:endTime:)(v9, v11, v12, v8);
  sub_18E48(v8, &qword_287B10, &qword_1FCF80);
}

- (void)submitRawEventEndTime:(id)time :(id)a4 :(id)a5
{
  v7 = sub_1E1780();
  v9 = v8;
  sub_3D68(&qword_28B468, &qword_2051D0);
  v10 = sub_1E1730();
  v11 = a5;
  selfCopy = self;
  v13._countAndFlagsBits = v7;
  v13._object = v9;
  v15.value.super.isa = a5;
  BATracker.submitRawEvent(_:properties:endTimeValue:)(v13, v10, v15);
}

- (void)pushRawDataEventWithNameData:(id)data :(id)a4 :(id)a5
{
  v6 = sub_1E1780();
  v8 = v7;
  v9 = sub_1E1730();
  v10 = sub_1E18C0();
  selfCopy = self;
  v12._countAndFlagsBits = v6;
  v12._object = v8;
  BATracker.pushRawDataEvent(with:data:traitValues:)(v12, v9, v10);
}

- (void)popRawDataEventWithName:(id)name
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  nameCopy = name;
  selfCopy = self;
  v6 = sub_1E10B0();
  [v6 popDataEventByName:nameCopy];
}

- (NSDate)sessionStartTime
{
  v3 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
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

- (void)performAfterPrivateDataFetchedWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  BATracker.performAfterPrivateDataFetched(completionHandler:)(sub_1D6BB0, v5);
}

@end
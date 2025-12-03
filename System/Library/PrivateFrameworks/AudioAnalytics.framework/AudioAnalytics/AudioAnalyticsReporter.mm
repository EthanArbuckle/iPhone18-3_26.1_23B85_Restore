@interface AudioAnalyticsReporter
+ (void)sendSessionlessMessage:(id)message category:(unsigned int)category type:(unsigned __int16)type;
- (AudioAnalyticsReporter)init;
- (AudioAnalyticsReporter)initWithNewReporterID;
- (AudioAnalyticsReporter)initWithReporterID:(int64_t)d;
- (NSDictionary)configuration;
- (int64_t)reporterID;
- (unsigned)serviceType;
- (void)dealloc;
- (void)requestMessageForCategory:(unsigned int)category type:(unsigned __int16)type callback:(id)callback;
- (void)sendMessage:(id)message category:(unsigned int)category type:(unsigned __int16)type;
- (void)setConfiguration:(id)configuration;
- (void)setReporterID:(int64_t)d;
- (void)setServiceType:(unsigned __int16)type;
- (void)start;
- (void)stop;
@end

@implementation AudioAnalyticsReporter

- (void)start
{
  selfCopy = self;
  if (sub_1C0BD3500(0x29287472617473, 0xE700000000000000))
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED6F78F0;
    reporterID = [(AudioAnalyticsReporter *)selfCopy reporterID];
    v4 = *&v2[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = reporterID;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1C0BD39A4;
    *(v6 + 24) = v5;
    aBlock[4] = sub_1C0BD3D50;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C0BCA800;
    aBlock[3] = &block_descriptor_92;
    v7 = _Block_copy(aBlock);
    v8 = v2;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }

  else
  {
  }
}

- (void)sendMessage:(id)message category:(unsigned int)category type:(unsigned __int16)type
{
  v8 = sub_1C0BEC058();
  selfCopy = self;
  AudioAnalyticsReporter.sendMessage(_:category:type:)(v8, category, type);
}

- (int64_t)reporterID
{
  v3 = OBJC_IVAR___AudioAnalyticsReporter_reporterID;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)stop
{
  selfCopy = self;
  if (sub_1C0BD3500(0x2928706F7473, 0xE600000000000000))
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED6F78F0;
    reporterID = [(AudioAnalyticsReporter *)selfCopy reporterID];
    v4 = *&v2[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = reporterID;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1C0BD3F7C;
    *(v6 + 24) = v5;
    aBlock[4] = sub_1C0BD3D50;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C0BCA800;
    aBlock[3] = &block_descriptor_81;
    v7 = _Block_copy(aBlock);
    v8 = v2;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }

  else
  {
  }
}

- (AudioAnalyticsReporter)initWithNewReporterID
{
  selfCopy = self;
  if (qword_1ED6F77D8 != -1)
  {
    self = swift_once();
  }

  v3 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  MEMORY[0x1EEE9AC00](self);
  v5 = v4;
  sub_1C0BEC178();

  *(&selfCopy->super.isa + OBJC_IVAR___AudioAnalyticsReporter_reporterID) = v8;
  v7.receiver = selfCopy;
  v7.super_class = AudioAnalyticsReporter;
  return [(AudioAnalyticsReporter *)&v7 init];
}

- (AudioAnalyticsReporter)initWithReporterID:(int64_t)d
{
  *(&self->super.isa + OBJC_IVAR___AudioAnalyticsReporter_reporterID) = d;
  v4.receiver = self;
  v4.super_class = AudioAnalyticsReporter;
  return [(AudioAnalyticsReporter *)&v4 init];
}

- (void)dealloc
{
  selfCopy = self;
  if (!sub_1C0BD3500(0x74696E696564, 0xE600000000000000))
  {
    goto LABEL_5;
  }

  if (qword_1ED6F77D8 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED6F78F0;
  v4 = OBJC_IVAR___AudioAnalyticsReporter_reporterID;
  swift_beginAccess();
  v5 = *(&selfCopy->super.isa + v4);
  v6 = *&v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C0BDAEF0;
  *(v8 + 24) = v7;
  aBlock[4] = sub_1C0BD3D50;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0BCA800;
  aBlock[3] = &block_descriptor_115;
  v9 = _Block_copy(aBlock);
  v10 = v3;

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
LABEL_5:
    v12.receiver = selfCopy;
    v12.super_class = AudioAnalyticsReporter;
    [(AudioAnalyticsReporter *)&v12 dealloc];
  }
}

- (void)setReporterID:(int64_t)d
{
  v5 = OBJC_IVAR___AudioAnalyticsReporter_reporterID;
  swift_beginAccess();
  *(&self->super.isa + v5) = d;
}

- (unsigned)serviceType
{
  v2 = qword_1ED6F77D8;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED6F78F0;
  reporterID = [(AudioAnalyticsReporter *)selfCopy reporterID];
  v6 = *&v4[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  MEMORY[0x1EEE9AC00](reporterID);
  type metadata accessor for AudioServiceType(0);
  sub_1C0BEC178();

  return v8;
}

- (NSDictionary)configuration
{
  v2 = qword_1ED6F77D8;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED6F78F0;
  reporterID = [(AudioAnalyticsReporter *)selfCopy reporterID];
  v6 = *&v4[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  MEMORY[0x1EEE9AC00](reporterID);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52888, &qword_1C0BED068);
  sub_1C0BEC178();

  v7 = sub_1C0BEC038();

  return v7;
}

- (void)setConfiguration:(id)configuration
{
  v4 = sub_1C0BEC058();
  selfCopy = self;
  AudioAnalyticsReporter.configuration.setter(v4);
}

- (AudioAnalyticsReporter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setServiceType:(unsigned __int16)type
{
  selfCopy = self;
  if (sub_1C0BD3500(0xD000000000000011, 0x80000001C0BEDAF0))
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v4 = qword_1ED6F78F0;
    reporterID = [(AudioAnalyticsReporter *)selfCopy reporterID];
    v6 = *&v4[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = type;
    *(v7 + 32) = reporterID;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1C0BDD2F0;
    *(v8 + 24) = v7;
    aBlock[4] = sub_1C0BD3D50;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C0BCA800;
    aBlock[3] = &block_descriptor_103;
    v9 = _Block_copy(aBlock);
    v10 = v4;

    dispatch_sync(v6, v9);
    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  else
  {
  }
}

+ (void)sendSessionlessMessage:(id)message category:(unsigned int)category type:(unsigned __int16)type
{
  v7 = sub_1C0BEC058();
  _sSo22AudioAnalyticsReporterC0aB0E22sendSessionlessMessage_8category4typeySDys11AnyHashableVypG_So0A13EventCategoryVSo0aK4TypeVtFZ_0(v7, category, type);
}

- (void)requestMessageForCategory:(unsigned int)category type:(unsigned __int16)type callback:(id)callback
{
  v8 = _Block_copy(callback);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  selfCopy = self;
  AudioAnalyticsReporter.requestMessage(for:type:callback:)(category, type, sub_1C0BDD278, v9);
}

@end
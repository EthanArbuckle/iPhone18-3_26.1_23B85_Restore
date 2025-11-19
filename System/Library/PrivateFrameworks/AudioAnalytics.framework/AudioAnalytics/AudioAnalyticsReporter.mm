@interface AudioAnalyticsReporter
+ (void)sendSessionlessMessage:(id)a3 category:(unsigned int)a4 type:(unsigned __int16)a5;
- (AudioAnalyticsReporter)init;
- (AudioAnalyticsReporter)initWithNewReporterID;
- (AudioAnalyticsReporter)initWithReporterID:(int64_t)a3;
- (NSDictionary)configuration;
- (int64_t)reporterID;
- (unsigned)serviceType;
- (void)dealloc;
- (void)requestMessageForCategory:(unsigned int)a3 type:(unsigned __int16)a4 callback:(id)a5;
- (void)sendMessage:(id)a3 category:(unsigned int)a4 type:(unsigned __int16)a5;
- (void)setConfiguration:(id)a3;
- (void)setReporterID:(int64_t)a3;
- (void)setServiceType:(unsigned __int16)a3;
- (void)start;
- (void)stop;
@end

@implementation AudioAnalyticsReporter

- (void)start
{
  v9 = self;
  if (sub_1C0BD3500(0x29287472617473, 0xE700000000000000))
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED6F78F0;
    v3 = [(AudioAnalyticsReporter *)v9 reporterID];
    v4 = *&v2[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = v3;
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

- (void)sendMessage:(id)a3 category:(unsigned int)a4 type:(unsigned __int16)a5
{
  v8 = sub_1C0BEC058();
  v9 = self;
  AudioAnalyticsReporter.sendMessage(_:category:type:)(v8, a4, a5);
}

- (int64_t)reporterID
{
  v3 = OBJC_IVAR___AudioAnalyticsReporter_reporterID;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)stop
{
  v9 = self;
  if (sub_1C0BD3500(0x2928706F7473, 0xE600000000000000))
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED6F78F0;
    v3 = [(AudioAnalyticsReporter *)v9 reporterID];
    v4 = *&v2[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = v3;
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
  v2 = self;
  if (qword_1ED6F77D8 != -1)
  {
    self = swift_once();
  }

  v3 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  MEMORY[0x1EEE9AC00](self);
  v5 = v4;
  sub_1C0BEC178();

  *(&v2->super.isa + OBJC_IVAR___AudioAnalyticsReporter_reporterID) = v8;
  v7.receiver = v2;
  v7.super_class = AudioAnalyticsReporter;
  return [(AudioAnalyticsReporter *)&v7 init];
}

- (AudioAnalyticsReporter)initWithReporterID:(int64_t)a3
{
  *(&self->super.isa + OBJC_IVAR___AudioAnalyticsReporter_reporterID) = a3;
  v4.receiver = self;
  v4.super_class = AudioAnalyticsReporter;
  return [(AudioAnalyticsReporter *)&v4 init];
}

- (void)dealloc
{
  v2 = self;
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
  v5 = *(&v2->super.isa + v4);
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
    v12.receiver = v2;
    v12.super_class = AudioAnalyticsReporter;
    [(AudioAnalyticsReporter *)&v12 dealloc];
  }
}

- (void)setReporterID:(int64_t)a3
{
  v5 = OBJC_IVAR___AudioAnalyticsReporter_reporterID;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (unsigned)serviceType
{
  v2 = qword_1ED6F77D8;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED6F78F0;
  v5 = [(AudioAnalyticsReporter *)v3 reporterID];
  v6 = *&v4[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  MEMORY[0x1EEE9AC00](v5);
  type metadata accessor for AudioServiceType(0);
  sub_1C0BEC178();

  return v8;
}

- (NSDictionary)configuration
{
  v2 = qword_1ED6F77D8;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED6F78F0;
  v5 = [(AudioAnalyticsReporter *)v3 reporterID];
  v6 = *&v4[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  MEMORY[0x1EEE9AC00](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52888, &qword_1C0BED068);
  sub_1C0BEC178();

  v7 = sub_1C0BEC038();

  return v7;
}

- (void)setConfiguration:(id)a3
{
  v4 = sub_1C0BEC058();
  v5 = self;
  AudioAnalyticsReporter.configuration.setter(v4);
}

- (AudioAnalyticsReporter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setServiceType:(unsigned __int16)a3
{
  v11 = self;
  if (sub_1C0BD3500(0xD000000000000011, 0x80000001C0BEDAF0))
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v4 = qword_1ED6F78F0;
    v5 = [(AudioAnalyticsReporter *)v11 reporterID];
    v6 = *&v4[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = a3;
    *(v7 + 32) = v5;
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

+ (void)sendSessionlessMessage:(id)a3 category:(unsigned int)a4 type:(unsigned __int16)a5
{
  v7 = sub_1C0BEC058();
  _sSo22AudioAnalyticsReporterC0aB0E22sendSessionlessMessage_8category4typeySDys11AnyHashableVypG_So0A13EventCategoryVSo0aK4TypeVtFZ_0(v7, a4, a5);
}

- (void)requestMessageForCategory:(unsigned int)a3 type:(unsigned __int16)a4 callback:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = self;
  AudioAnalyticsReporter.requestMessage(for:type:callback:)(a3, a4, sub_1C0BDD278, v9);
}

@end
@interface ServerClient
+ (_TtC14AudioAnalytics12ServerClient)shared;
+ (void)createSharedClientWithEndpoint:(id)endpoint;
+ (void)setShared:(id)shared;
- (_TtC14AudioAnalytics12ServerClient)init;
- (_TtC14AudioAnalytics12ServerClient)initWithEndpoint:(id)endpoint injectedServerProtocol:(id)protocol;
- (id)getConfigurationForReporterID:(int64_t)d;
- (int64_t)createReportingSession;
- (int64_t)createReportingSessionFromSessionID:(unsigned int)d;
- (unsigned)getServiceTypeForReporterID:(int64_t)d;
- (void)destroyReporterID:(int64_t)d;
- (void)requestMessageForReporterID:(int64_t)d category:(unsigned int)category type:(unsigned __int16)type callback:(id)callback;
- (void)sendMessageForReporterID:(int64_t)d message:(id)message category:(unsigned int)category type:(unsigned __int16)type;
- (void)sendSingleMessage:(id)message category:(unsigned int)category type:(unsigned __int16)type;
- (void)setConfiguration:(id)configuration reporterID:(int64_t)d;
- (void)setServiceType:(unsigned __int16)type reporterID:(int64_t)d;
- (void)startWithReporterID:(int64_t)d;
- (void)stopWithReporterID:(int64_t)d;
@end

@implementation ServerClient

+ (_TtC14AudioAnalytics12ServerClient)shared
{
  if (qword_1ED6F77D8 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED6F78F0;

  return v3;
}

+ (void)setShared:(id)shared
{
  v3 = qword_1ED6F77D8;
  sharedCopy = shared;
  if (v3 != -1)
  {
    v5 = sharedCopy;
    swift_once();
    sharedCopy = v5;
  }

  qword_1ED6F78F0 = sharedCopy;

  MEMORY[0x1EEE66BB8]();
}

- (_TtC14AudioAnalytics12ServerClient)initWithEndpoint:(id)endpoint injectedServerProtocol:(id)protocol
{
  endpointCopy = endpoint;
  swift_unknownObjectRetain();
  return sub_1C0BD0BE4(endpoint, protocol);
}

+ (void)createSharedClientWithEndpoint:(id)endpoint
{
  v3 = qword_1ED6F77D8;
  endpointCopy = endpoint;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = objc_allocWithZone(type metadata accessor for ServerClient(0));
  v6 = endpointCopy;
  v7 = sub_1C0BD0BE4(endpointCopy, 0);
  v8 = qword_1ED6F78F0;
  qword_1ED6F78F0 = v7;
}

- (int64_t)createReportingSession
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  selfCopy = self;
  sub_1C0BEC178();

  return v5;
}

- (int64_t)createReportingSessionFromSessionID:(unsigned int)d
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  selfCopy = self;
  sub_1C0BEC178();

  return v6;
}

- (void)startWithReporterID:(int64_t)d
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = d;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C0BCD240;
  *(v7 + 24) = v6;
  v10[4] = sub_1C0BD3D50;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1C0BCA800;
  v10[3] = &block_descriptor_122;
  v8 = _Block_copy(v10);
  selfCopy = self;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

- (void)stopWithReporterID:(int64_t)d
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = d;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C0BD4344;
  *(v7 + 24) = v6;
  v10[4] = sub_1C0BD3D50;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1C0BCA800;
  v10[3] = &block_descriptor_112;
  v8 = _Block_copy(v10);
  selfCopy = self;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

- (unsigned)getServiceTypeForReporterID:(int64_t)d
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  type metadata accessor for AudioServiceType(0);
  selfCopy = self;
  sub_1C0BEC178();

  return v7;
}

- (void)setServiceType:(unsigned __int16)type reporterID:(int64_t)d
{
  v7 = *(&self->super.isa + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  v8 = swift_allocObject();
  *(v8 + 16) = self;
  *(v8 + 24) = type;
  *(v8 + 32) = d;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C0BD050C;
  *(v9 + 24) = v8;
  v12[4] = sub_1C0BD3D50;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C0BCA800;
  v12[3] = &block_descriptor_102;
  v10 = _Block_copy(v12);
  selfCopy = self;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

- (id)getConfigurationForReporterID:(int64_t)d
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52888, &qword_1C0BED068);
  sub_1C0BEC178();

  v5 = sub_1C0BEC038();

  return v5;
}

- (void)setConfiguration:(id)configuration reporterID:(int64_t)d
{
  v6 = sub_1C0BEC058();
  selfCopy = self;
  sub_1C0BE4208(v6, d);
}

- (void)sendMessageForReporterID:(int64_t)d message:(id)message category:(unsigned int)category type:(unsigned __int16)type
{
  v10 = sub_1C0BEC058();
  selfCopy = self;
  sub_1C0BE43FC(d, v10, category, type);
}

- (void)sendSingleMessage:(id)message category:(unsigned int)category type:(unsigned __int16)type
{
  v8 = sub_1C0BEC058();
  selfCopy = self;
  sub_1C0BE461C(v8, category, type);
}

- (void)destroyReporterID:(int64_t)d
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = d;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C0BE79C8;
  *(v7 + 24) = v6;
  v10[4] = sub_1C0BCAF28;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1C0BCA800;
  v10[3] = &block_descriptor_92_0;
  v8 = _Block_copy(v10);
  selfCopy = self;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

- (void)requestMessageForReporterID:(int64_t)d category:(unsigned int)category type:(unsigned __int16)type callback:(id)callback
{
  v10 = _Block_copy(callback);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  selfCopy = self;
  sub_1C0BE49B4(d, category, type, sub_1C0BDD278, v11);
}

- (_TtC14AudioAnalytics12ServerClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
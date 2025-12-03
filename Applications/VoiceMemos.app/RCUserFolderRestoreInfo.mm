@interface RCUserFolderRestoreInfo
- (NSArray)recordingUUIDs;
- (NSString)name;
- (_TtC10VoiceMemos23RCUserFolderRestoreInfo)init;
- (_TtC10VoiceMemos23RCUserFolderRestoreInfo)initWithName:(id)name rank:(int64_t)rank recordingUUIDs:(id)ds;
- (void)setName:(id)name;
- (void)setRecordingUUIDs:(id)ds;
@end

@implementation RCUserFolderRestoreInfo

- (NSString)name
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setName:(id)name
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC10VoiceMemos23RCUserFolderRestoreInfo_name);
  *v5 = v4;
  v5[1] = v6;
}

- (NSArray)recordingUUIDs
{

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setRecordingUUIDs:(id)ds
{
  *(self + OBJC_IVAR____TtC10VoiceMemos23RCUserFolderRestoreInfo_recordingUUIDs) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (_TtC10VoiceMemos23RCUserFolderRestoreInfo)initWithName:(id)name rank:(int64_t)rank recordingUUIDs:(id)ds
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = (self + OBJC_IVAR____TtC10VoiceMemos23RCUserFolderRestoreInfo_name);
  *v11 = v7;
  v11[1] = v9;
  *(self + OBJC_IVAR____TtC10VoiceMemos23RCUserFolderRestoreInfo_rank) = rank;
  *(self + OBJC_IVAR____TtC10VoiceMemos23RCUserFolderRestoreInfo_recordingUUIDs) = v10;
  v13.receiver = self;
  v13.super_class = type metadata accessor for RCUserFolderRestoreInfo();
  return [(RCUserFolderRestoreInfo *)&v13 init];
}

- (_TtC10VoiceMemos23RCUserFolderRestoreInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
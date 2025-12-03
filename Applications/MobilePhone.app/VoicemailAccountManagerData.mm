@interface VoicemailAccountManagerData
+ (id)empty;
- (BOOL)isEqual:(id)equal;
- (NSArray)accounts;
- (NSString)description;
- (_TtC11MobilePhone27VoicemailAccountManagerData)init;
- (_TtC11MobilePhone27VoicemailAccountManagerData)initWithAnyAccountSubscribed:(BOOL)subscribed online:(BOOL)online isMessageWaiting:(BOOL)waiting storageUsage:(unint64_t)usage transcriptionEnabled:(BOOL)enabled transcriptionProgress:(id)progress accounts:(id)accounts;
@end

@implementation VoicemailAccountManagerData

- (NSArray)accounts
{
  type metadata accessor for VoicemailAccount();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (id)empty
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v3 = objc_allocWithZone(ObjCClassMetadata);
  v3[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_anyAccountSubscribed] = 1;
  v3[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_online] = 1;
  v3[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_isMessageWaiting] = 0;
  *&v3[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_storageUsage] = 0;
  v3[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_transcriptionEnabled] = 1;
  *&v3[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_transcriptionProgress] = 0;
  *&v3[OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_accounts] = _swiftEmptyArrayStorage;
  v6.receiver = v3;
  v6.super_class = ObjCClassMetadata;
  v4 = objc_msgSendSuper2(&v6, "init");

  return v4;
}

- (_TtC11MobilePhone27VoicemailAccountManagerData)initWithAnyAccountSubscribed:(BOOL)subscribed online:(BOOL)online isMessageWaiting:(BOOL)waiting storageUsage:(unint64_t)usage transcriptionEnabled:(BOOL)enabled transcriptionProgress:(id)progress accounts:(id)accounts
{
  ObjectType = swift_getObjectType();
  type metadata accessor for VoicemailAccount();
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_anyAccountSubscribed) = subscribed;
  *(self + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_online) = online;
  *(self + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_isMessageWaiting) = waiting;
  *(self + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_storageUsage) = usage;
  *(self + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_transcriptionEnabled) = enabled;
  *(self + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_transcriptionProgress) = progress;
  *(self + OBJC_IVAR____TtC11MobilePhone27VoicemailAccountManagerData_accounts) = v17;
  v20.receiver = self;
  v20.super_class = ObjectType;
  progressCopy = progress;
  return [(VoicemailAccountManagerData *)&v20 init];
}

- (_TtC11MobilePhone27VoicemailAccountManagerData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  VoicemailAccountManagerData.description.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = VoicemailAccountManagerData.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

@end
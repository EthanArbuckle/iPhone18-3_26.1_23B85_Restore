@interface VoicemailAccountManagerData
+ (id)empty;
- (BOOL)isEqual:(id)equal;
- (NSArray)accounts;
- (NSString)description;
- (_TtC9IntentsUI27VoicemailAccountManagerData)init;
- (_TtC9IntentsUI27VoicemailAccountManagerData)initWithAnyAccountSubscribed:(BOOL)subscribed online:(BOOL)online isMessageWaiting:(BOOL)waiting storageUsage:(unint64_t)usage transcriptionEnabled:(BOOL)enabled transcriptionProgress:(id)progress accounts:(id)accounts;
@end

@implementation VoicemailAccountManagerData

- (NSArray)accounts
{
  type metadata accessor for VoicemailAccount();

  v2.super.isa = sub_10007B518().super.isa;

  return v2.super.isa;
}

+ (id)empty
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v3 = objc_allocWithZone(ObjCClassMetadata);
  v3[OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_anyAccountSubscribed] = 1;
  v3[OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_online] = 1;
  v3[OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_isMessageWaiting] = 0;
  *&v3[OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_storageUsage] = 0;
  v3[OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_transcriptionEnabled] = 1;
  *&v3[OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_transcriptionProgress] = 0;
  *&v3[OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_accounts] = _swiftEmptyArrayStorage;
  v6.receiver = v3;
  v6.super_class = ObjCClassMetadata;
  v4 = objc_msgSendSuper2(&v6, "init");

  return v4;
}

- (_TtC9IntentsUI27VoicemailAccountManagerData)initWithAnyAccountSubscribed:(BOOL)subscribed online:(BOOL)online isMessageWaiting:(BOOL)waiting storageUsage:(unint64_t)usage transcriptionEnabled:(BOOL)enabled transcriptionProgress:(id)progress accounts:(id)accounts
{
  ObjectType = swift_getObjectType();
  type metadata accessor for VoicemailAccount();
  v17 = sub_10007B528();
  *(self + OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_anyAccountSubscribed) = subscribed;
  *(self + OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_online) = online;
  *(self + OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_isMessageWaiting) = waiting;
  *(self + OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_storageUsage) = usage;
  *(self + OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_transcriptionEnabled) = enabled;
  *(self + OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_transcriptionProgress) = progress;
  *(self + OBJC_IVAR____TtC9IntentsUI27VoicemailAccountManagerData_accounts) = v17;
  v20.receiver = self;
  v20.super_class = ObjectType;
  progressCopy = progress;
  return [(VoicemailAccountManagerData *)&v20 init];
}

- (_TtC9IntentsUI27VoicemailAccountManagerData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  sub_100074180();

  v3 = sub_10007B448();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_10007B798();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_100074830(v8);

  sub_10005EDC8(v8);
  return v6 & 1;
}

@end
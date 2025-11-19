@interface VoicemailAccountManagerData
+ (id)empty;
- (BOOL)isEqual:(id)a3;
- (NSArray)accounts;
- (NSString)description;
- (_TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData)init;
- (_TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData)initWithAnyAccountSubscribed:(BOOL)a3 online:(BOOL)a4 isMessageWaiting:(BOOL)a5 storageUsage:(unint64_t)a6 transcriptionEnabled:(BOOL)a7 transcriptionProgress:(id)a8 accounts:(id)a9;
@end

@implementation VoicemailAccountManagerData

- (NSArray)accounts
{
  type metadata accessor for VoicemailAccount();

  v2.super.isa = sub_1000608BC().super.isa;

  return v2.super.isa;
}

+ (id)empty
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v3 = objc_allocWithZone(ObjCClassMetadata);
  v3[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_anyAccountSubscribed] = 1;
  v3[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_online] = 1;
  v3[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_isMessageWaiting] = 0;
  *&v3[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_storageUsage] = 0;
  v3[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_transcriptionEnabled] = 1;
  *&v3[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_transcriptionProgress] = 0;
  *&v3[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_accounts] = _swiftEmptyArrayStorage;
  v6.receiver = v3;
  v6.super_class = ObjCClassMetadata;
  v4 = objc_msgSendSuper2(&v6, "init");

  return v4;
}

- (_TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData)initWithAnyAccountSubscribed:(BOOL)a3 online:(BOOL)a4 isMessageWaiting:(BOOL)a5 storageUsage:(unint64_t)a6 transcriptionEnabled:(BOOL)a7 transcriptionProgress:(id)a8 accounts:(id)a9
{
  ObjectType = swift_getObjectType();
  type metadata accessor for VoicemailAccount();
  v17 = sub_1000608CC();
  *(self + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_anyAccountSubscribed) = a3;
  *(self + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_online) = a4;
  *(self + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_isMessageWaiting) = a5;
  *(self + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_storageUsage) = a6;
  *(self + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_transcriptionEnabled) = a7;
  *(self + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_transcriptionProgress) = a8;
  *(self + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_accounts) = v17;
  v20.receiver = self;
  v20.super_class = ObjectType;
  v18 = a8;
  return [(VoicemailAccountManagerData *)&v20 init];
}

- (_TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  sub_100052D44();

  v3 = sub_1000607EC();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_100060B0C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1000533F4(v8);

  sub_10001E334(v8);
  return v6 & 1;
}

@end
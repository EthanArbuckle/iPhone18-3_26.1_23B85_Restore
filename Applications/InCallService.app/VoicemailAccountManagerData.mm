@interface VoicemailAccountManagerData
+ (id)empty;
- (BOOL)isEqual:(id)a3;
- (NSArray)accounts;
- (NSProgress)transcriptionProgress;
- (NSString)description;
- (_TtC13InCallService27VoicemailAccountManagerData)initWithAnyAccountSubscribed:(BOOL)a3 online:(BOOL)a4 isMessageWaiting:(BOOL)a5 storageUsage:(unint64_t)a6 transcriptionEnabled:(BOOL)a7 transcriptionProgress:(id)a8 accounts:(id)a9;
@end

@implementation VoicemailAccountManagerData

- (NSProgress)transcriptionProgress
{
  v2 = sub_1002292A8();

  return v2;
}

- (NSArray)accounts
{
  sub_100229334();
  type metadata accessor for VoicemailAccount();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (id)empty
{
  swift_getObjCClassMetadata();
  v2 = sub_100229344();

  return v2;
}

- (_TtC13InCallService27VoicemailAccountManagerData)initWithAnyAccountSubscribed:(BOOL)a3 online:(BOOL)a4 isMessageWaiting:(BOOL)a5 storageUsage:(unint64_t)a6 transcriptionEnabled:(BOOL)a7 transcriptionProgress:(id)a8 accounts:(id)a9
{
  type metadata accessor for VoicemailAccount();
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a8;
  return sub_1002293C8(a3, a4, a5, a6, a7, a8, v15);
}

- (NSString)description
{
  v2 = self;
  sub_10022963C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_10022A0D8(v8);

  sub_10015E258(v8);
  return v6 & 1;
}

@end
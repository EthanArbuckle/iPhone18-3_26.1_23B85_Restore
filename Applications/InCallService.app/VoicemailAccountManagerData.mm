@interface VoicemailAccountManagerData
+ (id)empty;
- (BOOL)isEqual:(id)equal;
- (NSArray)accounts;
- (NSProgress)transcriptionProgress;
- (NSString)description;
- (_TtC13InCallService27VoicemailAccountManagerData)initWithAnyAccountSubscribed:(BOOL)subscribed online:(BOOL)online isMessageWaiting:(BOOL)waiting storageUsage:(unint64_t)usage transcriptionEnabled:(BOOL)enabled transcriptionProgress:(id)progress accounts:(id)accounts;
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

- (_TtC13InCallService27VoicemailAccountManagerData)initWithAnyAccountSubscribed:(BOOL)subscribed online:(BOOL)online isMessageWaiting:(BOOL)waiting storageUsage:(unint64_t)usage transcriptionEnabled:(BOOL)enabled transcriptionProgress:(id)progress accounts:(id)accounts
{
  type metadata accessor for VoicemailAccount();
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  progressCopy = progress;
  return sub_1002293C8(subscribed, online, waiting, usage, enabled, progress, v15);
}

- (NSString)description
{
  selfCopy = self;
  sub_10022963C();

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

  v6 = sub_10022A0D8(v8);

  sub_10015E258(v8);
  return v6 & 1;
}

@end
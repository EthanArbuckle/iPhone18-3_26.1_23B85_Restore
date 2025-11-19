@interface MPVoicemailAccountManagerUpdate
+ (NSArray)allCases;
- (BOOL)isEqual:(id)a3;
- (MPVoicemailAccountManagerUpdate)init;
- (NSString)description;
@end

@implementation MPVoicemailAccountManagerUpdate

+ (NSArray)allCases
{
  if (qword_100124058 != -1)
  {
    swift_once();
  }

  swift_getObjCClassMetadata();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
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

  v6 = sub_1000AEC38(v8);

  sub_1000A0E90(v8);
  return v6;
}

- (MPVoicemailAccountManagerUpdate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  sub_1000AFE18();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end
@interface MPVoicemailAccountManagerUpdate
+ (NSArray)allCases;
- (BOOL)isEqual:(id)equal;
- (MPVoicemailAccountManagerUpdate)init;
- (NSString)description;
@end

@implementation MPVoicemailAccountManagerUpdate

+ (NSArray)allCases
{
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  swift_getObjCClassMetadata();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
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

  v6 = VoicemailAccountManagerUpdate.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
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
  selfCopy = self;
  VoicemailAccountManagerUpdate.description.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end
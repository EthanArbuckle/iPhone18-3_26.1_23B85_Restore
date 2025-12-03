@interface CRLDataclassOwner
+ (id)dataclasses;
- (BOOL)performAction:(id)action forAccount:(id)account withChildren:(id)children forDataclass:(id)dataclass;
- (_TtC22FreeformDataclassOwner17CRLDataclassOwner)init;
@end

@implementation CRLDataclassOwner

- (_TtC22FreeformDataclassOwner17CRLDataclassOwner)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CRLDataclassOwner *)&v3 init];
}

+ (id)dataclasses
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18ACAccountDataclassaGMd, &_ss23_ContiguousArrayStorageCySo18ACAccountDataclassaGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_3A860;
  v3 = ACAccountDataclassFreeform;
  *(v2 + 32) = ACAccountDataclassFreeform;
  type metadata accessor for ACAccountDataclass(0);
  v4 = v3;
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (BOOL)performAction:(id)action forAccount:(id)account withChildren:(id)children forDataclass:(id)dataclass
{
  if (children)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  actionCopy = action;
  accountCopy = account;
  dataclassCopy = dataclass;
  selfCopy = self;
  v14 = specialized CRLDataclassOwner.perform(_:for:withChildren:forDataclass:)(action, account);

  return v14 & 1;
}

@end
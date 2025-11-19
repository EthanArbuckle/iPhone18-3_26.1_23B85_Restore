@interface CRLDataclassOwner
+ (id)dataclasses;
- (BOOL)performAction:(id)a3 forAccount:(id)a4 withChildren:(id)a5 forDataclass:(id)a6;
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

- (BOOL)performAction:(id)a3 forAccount:(id)a4 withChildren:(id)a5 forDataclass:(id)a6
{
  if (a5)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = self;
  v14 = specialized CRLDataclassOwner.perform(_:for:withChildren:forDataclass:)(a3, a4);

  return v14 & 1;
}

@end
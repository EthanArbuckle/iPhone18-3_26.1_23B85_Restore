@interface FMContactsUtilities
+ (id)contactFor:(id)a3;
- (_TtC6FindMy19FMContactsUtilities)init;
@end

@implementation FMContactsUtilities

+ (id)contactFor:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = sub_1004769D8(v3, v5, 0, 0, 0, 0, 0);
  LODWORD(v3) = v7;

  if ((v3 & 0x10000) != 0)
  {

    v6 = 0;
  }

  return v6;
}

- (_TtC6FindMy19FMContactsUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMContactsUtilities();
  return [(FMContactsUtilities *)&v3 init];
}

@end
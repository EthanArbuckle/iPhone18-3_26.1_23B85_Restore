@interface SDDataclassOwner
+ (id)dataclasses;
- (BOOL)performAction:(id)a3 forAccount:(id)a4 withChildren:(id)a5 forDataclass:(id)a6;
- (SDDataclassOwner)init;
@end

@implementation SDDataclassOwner

- (SDDataclassOwner)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SDDataclassOwner *)&v3 init];
}

+ (id)dataclasses
{
  sub_1574();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2EC0;
  v3 = ACAccountDataclassStocks;
  *(v2 + 32) = ACAccountDataclassStocks;
  type metadata accessor for Dataclass(0);
  v4 = v3;
  v5.super.isa = sub_2300().super.isa;

  return v5.super.isa;
}

- (BOOL)performAction:(id)a3 forAccount:(id)a4 withChildren:(id)a5 forDataclass:(id)a6
{
  if (a5)
  {
    sub_2310();
  }

  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = self;
  sub_1F58(a3);
  v15 = v14;

  return v15 & 1;
}

@end
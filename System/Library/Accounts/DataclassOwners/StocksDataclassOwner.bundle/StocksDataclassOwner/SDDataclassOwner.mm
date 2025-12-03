@interface SDDataclassOwner
+ (id)dataclasses;
- (BOOL)performAction:(id)action forAccount:(id)account withChildren:(id)children forDataclass:(id)dataclass;
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

- (BOOL)performAction:(id)action forAccount:(id)account withChildren:(id)children forDataclass:(id)dataclass
{
  if (children)
  {
    sub_2310();
  }

  actionCopy = action;
  accountCopy = account;
  dataclassCopy = dataclass;
  selfCopy = self;
  sub_1F58(action);
  v15 = v14;

  return v15 & 1;
}

@end
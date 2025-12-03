@interface PassbookDataclassOwner
+ (id)dataclasses;
- (BOOL)performAction:(id)action forAccount:(id)account withChildren:(id)children forDataclass:(id)dataclass;
- (_TtC28PassbookDataclassOwnerPlugin22PassbookDataclassOwner)init;
- (id)actionsForDeletingAccount:(id)account forDataclass:(id)dataclass;
@end

@implementation PassbookDataclassOwner

+ (id)dataclasses
{
  sub_2398(&qword_8428, "\a");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2B90;
  v3 = ACAccountDataclassShoebox;
  *(v2 + 32) = ACAccountDataclassShoebox;
  type metadata accessor for Dataclass();
  v4 = v3;
  v5.super.isa = sub_2744().super.isa;

  return v5.super.isa;
}

- (id)actionsForDeletingAccount:(id)account forDataclass:(id)dataclass
{
  if (sub_1AA4())
  {
    v4.super.isa = sub_2744().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (BOOL)performAction:(id)action forAccount:(id)account withChildren:(id)children forDataclass:(id)dataclass
{
  if (children)
  {
    sub_2754();
  }

  actionCopy = action;
  accountCopy = account;
  dataclassCopy = dataclass;
  selfCopy = self;
  v14 = sub_1F5C(action);

  return v14 & 1;
}

- (_TtC28PassbookDataclassOwnerPlugin22PassbookDataclassOwner)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PassbookDataclassOwner *)&v3 init];
}

@end
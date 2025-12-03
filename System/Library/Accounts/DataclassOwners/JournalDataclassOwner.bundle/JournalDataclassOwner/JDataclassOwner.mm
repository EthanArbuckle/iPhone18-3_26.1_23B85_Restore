@interface JDataclassOwner
+ (id)dataclasses;
- (BOOL)performAction:(id)action forAccount:(id)account withChildren:(id)children forDataclass:(id)dataclass;
- (JDataclassOwner)init;
@end

@implementation JDataclassOwner

+ (id)dataclasses
{
  sub_3610(&unk_1CC70, &unk_12748);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_12630;
  v3 = ACAccountDataclassMoments;
  *(v2 + 32) = ACAccountDataclassMoments;
  type metadata accessor for Dataclass(0);
  v4 = v3;
  v5.super.isa = sub_114F0().super.isa;

  return v5.super.isa;
}

- (BOOL)performAction:(id)action forAccount:(id)account withChildren:(id)children forDataclass:(id)dataclass
{
  if (children)
  {
    sub_11500();
  }

  actionCopy = action;
  accountCopy = account;
  dataclassCopy = dataclass;
  selfCopy = self;
  sub_6430(action, account, dataclass);
  v15 = v14;

  return v15 & 1;
}

- (JDataclassOwner)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JDataclassOwner *)&v3 init];
}

@end
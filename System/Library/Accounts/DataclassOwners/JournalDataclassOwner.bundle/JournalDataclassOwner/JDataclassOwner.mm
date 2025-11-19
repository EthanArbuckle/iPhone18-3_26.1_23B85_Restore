@interface JDataclassOwner
+ (id)dataclasses;
- (BOOL)performAction:(id)a3 forAccount:(id)a4 withChildren:(id)a5 forDataclass:(id)a6;
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

- (BOOL)performAction:(id)a3 forAccount:(id)a4 withChildren:(id)a5 forDataclass:(id)a6
{
  if (a5)
  {
    sub_11500();
  }

  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = self;
  sub_6430(a3, a4, a6);
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
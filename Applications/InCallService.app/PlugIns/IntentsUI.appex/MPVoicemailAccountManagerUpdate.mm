@interface MPVoicemailAccountManagerUpdate
+ (NSArray)allCases;
- (BOOL)isEqual:(id)a3;
- (MPVoicemailAccountManagerUpdate)init;
- (NSString)description;
@end

@implementation MPVoicemailAccountManagerUpdate

+ (NSArray)allCases
{
  if (qword_1000C4E00 != -1)
  {
    swift_once();
  }

  swift_getObjCClassMetadata();
  v2.super.isa = sub_10007B518().super.isa;

  return v2.super.isa;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_10007B798();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_10005D438(v8);

  sub_10005EDC8(v8);
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
  sub_10005E708();

  v3 = sub_10007B448();

  return v3;
}

@end
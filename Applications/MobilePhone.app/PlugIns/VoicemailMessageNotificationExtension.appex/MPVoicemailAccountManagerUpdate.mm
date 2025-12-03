@interface MPVoicemailAccountManagerUpdate
+ (NSArray)allCases;
- (BOOL)isEqual:(id)equal;
- (MPVoicemailAccountManagerUpdate)init;
- (NSString)description;
@end

@implementation MPVoicemailAccountManagerUpdate

+ (NSArray)allCases
{
  if (qword_1000993A8 != -1)
  {
    swift_once();
  }

  swift_getObjCClassMetadata();
  v2.super.isa = sub_1000608BC().super.isa;

  return v2.super.isa;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_100060B0C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_100020EDC(v8);

  sub_10001E334(v8);
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
  sub_1000221AC();

  v3 = sub_1000607EC();

  return v3;
}

@end
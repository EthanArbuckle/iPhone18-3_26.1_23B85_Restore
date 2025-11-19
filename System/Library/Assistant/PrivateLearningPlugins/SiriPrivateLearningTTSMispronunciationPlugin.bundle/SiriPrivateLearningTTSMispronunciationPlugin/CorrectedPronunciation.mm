@interface CorrectedPronunciation
- (BOOL)isEqual:(id)a3;
- (CorrectedPronunciation)init;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CorrectedPronunciation

- (NSString)description
{
  v2 = self;
  sub_4710();

  v3 = sub_34380();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_4A60(v4);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_34740();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_4C30(v8);

  sub_76CC(v8);
  return v6 & 1;
}

- (CorrectedPronunciation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
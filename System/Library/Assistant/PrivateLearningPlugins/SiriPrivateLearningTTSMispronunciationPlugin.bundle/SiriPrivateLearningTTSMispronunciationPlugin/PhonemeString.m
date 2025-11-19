@interface PhonemeString
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PhonemeString)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PhonemeString

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_14BF8(v4);
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

  v6 = sub_151C0(v8);

  sub_76CC(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_15378();

  return v3;
}

- (NSString)description
{
  v2 = self;
  sub_154E0();

  v3 = sub_34380();

  return v3;
}

- (PhonemeString)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
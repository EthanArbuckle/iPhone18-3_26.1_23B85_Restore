@interface PhonemeString
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PhonemeString)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PhonemeString

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_14BF8(coderCopy);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_34740();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_151C0(v8);

  sub_76CC(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_15378();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
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
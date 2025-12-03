@interface CorrectedPronunciation
- (BOOL)isEqual:(id)equal;
- (CorrectedPronunciation)init;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CorrectedPronunciation

- (NSString)description
{
  selfCopy = self;
  sub_4710();

  v3 = sub_34380();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_4A60(coderCopy);
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
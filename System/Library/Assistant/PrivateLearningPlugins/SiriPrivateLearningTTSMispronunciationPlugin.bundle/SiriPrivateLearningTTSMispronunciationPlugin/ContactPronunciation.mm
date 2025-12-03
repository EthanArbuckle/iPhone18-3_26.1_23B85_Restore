@interface ContactPronunciation
- (BOOL)isEqual:(id)equal;
- (ContactPronunciation)init;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ContactPronunciation

- (NSString)description
{
  selfCopy = self;
  sub_2651C();

  v3 = sub_34380();

  return v3;
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

  v6 = sub_2663C(v8);

  sub_A948(v8, &qword_4EA18, &qword_38170);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_267D0(coderCopy);
}

- (ContactPronunciation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface ContactPronunciation
- (BOOL)isEqual:(id)a3;
- (ContactPronunciation)init;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ContactPronunciation

- (NSString)description
{
  v2 = self;
  sub_2651C();

  v3 = sub_34380();

  return v3;
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

  v6 = sub_2663C(v8);

  sub_A948(v8, &qword_4EA18, &qword_38170);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_267D0(v4);
}

- (ContactPronunciation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
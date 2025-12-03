@interface ResolvedContentMetrics
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC18ActivityUIServices22ResolvedContentMetrics)init;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation ResolvedContentMetrics

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18E65FB60();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_18E641560(v8);

  sub_18E61D6A8(v8);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_18E641780();

  v3 = sub_18E65F8F0();

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_18E641D98(coder);
  swift_unknownObjectRelease();
}

- (_TtC18ActivityUIServices22ResolvedContentMetrics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
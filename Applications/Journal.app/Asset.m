@interface Asset
- (BOOL)isEqual:(id)a3;
- (_TtC7Journal5Asset)init;
- (int64_t)hash;
@end

@implementation Asset

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_100284A94(v8);

  sub_100004F84(v8, &qword_100AD13D0);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1002853DC();

  return v3;
}

- (_TtC7Journal5Asset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
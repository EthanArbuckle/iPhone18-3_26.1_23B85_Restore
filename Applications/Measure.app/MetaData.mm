@interface MetaData
- (NSString)description;
- (_TtC7Measure8MetaData)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MetaData

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10008BBC8(v4);
}

- (NSString)description
{
  v2 = self;
  sub_10008B680();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC7Measure8MetaData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
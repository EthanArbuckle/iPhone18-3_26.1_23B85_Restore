@interface MetaData
- (NSString)description;
- (_TtC7Measure8MetaData)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MetaData

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_10008BBC8(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
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
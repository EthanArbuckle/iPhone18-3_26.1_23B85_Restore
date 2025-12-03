@interface InsightQueryRequest
- (_TtC9EnergyKit19InsightQueryRequest)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation InsightQueryRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v5 = MEMORY[0x2383ED5D0]();
  sub_238255890(coderCopy, selfCopy);
  objc_autoreleasePoolPop(v5);
}

- (_TtC9EnergyKit19InsightQueryRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface FrameEvent
- (NSString)description;
- (_TtC7Measure10FrameEvent)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FrameEvent

- (NSString)description
{
  selfCopy = self;
  sub_10015AD68();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_10015B274(coderCopy);
}

- (_TtC7Measure10FrameEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
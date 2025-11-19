@interface FrameEvent
- (NSString)description;
- (_TtC7Measure10FrameEvent)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FrameEvent

- (NSString)description
{
  v2 = self;
  sub_10015AD68();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10015B274(v4);
}

- (_TtC7Measure10FrameEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
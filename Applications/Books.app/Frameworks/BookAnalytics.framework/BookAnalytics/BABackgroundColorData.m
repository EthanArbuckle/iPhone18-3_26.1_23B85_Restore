@interface BABackgroundColorData
- (BABackgroundColorData)init;
- (BABackgroundColorData)initWithBackgroundColor:(int64_t)a3;
@end

@implementation BABackgroundColorData

- (BABackgroundColorData)initWithBackgroundColor:(int64_t)a3
{
  *(&self->super.isa + OBJC_IVAR___BABackgroundColorData_backgroundColor) = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for BridgedBackgroundColorData();
  return [(BABackgroundColorData *)&v4 init];
}

- (BABackgroundColorData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface BABackgroundColorData
- (BABackgroundColorData)init;
- (BABackgroundColorData)initWithBackgroundColor:(int64_t)color;
@end

@implementation BABackgroundColorData

- (BABackgroundColorData)initWithBackgroundColor:(int64_t)color
{
  *(&self->super.isa + OBJC_IVAR___BABackgroundColorData_backgroundColor) = color;
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
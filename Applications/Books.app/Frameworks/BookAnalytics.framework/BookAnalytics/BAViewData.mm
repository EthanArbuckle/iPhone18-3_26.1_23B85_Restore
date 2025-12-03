@interface BAViewData
- (BAViewData)init;
- (BAViewData)initWithType:(int64_t)type action:(int64_t)action location:(int64_t)location;
@end

@implementation BAViewData

- (BAViewData)initWithType:(int64_t)type action:(int64_t)action location:(int64_t)location
{
  *(&self->super.isa + OBJC_IVAR___BAViewData_type) = type;
  *(&self->super.isa + OBJC_IVAR___BAViewData_action) = action;
  *(&self->super.isa + OBJC_IVAR___BAViewData_location) = location;
  v6.receiver = self;
  v6.super_class = type metadata accessor for BridgedViewData();
  return [(BAViewData *)&v6 init];
}

- (BAViewData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
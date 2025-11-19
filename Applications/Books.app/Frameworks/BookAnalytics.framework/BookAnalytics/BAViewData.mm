@interface BAViewData
- (BAViewData)init;
- (BAViewData)initWithType:(int64_t)a3 action:(int64_t)a4 location:(int64_t)a5;
@end

@implementation BAViewData

- (BAViewData)initWithType:(int64_t)a3 action:(int64_t)a4 location:(int64_t)a5
{
  *(&self->super.isa + OBJC_IVAR___BAViewData_type) = a3;
  *(&self->super.isa + OBJC_IVAR___BAViewData_action) = a4;
  *(&self->super.isa + OBJC_IVAR___BAViewData_location) = a5;
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
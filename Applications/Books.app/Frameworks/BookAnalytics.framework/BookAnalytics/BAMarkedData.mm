@interface BAMarkedData
- (BAMarkedData)init;
- (BAMarkedData)initWithIsFinishedDateSet:(BOOL)a3;
@end

@implementation BAMarkedData

- (BAMarkedData)initWithIsFinishedDateSet:(BOOL)a3
{
  *(&self->super.isa + OBJC_IVAR___BAMarkedData_isFinishedDateSet) = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for BridgedMarkedData();
  return [(BAMarkedData *)&v4 init];
}

- (BAMarkedData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
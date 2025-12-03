@interface TaskOperator
- (TaskOperator)init;
- (TaskOperator)initWithTask:(unsigned int)task;
@end

@implementation TaskOperator

- (TaskOperator)initWithTask:(unsigned int)task
{
  v4 = sub_100026AF4();
  v5 = self + OBJC_IVAR___TaskOperator_extraction;
  *v5 = 2;
  v5[1] = v4 & 1;
  v7.receiver = self;
  v7.super_class = TaskOperator;
  return [(TaskOperator *)&v7 init];
}

- (TaskOperator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
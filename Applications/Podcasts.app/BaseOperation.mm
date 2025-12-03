@interface BaseOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (BOOL)isReady;
- (void)addDependency:(id)dependency;
- (void)setExecuting:(BOOL)executing;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation BaseOperation

- (BOOL)isReady
{
  selfCopy = self;
  v3 = sub_10001245C();

  return v3 & 1;
}

- (void)start
{
  selfCopy = self;
  sub_100014B94();
}

- (BOOL)isExecuting
{
  selfCopy = self;
  v3 = sub_10002FAF4();

  return v3;
}

- (BOOL)isFinished
{
  selfCopy = self;
  v3 = sub_10002FFD4();

  return v3;
}

- (void)setExecuting:(BOOL)executing
{
  selfCopy = self;
  sub_10002FA08();
}

- (void)setFinished:(BOOL)finished
{
  selfCopy = self;
  sub_100031E00();
}

- (void)addDependency:(id)dependency
{
  dependencyCopy = dependency;
  selfCopy = self;
  sub_100394694(dependencyCopy);
}

@end
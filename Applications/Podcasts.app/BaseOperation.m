@interface BaseOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (BOOL)isReady;
- (void)addDependency:(id)a3;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation BaseOperation

- (BOOL)isReady
{
  v2 = self;
  v3 = sub_10001245C();

  return v3 & 1;
}

- (void)start
{
  v2 = self;
  sub_100014B94();
}

- (BOOL)isExecuting
{
  v2 = self;
  v3 = sub_10002FAF4();

  return v3;
}

- (BOOL)isFinished
{
  v2 = self;
  v3 = sub_10002FFD4();

  return v3;
}

- (void)setExecuting:(BOOL)a3
{
  v3 = self;
  sub_10002FA08();
}

- (void)setFinished:(BOOL)a3
{
  v3 = self;
  sub_100031E00();
}

- (void)addDependency:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100394694(v4);
}

@end
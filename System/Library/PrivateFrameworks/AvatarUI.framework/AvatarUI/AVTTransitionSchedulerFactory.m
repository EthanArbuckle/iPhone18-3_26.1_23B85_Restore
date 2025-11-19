@interface AVTTransitionSchedulerFactory
+ (id)concurrentTransitionSchedulerWithEventHandler:(id)a3 delay:(double)a4;
+ (id)synchronousTransitionSchedulerWithEventHandler:(id)a3;
@end

@implementation AVTTransitionSchedulerFactory

+ (id)synchronousTransitionSchedulerWithEventHandler:(id)a3
{
  v3 = a3;
  v4 = [[AVTSynchronousTransitionScheduler alloc] initWithEventHandler:v3];

  return v4;
}

+ (id)concurrentTransitionSchedulerWithEventHandler:(id)a3 delay:(double)a4
{
  v5 = a3;
  v6 = [[AVTConcurrentTransitionScheduler alloc] initWithEventHandler:v5 delay:a4];

  return v6;
}

@end
@interface AVTTransitionSchedulerFactory
+ (id)concurrentTransitionSchedulerWithEventHandler:(id)handler delay:(double)delay;
+ (id)synchronousTransitionSchedulerWithEventHandler:(id)handler;
@end

@implementation AVTTransitionSchedulerFactory

+ (id)synchronousTransitionSchedulerWithEventHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [[AVTSynchronousTransitionScheduler alloc] initWithEventHandler:handlerCopy];

  return v4;
}

+ (id)concurrentTransitionSchedulerWithEventHandler:(id)handler delay:(double)delay
{
  handlerCopy = handler;
  v6 = [[AVTConcurrentTransitionScheduler alloc] initWithEventHandler:handlerCopy delay:delay];

  return v6;
}

@end
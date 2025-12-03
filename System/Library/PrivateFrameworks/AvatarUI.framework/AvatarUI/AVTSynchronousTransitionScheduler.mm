@interface AVTSynchronousTransitionScheduler
- (AVTSynchronousTransitionScheduler)initWithEventHandler:(id)handler;
- (void)didCompleteEvent;
- (void)scheduleEvent;
@end

@implementation AVTSynchronousTransitionScheduler

- (AVTSynchronousTransitionScheduler)initWithEventHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = AVTSynchronousTransitionScheduler;
  v5 = [(AVTSynchronousTransitionScheduler *)&v9 init];
  if (v5)
  {
    v6 = [handlerCopy copy];
    eventHandler = v5->_eventHandler;
    v5->_eventHandler = v6;
  }

  return v5;
}

- (void)scheduleEvent
{
  if (![(AVTSynchronousTransitionScheduler *)self isRunningEvent])
  {
    [(AVTSynchronousTransitionScheduler *)self setIsRunningEvent:1];
    eventHandler = [(AVTSynchronousTransitionScheduler *)self eventHandler];
    eventHandler[2]();
  }
}

- (void)didCompleteEvent
{
  if ([(AVTSynchronousTransitionScheduler *)self isRunningEvent])
  {
    eventHandler = [(AVTSynchronousTransitionScheduler *)self eventHandler];
    eventHandler[2]();
  }
}

@end
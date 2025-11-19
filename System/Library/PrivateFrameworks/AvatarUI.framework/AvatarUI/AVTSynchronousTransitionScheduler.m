@interface AVTSynchronousTransitionScheduler
- (AVTSynchronousTransitionScheduler)initWithEventHandler:(id)a3;
- (void)didCompleteEvent;
- (void)scheduleEvent;
@end

@implementation AVTSynchronousTransitionScheduler

- (AVTSynchronousTransitionScheduler)initWithEventHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AVTSynchronousTransitionScheduler;
  v5 = [(AVTSynchronousTransitionScheduler *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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
    v3 = [(AVTSynchronousTransitionScheduler *)self eventHandler];
    v3[2]();
  }
}

- (void)didCompleteEvent
{
  if ([(AVTSynchronousTransitionScheduler *)self isRunningEvent])
  {
    v3 = [(AVTSynchronousTransitionScheduler *)self eventHandler];
    v3[2]();
  }
}

@end
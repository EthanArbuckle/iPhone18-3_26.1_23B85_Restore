@interface SCNAnimationEvent
+ (SCNAnimationEvent)animationEventWithKeyTime:(CGFloat)time block:(SCNAnimationEventBlock)eventBlock;
- (SCNAnimationEvent)init;
- (void)dealloc;
- (void)setEventBlock:(id)block;
@end

@implementation SCNAnimationEvent

- (SCNAnimationEvent)init
{
  v3.receiver = self;
  v3.super_class = SCNAnimationEvent;
  return [(SCNAnimationEvent *)&v3 init];
}

- (void)dealloc
{
  eventBlock = self->_eventBlock;
  if (eventBlock)
  {
    _Block_release(eventBlock);
  }

  v4.receiver = self;
  v4.super_class = SCNAnimationEvent;
  [(SCNAnimationEvent *)&v4 dealloc];
}

- (void)setEventBlock:(id)block
{
  eventBlock = self->_eventBlock;
  if (eventBlock)
  {
    _Block_release(eventBlock);
  }

  self->_eventBlock = _Block_copy(block);
}

+ (SCNAnimationEvent)animationEventWithKeyTime:(CGFloat)time block:(SCNAnimationEventBlock)eventBlock
{
  v6 = objc_alloc_init(self);
  [(SCNAnimationEvent *)v6 setTime:time];
  [(SCNAnimationEvent *)v6 setEventBlock:eventBlock];
  return v6;
}

@end
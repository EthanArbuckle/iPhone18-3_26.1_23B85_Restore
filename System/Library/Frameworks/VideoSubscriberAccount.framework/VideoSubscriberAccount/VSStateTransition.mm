@interface VSStateTransition
- (VSStateTransition)init;
@end

@implementation VSStateTransition

- (VSStateTransition)init
{
  v10.receiver = self;
  v10.super_class = VSStateTransition;
  v2 = [(VSStateTransition *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSOptional);
    previousState = v2->_previousState;
    v2->_previousState = v3;

    v5 = objc_alloc_init(VSOptional);
    triggeringEvent = v2->_triggeringEvent;
    v2->_triggeringEvent = v5;

    v7 = objc_alloc_init(VSOptional);
    nextState = v2->_nextState;
    v2->_nextState = v7;
  }

  return v2;
}

@end
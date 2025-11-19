@interface _AMMotionDetectionTriggerManagerObserverContext
- (AMMotionDetectionTriggerManagerObserver)observer;
- (_AMMotionDetectionTriggerManagerObserverContext)initWithObserver:(id)a3 queue:(id)a4;
@end

@implementation _AMMotionDetectionTriggerManagerObserverContext

- (_AMMotionDetectionTriggerManagerObserverContext)initWithObserver:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _AMMotionDetectionTriggerManagerObserverContext;
  v8 = [(_AMMotionDetectionTriggerManagerObserverContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_observer, v6);
    objc_storeStrong(&v9->_queue, a4);
  }

  return v9;
}

- (AMMotionDetectionTriggerManagerObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end
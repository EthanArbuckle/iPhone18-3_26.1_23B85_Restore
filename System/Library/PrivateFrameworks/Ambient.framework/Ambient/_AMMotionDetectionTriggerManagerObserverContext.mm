@interface _AMMotionDetectionTriggerManagerObserverContext
- (AMMotionDetectionTriggerManagerObserver)observer;
- (_AMMotionDetectionTriggerManagerObserverContext)initWithObserver:(id)observer queue:(id)queue;
@end

@implementation _AMMotionDetectionTriggerManagerObserverContext

- (_AMMotionDetectionTriggerManagerObserverContext)initWithObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = _AMMotionDetectionTriggerManagerObserverContext;
  v8 = [(_AMMotionDetectionTriggerManagerObserverContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_observer, observerCopy);
    objc_storeStrong(&v9->_queue, queue);
  }

  return v9;
}

- (AMMotionDetectionTriggerManagerObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end